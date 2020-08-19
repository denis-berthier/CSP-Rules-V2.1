
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ASYMMETRIC CORNER
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





(defrule activate-asymmetric-corner
	(declare (salience ?*detect-asymmetric-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont asymmetric-corner))
=>
	(assert (technique ?cont asymmetric-corner))
)
    


(defrule detect-asymmetric-corner-nw
	(declare (salience ?*detect-asymmetric-corner-salience*))
    (technique ?cont asymmetric-corner)
        
    (row ?row&~0&:(neq ?row (+ ?*nb-rows* 1)))
    (column ?col&~0&:(neq ?col (+ ?*nb-columns* 1)))
    (diagonal-vector ?diag&nw)
    (forall (candidate (context ?cont) (type P) (row ?rowx&?row) (column ?colx&?col) (value ?valx))
        (test (and (neq ?valx 1) (neq ?valx 4) (neq ?valx 5))) ; o, nw, se
    )
=>
    (assert (asymmetric-corner ?cont ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-asymmetric-corner*) then
        (printout t (str-cat "w[1]-" (row-name ?row) (column-name ?col) "-asymmetric-" ?diag "-corner") crlf)
    )
)
  


(defrule detect-asymmetric-corner-ne
	(declare (salience ?*detect-asymmetric-corner-salience*))
    (technique ?cont asymmetric-corner)

    (row ?row&~0&:(neq ?row (+ ?*nb-rows* 1)))
    (column ?col&~0&:(neq ?col (+ ?*nb-columns* 1)))
    (diagonal-vector ?diag&ne)
    (forall (candidate (context ?cont) (type P) (row ?rowx&?row) (column ?colx&:(eq ?colx (+ ?col 1))) (value ?valx))
        (test (and (neq ?valx 1) (neq ?valx 2) (neq ?valx 7))) ; o, ne, sw
    )
=>
    (assert (asymmetric-corner ?cont ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-asymmetric-corner*) then
        (printout t (str-cat "w[1]-" (row-name ?row) (column-name ?col) "-asymmetric-" ?diag "-corner") crlf)
    )
)
    


(defrule detect-asymmetric-corner-sw
	(declare (salience ?*detect-asymmetric-corner-salience*))
    (technique ?cont asymmetric-corner)
        
    (row ?row&~0&:(neq ?row (+ ?*nb-rows* 1)))
    (column ?col&~0&:(neq ?col (+ ?*nb-columns* 1)))
    (diagonal-vector ?diag&sw)
    (forall (candidate (context ?cont) (type P) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?colx&?col) (value ?valx))
        (test (and (neq ?valx 1) (neq ?valx 2) (neq ?valx 7))) ; o, ne, sw
    )
=>
    (assert (asymmetric-corner ?cont ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-asymmetric-corner*) then
        (printout t (str-cat "w[1]-" (row-name ?row) (column-name ?col) "-asymmetric-" ?diag "-corner") crlf)
    )
)
    


(defrule detect-asymmetric-corner-se
	(declare (salience ?*detect-asymmetric-corner-salience*))
    (technique ?cont asymmetric-corner)
        
    (row ?row&~0&:(neq ?row (+ ?*nb-rows* 1)))
    (column ?col&~0&:(neq ?col (+ ?*nb-columns* 1)))
    (diagonal-vector ?diag&se)
    (forall (candidate (context ?cont) (type P) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?colx&:(eq ?colx (+ ?col 1))) (value ?valx))
        (test (and (neq ?valx 1) (neq ?valx 4) (neq ?valx 5))) ; o, nw, se
    )
=>
    (assert (asymmetric-corner ?cont ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-asymmetric-corner*) then
        (printout t (str-cat "w[1]-" (row-name ?row) (column-name ?col) "-asymmetric-" ?diag "-corner") crlf)
    )
)



