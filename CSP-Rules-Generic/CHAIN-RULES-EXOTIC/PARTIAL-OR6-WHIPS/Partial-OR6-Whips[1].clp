
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              PARTIAL OR6-WHIP[1]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - September 2022           ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule partial-OR6-whip[1]
   (declare (salience ?*partial-OR6-whip[1]-salience-1*))
   (logical
       (technique ?cont partial-OR6-whip[1])
       (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
       (candidate (context ?cont) (status cand) (label ?zzz))
       (exists-link ?cont ?zzz ?zzz1)
       (exists-link ?cont ?zzz ?zzz2)
       (exists-link ?cont ?zzz ?zzz3)
       (exists-link ?cont ?zzz ?zzz4)
       (exists-link ?cont ?zzz ?zzz5)
    )
    (not (exists-link ?cont ?zzz ?zzz6))
    (not
        (ORk-chain
            (type partial-OR6-whip)
            (context ?cont)
            (length 1)
            (target ?zzz)
            ;;; The part before the ORk relation:
            (length1 0)
            ;;; The ORk part
            (OR-name ?or-name)
            (OR-complexity ?or-compl)
            (OR-size 6)
            (OR-rlc ?zzz6)
            ;;; The part after the ORk relation:
            (length2 0)
        )
    )
=>
   (assert
       (ORk-chain
           (type partial-OR6-whip)
           (context ?cont)
           (length 1)
           (target ?zzz)

           ;;; The part before the ORk relation:
           (length1 0)
           ;;; the first sequence of left-linking candidates:
           (llcs1 (create$))
           ;;; the first sequence of right-linking candidates:
           (rlcs1 (create$))
           ;;; the first sequence of CSP-variables:
           (csp-vars1 (create$))
           ;;; the following slot is redundant, but useful for technical reasons
           ;;; the last right-linking candidate (equal to the last element of ?rlcs1):
           (last-rlc1 0)
           
           ;;; The ORk part
           (OR-name ?or-name)
           (OR-complexity ?or-compl)
           (OR-size 6)
           ;;; the set of candidates linked to the target or to some previous rlcs
           (OR-llcs ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5)
           (OR-rlc ?zzz6)

           ;;; The part after the ORk relation:
           (length2 0)
           ;;; the second sequence of left-linking candidates:
           (llcs2 (create$))
           ;;; the second sequence of right-linking candidates:
           (rlcs2 (create$))
           ;;; the second sequence of CSP-variables:
           (csp-vars2 (create$))
           ;;; the following slot is redundant, but useful for technical reasons
           ;;; the last right-linking candidate (equal to the last element of rlcs2):
           (last-rlc2 0)
       )
    )
)



