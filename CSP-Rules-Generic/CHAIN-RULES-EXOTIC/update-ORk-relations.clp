
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / EXOTIC
;;;                             UPDATE ORk RELATIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Update all ORk relations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule apply-OR1-relation
    (declare (salience ?*update-OR1-salience*))
    (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&1)
        (symmetrified ?sym)
        (OR-candidates ?zzz1)
    )
    ?cand <- (candidate (context ?cont) (label ?zzz1) (status cand))
=>
    (modify ?cand (status c-value))
    (printout t ?OR-name "-ORk-relation with only one candidate => "
        (print-asserted-candidate ?zzz1) crlf)
)



(defrule update-OR2-relation
    (declare (salience ?*update-OR2-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&2)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
    )
=>
    ;;; If a guardian has been asserted, let the ORk-relation become void.
    ;;; If no guardian has been asserted:
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR3-relation
    (declare (salience ?*update-OR3-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&3)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
    )
=>
    ;;; If a guardian has been asserted, let the ORk-relation become void.
    ;;; If no guardian has been asserted:
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR4-relation
    (declare (salience ?*update-OR4-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&4)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
    )
=>
    ;;; If a guardian has been asserted, let the ORk-relation become void.
    ;;; If no guardian has been asserted:
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR5-relation
    (declare (salience ?*update-OR5-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&5)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
    )
=>
    ;;; If a guardian has been asserted, let the ORk-relation become void.
    ;;; If no guardian has been asserted:
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR6-relation
    (declare (salience ?*update-OR6-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&6)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
    )
=>
    ;;; If a guardian has been asserted, let the ORk-relation become void.
    ;;; If no guardian has been asserted:
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR7-relation
    (declare (salience ?*update-OR7-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&7)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
    )
=>
    ;;; If a guardian has been asserted, let the ORk-relation become void.
    ;;; If no guardian has been asserted:
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR8-relation
    (declare (salience ?*update-OR8-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&8)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
    )
=>
    ;;; If a guardian has been asserted, let the ORk-relation become void.
    ;;; If no guardian has been asserted:
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR9-relation
    (declare (salience ?*update-OR9-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&9)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR10-relation
    (declare (salience ?*update-OR10-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&10)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR11-relation
    (declare (salience ?*update-OR11-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&11)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR12-relation
    (declare (salience ?*update-OR12-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&12)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
            ?zzz12&:(or (< ?zzz11 ?zzz12) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
        (not (candidate (context ?cont) (label ?zzz12)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11) (eq ?c:label ?zzz12))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz12))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz12))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR13-relation
    (declare (salience ?*update-OR13-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&13)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
            ?zzz12&:(or (< ?zzz11 ?zzz12) (eq ?sym FALSE))
            ?zzz13&:(or (< ?zzz12 ?zzz13) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
        (not (candidate (context ?cont) (label ?zzz12)))
        (not (candidate (context ?cont) (label ?zzz13)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11) (eq ?c:label ?zzz12) (eq ?c:label ?zzz13))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz12))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz12))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz13))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz13))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR14-relation
    (declare (salience ?*update-OR14-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&14)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
            ?zzz12&:(or (< ?zzz11 ?zzz12) (eq ?sym FALSE))
            ?zzz13&:(or (< ?zzz12 ?zzz13) (eq ?sym FALSE))
            ?zzz14&:(or (< ?zzz13 ?zzz14) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
        (not (candidate (context ?cont) (label ?zzz12)))
        (not (candidate (context ?cont) (label ?zzz13)))
        (not (candidate (context ?cont) (label ?zzz14)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11) (eq ?c:label ?zzz12) (eq ?c:label ?zzz13) (eq ?c:label ?zzz14))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz12))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz12))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz13))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz13))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz14))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz14))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR15-relation
    (declare (salience ?*update-OR15-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&15)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
            ?zzz12&:(or (< ?zzz11 ?zzz12) (eq ?sym FALSE))
            ?zzz13&:(or (< ?zzz12 ?zzz13) (eq ?sym FALSE))
            ?zzz14&:(or (< ?zzz13 ?zzz14) (eq ?sym FALSE))
            ?zzz15&:(or (< ?zzz14 ?zzz15) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
        (not (candidate (context ?cont) (label ?zzz12)))
        (not (candidate (context ?cont) (label ?zzz13)))
        (not (candidate (context ?cont) (label ?zzz14)))
        (not (candidate (context ?cont) (label ?zzz15)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11) (eq ?c:label ?zzz12) (eq ?c:label ?zzz13) (eq ?c:label ?zzz14) (eq ?c:label ?zzz15))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz12))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz12))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz13))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz13))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz14))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz14))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz15))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz15))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR16-relation
    (declare (salience ?*update-OR16-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&16)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
            ?zzz12&:(or (< ?zzz11 ?zzz12) (eq ?sym FALSE))
            ?zzz13&:(or (< ?zzz12 ?zzz13) (eq ?sym FALSE))
            ?zzz14&:(or (< ?zzz13 ?zzz14) (eq ?sym FALSE))
            ?zzz15&:(or (< ?zzz14 ?zzz15) (eq ?sym FALSE))
            ?zzz16&:(or (< ?zzz15 ?zzz16) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
        (not (candidate (context ?cont) (label ?zzz12)))
        (not (candidate (context ?cont) (label ?zzz13)))
        (not (candidate (context ?cont) (label ?zzz14)))
        (not (candidate (context ?cont) (label ?zzz15)))
        (not (candidate (context ?cont) (label ?zzz16)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11) (eq ?c:label ?zzz12) (eq ?c:label ?zzz13) (eq ?c:label ?zzz14) (eq ?c:label ?zzz15) (eq ?c:label ?zzz16))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz12))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz12))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz13))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz13))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz14))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz14))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz15))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz15))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz16))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz16))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR17-relation
    (declare (salience ?*update-OR17-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&17)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
            ?zzz12&:(or (< ?zzz11 ?zzz12) (eq ?sym FALSE))
            ?zzz13&:(or (< ?zzz12 ?zzz13) (eq ?sym FALSE))
            ?zzz14&:(or (< ?zzz13 ?zzz14) (eq ?sym FALSE))
            ?zzz15&:(or (< ?zzz14 ?zzz15) (eq ?sym FALSE))
            ?zzz16&:(or (< ?zzz15 ?zzz16) (eq ?sym FALSE))
            ?zzz16&:(or (< ?zzz15 ?zzz16) (eq ?sym FALSE))
            ?zzz17&:(or (< ?zzz16 ?zzz17) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
        (not (candidate (context ?cont) (label ?zzz12)))
        (not (candidate (context ?cont) (label ?zzz13)))
        (not (candidate (context ?cont) (label ?zzz14)))
        (not (candidate (context ?cont) (label ?zzz15)))
        (not (candidate (context ?cont) (label ?zzz16)))
        (not (candidate (context ?cont) (label ?zzz17)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11) (eq ?c:label ?zzz12) (eq ?c:label ?zzz13) (eq ?c:label ?zzz14) (eq ?c:label ?zzz15) (eq ?c:label ?zzz16) (eq ?c:label ?zzz17))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz12))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz12))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz13))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz13))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz14))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz14))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz15))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz15))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz16))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz16))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz17))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz17))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR18-relation
    (declare (salience ?*update-OR18-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&18)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
            ?zzz12&:(or (< ?zzz11 ?zzz12) (eq ?sym FALSE))
            ?zzz13&:(or (< ?zzz12 ?zzz13) (eq ?sym FALSE))
            ?zzz14&:(or (< ?zzz13 ?zzz14) (eq ?sym FALSE))
            ?zzz15&:(or (< ?zzz14 ?zzz15) (eq ?sym FALSE))
            ?zzz16&:(or (< ?zzz15 ?zzz16) (eq ?sym FALSE))
            ?zzz16&:(or (< ?zzz15 ?zzz16) (eq ?sym FALSE))
            ?zzz17&:(or (< ?zzz16 ?zzz17) (eq ?sym FALSE))
            ?zzz18&:(or (< ?zzz17 ?zzz18) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
        (not (candidate (context ?cont) (label ?zzz12)))
        (not (candidate (context ?cont) (label ?zzz13)))
        (not (candidate (context ?cont) (label ?zzz14)))
        (not (candidate (context ?cont) (label ?zzz15)))
        (not (candidate (context ?cont) (label ?zzz16)))
        (not (candidate (context ?cont) (label ?zzz17)))
        (not (candidate (context ?cont) (label ?zzz18)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11) (eq ?c:label ?zzz12) (eq ?c:label ?zzz13) (eq ?c:label ?zzz14) (eq ?c:label ?zzz15) (eq ?c:label ?zzz16) (eq ?c:label ?zzz17) (eq ?c:label ?zzz18))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz12))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz12))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz13))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz13))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz14))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz14))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz15))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz15))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz16))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz16))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz17))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz17))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz18))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz18))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR19-relation
    (declare (salience ?*update-OR19-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&19)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
            ?zzz12&:(or (< ?zzz11 ?zzz12) (eq ?sym FALSE))
            ?zzz13&:(or (< ?zzz12 ?zzz13) (eq ?sym FALSE))
            ?zzz14&:(or (< ?zzz13 ?zzz14) (eq ?sym FALSE))
            ?zzz15&:(or (< ?zzz14 ?zzz15) (eq ?sym FALSE))
            ?zzz16&:(or (< ?zzz15 ?zzz16) (eq ?sym FALSE))
            ?zzz16&:(or (< ?zzz15 ?zzz16) (eq ?sym FALSE))
            ?zzz17&:(or (< ?zzz16 ?zzz17) (eq ?sym FALSE))
            ?zzz18&:(or (< ?zzz17 ?zzz18) (eq ?sym FALSE))
            ?zzz19&:(or (< ?zzz18 ?zzz19) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
        (not (candidate (context ?cont) (label ?zzz12)))
        (not (candidate (context ?cont) (label ?zzz13)))
        (not (candidate (context ?cont) (label ?zzz14)))
        (not (candidate (context ?cont) (label ?zzz15)))
        (not (candidate (context ?cont) (label ?zzz16)))
        (not (candidate (context ?cont) (label ?zzz17)))
        (not (candidate (context ?cont) (label ?zzz18)))
        (not (candidate (context ?cont) (label ?zzz19)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11) (eq ?c:label ?zzz12) (eq ?c:label ?zzz13) (eq ?c:label ?zzz14) (eq ?c:label ?zzz15) (eq ?c:label ?zzz16) (eq ?c:label ?zzz17) (eq ?c:label ?zzz18) (eq ?c:label ?zzz19))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz12))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz12))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz13))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz13))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz14))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz14))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz15))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz15))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz16))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz16))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz17))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz17))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz18))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz18))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz19))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz19))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)



