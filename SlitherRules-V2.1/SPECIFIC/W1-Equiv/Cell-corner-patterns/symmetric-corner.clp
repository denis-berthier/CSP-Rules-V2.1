
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              SYMMETRIC CORNER
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





(defrule activate-symmetric-corner
	(declare (salience ?*detect-symmetric-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont symmetric-corner))
=>
	(assert (technique ?cont symmetric-corner))
)
    


(defrule detect-symmetric-corner-nw
	(declare (salience ?*detect-symmetric-corner-salience*))
    (technique ?cont symmetric-corner)
        
    (row ?row&~0&:(neq ?row (+ ?*nb-rows* 1)))
    (column ?col&~0&:(neq ?col (+ ?*nb-columns* 1)))
    (diagonal-vector ?diag&nw)
    (forall (candidate (context ?cont) (type P) (row ?rowx&?row) (column ?colx&?col) (value ?valx))
        (test (or (eq ?valx 1) (eq ?valx 4) (eq ?valx 5))) ; o, nw, se
    )
=>
    (assert (symmetric-corner ?cont ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-symmetric-corner*) then
        (printout t (str-cat "w[1]-" (row-name ?row) (column-name ?col) "-symmetric-" ?diag "-corner") crlf)
    )
)
  


(defrule detect-symmetric-corner-ne
	(declare (salience ?*detect-symmetric-corner-salience*))
    (technique ?cont symmetric-corner)

    (row ?row&~0&:(neq ?row (+ ?*nb-rows* 1)))
    (column ?col&~0&:(neq ?col (+ ?*nb-columns* 1)))
    (diagonal-vector ?diag&ne)
    (forall (candidate (context ?cont) (type P) (row ?rowx&?row) (column ?colx&:(eq ?colx (+ ?col 1))) (value ?valx))
        (test (or (eq ?valx 1) (eq ?valx 2) (eq ?valx 7))) ; o, ne, sw
    )
=>
    (assert (symmetric-corner ?cont ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-symmetric-corner*) then
        (printout t "w[1]-" (str-cat (row-name ?row) (column-name ?col) "-symmetric-" ?diag "-corner") crlf)
    )
)
    


(defrule detect-symmetric-corner-sw
	(declare (salience ?*detect-symmetric-corner-salience*))
    (technique ?cont symmetric-corner)
        
    (row ?row&~0&:(neq ?row (+ ?*nb-rows* 1)))
    (column ?col&~0&:(neq ?col (+ ?*nb-columns* 1)))
    (diagonal-vector ?diag&sw)
    (forall (candidate (context ?cont) (type P) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?colx&?col) (value ?valx))
        (test (or (eq ?valx 1) (eq ?valx 2) (eq ?valx 7))) ; o, ne, sw
    )
=>
    (assert (symmetric-corner ?cont ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-symmetric-corner*) then
        (printout t (str-cat "w[1]-" (row-name ?row) (column-name ?col) "-symmetric-" ?diag "-corner") crlf)
    )
)
    


(defrule detect-symmetric-corner-se
	(declare (salience ?*detect-symmetric-corner-salience*))
    (technique ?cont symmetric-corner)
        
    (row ?row&~0&:(neq ?row (+ ?*nb-rows* 1)))
    (column ?col&~0&:(neq ?col (+ ?*nb-columns* 1)))
    (diagonal-vector ?diag&se)
    (forall (candidate (context ?cont) (type P) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?colx&:(eq ?colx (+ ?col 1))) (value ?valx))
        (test (or (eq ?valx 1) (eq ?valx 4) (eq ?valx 5))) ; o, nw, se
    )
=>
    (assert (symmetric-corner ?cont ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-symmetric-corner*) then
        (printout t (str-cat "w[1]-" (row-name ?row) (column-name ?col) "-symmetric-" ?diag "-corner") crlf)
    )
)



