
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TEMPLATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CANDIDATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Candidates are used in all the resolution rules.
;;; Candidates define the set of possible values for a csp variable.
;;; The status slot says if a candidate is  a real candidate (i.e. a candidate with status cand) or a c-value (i.e. a candidate with status c-value) . 

;;;	After initialisation, there are candidates for every csp variable, except those for which an entry is given (as a c-value).
;;; Usually, for efficiency reasons, candidate sets for a csp variable are initialised with only all the values compatible 
;;; with the obvious constraints on this csp variable, given all the entries of the csp instance (but this is not mandatory).

;;; It is essential to notice that the set of real candidates is always decreasing with time (and the set of c-values is increasing).
;;; All the rules may rely on, and must preserve, this property.

;;; For technical reasons, candidates and c-values have to be the same template 
;;; because of a few rules that assert values, such as singles and forcing-chain-value, and for T&E.
;;;	Usage :
;;; As soon as a c-value is asserted, all the candidates are reduced by constraints propagation (ECP rules).
;;; In any context, having no candidate (with any status) for a csp variable means a contradiction
;;; (no value is possible for this csp variable in this context), 
;;;	and every contradiction is detected this way.
;;; If this happens in context 0, it means the instance has no solution.

;;; The "context" slot may be used only for T&E. Its default value is 0. 
;;; Any resolution rule should be context-independent and it should always have the same context in its left and right parts.


;;; Normally, candidate and g-candidate are the only templates that may need to be extended for a specific application
;;; For instance, Sudoku uses additional slots number, row, column, block, square
;;; for writing faster rules for ECP, Singles, Subsets and exotic patterns

;;; Unfortunately:
;;; - JESS does not allow redefinition of templates
;;; - Clips does not allow extension of templates (but it allows redefinition - before any use of them, e.g. in a rule)
;;; For compatibility with JESS, templates candidate and g-candidate should be defined only in the application templates
;;; but I no longer care much for JESS compatibility

;;; slot flag is mainly used for T&E
;;; c-values with flag 0 are not used for ECP
;;; this can make the init phase faster and also T&E faster
;;; DO NOT CHANGE THE DEFAULT VALUE OF 1

(deftemplate candidate
    ;;; standard CSP-Rules slots that cannot be changed:
	(slot context (type INTEGER) (default 0))
    (slot status (type SYMBOL) (allowed-values cand c-value) (default cand))
	(slot label (type INTEGER))
    (slot flag (type INTEGER) (allowed-values 0 1) (default 1))
    ;;; additional slots may be added for any specific application, 
    ;;; but neither the above ones nor their specifications should be changed
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; G-CANDIDATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deftemplate g-candidate
	(slot context (type INTEGER) (default 0))
	(slot label (type INTEGER))
    (slot type (type SYMBOL) (default undefined))
    (slot csp-var (type INTEGER) (default 0))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; STRUCTURAL TEMPLATES:
;;; CSP VARIABLES AND CONSTRAINTS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deftemplate csp-variable
	(slot name (type INTEGER))
    (slot type (type SYMBOL))
    ;;; additional slots may be added for any specific application, 
    ;;; but neither the above ones nor their specifications should be changed
)


(deftemplate is-csp-variable-for-label
	(slot csp-var (type INTEGER))
	(slot label (type INTEGER))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)


(deftemplate is-csp-variable-for-glabel
    (slot csp-var (type INTEGER))
    (slot glabel (type INTEGER))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)


(deftemplate is-typed-csp-variable-for-label
    (slot csp-var (type INTEGER))
    (slot label (type INTEGER))
    ;;; the next slot is used in an essential way in the patterns of typed chains
    (slot csp-var-type (type SYMBOL))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)


