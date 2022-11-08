
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
    (printout t "ORk-relation with only one candidate => "
        (print-asserted-candidate ?zzz1) crlf)
)



(defrule update-OR2-relation
    (declare (salience ?*update-OR2-salience*))
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
    ;;; if no guardian has been asserted
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
    ;;; if no guardian has been asserted
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
    ;;; if no guardian has been asserted
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
    ;;; if no guardian has been asserted
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
    ;;; if no guardian has been asserted
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
    ;;; if no guardian has been asserted
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
    ;;; if no guardian has been asserted
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


