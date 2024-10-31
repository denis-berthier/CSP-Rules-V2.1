
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TEMPLATES[4]
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





(defrule activate-template[4]
	(declare (salience ?*activate-template-4-salience*))
    (logical (play)
             (context (name ?cont))
             (technique ?cont template[3])
             (not (deactivate template[4]))
    )
=>
	(if ?*print-main-levels* then (printout t "entering level T4"))
	(assert (technique ?cont template[4]))
	(bind ?*technique* T4)
    (bind ?*main-level* T4)
)



(defrule track-template[4]
	(declare (salience ?*activate-template-4-salience*))
	(logical (play))
	?level <- (technique ?cont template[4])
=>
	(if ?*print-main-levels* then (printout t " with " ?level crlf))
)



;;; Only the templates[4] with ?nba < ?nbb < ?nbc < ?nbd are recorded
;;; (this divides by ~4 the memory requirements and the computation time)

(defrule template[4]
	(declare (salience ?*template-4-salience*))
    (logical
        (template-3 ?cont ?nba ?nbb ?nbc
            ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
            ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
            ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
            ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
            ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
            ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
            ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
            ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
            ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
        )
        (technique ?cont template[4])
        (template-1 ?cont ?nbd&:(< ?nbc ?nbd)
            ?lab1d ?lab2d ?lab3d ?lab4d ?lab5d ?lab6d ?lab7d ?lab8d ?lab9d
            ?col1d&~?col1c&~?col1b&~?col1a ?col2d&~?col2c&~?col2b&~?col2a ?col3d&~?col3c&~?col3b&~?col3a ?col4d&~?col4c&~?col4b&~?col4a ?col5d&~?col5c&~?col5b&~?col5a ?col6d&~?col6c&~?col6b&~?col6a ?col7d&~?col7c&~?col7b&~?col7a ?col8d&~?col8c&~?col8b&~?col8a ?col9d&~?col9c&~?col9b&~?col9a
            ?blk1d ?blk2d ?blk3d ?blk4d ?blk5d ?blk6d ?blk7d ?blk8d ?blk9d
        )
    )
=>
	(assert
        (template-4 ?cont ?nba ?nbb ?nbc ?nbd
            ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
            ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
            ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
            ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
            ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
            ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
            ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
            ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
            ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
            ?lab1d ?lab2d ?lab3d ?lab4d ?lab5d ?lab6d ?lab7d ?lab8d ?lab9d
            ?col1d ?col2d ?col3d ?col4d ?col5d ?col6d ?col7d ?col8d ?col9d
            ?blk1d ?blk2d ?blk3d ?blk4d ?blk5d ?blk6d ?blk7d ?blk8d ?blk9d
    ))
)



;;; As a result, there must be four elimination rules of templates[3]
;;; (reminder: all the recorded templates[3] have ?nba < ?nbb < ?nbc)

;;; Case of incompatibility with some nbd such that nba < nbb < nbc < nbd
(defrule template[4]-elim-abcd
    (declare (salience ?*template-4-elim-salience*))
    ?temp3 <- (template-3 ?cont ?nba ?nbb ?nbc
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
                ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
                ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
                ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
            )
    (technique ?cont template[4])
    (number ?nbd&:(< ?nbc ?nbd))
    (not (template-4 ?cont ?nba ?nbb ?nbc ?nbd
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
                ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
                ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
                ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
                ?lab1d ?lab2d ?lab3d ?lab4d ?lab5d ?lab6d ?lab7d ?lab8d ?lab9d
                ?col1d ?col2d ?col3d ?col4d ?col5d ?col6d ?col7d ?col8d ?col9d
                ?blk1d ?blk2d ?blk3d ?blk4d ?blk5d ?blk6d ?blk7d ?blk8d ?blk9d
        )
    )
=>
    (retract ?temp3)
    (if ?*print-templates* then (printout t "Retracting a template[3] for digits " ?nba ", " ?nbb " and " ?nbc " incompatible with all the templates[1] for digit " ?nbd crlf))
)


;;; Case of incompatibility with some nbd such that nba < nbb < nbd < nbc
(defrule template[4]-elim-abdc
    (declare (salience ?*template-4-elim-salience*))
    ?temp3 <- (template-3 ?cont ?nba ?nbb ?nbc
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
                ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
                ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
                ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
            )
    (technique ?cont template[4])
    (number ?nbd&:(< ?nbb ?nbd)&:(< ?nbd ?nbc))
    (not (template-4 ?cont ?nba ?nbb ?nbd ?nbc
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
                ?lab1d ?lab2d ?lab3d ?lab4d ?lab5d ?lab6d ?lab7d ?lab8d ?lab9d
                ?col1d ?col2d ?col3d ?col4d ?col5d ?col6d ?col7d ?col8d ?col9d
                ?blk1d ?blk2d ?blk3d ?blk4d ?blk5d ?blk6d ?blk7d ?blk8d ?blk9d
                ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
                ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
                ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
        )
    )
=>
    (retract ?temp3)
    (if ?*print-templates* then (printout t "Retracting a template[3] for digits " ?nba ", " ?nbb " and " ?nbc " incompatible with all the templates[1] for digit " ?nbd crlf))
)


;;; Case of incompatibility with some nbd such that nba < nbd  < nbb < nbc
(defrule template[4]-elim-adbc
    (declare (salience ?*template-4-elim-salience*))
    ?temp3 <- (template-3 ?cont ?nba ?nbb ?nbc
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
                ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
                ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
                ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
            )
    (technique ?cont template[4])
    (number ?nbd&:(< ?nba ?nbd)&:(< ?nbd ?nbb))
    (not (template-4 ?cont ?nba ?nbd ?nbb ?nbc
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1d ?lab2d ?lab3d ?lab4d ?lab5d ?lab6d ?lab7d ?lab8d ?lab9d
                ?col1d ?col2d ?col3d ?col4d ?col5d ?col6d ?col7d ?col8d ?col9d
                ?blk1d ?blk2d ?blk3d ?blk4d ?blk5d ?blk6d ?blk7d ?blk8d ?blk9d
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
                ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
                ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
                ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
        )
    )
=>
    (retract ?temp3)
    (if ?*print-templates* then (printout t "Retracting a template[3] for digits " ?nba ", " ?nbb " and " ?nbc " incompatible with all the templates[1] for digit " ?nbd crlf))
)


;;; Case of incompatibility with some nbd such that nbd < nba < nbb < nbc
(defrule template[4]-elim-dabc
    (declare (salience ?*template-4-elim-salience*))
    ?temp3 <- (template-3 ?cont ?nba ?nbb ?nbc
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
                ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
                ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
                ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
            )
    (technique ?cont template[4])
    (number ?nbd&:(< ?nbd ?nba))
    (not (template-4 ?cont ?nbd ?nba ?nbb ?nbc
                ?lab1d ?lab2d ?lab3d ?lab4d ?lab5d ?lab6d ?lab7d ?lab8d ?lab9d
                ?col1d ?col2d ?col3d ?col4d ?col5d ?col6d ?col7d ?col8d ?col9d
                ?blk1d ?blk2d ?blk3d ?blk4d ?blk5d ?blk6d ?blk7d ?blk8d ?blk9d
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
                ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
                ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
                ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
        )
    )
=>
    (retract ?temp3)
    (if ?*print-templates* then (printout t "Retracting a template[3] for digits " ?nba ", " ?nbb " and " ?nbc " incompatible with all the templates[1] for digit " ?nbd crlf))
)