(defrule update-OR20-relation
    (declare (salience ?*update-OR20-salience*))
    (logical (play) (context (name ?cont)))
    ?ORk <- (ORk-relation
        (OR-name ?OR-name)
        (OR-complexity ?OR-compl)
        (context ?cont)
        (OR-size ?OR-size&20)
        (symmetrified ?sym)
        (OR-candidates
            ?zzz1
            ?zzz2&:(or (< ?zzz1 ?zzz2) (eq ?sym FALSE))
            ?zzz3&:(or (< ?zzz2 ?zzz3) (eq ?sym FALSE))
            ?zzz4&:(or (< ?zzz3 ?zzz4) (eq ?sym FALSE))
            ?zzz5&:(or (< ?zzz4 ?zzz5) (eq ?sym FALSE))
            ?zzz6&:(or (< ?zzz5 ?zzz6) (eq ?sym FALSE))
            ?zzz7&:(or (< ?zzz6 ?zzz7) (eq ?sym FALSE))
            ?zzz8&:(or (< ?zzz7 ?zzz8) (eq ?sym FALSE))
            ?zzz9&:(or (< ?zzz8 ?zzz9) (eq ?sym FALSE))
            ?zzz10&:(or (< ?zzz9 ?zzz10) (eq ?sym FALSE))
            ?zzz11&:(or (< ?zzz10 ?zzz11) (eq ?sym FALSE))
            ?zzz12&:(or (< ?zzz11 ?zzz12) (eq ?sym FALSE))
            ?zzz13&:(or (< ?zzz12 ?zzz13) (eq ?sym FALSE))
            ?zzz14&:(or (< ?zzz13 ?zzz14) (eq ?sym FALSE))
            ?zzz15&:(or (< ?zzz14 ?zzz15) (eq ?sym FALSE))
            ?zzz16&:(or (< ?zzz15 ?zzz16) (eq ?sym FALSE))
            ?zzz16&:(or (< ?zzz15 ?zzz16) (eq ?sym FALSE))
            ?zzz17&:(or (< ?zzz16 ?zzz17) (eq ?sym FALSE))
            ?zzz18&:(or (< ?zzz17 ?zzz18) (eq ?sym FALSE))
            ?zzz19&:(or (< ?zzz18 ?zzz19) (eq ?sym FALSE))
            ?zzz20&:(or (< ?zzz19 ?zzz20) (eq ?sym FALSE))
        )
    )
    (or
        (not (candidate (context ?cont) (label ?zzz1)))
        (not (candidate (context ?cont) (label ?zzz2)))
        (not (candidate (context ?cont) (label ?zzz3)))
        (not (candidate (context ?cont) (label ?zzz4)))
        (not (candidate (context ?cont) (label ?zzz5)))
        (not (candidate (context ?cont) (label ?zzz6)))
        (not (candidate (context ?cont) (label ?zzz7)))
        (not (candidate (context ?cont) (label ?zzz8)))
        (not (candidate (context ?cont) (label ?zzz9)))
        (not (candidate (context ?cont) (label ?zzz10)))
        (not (candidate (context ?cont) (label ?zzz11)))
        (not (candidate (context ?cont) (label ?zzz12)))
        (not (candidate (context ?cont) (label ?zzz13)))
        (not (candidate (context ?cont) (label ?zzz14)))
        (not (candidate (context ?cont) (label ?zzz15)))
        (not (candidate (context ?cont) (label ?zzz16)))
        (not (candidate (context ?cont) (label ?zzz17)))
        (not (candidate (context ?cont) (label ?zzz18)))
        (not (candidate (context ?cont) (label ?zzz19)))
        (not (candidate (context ?cont) (label ?zzz20)))
    )
=>
    ;;; if no guardian has been asserted
    (if (not (any-factp ((?c candidate))
                (and (eq ?c:context ?cont) (eq ?c:status c-value)
                    (or (eq ?c:label ?zzz1) (eq ?c:label ?zzz2) (eq ?c:label ?zzz3) (eq ?c:label ?zzz4) (eq ?c:label ?zzz5) (eq ?c:label ?zzz6) (eq ?c:label ?zzz7) (eq ?c:label ?zzz8) (eq ?c:label ?zzz9) (eq ?c:label ?zzz10) (eq ?c:label ?zzz11) (eq ?c:label ?zzz12) (eq ?c:label ?zzz13) (eq ?c:label ?zzz14) (eq ?c:label ?zzz15) (eq ?c:label ?zzz16) (eq ?c:label ?zzz17) (eq ?c:label ?zzz18) (eq ?c:label ?zzz19) (eq ?c:label ?zzz20))
                )
            )
        ) then
        ;;; find the remaining guardians
        (bind ?new-guardians (create$))
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz1))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz1))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz2))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz2))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz3))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz3))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz4))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz4))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz5))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz5))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz6))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz6))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz7))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz7))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz8))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz8))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz9))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz9))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz10))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz10))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz11))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz11))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz12))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz12))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz13))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz13))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz14))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz14))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz15))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz15))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz16))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz16))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz17))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz17))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz18))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz18))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz19))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz19))
        )
        (if (any-factp ((?c candidate)) (and (eq ?c:context ?cont) (eq ?c:label ?zzz20))) then
            (bind ?new-guardians (create$ ?new-guardians ?zzz20))
        )
        ;;; then assert the new ORk-relation
        (bind ?new-OR-size (length$ ?new-guardians))
        (printout t crlf "At least one candidate of a previous " ?OR-name "-OR" ?OR-size "-relation has just been eliminated." crlf)
        (printout t "There remains a " ?OR-name "-OR" ?new-OR-size "-relation ")
        (printout t "between candidates: "  (print-list-of-labels ?new-guardians) crlf crlf)
        (assert
            (ORk-relation
                (OR-name ?OR-name)
                (OR-complexity ?OR-compl)
                (context ?cont)
                (OR-size ?new-OR-size)
                (symmetrified FALSE)
                (OR-candidates ?new-guardians)
            )
        )
        (pretty-print-current-resolution-state-in-context ?cont)
    )
    (retract ?ORk)
)


