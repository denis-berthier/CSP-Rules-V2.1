
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / EXOTIC
;;;                              SPLIT OR9 RELATION via C-CHAIN[6]
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
;;; Split OR9 relation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule split-OR9-relation-ch[6]
    (declare (salience ?*split-OR9-relation-ch[6]-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&9)
        (symmetrified FALSE)
        (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6 ?zzz7 ?zzz8 ?zzz9)
    )
    (candidate (context ?cont) (label ?zzzi1&:(or (eq ?zzzi1 ?zzz1) (eq ?zzzi1 ?zzz2) (eq ?zzzi1 ?zzz3) (eq ?zzzi1 ?zzz4) (eq ?zzzi1 ?zzz5) (eq ?zzzi1 ?zzz6) (eq ?zzzi1 ?zzz7) (eq ?zzzi1 ?zzz8) (eq ?zzzi1 ?zzz9))))
    (candidate (context ?cont) (label ?zzzi2&~?zzzi1&:(or (eq ?zzzi2 ?zzz1) (eq ?zzzi2 ?zzz2) (eq ?zzzi2 ?zzz3) (eq ?zzzi2 ?zzz4) (eq ?zzzi2 ?zzz5) (eq ?zzzi2 ?zzz6) (eq ?zzzi2 ?zzz7) (eq ?zzzi2 ?zzz8) (eq ?zzzi2 ?zzz9))))
    (not (same-valence ?cont ?zzzi1 ?zzzi2 ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6 ?zzz7 ?zzz8 ?zzz9))
    (not (same-valence ?cont ?zzzi2 ?zzzi1 ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6 ?zzz7 ?zzz8 ?zzz9))
    (bivalue ?cont ?zzzi1 ?xxx1&~?zzz2 ?csp1)
    (bivalue ?cont ?xxx1 ?xxx2&~?zzz1&~?zzz2 ?csp2&~?csp1)
    (bivalue ?cont ?xxx2 ?xxx3&~?zzz1&~?zzz2&~?xxx1 ?csp3&~?csp1&~?csp2)
    (bivalue ?cont ?xxx3 ?xxx4&~?zzz1&~?zzz2&~?xxx1&~?xxx2 ?csp4&~?csp1&~?csp2&~?csp3)
    (bivalue ?cont ?xxx4 ?xxx5&~?zzz1&~?zzz2&~?xxx1&~?xxx2&~?xxx3 ?csp5&~?csp1&~?csp2&~?csp3&~?csp4)
    (bivalue ?cont ?xxx5 ?zzzi2 ?csp6&~?csp1&~?csp2&~?csp3&~?csp4&~?csp5)
=>
    (retract ?ORk)
    (assert (same-valence ?cont ?zzzi1 ?zzzi2 ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6 ?zzz7 ?zzz8 ?zzz9))
    (bind ?list1 (create$))
    (if (neq ?zzz1 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz1)))
    (if (neq ?zzz2 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz2)))
    (if (neq ?zzz3 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz3)))
    (if (neq ?zzz4 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz4)))
    (if (neq ?zzz5 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz5)))
    (if (neq ?zzz6 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz6)))
    (if (neq ?zzz7 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz7)))
    (if (neq ?zzz8 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz8)))
    (if (neq ?zzz9 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz9)))
    (bind ?list2 (create$))
    (if (neq ?zzz1 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz1)))
    (if (neq ?zzz2 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz2)))
    (if (neq ?zzz3 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz3)))
    (if (neq ?zzz4 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz4)))
    (if (neq ?zzz5 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz5)))
    (if (neq ?zzz6 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz6)))
    (if (neq ?zzz7 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz7)))
    (if (neq ?zzz8 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz8)))
    (if (neq ?zzz9 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz9)))
    (assert
        (ORk-relation
            (OR-name ?OR-name)
            (OR-complexity ?OR-compl)
            (context ?cont)
            (OR-size (- ?OR-size 1))
            (symmetrified FALSE)
            (OR-candidates ?list1)
        )
    )
    (assert
        (ORk-relation
            (OR-name ?OR-name)
            (OR-complexity ?OR-compl)
            (context ?cont)
            (OR-size (- ?OR-size 1))
            (symmetrified FALSE)
            (OR-candidates ?list2)
        )
    )
    (if ?*print-actions* then
        (printout t crlf)
        (pretty-print-current-resolution-state)
        (printout t ?OR-name "-OR" ?OR-size "-relation between candidates " (print-label ?zzz1) ", " (print-label ?zzz2) ", " (print-label ?zzz3) ", " (print-label ?zzz4) ", " (print-label ?zzz5) ", " (print-label ?zzz6) ", " (print-label ?zzz7) ", " (print-label ?zzz8) " and " (print-label ?zzz9) crlf
            "+ same valence for candidates " (print-label ?zzzi1) " and " (print-label ?zzzi2) " via c-chain[6]: " (print-label ?zzzi1) "," (print-label ?xxx1) "," (print-label ?xxx2) "," (print-label ?xxx3) "," (print-label ?xxx4) "," (print-label ?xxx5) "," (print-label ?zzzi2) crlf
            "==> " ?OR-name "-OR" ?OR-size "-relation can be split into two " ?OR-name "-OR" (- ?OR-size 1) "-relations with respective lists of guardians:" crlf
            "    " (print-list-of-labels ?list1) " and " (print-list-of-labels ?list2) "."
            crlf crlf
        )
    )
)

