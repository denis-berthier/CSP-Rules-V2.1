
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              SQUARE OF 2s
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





;;; If a 2 has any surrounding line X’d, then a line coming into either of the two corners not adjacent to the X’d out line cannot immediately exit at right angles away from the 2, as then two lines around the 2 would be impossible, and can therefore be X’d. This means that the incoming line must continue on one side of the 2 or the other. This in turn means that the second line of the 2 must be on the only remaining free side, adjacent to the originally X’d line, so that can be filled in.
;;; Conversely, if a 2 has a line on one side, and an adjacent X’d out line, then the second line must be in one of the two remaining sides, and exit from the opposite corner (in either direction). If either of those two exits is X’d out, then it must take the other route.


(defrule activate-square-of-2s
	(declare (salience ?*activate-square-of-2s-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont square-of-2s))
=>
	(assert (technique ?cont square-of-2s))
	(bind ?*technique* square-of-2s)
)
    



(defrule square-of-2s
	(declare (salience ?*square-of-2s-salience*))
    (technique ?cont square-of-2s)
        
    (row ?row&~0&:(<= ?row ?*nb-rows*))
    (column ?col&~0&:(<= ?col ?*nb-columns*))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?colx&:(eq ?colx (+ ?col 1))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?col) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?colx&:(eq ?colx (+ ?col 1))) (value 2))
    ;;; the center of the square must have lines (value = 1 means no line)
    ?cand <- (candidate (context ?cont) (type P) (status cand) (row ?rowz&:(eq ?rowz (+ ?row 1))) (column ?colz&:(eq ?colz (+ ?col 1))) (value 1))
=>
    (retract ?cand)
	(if (or ?*print-actions* ?*print-squares-of-2s*) then
        (printout t "square-of-2s-se-of-" (row-name ?row) (column-name ?col) ?*implication-sign* "P" (row-name (+ ?row 1)) (column-name (+ ?col 1)) ?*non-equal-sign* o crlf)
    )
)





