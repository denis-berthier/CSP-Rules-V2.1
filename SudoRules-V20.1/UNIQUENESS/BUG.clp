
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              BINARY UNIVERSAL GRAVE (BUG)
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





;;; WARNING: this rule depends on the assumption of uniqueness
;;; do NOT use this rule if you are not sure the puzzle has a unique solution

(defrule activate-bug
	(declare (salience ?*bug-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont bug))
=>
	(assert (technique ?cont bug))
	(bind ?*level* Uniqueness)
	(bind ?*technique* (sym-cat ?*technique* +BUG))
)



(defrule bug
	(declare (salience ?*bug-salience*))
	(technique ?cont bug)

    ;;; find a cell with exactly three candidates:
    (candidate (context ?cont) (status cand) (row ?row) (column ?col) (block ?blk) (square ?sq) (number ?nb))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col) (number ?nb1&~?nb))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col) (number ?nb2&~?nb&:(< ?nb1 ?nb2)))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col) (number ?nbx&~?nb&~?nb1&~?nb2)))
    ;(test (printout t "OK1: 3-valued cell identified: " (row-name ?row) (column-name ?col) " " ?nb crlf))
	
    ;;; all the other rc-cells are either solved or bivalue:
	(forall (row ?rowx)
		(forall (column ?colx)
			(or (test (and (eq ?rowx ?row) (eq ?colx ?col)))
				(exists (candidate (context ?cont) (status c-value) (row ?rowx) (column ?colx)))
				(and (candidate (context ?cont) (status cand) (row ?rowx) (column ?colx) (number ?nbx1))
                    (candidate (context ?cont) (status cand) (row ?rowx) (column ?colx) (number ?nbx2&:(< ?nbx1 ?nbx2)))
                    (not (candidate (context ?cont) (status cand) (row ?rowx) (column ?colx) (number ?nbx&~?nbx1&~?nbx2)))
				)
			)
		)
	)
    ;(test (printout t "OK3: all the other rc cells are either solved or bivalue." crlf))

    ;;; all the other rn cells are either solved or bivalue:
    (forall (row ?rowx)
        (forall (number ?nbx)
            (or (test (and (eq ?rowx ?row) (eq ?nbx ?nb)))
                (exists (candidate (context ?cont) (status c-value) (row ?rowx) (number ?nbx)))
                (and (candidate (context ?cont) (status cand) (row ?rowx) (number ?nbx) (column ?colx1))
                    (candidate (context ?cont) (status cand) (row ?rowx) (number ?nbx) (column ?colx2&:(< ?colx1 ?colx2)))
                    (not (candidate (context ?cont) (status cand) (row ?rowx) (number ?nbx) (column ?colx&~?colx1&~?colx2)))
                )
            )
        )
    )
    ;(test (printout t "OK4: all the other rn cells are either solved or bivalue." crlf))

    ;;; all the other cn cells are either solved or bivalue:
    (forall (column ?colx)
        (forall (number ?nbx)
            (or (test (and (eq ?colx ?col) (eq ?nbx ?nb)))
                (exists (candidate (context ?cont) (status c-value) (column ?colx) (number ?nbx)))
                (and (candidate (context ?cont) (status cand) (column ?colx) (number ?nbx) (row ?rowx1))
                    (candidate (context ?cont) (status cand) (column ?colx) (number ?nbx) (row ?rowx2&:(< ?rowx1 ?rowx2)))
                    (not (candidate (context ?cont) (status cand) (column ?colx) (number ?nbx) (row ?rowx&~?rowx1&~?rowx2)))
                )
            )
        )
    )
    ;(test (printout t "OK5: all the other cn cells are either solved or bivalue." crlf))

    ;;; all the other bn cells are either solved or bivalue:
    (forall (block ?blkx)
        (forall (number ?nbx)
            (or (test (and (eq ?blkx ?blk) (eq ?nbx ?nb)))
                (exists (candidate (context ?cont) (status c-value) (block ?blkx) (number ?nbx)))
                (and (candidate (context ?cont) (status cand) (block ?blkx) (number ?nbx) (square ?sqx1))
                    (candidate (context ?cont) (status cand) (block ?blkx) (number ?nbx) (square ?sqx2&:(< ?sqx1 ?sqx2)))
                    (not (candidate (context ?cont) (status cand) (block ?blkx) (number ?nbx) (square ?sqx&~?sqx1&~?sqx2)))
                )
            )
        )
    )
    ;(test (printout t "OK6: all the other bn cells are either solved or bivalue." crlf))

    ;(test (printout t "OK7: play is activated" crlf))
=>
    ;(printout t "OK8: rule is activated" crlf)
	(printout t "************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************" crlf)
    (print-current-resolution-state-all-views)
    (bind ?lab (nrc-to-label ?nb ?row ?col))
	(assert (candidate (context ?cont) (status c-value) (label ?lab) (number ?nb) (row ?row) (column ?col) (block ?blk) (square ?sq)))
	(if (or ?*print-actions* ?*print-bug*) then
		(printout t "bug+1 for number " (number-name ?nb) " in cell " (row-name ?row) (column-name ?col))
		(printout t ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)


