
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / EXOTIC
;;;                              SPLIT OR2 RELATION via C-CHAIN[6]
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

(defrule split-OR2-relation-ch[6]
    (declare (salience ?*split-OR2-relation-ch[6]-salience*))
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
    (bivalue ?cont ?xxx1 ?xxx2&~?zzz1&~?zzz2 ?csp2&~?csp1)
    (bivalue ?cont ?xxx2 ?xxx3&~?zzz1&~?zzz2&~?xxx1 ?csp3&~?csp1&~?csp2)
    (bivalue ?cont ?xxx3 ?xxx4&~?zzz1&~?zzz2&~?xxx1&~?xxx2 ?csp4&~?csp1&~?csp2&~?csp3)
    (bivalue ?cont ?xxx4 ?xxx5&~?zzz1&~?zzz2&~?xxx1&~?xxx2&~?xxx3 ?csp5&~?csp1&~?csp2&~?csp3&~?csp4)
    (bivalue ?cont ?xxx5 ?zzz2 ?csp6&~?csp1&~?csp2&~?csp3&~?csp4&~?csp5)
=>
    (retract ?ORk)
    (modify ?cand1 (status c-value))
    (modify ?cand2 (status c-value))
    (if (not (member$ ?OR-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?OR-name)))
    (printout t crlf)
    (pretty-print-current-resolution-state)
    (printout t ?OR-name "-OR" ?OR-size "-relation between candidates " (print-label ?zzz1) " and " (print-label ?zzz2) crlf
        "+ same valence for candidates " (print-label ?zzz1) " and " (print-label ?zzz2) " via c-chain[6]: " (print-label ?zzz1) "," (print-label ?xxx1) "," (print-label ?xxx2) "," (print-label ?xxx3) "," (print-label ?xxx4) "," (print-label ?xxx5) "," (print-label ?zzz2) crlf
        "==> " (print-asserted-candidate ?zzz1) ", " (print-asserted-candidate ?zzz2) crlf
        crlf 
    )
)