(deftemplate is-typed-csp-variable-for-glabel
    (slot csp-var (type INTEGER))
    (slot glabel (type INTEGER))
    ;;; the next slot is used in an essential way in the patterns of typed chains
    (slot csp-var-type (type SYMBOL))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; restrict the above structural templates
;;; to active candidates and g-candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; currently not used

(deftemplate is-csp-variable-for-candidate
    (slot csp-var (type INTEGER))
    (slot label (type INTEGER))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)


(deftemplate is-csp-variable-for-g-candidate
    (slot csp-var (type INTEGER))
    (slot glabel (type INTEGER))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)


(deftemplate is-typed-csp-variable-for-candidate
    (slot csp-var (type INTEGER))
    (slot label (type INTEGER))
    ;;; none of the next two slots is used in the patterns of typed chains
    ;;; csp-var-type is used in an essential way in the patterns of typed chains
    ;;; csp-var-type is used in the output of untyped chains
    ;;; by default, csp-var-type is also used in the output of typed chains
    ;;; csp-var-genus is only used for the output for typed-chains in KakuRules
    (slot csp-var-genus (type SYMBOL))
    (slot csp-var-type (type SYMBOL))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)


(deftemplate is-typed-csp-variable-for-g-candidate
    (slot csp-var (type INTEGER))
    (slot glabel (type INTEGER))
    ;;; none of the next two slots is used in the patterns of typed chains
    ;;; csp-var-type is used in an essential way in the patterns of typed chains
    ;;; csp-var-type is used in the output of untyped chains
    ;;; by default, csp-var-type is also used in the output of typed chains
    ;;; csp-var-genus is only used for the output for typed-chains in KakuRules
    (slot csp-var-genus (type SYMBOL))
    (slot csp-var-type (type SYMBOL))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; TO FOCUS THE ELIMINATIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deftemplate candidate-in-focus
    (slot label (type INTEGER) (default 0))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXTS FOR T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is effectively used only for Trial-and-Error and bi-Trial-and-Error;
;;; but (context (name ?cont)) is present in all the rules and must be the same in their left and right parts.

(deftemplate context
	(slot name (type INTEGER) (default 0)) 
	(slot depth (type INTEGER) (default 0))
	(slot parent (type INTEGER) (default 0))
    ;;; used only by T&E:
	(slot generating-cand (type INTEGER) (default 0))
    ;;; used only for bi-Trial-and-Error:
	(slot generating-cand2 (type INTEGER) (default 0))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CHAINS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is used for all the types of chains

(deftemplate chain
    (slot type (type SYMBOL)) ; allowed-values: bivalue-chain, partial-whip, t-whip, whip, g-whip, braid ...
    (slot context (type INTEGER) (default 0))
    (slot length (type INTEGER) (default 0))
    (slot target (type INTEGER) (default 0))
    ;;; the sequence of left-linking candidates:
    (multislot llcs (default (create$)))
    ;;; the sequence of right-linking candidates or g-candidates:
    (multislot rlcs (default (create$)))
    ;;; the sequence of CSP-variables:
    (multislot csp-vars (default (create$)))
    ;;; the following slot is redundant, but useful for technical reasons
    ;;; the last right-linking candidate or g-candidate (equal to the last element of rlcs):
    (slot last-rlc (type INTEGER))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)


;;; This is used for csp-typed chains (e.g. 2D-whips in Sudoku)

(deftemplate typed-chain
    (slot type (type SYMBOL)) ; allowed-values: typed-partial-whip, typed-whip ...
    (slot csp-type (type SYMBOL) (default NONE))
    (slot context (type INTEGER) (default 0))
    (slot length (type INTEGER) (default 0))
    (slot target (type INTEGER) (default 0))
    ;;; the sequence of left-linking candidates:
    (multislot llcs (default (create$)))
    ;;; the sequence of right-linking candidates or g-candidates:
    (multislot rlcs (default (create$)))
    ;;; the sequence of CSP-variables:
    (multislot csp-vars (default (create$)))
    ;;; the following slot is redundant, but useful for technical reasons
    ;;; the last right-linking candidate or g-candidate (equal to the last element of rlcs):
    (slot last-rlc (type INTEGER))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)



(deftemplate csp-chain
    ;;; currently used only for Oddagons
    (slot type (type SYMBOL))
    (slot context (type INTEGER) (default 0))
    (slot length (type INTEGER) (default 0))
    (slot target (type INTEGER) (default 0))
    (slot first-cand (type INTEGER))
    ;;; the sequence of right-linking candidates:
    ;;; (there is no sequence of llcs, because they are the same as the rlcs, shifted by 1)
    (multislot rlcs (default (create$)))
    ;;; the sequence of CSP-variables:
    (multislot csp-vars (default (create$)))
    ;;; the following slot is redundant, but useful for technical reasons
    ;;; the last right-linking candidate or g-candidate (equal to the last element of rlcs):
    (slot last-rlc (type INTEGER))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CHAINS2R (for g2-Whips)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is used for all the types of chains

(deftemplate chain2r
    (slot type (type SYMBOL)) ; allowed-values: bivalue-chain partial-whip ...
    (slot context (type INTEGER) (default 0))
    (slot length (type INTEGER) (default 0))
    (slot target (type INTEGER) (default 0))
    ;;; the sequence of left-linking candidates:
    (multislot llcs (default (create$)))
    ;;; the sequence of first right-linking candidates
    (multislot rlcsa (default (create$)))
    ;;; the sequence of second right-linking candidates (or 0)
    (multislot rlcsb (default (create$)))
    ;;; the sequence of CSP-variables
    (multislot csp-vars (default (create$)))
    ;;; the following two slots are redundant, but useful for technical reasons
    ;;; the first last right-linking candidate:
    (slot last-rlca (type INTEGER))
    ;;; the second last right-linking candidate (or 0):
    (slot last-rlcb (type INTEGER))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; BI-CHAINS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is used for all the types of bi-chains

(deftemplate bi-chain
    (slot type (type SYMBOL)) ; allowed-values: bivalue-chain partial-whip ...
    (slot context (type INTEGER) (default 0))
    (slot length (type INTEGER) (default 0))
    (slot end1 (type INTEGER) (default 0))
    (slot end2 (type INTEGER) (default 0))
    ;;; the sequence of left-linking candidates:
    (multislot llcs (default (create$)))
    ;;; the sequence of right-linking candidates or g-candidates:
    (multislot rlcs (default (create$)))
    ;;; the sequence of CSP-variables:
    (multislot csp-vars (default (create$)))
    ;;; the following two slots are redundant, but useful for technical reasons
    ;;; the last right-linking candidate or g-candidate or ".":
    (slot last-rlc)
    ;;; the last CSP-variable:
    (slot last-csp (type INTEGER))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GENERIC SUBSETS (NOT USED)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is intended for all the types of Subsets and g-Subsets

(deftemplate subset
    (slot type (type SYMBOL)) 
    (slot context (type INTEGER) (default 0))
    (slot size (type INTEGER))
    (multislot csp-vars (default (create$)))
    (multislot constraints (default (create$)))
    ;;; additional slots may be added for any specific application, 
    ;;; but neither the above ones nor their specifications should be changed
)



;;; introduced for generic Subsets

(deftemplate constraint-set
    (slot name (type INTEGER))
    (slot type (type SYMBOL))
    (multislot elements) ; the list of labels pairwise linked by this constraint
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
)


