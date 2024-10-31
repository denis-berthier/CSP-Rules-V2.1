
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TEMPLATES[1]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;             January 2006 - October 2024            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; There are 2 possible conclusions for a single-digit template analysis:
;;; - any candidate that belongs to all the instantiations of the template[1] for its digit
;;;   must be True (and asserted as a c-value);
;;; - any candidate that belongs to no instantiation of the template[1] for its digit
;;;   must be False (and eliminated).


(defrule activate-template[1]
	(declare (salience ?*activate-template-1-salience*))
	(logical (play)
             (context (name ?cont))
             (not (deactivate template[1]))
    )
=>
	(if ?*print-main-levels* then (printout t "entering level T1"))
	(assert (technique ?cont template[1]))
    (bind ?*technique* T1)
    (bind ?*main-level* T1)
)



(defrule track-template[1]
	(declare (salience ?*activate-template-1-salience*))
	(logical (play))
	?level <- (technique ?cont template[1])
=>
	(if ?*print-main-levels* then (printout t " with " ?level crlf))
)



(defrule template[1]
    ;;; For each digit, there are 46,656 possible template[1] instantiations in an empty grid.
    ;;; This rule finds all those compatible with the puzzle, without redundancies.
	(declare (salience ?*template-1-salience*))
    (logical
        (technique ?cont template[1])
        (candidate (context ?cont) (number ?nb) (row 1) (label ?lab1)
            (column ?col1) (block ?blk1)
        )
        (candidate (context ?cont) (number ?nb) (row 2) (label ?lab2)
            (column ?col2&~?col1) (block ?blk2&~?blk1)
        )
        (candidate (context ?cont) (number ?nb) (row 3) (label ?lab3)
            (column ?col3&~?col1&~?col2)
            (block ?blk3&~?blk1&~?blk2)
        )
        (candidate (context ?cont) (number ?nb) (row 4) (label ?lab4)
            (column ?col4&~?col1&~?col2&~?col3)
            (block ?blk4&~?blk1&~?blk2&~?blk3)
        )
        (candidate (context ?cont) (number ?nb) (row 5) (label ?lab5)
            (column ?col5&~?col1&~?col2&~?col3&~?col4)
            (block ?blk5&~?blk1&~?blk2&~?blk3&~?blk4)
        )
        (candidate (context ?cont) (number ?nb) (row 6) (label ?lab6)
            (column ?col6&~?col1&~?col2&~?col3&~?col4&~?col5)
            (block ?blk6&~?blk1&~?blk2&~?blk3&~?blk4&~?blk5)
        )
        (candidate (context ?cont) (number ?nb) (row 7) (label ?lab7)
            (column ?col7&~?col1&~?col2&~?col3&~?col4&~?col5&~?col6)
            (block ?blk7&~?blk1&~?blk2&~?blk3&~?blk4&~?blk5&~?blk6)
        )
        (candidate (context ?cont) (number ?nb) (row 8) (label ?lab8)
            (column ?col8&~?col1&~?col2&~?col3&~?col4&~?col5&~?col6&~?col7)
            (block ?blk8&~?blk1&~?blk2&~?blk3&~?blk4&~?blk5&~?blk6&~?blk7)
        )
        (candidate (context ?cont) (number ?nb) (row 9) (label ?lab9)
            (column ?col9&~?col1&~?col2&~?col3&~?col4&~?col5&~?col6&~?col7&~?col8)
            (block ?blk9&~?blk1&~?blk2&~?blk3&~?blk4&~?blk5&~?blk6&~?blk7&~?blk8)
        )
    )
=>
    (assert (template-1 ?cont ?nb
                ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
                ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
        )
    )
)



(defrule template[1]-assert
    ;;; Any candidate that belongs to all the instantiations of the template[1] for its digit
    ;;;  must be True (and asserted as a c-value)
    (declare (salience ?*template-1-assert-salience*))
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb) (label ?lab) (row ?row) (column ?col))
    (forall (template-1 ?cont ?nb
                ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
                ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
        (or
            (template-1 ?cont ?nb
                        ?lab  ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
                        ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                        ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
            (template-1 ?cont ?nb
                        ?lab1 ?lab  ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
                        ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                        ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
            (template-1 ?cont ?nb
                        ?lab1 ?lab2 ?lab  ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
                        ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                        ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
            (template-1 ?cont ?nb
                        ?lab1 ?lab2 ?lab3 ?lab  ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
                        ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                        ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
            (template-1 ?cont ?nb
                        ?lab1 ?lab2 ?lab3 ?lab4 ?lab  ?lab6 ?lab7 ?lab8 ?lab9
                        ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                        ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
            (template-1 ?cont ?nb
                        ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab  ?lab7 ?lab8 ?lab9
                        ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                        ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
            (template-1 ?cont ?nb
                        ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab  ?lab8 ?lab9
                        ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                        ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
            (template-1 ?cont ?nb
                        ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab  ?lab9
                        ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                        ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
            (template-1 ?cont ?nb
                        ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab
                        ?col1 ?col2 ?col3 ?col4 ?col5 ?col6 ?col7 ?col8 ?col9
                        ?blk1 ?blk2 ?blk3 ?blk4 ?blk5 ?blk6 ?blk7 ?blk8 ?blk9
            )
        )
    )
=>
    (modify ?cand (status c-value))
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
    (if (or ?*print-actions* ?*print-templates*) then
        (printout t "candidate common to all the templates[1] for digit " ?nb " ==> " (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
    )
)



(defrule template[1]-elim
    ;;; Any candidate that belongs to no instantiation of the template[1] for its digit
    ;;; must be False (and eliminated).
    (declare (salience ?*template-1-elim-salience*))
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb) (label ?lab) (row ?row) (column ?col))
    (not (template-1 ?cont ?nb
            ?lab ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
            $?
        )
    )
    (not (template-1 ?cont ?nb
            ?lab1 ?lab ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
            $?
        )
    )
    (not (template-1 ?cont ?nb
            ?lab1 ?lab2 ?lab ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
            $?
        )
    )
    (not (template-1 ?cont ?nb
            ?lab1 ?lab2 ?lab3 ?lab ?lab5 ?lab6 ?lab7 ?lab8 ?lab9
            $?
        )
    )
    (not (template-1 ?cont ?nb
            ?lab1 ?lab2 ?lab3 ?lab4 ?lab ?lab6 ?lab7 ?lab8 ?lab9
            $?
        )
    )
    (not (template-1 ?cont ?nb
            ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab ?lab7 ?lab8 ?lab9
            $?
        )
    )
    (not (template-1 ?cont ?nb
            ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab ?lab8 ?lab9
            $?
        )
    )
    (not (template-1 ?cont ?nb
            ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab ?lab9
            $?
        )
    )
    (not (template-1 ?cont ?nb
            ?lab1 ?lab2 ?lab3 ?lab4 ?lab5 ?lab6 ?lab7 ?lab8 ?lab
            $?
        )
    )
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-templates*) then
        (printout t "candidate in no template[1] for digit " ?nb " ==> " (print-deleted-candidate ?lab)) (printout t crlf)
    )
)



