
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              BELT 4
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; This is my new version, with the definition in PBCS, slightly broader than on my website
;;; It also excludes the cases with decided ends, as in the 6 eleven's examples below
;;; ......7..4..18...6.....2.1..4..9...3..9..15.....7...2..6.......83.5.......4.3...8  10.8 10.8 09.9   
;;; 12.........6.8...2.8...3...2...65..8...9...4...7...5.......4.9....5..3...6..7...1  10.7 10.7 09.4   
;;; ..34......5...92..6...7.....1......8.....1.259..5..1...9...58....4.6.....6.3...7.  10.6 01.2 01.2   
;;; 1....6.8....7....2.8..3.......9....7....2.3....5..1.4...4..56...9......36......1.  10.6 01.2 01.2   
;;; 1..45..8.........6.....75..2.4.......1.2...9...9.3........6...7..18...2..8...53..  10.6 01.2 01.2   
;;; 12..5...9...7.....7.....5..2.1.4.9...9......4.4.6...2.3.2.1........6..92.....81..  10.6 01.2 01.2   


(deffunction print-cross (?bl ?r ?c ?c1 ?c2 ?r1 ?r2 ?h1 ?h2 ?v1 ?v2 ?i1 ?i2)
	(printout t "  cross in block " (block-name ?bl) " with center " (row-name ?r) (column-name ?c) crlf)
    (printout t "      horizontal outer candidates: " ?h1 " " ?h2 crlf)
    (printout t "      vertical outer candidates: " ?v1 " " ?v2 crlf)
    (printout t "      inner candidates: " ?i1 " " ?i2 crlf)
)


(deffunction print-belt4 (?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                          ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                          ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                          ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42)
    (printout t "belt[4] (= sk-loop) made of 4 crosses:" crlf)
    (print-cross ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12)
    (print-cross ?bl2 ?r2 ?c2 ?h21 ?c21 ?c22 ?r21 ?r22 ?h22 ?v21 ?v22 ?i21 ?i22)
    (print-cross ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32)
    (print-cross ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42)
)
    


(defrule activate-cross
	(declare (salience ?*cross-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont cross))
=>
	(assert (technique ?cont cross))
)

	
	
(defrule cross
	(declare (salience ?*cross-salience*))
	(technique ?cont cross)
 
    ;;; block and center
    (rc-cell ?r ?c ?bl ?s)


    ;;; horizontal ends
    (rc-cell ?r ?c1&~?c ?bl ?s11)
    (rc-cell ?r ?c2&~?c&:(< ?c1 ?c2) ?bl ?s12)
 
    ;;; added: the horizontal ends are not decided
    (not (candidate (context ?cont) (status c-value ) (row ?r) (column ?c1)))
    (not (candidate (context ?cont) (status c-value ) (row ?r) (column ?c2)))

    ;;; outer horizontal candidates
    (number ?h1)
    (or (candidate (number ?h1) (row ?r) (column ?c1)) (candidate (number ?h1) (row ?r) (column ?c2)))
    (number ?h2&:(< ?h1 ?h2))
    (or (candidate (number ?h2) (row ?r) (column ?c1)) (candidate (number ?h2) (row ?r) (column ?c2)))
    
    ;;; inner candidates
    (number ?i1&~?h1&~?h2)
    (or (candidate (number ?i1) (row ?r) (column ?c1)) (candidate (number ?i1) (row ?r) (column ?c2)))
    (number ?i2&~?h1&~?h2&:(< ?i1 ?i2))
    (or (candidate (number ?i2) (row ?r) (column ?c1)) (candidate (number ?i2) (row ?r) (column ?c2)))
  
    ;;; only h1 h2 i1 i2 in the horizontal ends
    (forall (candidate (row ?r) (column ?c1) (number ?nbx))
        (test (or (eq ?nbx ?h1) (eq ?nbx ?h2) (eq ?nbx ?i1) (eq ?nbx ?i2)))
    )
    (forall (candidate (row ?r) (column ?c2) (number ?nbx))
        (test (or (eq ?nbx ?h1) (eq ?nbx ?h2) (eq ?nbx ?i1) (eq ?nbx ?i2)))
    )
    
    
    ;;; vertical ends
    (rc-cell ?r1&~?r ?c ?bl ?s21)
    (rc-cell ?r2&~?r&:(< ?r1 ?r2) ?c ?bl ?s22)
     
    ;;; added: the vertical ends are not decided
    (not (candidate (context ?cont) (status c-value ) (row ?r1) (column ?c)))
    (not (candidate (context ?cont) (status c-value ) (row ?r2) (column ?c)))

    ;;; outer vertical candidates
    (number ?v1&~?i1&~?i2)
    (or (candidate (number ?v1) (row ?r1) (column ?c)) (candidate (number ?v1) (row ?r2) (column ?c)))
    (number ?v2&~?i1&~?i2&:(< ?v1 ?v2))
    (or (candidate (number ?v2) (row ?r1) (column ?c)) (candidate (number ?v2) (row ?r2) (column ?c)))
     
    ;;; inner candidates
    (or (candidate (number ?i1) (row ?r1) (column ?c)) (candidate (number ?i1) (row ?r2) (column ?c)))
    (or (candidate (number ?i2) (row ?r1) (column ?c)) (candidate (number ?i2) (row ?r2) (column ?c)))

    ;;; only v1 v2 i1 i2 in the vertical ends
    (forall (candidate (row ?r1) (column ?c) (number ?nbx))
        (test (or (eq ?nbx ?v1) (eq ?nbx ?v2) (eq ?nbx ?i1) (eq ?nbx ?i2)))
    )
    (forall (candidate (row ?r2) (column ?c) (number ?nbx))
        (test (or (eq ?nbx ?v1) (eq ?nbx ?v2) (eq ?nbx ?i1) (eq ?nbx ?i2)))
    )

=>
	(assert (cross ?cont ?bl ?r ?c ?c1 ?c2 ?r1 ?r2 ?h1 ?h2 ?v1 ?v2 ?i1 ?i2))
;	(print-cross ?bl ?r ?c ?c1 ?c2 ?r1 ?r2 ?h1 ?h2 ?v1 ?v2 ?i1 ?i2)
)



