
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              X2Y2 BELTS
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





(defglobal ?*print-x2y2-belts* = FALSE)


(defrule activate-x2y2-segment
	(declare (salience ?*x2y2-segment-salience*))
	(context (name ?cont))
	(play)
=>
	(assert (technique x2y2-segment ?cont))
)



(defrule activate-chainable-x2y2-segments
	(declare (salience ?*chainable-x2y2-segments-salience*))
	(context (name ?cont))
	(play)
=>
	(assert (technique chainable-x2y2-segments ?cont))
)

(defrule activate-x2y2-belt4
	(declare (salience ?*x2y2-belt4-salience*))
	(context (name ?cont))
	(play)
=>
	(assert (technique x2y2-belt4 ?cont))
	(bind ?*level* L8)
	(bind ?*technique* X2Y2-BELT4)
)

(defrule activate-x2y2-belt6
	(declare (salience ?*x2y2-belt6-salience*))
	(context (name ?cont))
	(play)
=>
	(assert (technique x2y2-belt6 ?cont))
	(bind ?*level* L12)
	(bind ?*technique* X2Y2-BELT6)
)

(defrule activate-x2y2-belts8
	(declare (salience ?*x2y2-belts8-salience*))
	(context (name ?cont))
	(play)
=>
	(assert (technique x2y2-belts8 ?cont))
	(bind ?*level* L16)
	(bind ?*technique* X2Y2-BELT8)
)
	
	
	
(deffunction nrc-print-4values(?a ?b ?c ?d)
	(printout t ?*nrc-starting-cell-symbol* 
		(numeral-name ?a) ?*nrc-separation-sign-in-cell* (numeral-name ?b) ?*nrc-separation-sign-in-cell* 
		(numeral-name ?c) ?*nrc-separation-sign-in-cell* (numeral-name ?d) ?*nrc-ending-cell-symbol*
	)
)
	
	
(deffunction print-x2y2-segment (?type ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1)
	(if (eq ?type ROW) then
		(printout t 
			(row-name ?row1) 
			?*nrc-starting-cell-symbol* (column-name ?col1) ?*nrc-separation-sign-in-cell* (column-name ?col1p) ?*nrc-ending-cell-symbol*
			(print-4values ?a1 ?b1 ?c1 ?d1)
		)
	)
	(if (eq ?type COL) then
		(printout t 
			?*nrc-starting-cell-symbol* (row-name ?row1) ?*nrc-separation-sign-in-cell* (row-name ?row1p) ?*nrc-ending-cell-symbol*
			(column-name ?col1) 
			(print-4values ?a1 ?b1 ?c1 ?d1)
		)
	)
)


(defrule row-x2y2-segment
	(declare (salience ?*x2y2-segment-salience*))
	(logical
		(technique x2y2-segment ?cont)
		;;; x2y2-segment in a row ?row and block ?b
		(candidate (context ?cont) (status cand) (block ?bl) (row ?row) (column ?col1) (square ?sq1) (number ?a1))
		(candidate (context ?cont) (status cand) (block ?bl) (row ?row) (column ?col1) (number ?c1&~?a1))
	
		(candidate (context ?cont) (status cand) (block ?bl) (row ?row) (column ?col1p&:(< ?col1 ?col1p)) (square ?sq1p) (number ?b1&~a1&~?c1))
		(candidate (context ?cont) (status cand) (block ?bl) (row ?row) (column ?col1p) (number ?d1&~?a1&~?c1&~?b1))
	)
	
	(not (candidate (context ?cont) (status cand) (block ?bl) (row ?row) (column ?col1) (number ?nbx&~?a1&~?b1&~?c1&~?d1)))
	(not (candidate (context ?cont) (status cand) (block ?bl) (row ?row) (column ?col1p) (number ?nbx&~?a1&~?b1&~?c1&~?d1)))
	
	(play)
=>
	(assert (x2y2-segment ?cont ROW ?row ?col1 ?bl ?sq1 ?row ?col1p ?bl ?sq1p ?a1 ?b1 ?c1 ?d1))
	(assert (x2y2-segment ?cont ROW ?row ?col1p ?bl ?sq1p ?row ?col1 ?bl ?sq1 ?b1 ?a1 ?d1 ?c1))
;	(print-x2y2-segment ROW ?row ?col1 ?bl ?sq1 ?row ?col1p ?bl ?sq1p ?a1 ?b1 ?c1 ?d1)
;	(printout t crlf)
)


