
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / EXOTIC
;;;                              SPLIT OR4 RELATION via C-CHAIN[2]
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
;;; Split OR4 relation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule split-OR4-relation-ch[2]
    (declare (salience ?*split-OR4-relation-ch[2]-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&4)
        (symmetrified FALSE)
        (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4)
    )
    (candidate (context ?cont) (label ?zzzi1&:(or (eq ?zzzi1 ?zzz1) (eq ?zzzi1 ?zzz2) (eq ?zzzi1 ?zzz3) (eq ?zzzi1 ?zzz4))))
    (candidate (context ?cont) (label ?zzzi2&~?zzzi1&:(or (eq ?zzzi2 ?zzz1) (eq ?zzzi2 ?zzz2) (eq ?zzzi2 ?zzz3) (eq ?zzzi2 ?zzz4))))
    (not (same-valence ?cont ?zzzi1 ?zzzi2 ?zzz1 ?zzz2 ?zzz3 ?zzz4))
    (not (same-valence ?cont ?zzzi2 ?zzzi1 ?zzz1 ?zzz2 ?zzz3 ?zzz4))
    (bivalue ?cont ?zzzi1 ?xxx1&~?zzzi2 ?csp1)
    (bivalue ?cont ?xxx1 ?zzzi2 ?csp2&~?csp1)
=>
    (retract ?ORk)
    (assert (same-valence ?cont ?zzzi1 ?zzzi2 ?zzz1 ?zzz2 ?zzz3 ?zzz4))
    (bind ?list1 (create$))
    (if (neq ?zzz1 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz1)))
    (if (neq ?zzz2 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz2)))
    (if (neq ?zzz3 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz3)))
    (if (neq ?zzz4 ?zzzi1) then (bind ?list1 (create$ ?list1 ?zzz4)))
    (bind ?list2 (create$))
    (if (neq ?zzz1 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz1)))
    (if (neq ?zzz2 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz2)))
    (if (neq ?zzz3 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz3)))
    (if (neq ?zzz4 ?zzzi2) then (bind ?list2 (create$ ?list2 ?zzz4)))
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
        (printout t ?OR-name "-OR" ?OR-size "-relation between candidates " (print-label ?zzz1) ", " (print-label ?zzz2) ", " (print-label ?zzz3) " and " (print-label ?zzz4) crlf
            "+ same valence for candidates " (print-label ?zzzi1) " and " (print-label ?zzzi2) " via c-chain[2]: " (print-label ?zzzi1) "," (print-label ?xxx1) "," (print-label ?zzzi2) crlf
            "==> " ?OR-name "-OR" ?OR-size "-relation can be split into two " ?OR-name "-OR" (- ?OR-size 1) "-relations with respective lists of guardians:" crlf
            "    " (print-list-of-labels ?list1) " and " (print-list-of-labels ?list2) "."
             crlf crlf
         )
    )
)

