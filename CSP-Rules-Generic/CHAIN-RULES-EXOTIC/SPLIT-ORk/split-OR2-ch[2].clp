
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / EXOTIC
;;;                              SPLIT OR2 RELATION via C-CHAIN[2]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - January 2023             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Split OR2 relation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule split-OR2-relation-ch[2]
    (declare (salience ?*split-OR2-relation-ch[2]-salience*))
    ;;; there must be no logical for the modify to work properly in all circumstances
    ; (logical (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&2)
        (symmetrified FALSE)
        (OR-candidates ?zzz1 ?zzz2)
    )
    ?cand1 <- (candidate (context ?cont) (label ?zzz1))
    ?cand2 <- (candidate (context ?cont) (label ?zzz2))
    (bivalue ?cont ?zzz1 ?xxx1&~?zzz2 ?csp1)
    (bivalue ?cont ?xxx1 ?zzz2 ?csp2&~?csp1)
=>
    (retract ?ORk)
    (modify ?cand1 (status c-value))
    (modify ?cand2 (status c-value))
    (if (not (member$ ?OR-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?OR-name)))
    (if ?*print-actions* then
        (printout t crlf)
        (pretty-print-current-resolution-state)
        (printout t ?OR-name "-OR" ?OR-size "-relation between candidates " (print-label ?zzz1) " and " (print-label ?zzz2) crlf
            "+ same valence for candidates " (print-label ?zzz1) " and " (print-label ?zzz2) " via c-chain[2]: " (print-label ?zzz1) "," (print-label ?xxx1) "," (print-label ?zzz2) crlf
            "==> " (print-asserted-candidate ?zzz1) ", " (print-asserted-candidate ?zzz2) crlf
            crlf
        )
    )
)