(defrule column-x2y2-segment
	(declare (salience ?*x2y2-segment-salience*))
	(logical
		(technique x2y2-segment ?cont)
		;;; x2y2-segment in a column ?col and block ?b
		(candidate (context ?cont) (status cand) (block ?bl) (column ?col) (row ?row1) (square ?sq1) (number ?a1))
		(candidate (context ?cont) (status cand) (block ?bl) (column ?col) (row ?row1) (number ?c1&~?a1))
	
		(candidate (context ?cont) (status cand) (block ?bl) (column ?col) (row ?row1p&:(< ?row1 ?row1p)) (square ?sq1p) (number ?b1&~a1&~?c1))
		(candidate (context ?cont) (status cand) (block ?bl) (column ?col) (row ?row1p) (number ?d1&~?a1&~?c1&~?b1))
	)
	
	(not (candidate (context ?cont) (status cand) (block ?bl) (column ?col) (row ?row1) (number ?nbx&~?a1&~?b1&~?c1&~?d1)))
	(not (candidate (context ?cont) (status cand) (block ?bl) (column ?col) (row ?row1p) (number ?nbx&~?a1&~?b1&~?c1&~?d1)))
	
	(play)
=>
	(assert (x2y2-segment ?cont COL ?row1 ?col ?bl ?sq1 ?row1p ?col ?bl ?sq1p ?a1 ?b1 ?c1 ?d1))
	(assert (x2y2-segment ?cont COL ?row1p ?col ?bl ?sq1p ?row1 ?col ?bl ?sq1 ?b1 ?a1 ?d1 ?c1))
;	(print-x2y2-segment COL ?row1 ?col ?bl ?sq1 ?row1p ?col ?bl ?sq1p ?a1 ?b1 ?c1 ?d1)
;	(printout t crlf)
)




(deffunction chainable-x2y2-segments
	(
		?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?x1 ?x1p ?y1 ?y1p
		?type2 ?row2 ?col2 ?bl2 ?sq2 ?row2p ?col2p ?bl2p ?sq2p ?x2 ?x2p ?y2 ?y2p
	)
	(and
		(or (and (eq ?y1 ?x2) (eq ?y1p ?x2p)) (and (eq ?y1 ?x2p) (eq ?y1p ?x2)))
		(or 
			(and (eq ?type1 ROW) (eq ?type2 ROW) (eq ?row1 ?row2) (neq ?bl1 ?bl2))
			(and (eq ?type1 COL) (eq ?type2 COL) (eq ?col1 ?col2) (neq ?bl1 ?bl2))
			(and 
				(eq ?type1 ROW) (eq ?type2 COL) (eq ?bl1 ?bl2)
				;(neq ?sq1 ?sq2) (neq ?sq1 sq2p) (neq ?sq1p ?sq2) (neq ?sq1p sq2p)
				(not-same-cell ?row1 ?col1 ?row2 ?col2)
				(not-same-cell ?row1 ?col1 ?row2p ?col2p)
				(not-same-cell ?row1p ?col1p ?row2 ?col2)
				(not-same-cell ?row1p ?col1p ?row2p ?col2p)
			)
			(and 
				(eq ?type1 COL) (eq ?type2 ROW) (eq ?bl1 ?bl2)
				;(neq ?sq1 ?sq2) (neq ?sq1 sq2p) (neq ?sq1p ?sq2) (neq ?sq1p sq2p)
				(not-same-cell ?row1 ?col1 ?row2 ?col2)
				(not-same-cell ?row1 ?col1 ?row2p ?col2p)
				(not-same-cell ?row1p ?col1p ?row2 ?col2)
				(not-same-cell ?row1p ?col1p ?row2p ?col2p)
			)
			(and (eq ?type1 ROW) (eq ?type2 ROW) (neq ?row1 ?row2) (eq ?bl1 ?bl2))
			(and (eq ?type1 COL) (eq ?type2 COL) (neq ?col1 ?col2) (eq ?bl1 ?bl2))
		)
	)
)
	