(defrule activate-belt4
	(declare (salience ?*belt4-salience*))
	(logical (play)
        (context (name ?cont)))
    (not (deactivate ?cont belt4))
=>
	(assert (technique ?cont belt4))
	(bind ?*technique* BELT4)
)


(defrule belt4-identify
	(declare (salience ?*belt4-identify-salience*))
	(technique ?cont belt4)
	
	(cross ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12)
	(cross ?cont ?bl2&:(< ?bl1 ?bl2) ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22)
	(test (and (eq ?r2 ?r1) (neq ?bl2 ?bl1) (eq ?h11 ?h21) (eq ?h12 ?h22))) ; r1 constraint

	(cross ?cont ?bl3&:(< ?bl2 ?bl3) ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32)
	(test (and (eq ?c3 ?c2) (neq ?bl3 ?bl2) (eq ?v31 ?v21) (eq ?v32 ?v22))) ; c2 constraint

	(cross ?cont ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42)
	(test (and (eq ?r4 ?r3) (neq ?bl4 ?bl3) (eq ?h41 ?h31) (eq ?h42 ?h32))) ; r3 constraint
	
	(test (and (eq ?c1 ?c4) (neq ?bl1 ?bl4) (eq ?v11 ?v41) (eq ?v12 ?v42))) ; c4 constraint
    
=>
    (assert (belt4  ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                          ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                          ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                          ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
            )
    )
	(if (or ?*print-actions* ?*print-belts*) then
        (print-belt4 ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                     ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                     ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                     ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
        )
    )
    (bind ?*has-belt* TRUE)
)




(defrule belt4-eliminate-rows
	(declare (salience ?*belt4-elim-rows-salience*))
	(technique ?cont belt4)
    (belt4 ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                 ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                 ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                 ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
    )
	?candz <- (candidate (context ?cont) (status cand) (number ?nbz) (row ?rowz) (column ?colz) (block ?blz) (square ?sqz)) 
	
	;;; eliminations in rows
	(test (or
            ;;; ?h11 or ?h12 in row ?r1 = ?r2 outside cells r1c11 r1c12 r2c21 r2c22
			(and (or (eq ?nbz ?h11) (eq ?nbz ?h12)) (eq ?rowz ?r1) (neq ?colz ?c11) (neq ?colz ?c12) (neq ?colz ?c21) (neq ?colz ?c22))

            ;;; ?h31 or ?h32 in row ?r3 = ?r4 outside cells r3c31 r3c32 r4c41 r4c42
			(and (or (eq ?nbz ?h31) (eq ?nbz ?h32)) (eq ?rowz ?r3) (neq ?colz ?c31) (neq ?colz ?c32) (neq ?colz ?c41) (neq ?colz ?c42))
    ))
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-belts*) then
			(printout t ?*implication-sign* " eliminations in rows: " (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf)
	)
)




