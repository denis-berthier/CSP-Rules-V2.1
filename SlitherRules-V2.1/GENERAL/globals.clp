
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              GLOBALS
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





(defglobal ?*SlitherRulesLevelSymbol* = "")
(defglobal ?*givens* = (create$))

;;; the numbering of inner rows and columns starts at 1
(defglobal ?*first-row* = 1)

(defglobal ?*sum-of-givens* = 0)
(defglobal ?*cells-with-a-given* = (create$))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Dummy definition of grid size and related parameters
;;; Will be changed for each puzzle
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; maximum digit allowed
(defglobal ?*number-size* = 9)

;;; grid size and next variables will be redefined when initialising each instance
(defglobal ?*nb-rows* = 9)
(defglobal ?*nb-columns* = 9)
(defglobal ?*grid-size* = (max ?*nb-rows* ?*nb-columns*))
(defglobal ?*nb-rc-cells* = (* (+ ?*nb-rows* 2) (+ ?*nb-columns* 2)))
(defglobal ?*nb-H-sides* = (* ?*nb-rows* (+ ?*nb-columns* 1)))
(defglobal ?*nb-V-sides* = (* (+ ?*nb-rows* 1) ?*nb-columns*))
(defglobal ?*nb-csp-variables* = (+ ?*nb-rc-cells* ?*nb-H-sides* ?*nb-V-sides*))

;;; the real values will be redefined when initialising each instance to take real grid-size into account
(defglobal ?*internal-factor* = 10)
(defglobal ?*internal-factor-0* = ?*internal-factor*)
(defglobal ?*internal-factor-1* = ?*internal-factor*)
(defglobal ?*internal-factor-2* = (* ?*internal-factor-1* ?*internal-factor-1*))
(defglobal ?*internal-factor-3* = (* ?*internal-factor-2* 10))
(defglobal ?*internal-factor-4* = (* ?*internal-factor-3* 100))


(deffunction redefine-internal-factors ()
    ;;; we can't use the "**" function, because it returns a real, not an integer
    (if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*) then
        (bind ?*internal-factor* ?*internal-factor-0*)
        (bind ?*internal-factor-0* ?*internal-factor*)
        (bind ?*internal-factor-1* ?*internal-factor*)
        (bind ?*internal-factor-2* (* ?*internal-factor* ?*internal-factor*))
        (bind ?*internal-factor-3* (* ?*internal-factor-2* ?*internal-factor*))
        (bind ?*internal-factor-4* (* ?*internal-factor-3* ?*internal-factor* ?*internal-factor*))
    )
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Default selection of the application-specific resolution rules to be used
;;; by default, only BRT and the CTR-CTR rules are loaded)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*only-HV-whips* = FALSE)
(defglobal ?*W1-equiv-patterns* = FALSE)
(defglobal ?*non-W1-equiv-patterns* = FALSE)
(defglobal ?*special-Whips[1]* = FALSE)

(defglobal ?*Colours* = FALSE)
(defglobal ?*Final-fill* = FALSE)

(defglobal ?*Allow-direct-PP-links* = FALSE)


(defglobal ?*Loops* = FALSE)
(defglobal ?*xtd-Loops* = FALSE)
(defglobal ?*loops-max-length* = 300)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES USED FOR CONTROLLING WHAT IS PRINTED DURING THE RESOLUTION PROCESS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*QL-max* = 0)
;;; to keep track of whether colours have been effectively used during resolution
;;; do NOT change this value
(defglobal ?*Effective-colours* = FALSE)


;;; by default, the final output is printed in two forms: (hozizontal and vertical) borders and in/out cells
;;; this can be changed in the configuration fie
(defglobal ?*print-IO-solution* = TRUE) ; however, will be printed only if ?*Colours* is also TRUE
(defglobal ?*print-HV-solution* = TRUE)


;;; by default, the individual print options are false,
;;; but printing is globally enabled by the CSP-Rules generic variables

(defglobal ?*print-HV-single* = FALSE)
(defglobal ?*print-I-single* = FALSE)
(defglobal ?*print-B-single* = FALSE)
(defglobal ?*print-P-single* = FALSE)


(defglobal ?*print-corner-details* = FALSE)

(defglobal ?*print-closed-corner* = FALSE)
(defglobal ?*print-symmetric-corner* = FALSE)
;(defglobal ?*print-incident-closed-corner* = FALSE)
(defglobal ?*print-asymmetric-corner* = FALSE)

(defglobal ?*print-2-open-corner* = FALSE)
(defglobal ?*print-2-isolated-corner* = FALSE)
(defglobal ?*print-2-non-closed-corner* = FALSE)
(defglobal ?*print-2-symmetric-corner* = FALSE)
(defglobal ?*print-2-asymmetric-corner* = FALSE)
(defglobal ?*print-3-symmetric-corner* = FALSE)
(defglobal ?*print-3-asymmetric-corner* = FALSE)
(defglobal ?*print-1-symmetric-corner* = FALSE)
(defglobal ?*print-1-asymmetric-corner* = FALSE)



