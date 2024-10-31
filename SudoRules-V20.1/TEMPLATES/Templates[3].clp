
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TEMPLATES[3]
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





(defrule activate-template[3]
	(declare (salience ?*activate-template-3-salience*))
    (logical (play)
             (context (name ?cont))
             (technique ?cont template[2])
             (not (deactivate template[3]))
    )
=>
	(if ?*print-main-levels* then (printout t "entering level T3"))
	(assert (technique ?cont template[3]))
	(bind ?*technique* T3)
    (bind ?*main-level* T3)
)



(defrule track-template[3]
	(declare (salience ?*activate-template-3-salience*))
	(logical (play))
	?level <- (technique ?cont template[3])
=>
	(if ?*print-main-levels* then (printout t " with " ?level crlf))
)



;;; Only the templates[3] with ?nba < ?nbb < ?nbc are recorded
;;; (this divides by ~3 the memory requirements and the computation time)

(defrule template[3]
	(declare (salience ?*template-3-salience*))
    (logical
        (template-2 ?cont ?nba ?nbb
            ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
            ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
            ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
            ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
            ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
            ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
        )
        (technique ?cont template[3])
        (template-1 ?cont ?nbc&:(< ?nbb ?nbc)
            ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
            ?col1c&~?col1b&~?col1a ?col2c&~?col2b&~?col2a ?col3c&~?col3b&~?col3a ?col4c&~?col4b&~?col4a ?col5c&~?col5b&~?col5a ?col6c&~?col6b&~?col6a ?col7c&~?col7b&~?col7a ?col8c&~?col8b&~?col8a ?col9c&~?col9b&~?col9a
            ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
        )
    )
=>
	(assert
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
    ))
)



;;; As a result, there must be three elimination rules of templates[2]
;;; (reminder: all the recorded templates[2] have ?nba < ?nbb)

;;; Case of incompatibility with some nbc such that (nba <) nbb < nbc
(defrule template[3]-elim-abc
    (declare (salience ?*template-3-elim-salience*))
    ?temp2 <- (template-2 ?cont ?nba ?nbb
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
            )
    (technique ?cont template[3])
    (number ?nbc&:(< ?nbb ?nbc))
    (not (template-3 ?cont ?nba ?nbb ?nbc
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
    (retract ?temp2)
    (if ?*print-templates* then (printout t "Retracting a template[2] for digits " ?nba " and " ?nbb " incompatible with all the templates[1] for digit " ?nbc crlf))
)


;;; Case of incompatibility with some nbc such that nba < nbc < nbb
(defrule template[3]-elim-acb
    (declare (salience ?*template-3-elim-salience*))
    ?temp2 <- (template-2 ?cont ?nba ?nbb
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
            )
    (technique ?cont template[3])
    (number ?nbc&:(< ?nba ?nbc)&:(< ?nbc ?nbb))
    (not (template-3 ?cont ?nba ?nbc ?nbb
            ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
            ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
            ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
            ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
            ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
            ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
            ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
            ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
            ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
        )
    )
=>
    (retract ?temp2)
    (if ?*print-templates* then (printout t "Retracting a template[2] for digits " ?nba " and " ?nbb " incompatible with all the templates[1] for digit " ?nbc crlf))
)


;;; Case of incompatibility with some nbc such that nbc < nba < nbb
(defrule template[3]-elim-cab
    (declare (salience ?*template-3-elim-salience*))
    ?temp2 <- (template-2 ?cont ?nba ?nbb
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
                ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
                ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
                ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
            )
    (technique ?cont template[3])
    (number ?nbc&:(< ?nbc ?nba))
    (not (template-3 ?cont ?nbc ?nba ?nbb
            ?lab1c ?lab2c ?lab3c ?lab4c ?lab5c ?lab6c ?lab7c ?lab8c ?lab9c
            ?col1c ?col2c ?col3c ?col4c ?col5c ?col6c ?col7c ?col8c ?col9c
            ?blk1c ?blk2c ?blk3c ?blk4c ?blk5c ?blk6c ?blk7c ?blk8c ?blk9c
            ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
            ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
            ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
            ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
            ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
            ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
        )
    )
=>
    (retract ?temp2)
    (if ?*print-templates* then (printout t "Retracting a template[2] for digits " ?nba " and " ?nbb " incompatible with all the templates[1] for digit " ?nbc crlf))
)




