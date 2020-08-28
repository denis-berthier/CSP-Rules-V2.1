
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              NUMBER OF CANDIDATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-nb-cand-rules
	(declare (salience ?*nb-cand-salience*))
	(context (name ?cont))
	(play)
=>
	(assert (technique nb-cand ?cont))
	(assert (cand-2 ?cont))
	(assert (cand-3 ?cont))
	(assert (cand-4 ?cont))
	(assert (cand-5 ?cont))
	(assert (cand-6 ?cont))
	(assert (cand-7 ?cont))
	(assert (cand-8 ?cont))
	(assert (cand-9 ?cont))
	(assert (technique nb-cand  ?cont))
	(printout t "Nb-cand activated in context " ?cont crlf)
	(bind ?*level* Nb-cand)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; detect non unique solution
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule count-nb-cand-2
	(declare (salience ?*nb-cand-salience*))
	(play)
	(technique nb-cand  ?cont)
	
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb1))
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb2&:(> ?nb2 ?nb1)))
	(not (candidate (context ?cont) (row ?row) (column ?col) (number ?nb3&:(> ?nb3 ?nb2))))
	?f <- (cand-2 ?cont)
=>
	(printout t "cell " (row-name ?row) (column-name ?col) " has 2 candidates" crlf)
;	(retract ?f)
)


(defrule count-nb-cand-3
	(declare (salience ?*nb-cand-salience*))
	(play)
	(technique nb-cand  ?cont)
	
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb1))
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb2&:(> ?nb2 ?nb1))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb3&:(> ?nb3 ?nb2))) 
	(not (candidate (context ?cont) (row ?row) (column ?col) (number ?nb4&:(> ?nb4 ?nb3))))
	?f <- (cand-3 ?cont)
=>
	(printout t "cell " (row-name ?row) (column-name ?col) " has 3 candidates" crlf)
;	(retract ?f)
)


(defrule count-nb-cand-4
	(declare (salience ?*nb-cand-salience*))
	(play)
	(technique nb-cand  ?cont)
	
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb1))
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb2&:(> ?nb2 ?nb1))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb3&:(> ?nb3 ?nb2))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb4&:(> ?nb4 ?nb3))) 
	(not (candidate (context ?cont) (row ?row) (column ?col) (number ?nb5&:(> ?nb5 ?nb4)))) 
	?f <- (cand-4 ?cont)
=>
	(printout t "cell " (row-name ?row) (column-name ?col) " has 4 candidates" crlf)
	(retract ?f)
)


(defrule count-nb-cand-5
	(declare (salience ?*nb-cand-salience*))
	(play)
	(technique nb-cand  ?cont)
	
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb1))
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb2&:(> ?nb2 ?nb1))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb3&:(> ?nb3 ?nb2))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb4&:(> ?nb4 ?nb3))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb5&:(> ?nb5 ?nb4))) 
	(not (candidate (context ?cont) (row ?row) (column ?col) (number ?nb6&:(> ?nb6 ?nb5))))
	?f <- (cand-5 ?cont)
=>
	(printout t "cell " (row-name ?row) (column-name ?col) " has 5 candidates" crlf)
	(retract ?f)
)


(defrule count-nb-cand-6
	(declare (salience ?*nb-cand-salience*))
	(play)
	(technique nb-cand  ?cont)
	
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb1))
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb2&:(> ?nb2 ?nb1))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb3&:(> ?nb3 ?nb2))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb4&:(> ?nb4 ?nb3))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb5&:(> ?nb5 ?nb4))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb6&:(> ?nb6 ?nb5))) 
	(not (candidate (context ?cont) (row ?row) (column ?col) (number ?nb7&:(> ?nb7 ?nb6))))
	?f <- (cand-6 ?cont)
=>
	(printout t "cell " (row-name ?row) (column-name ?col) " has 6 candidates" crlf)
	(retract ?f)
)


(defrule count-nb-cand-7
	(declare (salience ?*nb-cand-salience*))
	(play)
	(technique nb-cand  ?cont)
	
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb1))
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb2&:(> ?nb2 ?nb1))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb3&:(> ?nb3 ?nb2))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb4&:(> ?nb4 ?nb3))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb5&:(> ?nb5 ?nb4))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb6&:(> ?nb6 ?nb5))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb7&:(> ?nb7 ?nb6)))
	(not (candidate (context ?cont) (row ?row) (column ?col) (number ?nb8&:(> ?nb8 ?nb7))))
	?f <- (cand-7 ?cont)
=>
	(printout t "cell " (row-name ?row) (column-name ?col) " has 7 candidates" crlf)
	(retract ?f)
)


(defrule count-nb-cand-8
	(declare (salience ?*nb-cand-salience*))
	(play)
	(technique nb-cand  ?cont)
	
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb1))
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb2&:(> ?nb2 ?nb1))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb3&:(> ?nb3 ?nb2))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb4&:(> ?nb4 ?nb3))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb5&:(> ?nb5 ?nb4))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb6&:(> ?nb6 ?nb5))) 
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb7&:(> ?nb7 ?nb6)))
	(candidate (context ?cont) (row ?row) (column ?col) (number ?nb8&:(> ?nb8 ?nb7)))
	(not (candidate (context ?cont) (row ?row) (column ?col) (number ?nb9&:(> ?nb9 ?nb8))))
	?f <- (cand-8 ?cont)
=>
	(printout t "cell " (row-name ?row) (column-name ?col) " has 8 candidates" crlf)
	(retract ?f)
)

