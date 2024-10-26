
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TEMPLATES[2]
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





;;; When the templates for one digit are not enough to solve a puzzle,
;;; one can consider the templates for two different digits.
;;; This allows to reduce the number of instantiations of 1-digit templates.
;;; If a 1-digit template for ?nb1 is incompatible with all the 1-digit templates for ?nb2,
;;; then the first template can be discarded.



(defrule activate-template[2]
	(declare (salience ?*activate-template-2-salience*))
	(logical (play)
             (context (name ?cont))
             (technique ?cont template[1])
             (not (deactivate template[2]))
    )
=>
	(if ?*print-main-levels* then (printout t "entering level T2"))
	(assert (technique ?cont template[2]))
	(bind ?*technique* T2)
    (bind ?*main-level* T2)
)



(defrule track-template[2]
	(declare (salience ?*activate-template-2-salience*))
	(logical (play))
	?level <- (technique ?cont template[2])
=>
	(if ?*print-main-levels* then (printout t _with_ ?level crlf))
)


;;; Only the templates[2] with ?nba < ?nbb are recorded
;;; (this divides by ~2 the memory requirements and the computation time)

(defrule template[2]
	(declare (salience ?*template-2-salience*))
    (logical
        (template-1 ?cont ?nba
            ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
            ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
            ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
        )
        (technique ?cont template[2])
        ;;; the templates for the second digit (?nbb) have the only constraint
        ;;; that they shoudln't overlap the template for the first digit (?nba)
        ;;; i.e. that for each row, they are in a different column
        (template-1 ?cont ?nbb&:(< ?nba ?nbb)
            ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
            ?col1b&~?col1a ?col2b&~?col2a ?col3b&~?col3a ?col4b&~?col4a ?col5b&~?col5a ?col6b&~?col6a ?col7b&~?col7a ?col8b&~?col8a ?col9b&~?col9a
            ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
        )
    )
=>
    (assert
        (template-2 ?cont ?nba ?nbb
            ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
            ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
            ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
            ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
            ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
            ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
        )
    )
)



;;; As a result, there must be two elimnation rules of templates[1]

;;; Case of incompatibility with some nbb such that nba < nbb
(defrule template[2]-elim-ab
    (declare (salience ?*template-2-elim-salience*))
    ?temp1 <- (template-1 ?cont ?nba
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
            )
    (technique ?cont template[2])
    (number ?nbb&:(< ?nba ?nbb))
    (not (template-2 ?cont ?nba ?nbb
            ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
            ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
            ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
            ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
            ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
            ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
    ))
=>
    (retract ?temp1)
    (if ?*print-templates* then (printout t "Retracting a 1-template for digit " ?nba " incompatible with all the 1-templates for digit " ?nbb crlf))
)


;;; Case of incompatibility with some nbb such that nbb < nba
(defrule template[2]-elim-ba
    (declare (salience ?*template-2-elim-salience*))
    ?temp1 <- (template-1 ?cont ?nba
                ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
                ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
                ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
            )
    (technique ?cont template[2])
    (number ?nbb&:(< ?nbb ?nba))
    (not (template-2 ?cont ?nbb ?nba
            ?lab1b ?lab2b ?lab3b ?lab4b ?lab5b ?lab6b ?lab7b ?lab8b ?lab9b
            ?col1b ?col2b ?col3b ?col4b ?col5b ?col6b ?col7b ?col8b ?col9b
            ?blk1b ?blk2b ?blk3b ?blk4b ?blk5b ?blk6b ?blk7b ?blk8b ?blk9b
            ?lab1a ?lab2a ?lab3a ?lab4a ?lab5a ?lab6a ?lab7a ?lab8a ?lab9a
            ?col1a ?col2a ?col3a ?col4a ?col5a ?col6a ?col7a ?col8a ?col9a
            ?blk1a ?blk2a ?blk3a ?blk4a ?blk5a ?blk6a ?blk7a ?blk8a ?blk9a
    ))
=>
    (retract ?temp1)
    (if ?*print-templates* then (printout t "Retracting a 1-template for digit " ?nba " incompatible with all the 1-templates for digit " ?nbb crlf))
)