(defrule L16-x2y2-belt4
	(declare (salience ?*x2y2-belt4-salience*))
	(grid ?g)
	(technique x2y2-belt4 ?cont)
	
	(x2y2-segment ?cont ?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1)
	(x2y2-segment ?cont ?type2 ?row2 ?col2 ?bl2 ?sq2 ?row2p ?col2p ?bl2p ?sq2p ?a2 ?b2 ?c2 ?d2)
	(test
		(chainable-x2y2-segments
			?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1
			?type2 ?row2 ?col2 ?bl2 ?sq2 ?row2p ?col2p ?bl2p ?sq2p ?a2 ?b2 ?c2 ?d2
		))
	(x2y2-segment ?cont ?type3 ?row3 ?col3 ?bl3 ?sq3 ?row3p ?col3p ?bl3p ?sq3p ?a3 ?b3 ?c3 ?d3)
	(test
		(chainable-x2y2-segments
			?type2 ?row2 ?col2 ?bl2 ?sq2 ?row2p ?col2p ?bl2p ?sq2p ?a2 ?b2 ?c2 ?d2
			?type3 ?row3 ?col3 ?bl3 ?sq3 ?row3p ?col3p ?bl3p ?sq3p ?a3 ?b3 ?c3 ?d3
		))
	(x2y2-segment ?cont ?type4 ?row4 ?col4 ?bl4 ?sq4 ?row4p ?col4p ?bl4p ?sq4p ?a4 ?b4 ?c4 ?d4)
	(test
		(chainable-x2y2-segments
			?type3 ?row3 ?col3 ?bl3 ?sq3 ?row3p ?col3p ?bl3p ?sq3p ?a3 ?b3 ?c3 ?d3
			?type4 ?row4 ?col4 ?bl4 ?sq4 ?row4p ?col4p ?bl4p ?sq4p ?a4 ?b4 ?c4 ?d4
		))
	(x2y2-segment ?cont ?type5 ?row5 ?col5 ?bl5 ?sq5 ?row5p ?col5p ?bl5p ?sq5p ?a5 ?b5 ?c5 ?d5)
	(test
		(chainable-x2y2-segments
			?type4 ?row4 ?col4 ?bl4 ?sq4 ?row4p ?col4p ?bl4p ?sq4p ?a4 ?b4 ?c4 ?d4
			?type5 ?row5 ?col5 ?bl5 ?sq5 ?row5p ?col5p ?bl5p ?sq5p ?a5 ?b5 ?c5 ?d5
		))
	(x2y2-segment ?cont ?type6 ?row6 ?col6 ?bl6 ?sq6 ?row6p ?col6p ?bl6p ?sq6p ?a6 ?b6 ?c6 ?d6)
	(test
		(chainable-x2y2-segments
			?type5 ?row5 ?col5 ?bl5 ?sq5 ?row5p ?col5p ?bl5p ?sq5p ?a5 ?b5 ?c5 ?d5
			?type6 ?row6 ?col6 ?bl6 ?sq6 ?row6p ?col6p ?bl6p ?sq6p ?a6 ?b6 ?c6 ?d6
		))
	(x2y2-segment ?cont ?type7 ?row7 ?col7 ?bl7 ?sq7 ?row7p ?col7p ?bl7p ?sq7p ?a7 ?b7 ?c7 ?d7)
	(test
		(chainable-x2y2-segments
			?type6 ?row6 ?col6 ?bl6 ?sq6 ?row6p ?col6p ?bl6p ?sq6p ?a6 ?b6 ?c6 ?d6
			?type7 ?row7 ?col7 ?bl7 ?sq7 ?row7p ?col7p ?bl7p ?sq7p ?a7 ?b7 ?c7 ?d7
		))
	(x2y2-segment ?cont ?type8 ?row8 ?col8 ?bl8 ?sq8 ?row8p ?col8p ?bl8p ?sq8p ?a8 ?b8 ?c8 ?d8)
	(test
		(chainable-x2y2-segments
			?type7 ?row7 ?col7 ?bl7 ?sq7 ?row7p ?col7p ?bl7p ?sq7p ?a7 ?b7 ?c7 ?d7
			?type8 ?row8 ?col8 ?bl8 ?sq8 ?row8p ?col8p ?bl8p ?sq8p ?a8 ?b8 ?c8 ?d8
		))

	;;; tie the x2y2-belt:
	(test
		(chainable-x2y2-segments
			?type8 ?row8 ?col8 ?bl8 ?sq8 ?row8p ?col8p ?bl8p ?sq8p ?a8 ?b8 ?c8 ?d8
			?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1
		))

	;;; then retract ?a1 and ?b1 from any other cell in type1xtype2 (i.e. in row1, col1 or bl1)
	?candz <- (candidate (context ?cont) (status cand) (number ?nbz) (row ?rowz) (column ?colz) (block ?blz) (square ?sqz))
	(test (and (or (eq ?nbz ?a1) (eq ?nbz ?b1))
				(not-same-cell ?rowz ?colz ?row1 ?col1)
				(not-same-cell ?rowz ?colz ?row1p ?col1p)
				(not-same-cell ?rowz ?colz ?row8 ?col8)
				(not-same-cell ?rowz ?colz ?row8p ?col8p)
		))
	(test (or (and (eq ?type1 ROW) (eq ?type8 ROW) (eq ?rowz ?row1))
			 (and (eq ?type1 COL) (eq ?type8 COL) (eq ?colz ?col1))
			 (and (eq ?type1 ROW) (eq ?type8 COL) (eq ?blz ?bl1))
			 (and (eq ?type1 COL) (eq ?type8 ROW) (eq ?blz ?bl1))
		))
	(play)
=>
	(retract ?candz)
	(bind ?*special-list1* (union$ ?*special-list1* (create$ ?g)))
	(if (or ?*print-actions* ?*print-L16* ?*print-x2y2-belts*) then
		(printout t "x2y2-belt4 ")
		(print-x2y2-segment ?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type2 ?row2 ?col2 ?bl2 ?sq2 ?row2p ?col2p ?bl2p ?sq2p ?a2 ?b2 ?c2 ?d2)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type3 ?row3 ?col3 ?bl3 ?sq3 ?row3p ?col3p ?bl3p ?sq3p ?a3 ?b3 ?c3 ?d3)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type4 ?row4 ?col4 ?bl4 ?sq4 ?row4p ?col4p ?bl4p ?sq4p ?a4 ?b4 ?c4 ?d4)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type5 ?row5 ?col5 ?bl5 ?sq5 ?row5p ?col5p ?bl5p ?sq5p ?a5 ?b5 ?c5 ?d5)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type6 ?row6 ?col6 ?bl6 ?sq6 ?row6p ?col6p ?bl6p ?sq6p ?a6 ?b6 ?c6 ?d6)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type7 ?row7 ?col7 ?bl7 ?sq7 ?row7p ?col7p ?bl7p ?sq7p ?a7 ?b7 ?c7 ?d7)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type8 ?row8 ?col8 ?bl8 ?sq8 ?row8p ?col8p ?bl8p ?sq8p ?a8 ?b8 ?c8 ?d8)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1)
		(printout t "  " ?*nrc-implication-sign* (row-name ?rowz) (column-name ?colz) " <> " ?nbz crlf)
	)
)