(defrule belt4-eliminate-columns
	(declare (salience ?*belt4-elim-columns-salience*))
	(technique ?cont belt4)
    (belt4 ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                 ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                 ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                 ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
    )
	?candz <- (candidate (context ?cont) (status cand) (number ?nbz) (row ?rowz) (column ?colz) (block ?blz) (square ?sqz)) 
	
	;;; eliminations in columns
	(test (or
            ;;; ?v21 or ?v22 in column ?c2 = ?c3 outside cells r21c2 r22c2 r31c3 r32c3
			(and (or (eq ?nbz ?v21) (eq ?nbz ?v22)) (eq ?colz ?c2) (neq ?rowz ?r21) (neq ?rowz ?r22) (neq ?rowz ?r31) (neq ?rowz ?r32))

            ;;; ?v41 or ?v42 in column ?c4 = ?c1 outside cells r41c4 r42c4 r11c1 r12c1
			(and (or (eq ?nbz ?v41) (eq ?nbz ?v42)) (eq ?colz ?c4) (neq ?rowz ?r41) (neq ?rowz ?r42) (neq ?rowz ?r11) (neq ?rowz ?r12))
    ))
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-belts*) then
			(printout t ?*implication-sign* " eliminations in columns: " (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf)
	)
)




(defrule belt4-eliminate-blocks
	(declare (salience ?*belt4-elim-blocks-salience*))
	(technique ?cont belt4)
    (belt4 ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                 ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                 ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                 ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
    )
	?candz <- (candidate (context ?cont) (status cand) (number ?nbz) (row ?rowz) (column ?colz) (block ?blz) (square ?sqz)) 
	
	;;; eliminations in blocks
	(test (or

            ;;; ?i11 and ?i12 in block ?bl1 outside the ends r1c11 r1c12 r11c1 r12c1
			(and (or (eq ?nbz ?i11) (eq ?nbz ?i12))
                (eq ?blz ?bl1)
                (not (and (eq ?rowz ?r1) (eq ?colz ?c11)))
                (not (and (eq ?rowz ?r1) (eq ?colz ?c12)))
                (not (and (eq ?colz ?c1) (eq ?rowz ?r11)))
                (not (and (eq ?colz ?c1) (eq ?rowz ?r12)))
            )

            ;;; ?i21 and ?i22 in block ?bl2 outside the ends r2c21 r2c22 r21c2 r22c2
			(and (or (eq ?nbz ?i21) (eq ?nbz ?i22))
                (eq ?blz ?bl2)
                (not (and (eq ?rowz ?r2) (eq ?colz ?c21)))
                (not (and (eq ?rowz ?r2) (eq ?colz ?c22)))
                (not (and (eq ?colz ?c2) (eq ?rowz ?r21)))
                (not (and (eq ?colz ?c2) (eq ?rowz ?r22)))
            )
            
            ;;; ?i31 and ?i32 in block ?bl3 outside the ends r3c31 r3c32 r31c3 r32c3
			(and (or (eq ?nbz ?i31) (eq ?nbz ?i32)) 
                (eq ?blz ?bl3)
                (not (and (eq ?rowz ?r3) (eq ?colz ?c31)))
                (not (and (eq ?rowz ?r3) (eq ?colz ?c32)))
                (not (and (eq ?colz ?c3) (eq ?rowz ?r31)))
                (not (and (eq ?colz ?c3) (eq ?rowz ?r32)))
            )
             
            ;;; ?i41 and ?i42 in block ?bl4 outside the ends r4c41 r4c42 r41c4 r42c4
			(and (or (eq ?nbz ?i41) (eq ?nbz ?i42)) 
                (eq ?blz ?bl4)
                (not (and (eq ?rowz ?r4) (eq ?colz ?c41)))
                (not (and (eq ?rowz ?r4) (eq ?colz ?c42)))
                (not (and (eq ?colz ?c4) (eq ?rowz ?r41)))
                (not (and (eq ?colz ?c4) (eq ?rowz ?r42)))
            )
    ))
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-belts*) then
			(printout t ?*implication-sign* " eliminations in blocks: " (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf)
	)
)



