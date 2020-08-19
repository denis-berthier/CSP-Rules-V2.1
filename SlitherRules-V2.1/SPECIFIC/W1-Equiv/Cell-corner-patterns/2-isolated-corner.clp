
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              2 ISOLATED CORNER
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





(defrule activate-2-isolated-corner
	(declare (salience ?*detect-2-isolated-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont corners))
=>
	(assert (technique ?cont 2-isolated-corner))
	(bind ?*technique* 2-isolated-corner)
)
    



(defrule detect-2-isolated-corner
	(declare (salience ?*detect-2-isolated-corner-salience*))
    (technique ?cont 2-isolated-corner)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 2))
    (diagonal-vector ?diag)
    (not (2-isolated-corner ?cont ?row ?col ?diag))

    (candidate (context ?cont) (status c-value) (type H) (row ?rowH) (column ?colH) (value 0))
    (test
        (or (and (eq ?diag nw) (eq ?rowH ?row) (eq ?colH (- ?col 1)))
            (and (eq ?diag ne) (eq ?rowH ?row) (eq ?colH (+ ?col 1)))
            (and (eq ?diag se) (eq ?rowH (+ ?row 1)) (eq ?colH (+ ?col 1)))
            (and (eq ?diag sw) (eq ?rowH (+ ?row 1)) (eq ?colH (- ?col 1)))
        )
    )
    (candidate (context ?cont) (status c-value) (type V) (row ?rowV) (column ?colV) (value 0))
    (test
        (or (and (eq ?diag nw) (eq ?rowV (- ?row 1)) (eq ?colV ?col))
            (and (eq ?diag ne) (eq ?rowV (- ?row 1)) (eq ?colV (+ ?col 1)))
            (and (eq ?diag sw) (eq ?rowV (+ ?row 1)) (eq ?colV ?col))
            (and (eq ?diag se) (eq ?rowV (+ ?row 1)) (eq ?colV (+ ?col 1)))
        )
    )
=>
    (assert (2-isolated-corner ?cont ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-2-isolated-corner*) then
        (printout t "w[1]-2-in-" (row-name ?row) (column-name ?col) "-isolated-at-" ?diag "-corner" crlf)
    )
)





