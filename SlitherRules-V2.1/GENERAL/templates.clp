
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
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





;;; define Slitherlink specific extensions of the general "candidate" predicate


(deftemplate candidate
    ;;; standard CSP-Rules slots that cannot be changed:
	(slot context (type INTEGER) (default 0))
    (slot status (type SYMBOL) (allowed-values cand c-value) (default cand))
	(slot label (type INTEGER))
    (slot flag (type INTEGER) (allowed-values 0 1) (default 1))
    
    ;;; additional Slitherlink specific slots:
    (slot type (type SYMBOL) (allowed-values N H V I P B))
    (slot value (type INTEGER) (allowed-values 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)) ; meaning depends on type
	(slot row (type INTEGER))
	(slot column (type INTEGER))
)



(deftemplate is-csp-variable-for-label
    (slot csp-var (type INTEGER))
    (slot label (type INTEGER))
    ;;; additional slots may be added for any specific application,
    ;;; but neither the above ones nor their specifications should be changed
    (slot csp-var-type (type SYMBOL))
)



(deftemplate partial-loop
    (slot context (type INTEGER) (default 0))
    (slot length (type INTEGER) (default 0))
    (slot nb-cont (type INTEGER) (default 0))
    (multislot labs)
    (multislot rows)
    (multislot columns)
    (multislot types)
)



(deftemplate isolated-HV-chain
    (slot context (type INTEGER) (default 0))
    (slot length (type INTEGER) (default 0))
    (slot nb-cont (type INTEGER) (default 0))
    (multislot labels)
    (multislot rows)
    (multislot columns)
    (multislot types)
    (multislot cands)
    (multislot anti-cands)
)
