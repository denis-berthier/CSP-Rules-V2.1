
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR5-WHIP[1]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - August 2022            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; DO NOT USE THE AUTOMATIC GENERATOR FOR THIS FILE

(defrule activate-OR5-whip[1]
   (declare (salience ?*activate-OR5-whip[1]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR5-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR5W1))
   (assert (technique ?cont OR5-whip[1]))
   (assert (technique ?cont partial-whip[0]))
   (bind ?*technique* OR5W[1])
)



(defrule track-OR5-whip[1]
   (declare (salience ?*activate-OR5-whip[1]-salience*))
   ?level <- (technique ?cont OR5-whip[1])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR5-whip[1]
   (declare (salience ?*OR5-whip[1]-salience-1*))
   (technique ?cont OR5-whip[1])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 5) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5))
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
   (exists-link ?cont ?zzz ?zzz1)
   (exists-link ?cont ?zzz ?zzz2)
   (exists-link ?cont ?zzz ?zzz3)
   (exists-link ?cont ?zzz ?zzz4)
   (exists-link ?cont ?zzz ?zzz5)
=>
   (retract ?ret)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L1* ?*print-OR5-whip* ?*print-OR5-whip-1*) then
       (print-ORk-whip[1]-without-crlf ?or-name 5 ?or-compl ?zzz ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5)
    )
   (if (not ?*blocked-Whips[1]*)
       then (printout t crlf)
       else (assert (apply-rule-as-a-pseudo-block ?cont))
           (assert (pseudo-blocked ?cont OR4-whip[1] ?zzz ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5))
   )
)



(defrule apply-OR5-whip[1]-to-more-targets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont OR5-whip[1] ?zzz ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5)

    ;;; identify the other targets ?yyy
    (exists-link ?cont ?zzz1 ?yyy&~?zzz)
    (exists-link ?cont ?zzz2 ?yyy&~?zzz)
    (exists-link ?cont ?zzz3 ?yyy&~?zzz)
    (exists-link ?cont ?zzz4 ?yyy&~?zzz)
    (exists-link ?cont ?zzz5 ?yyy&~?zzz)

    ?cand <- (candidate (context ?cont) (status cand) (label ?yyy))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L1* ?*print-whip* ?*print-OR5-whip-1*) then
        (printout t ", ")
        (print-deleted-candidate ?yyy)
    )
)