(defglobal ?*print-zero* = FALSE)
(defglobal ?*print-corners* = FALSE)
(defglobal ?*print-adjacent-3-0* = FALSE)
(defglobal ?*print-adjacent-3-nolines* = FALSE)
(defglobal ?*print-adjacent-3-3* = FALSE)
(defglobal ?*print-adjacent-3-2-0* = FALSE)
(defglobal ?*print-adjacent-3-2-noline* = FALSE)
(defglobal ?*print-diagonal-3-0* = FALSE)
(defglobal ?*print-xtd-diagonal-3-0* = FALSE) ; old name for the next
(defglobal ?*print-3-closed-corner* = FALSE)
(defglobal ?*print-3-isolated-corner* = FALSE)
(defglobal ?*print-diagonal-3-1* = FALSE)

(defglobal ?*print-diagonal-3s* = FALSE)
(defglobal ?*print-diagonal-3-2s+0* = FALSE)
(defglobal ?*print-xtd-diagonal-3-2s+0* = FALSE)
(defglobal ?*print-3+diagonal-2s-0* = FALSE)
(defglobal ?*print-3+xtd-diagonal-2s-0* = FALSE)

(defglobal ?*print-1+3+1* = FALSE)


(defglobal ?*print-diagonal-1-1-in-corner* = FALSE)
(defglobal ?*print-diagonal-of-2s-in-corner* = FALSE)
(defglobal ?*print-diagonal-1-3-in-corner* = FALSE)
(defglobal ?*print-diagonal-2-3-in-corner* = FALSE)
(defglobal ?*print-diagonal-2-3+1-in-corner* = FALSE)
(defglobal ?*print-diagonal-2-2+3-in-corner* = FALSE)


(defglobal ?*print-adjacent-1-1-on-edge* = FALSE)
(defglobal ?*print-adjacent-1-1-on-pseudo-edge* = FALSE)
(defglobal ?*print-adjacent-1-3-on-edge* = FALSE)
(defglobal ?*print-adjacent-1-3-on-pseudo-edge* = FALSE)
(defglobal ?*print-adjacent-1-2-on-edge* = FALSE)
(defglobal ?*print-adjacent-1-2-on-pseudo-edge* = FALSE)


(defglobal ?*print-squares-of-2s* = FALSE)
(defglobal ?*print-diagonal-1-1* = FALSE)
(defglobal ?*print-3-non-isolated-corner* = FALSE)
(defglobal ?*print-1-non-isolated-corner* = FALSE)
(defglobal ?*print-diagonal-3-1* = FALSE)
(defglobal ?*print-colours* = FALSE)


(defglobal ?*print-3+1+1+3* = FALSE)
(defglobal ?*print-diag-3-2s+1+1+diag-2s-3* = FALSE)
(defglobal ?*print-diagonal-3-2s+1-on-edge* = FALSE)
(defglobal ?*print-3-no-U-turn* = FALSE)
(defglobal ?*print-adjacent-3-x-symmetric-corners* = FALSE)

(defglobal ?*print-uniqueness* = FALSE)



(defglobal ?*print-loop* = FALSE)
(defglobal ?*print-loop-6* = FALSE)
(defglobal ?*print-loop-8* = FALSE)
(defglobal ?*print-loop-10* = FALSE)
(defglobal ?*print-loop-12* = FALSE)
(defglobal ?*print-loop-14* = FALSE)
(defglobal ?*print-loop-16* = FALSE)
(defglobal ?*print-loop-18* = FALSE)
(defglobal ?*print-loop-20* = FALSE)
(defglobal ?*print-loop-22* = FALSE)
(defglobal ?*print-loop-24* = FALSE)
(defglobal ?*print-loop-26* = FALSE)
(defglobal ?*print-loop-28* = FALSE)
(defglobal ?*print-loop-30* = FALSE)
(defglobal ?*print-loop-32* = FALSE)
(defglobal ?*print-loop-34* = FALSE)
(defglobal ?*print-loop-36* = FALSE)
(defglobal ?*print-loop-38* = FALSE)
(defglobal ?*print-loop-40* = FALSE)
(defglobal ?*print-loop-42* = FALSE)
(defglobal ?*print-loop-44* = FALSE)
(defglobal ?*print-loop-46* = FALSE)
(defglobal ?*print-loop-48* = FALSE)
(defglobal ?*print-loop-50* = FALSE)
(defglobal ?*print-loop-52* = FALSE)
(defglobal ?*print-loop-54* = FALSE)
(defglobal ?*print-loop-56* = FALSE)
(defglobal ?*print-loop-58* = FALSE)
(defglobal ?*print-loop-60* = FALSE)
(defglobal ?*print-loop-62* = FALSE)
(defglobal ?*print-loop-64* = FALSE)
(defglobal ?*print-loop-66* = FALSE)
(defglobal ?*print-loop-68* = FALSE)
(defglobal ?*print-loop-70* = FALSE)
(defglobal ?*print-loop-72* = FALSE)
(defglobal ?*print-loop-74* = FALSE)
(defglobal ?*print-loop-76* = FALSE)
(defglobal ?*print-loop-78* = FALSE)
(defglobal ?*print-loop-80* = FALSE)
(defglobal ?*print-loop->80* = FALSE)