(defrule L24-x2y2-belt6
	(declare (salience ?*x2y2-belt6-salience*))
	(grid ?g)
	(technique x2y2-belt6 ?cont)
	
	(x2y2-segment ?cont ?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1)
	(x2y2-segment ?cont ?type2 ?row2 ?col2 ?bl2 ?sq2 ?row2p ?col2p ?bl2p ?sq2p ?a2 ?b2 ?c2 ?d2)
	(test
		(chainable-x2y2-segments
			?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1
			?type2 ?row2 ?col2 ?bl2 ?sq2 ?row2p ?col2p ?bl2p ?sq2p ?a2 ?b2 ?c2 ?d2
		))
	(x2y2-segment ?cont ?type3 ?row3 ?col3 ?bl3 ?sq3 ?row3p ?col3p ?bl3p ?sq3p ?a3 ?b3 ?c3 ?d3)
	(test
		(chainable-x2y2-segments
			?type2 ?row2 ?col2 ?bl2 ?sq2 ?row2p ?col2p ?bl2p ?sq2p ?a2 ?b2 ?c2 ?d2
			?type3 ?row3 ?col3 ?bl3 ?sq3 ?row3p ?col3p ?bl3p ?sq3p ?a3 ?b3 ?c3 ?d3
		))
	(x2y2-segment ?cont ?type4 ?row4 ?col4 ?bl4 ?sq4 ?row4p ?col4p ?bl4p ?sq4p ?a4 ?b4 ?c4 ?d4)
	(test
		(chainable-x2y2-segments
			?type3 ?row3 ?col3 ?bl3 ?sq3 ?row3p ?col3p ?bl3p ?sq3p ?a3 ?b3 ?c3 ?d3
			?type4 ?row4 ?col4 ?bl4 ?sq4 ?row4p ?col4p ?bl4p ?sq4p ?a4 ?b4 ?c4 ?d4
		))
	(x2y2-segment ?cont ?type5 ?row5 ?col5 ?bl5 ?sq5 ?row5p ?col5p ?bl5p ?sq5p ?a5 ?b5 ?c5 ?d5)
	(test
		(chainable-x2y2-segments
			?type4 ?row4 ?col4 ?bl4 ?sq4 ?row4p ?col4p ?bl4p ?sq4p ?a4 ?b4 ?c4 ?d4
			?type5 ?row5 ?col5 ?bl5 ?sq5 ?row5p ?col5p ?bl5p ?sq5p ?a5 ?b5 ?c5 ?d5
		))
	(x2y2-segment ?cont ?type6 ?row6 ?col6 ?bl6 ?sq6 ?row6p ?col6p ?bl6p ?sq6p ?a6 ?b6 ?c6 ?d6)
	(test
		(chainable-x2y2-segments
			?type5 ?row5 ?col5 ?bl5 ?sq5 ?row5p ?col5p ?bl5p ?sq5p ?a5 ?b5 ?c5 ?d5
			?type6 ?row6 ?col6 ?bl6 ?sq6 ?row6p ?col6p ?bl6p ?sq6p ?a6 ?b6 ?c6 ?d6
		))
	(x2y2-segment ?cont ?type7 ?row7 ?col7 ?bl7 ?sq7 ?row7p ?col7p ?bl7p ?sq7p ?a7 ?b7 ?c7 ?d7)
	(test
		(chainable-x2y2-segments
			?type6 ?row6 ?col6 ?bl6 ?sq6 ?row6p ?col6p ?bl6p ?sq6p ?a6 ?b6 ?c6 ?d6
			?type7 ?row7 ?col7 ?bl7 ?sq7 ?row7p ?col7p ?bl7p ?sq7p ?a7 ?b7 ?c7 ?d7
		))
	(x2y2-segment ?cont ?type8 ?row8 ?col8 ?bl8 ?sq8 ?row8p ?col8p ?bl8p ?sq8p ?a8 ?b8 ?c8 ?d8)
	(test
		(chainable-x2y2-segments
			?type7 ?row7 ?col7 ?bl7 ?sq7 ?row7p ?col7p ?bl7p ?sq7p ?a7 ?b7 ?c7 ?d7
			?type8 ?row8 ?col8 ?bl8 ?sq8 ?row8p ?col8p ?bl8p ?sq8p ?a8 ?b8 ?c8 ?d8
		))
	(x2y2-segment ?cont ?type9 ?row9 ?col9 ?bl9 ?sq9 ?row9p ?col9p ?bl9p ?sq9p ?a9 ?b9 ?c9 ?d9)
	(test
		(chainable-x2y2-segments
			?type8 ?row8 ?col8 ?bl8 ?sq8 ?row8p ?col8p ?bl8p ?sq8p ?a8 ?b8 ?c8 ?d8
			?type9 ?row9 ?col9 ?bl9 ?sq9 ?row9p ?col9p ?bl9p ?sq9p ?a9 ?b9 ?c9 ?d9
		))
	(x2y2-segment ?cont ?type10 ?row10 ?col10 ?bl10 ?sq10 ?row10p ?col10p ?bl10p ?sq10p ?a10 ?b10 ?c10 ?d10)
	(test
		(chainable-x2y2-segments
			?type9 ?row9 ?col9 ?bl9 ?sq9 ?row9p ?col9p ?bl9p ?sq9p ?a9 ?b9 ?c9 ?d9
			?type10 ?row10 ?col10 ?bl10 ?sq10 ?row10p ?col10p ?bl10p ?sq10p ?a10 ?b10 ?c10 ?d10
		))
	(x2y2-segment ?cont ?type11 ?row11 ?col11 ?bl11 ?sq11 ?row11p ?col11p ?bl11p ?sq11p ?a11 ?b11 ?c11 ?d11)
	(test
		(chainable-x2y2-segments
			?type10 ?row10 ?col10 ?bl10 ?sq10 ?row10p ?col10p ?bl10p ?sq10p ?a10 ?b10 ?c10 ?d10
			?type11 ?row11 ?col11 ?bl11 ?sq11 ?row11p ?col11p ?bl11p ?sq11p ?a11 ?b11 ?c11 ?d11
		))
	(x2y2-segment ?cont ?type12 ?row12 ?col12 ?bl12 ?sq12 ?row12p ?col12p ?bl12p ?sq12p ?a12 ?b12 ?c12 ?d12)
	(test
		(chainable-x2y2-segments
			?type11 ?row11 ?col11 ?bl11 ?sq11 ?row11p ?col11p ?bl11p ?sq11p ?a11 ?b11 ?c11 ?d11
			?type12 ?row12 ?col12 ?bl12 ?sq12 ?row12p ?col12p ?bl12p ?sq12p ?a12 ?b12 ?c12 ?d12
		))
		
	;;; tie the x2y2-belt:
	(test
		(chainable-x2y2-segments
			?type12 ?row12 ?col12 ?bl12 ?sq12 ?row12p ?col12p ?bl12p ?sq12p ?a12 ?b12 ?c12 ?d12
			?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1
		))

	;;; then retract ?c1 and ?d1 from any other cell in type1xtype2 (i.e. in row1, col1 or bl1)
	?candz <- (candidate (context ?cont) (status cand) (number ?nbz) (row ?rowz) (column ?colz) (block ?blz) (square ?sqz))
	(test (and (or (eq ?nbz ?a1) (eq ?nbz ?b1))
				(not-same-cell ?rowz ?colz ?row1 ?col1)
				(not-same-cell ?rowz ?colz ?row1p ?col1p)
				(not-same-cell ?rowz ?colz ?row12 ?col12)
				(not-same-cell ?rowz ?colz ?row12p ?col12p)
		))
	(test (or (and (eq ?type1 ROW) (eq ?type12 ROW) (eq ?rowz ?row1))
			 (and (eq ?type1 COL) (eq ?type12 COL) (eq ?colz ?col1))
			 (and (eq ?type1 ROW) (eq ?type12 COL) (eq ?blz ?bl1))
			 (and (eq ?type1 COL) (eq ?type12 ROW) (eq ?blz ?bl1))
		))
	(play)
=>
	(retract ?candz)
	(bind ?*special-list2* (union$ ?*special-list2* (create$ ?g)))
	(if (or ?*print-actions* ?*print-L24* ?*print-x2y2-belts*) then
		(printout t "x2y2-belt6 ")
		(print-x2y2-segment ?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type2 ?row2 ?col2 ?bl2 ?sq2 ?row2p ?col2p ?bl2p ?sq2p ?a2 ?b2 ?c2 ?d2)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type3 ?row3 ?col3 ?bl3 ?sq3 ?row3p ?col3p ?bl3p ?sq3p ?a3 ?b3 ?c3 ?d3)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type4 ?row4 ?col4 ?bl4 ?sq4 ?row4p ?col4p ?bl4p ?sq4p ?a4 ?b4 ?c4 ?d4)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type5 ?row5 ?col5 ?bl5 ?sq5 ?row5p ?col5p ?bl5p ?sq5p ?a5 ?b5 ?c5 ?d5)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type6 ?row6 ?col6 ?bl6 ?sq6 ?row6p ?col6p ?bl6p ?sq6p ?a6 ?b6 ?c6 ?d6)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type7 ?row7 ?col7 ?bl7 ?sq7 ?row7p ?col7p ?bl7p ?sq7p ?a7 ?b7 ?c7 ?d7)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type8 ?row8 ?col8 ?bl8 ?sq8 ?row8p ?col8p ?bl8p ?sq8p ?a8 ?b8 ?c8 ?d8)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type9 ?row9 ?col9 ?bl9 ?sq9 ?row9p ?col9p ?bl9p ?sq9p ?a9 ?b9 ?c9 ?d9)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type10 ?row10 ?col10 ?bl10 ?sq10 ?row10p ?col10p ?bl10p ?sq10p ?a10 ?b10 ?c10 ?d10)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type11 ?row11 ?col11 ?bl11 ?sq11 ?row11p ?col11p ?bl11p ?sq11p ?a11 ?b11 ?c11 ?d11)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type12 ?row12 ?col12 ?bl12 ?sq12 ?row12p ?col12p ?bl12p ?sq12p ?a12 ?b12 ?c12 ?d12)
		(printout t ?*nrc-link-symbol*)
		(print-x2y2-segment ?type1 ?row1 ?col1 ?bl1 ?sq1 ?row1p ?col1p ?bl1p ?sq1p ?a1 ?b1 ?c1 ?d1)
		(printout t "  " ?*nrc-implication-sign* (row-name ?rowz) (column-name ?colz) " <> " ?nbz crlf)
	)
)







