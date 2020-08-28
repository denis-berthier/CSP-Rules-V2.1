
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              BELT 6
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





;;; This is my new version, with the definition in CRT2, slightly broader than on my website
;;; Syntax OK, but not tested



(deffunction print-belt6 (?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                          ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                          ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                          ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
                          ?bl5 ?r5 ?c5 ?c51 ?c52 ?r51 ?r52 ?h51 ?h52 ?v51 ?v52 ?i51 ?i52
                          ?bl6 ?r6 ?c6 ?c61 ?c62 ?r61 ?r62 ?h61 ?h62 ?v61 ?v62 ?i61 ?i62)
    (printout t "belt[6] made of crosses:" crlf)
    (print-cross ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12)
    (print-cross ?bl2 ?r2 ?c2 ?h21 ?c21 ?c22 ?r21 ?r22 ?h22 ?v21 ?v22 ?i21 ?i22)
    (print-cross ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32)
    (print-cross ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42)
    (print-cross ?bl5 ?r5 ?c5 ?c51 ?c52 ?r51 ?r52 ?h51 ?h52 ?v51 ?v52 ?i51 ?i52)
    (print-cross ?bl6 ?r6 ?c6 ?c61 ?c62 ?r61 ?r62 ?h61 ?h62 ?v61 ?v62 ?i61 ?i62)
)



(defrule activate-belts6
	(declare (salience ?*belt6-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont belt6))
=>
	(assert (technique ?cont belt6))
	(bind ?*technique* BELT6)
)
	
	


(defrule belt6-identify
	(declare (salience ?*belt6-salience*))
	(technique ?cont belt6)
	
	(cross ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12)
	(cross ?cont ?bl2&:(< ?bl1 ?bl2) ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22)
	(test (and (eq ?r2 ?r1) (neq ?bl2 ?bl1) (eq ?h11 ?h21) (eq ?h12 ?h22))) ; r1 constraint

	(cross ?cont ?bl3&:(< ?bl2 ?bl3) ?r3&~?r1 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32)
	(test (and (eq ?c3 ?c2) (neq ?bl3 ?bl2) (eq ?v31 ?v21) (eq ?v32 ?v22))) ; c2 constraint

	(cross ?cont ?bl4&~?bl1&~?bl2&~?bl3 ?r4 ?c4&~?c2 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42)
	(test (and (eq ?r4 ?r3) (neq ?bl4 ?bl3) (eq ?h41 ?h31) (eq ?h42 ?h32))) ; r3 constraint

	(cross ?cont ?bl5&~?bl1&~?bl2&~?bl3&~?bl4 ?r5&~?r1&~?r3 ?c5 ?c51 ?c52 ?r51 ?r52 ?h51 ?h52 ?v51 ?v52 ?i51 ?i52)
	(test (and (eq ?c5 ?c4) (neq ?bl5 ?bl4) (eq ?v51 ?v41) (eq ?v52 ?v42))) ; c4 constraint

	(cross ?cont ?bl6&~?bl1&~?bl2&~?bl3&~?bl4&~?bl5 ?r6 ?c6&~?c2&~?c4 ?c61 ?c62 ?r61 ?r62 ?h61 ?h62 ?v61 ?v62 ?i61 ?i62)
	(test (and (eq ?r6 ?r5) (neq ?bl6 ?bl5) (eq ?h61 ?h51) (eq ?h62 ?h52))) ; r5 constraint
	
	(test (and (eq ?c1 ?c6) (neq ?bl1 ?bl6) (eq ?v11 ?v61) (eq ?v12 ?v62))) ; c6 constraint
=>
    (assert (belt6  ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                          ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                          ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                          ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
                          ?bl5 ?r5 ?c5 ?c51 ?c52 ?r51 ?r52 ?h51 ?h52 ?v51 ?v52 ?i51 ?i52
                          ?bl6 ?r6 ?c6 ?c61 ?c62 ?r61 ?r62 ?h61 ?h62 ?v61 ?v62 ?i61 ?i62
            )
    )
	(if (or ?*print-actions* ?*print-belts*) then
        (print-belt6 ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                     ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                     ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                     ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
                     ?bl5 ?r5 ?c5 ?c51 ?c52 ?r51 ?r52 ?h51 ?h52 ?v51 ?v52 ?i51 ?i52
                     ?bl6 ?r6 ?c6 ?c61 ?c62 ?r61 ?r62 ?h61 ?h62 ?v61 ?v62 ?i61 ?i62
        )
    )
    (bind ?*has-belt6* TRUE)
)




(defrule belt6-eliminate-rows
	(declare (salience ?*belt6-elim-rows-salience*))
	(technique ?cont belts6)
    (belt6 ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                 ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                 ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                 ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
                 ?bl5 ?r5 ?c5 ?c51 ?c52 ?r51 ?r52 ?h51 ?h52 ?v51 ?v52 ?i51 ?i52
                 ?bl6 ?r6 ?c6 ?c61 ?c62 ?r61 ?r62 ?h61 ?h62 ?v61 ?v62 ?i61 ?i62
    )
	?candz <- (candidate (context ?cont) (status cand) (number ?nbz) (row ?rowz) (column ?colz) (block ?blz) (square ?sqz)) 
	
	;;; eliminations in rows
	(test (or
            ;;; ?h11 or ?h12 in row ?r1 = ?r2 outside cells r1c11 r1c12 r2c21 r2c22
			(and (or (eq ?nbz ?h11) (eq ?nbz ?h12)) (eq ?rowz ?r1) (neq ?colz ?c11) (neq ?colz ?c12) (neq ?colz ?c21) (neq ?colz ?c22))

            ;;; ?h31 or ?h32 in row ?r3 = ?r4 outside cells r3c31 r3c32 r4c41 r4c42
			(and (or (eq ?nbz ?h31) (eq ?nbz ?h32)) (eq ?rowz ?r3) (neq ?colz ?c31) (neq ?colz ?c32) (neq ?colz ?c41) (neq ?colz ?c42))
 
            ;;; ?h51 or ?h52 in row ?r5 = ?r6 outside cells r5c51 r5c52 r6c61 r6c62
			(and (or (eq ?nbz ?h51) (eq ?nbz ?h52)) (eq ?rowz ?r5) (neq ?colz ?c51) (neq ?colz ?c52) (neq ?colz ?c61) (neq ?colz ?c62))
   ))
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-belts*) then
			(printout t ?*implication-sign* (row-name ?rowz) (column-name ?colz) " <> " (numeral-name ?nbz) crlf)
	)
)




(defrule belt6-eliminate-columns
	(declare (salience ?*belt6-elim-columns-salience*))
	(technique ?cont belts6)
    (belt6 ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                 ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                 ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                 ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
                 ?bl5 ?r5 ?c5 ?c51 ?c52 ?r51 ?r52 ?h51 ?h52 ?v51 ?v52 ?i51 ?i52
                 ?bl6 ?r6 ?c6 ?c61 ?c62 ?r61 ?r62 ?h61 ?h62 ?v61 ?v62 ?i61 ?i62
    )
	?candz <- (candidate (context ?cont) (status cand) (number ?nbz) (row ?rowz) (column ?colz) (block ?blz) (square ?sqz)) 
	
	;;; eliminations in columns
	(test (or
            ;;; ?v21 or ?v22 in column ?c2 = ?c3 outside cells r21c2 r22c2 r31c3 r32c3
			(and (or (eq ?nbz ?v21) (eq ?nbz ?v22)) (eq ?colz ?c2) (neq ?rowz ?r21) (neq ?rowz ?r22) (neq ?rowz ?r31) (neq ?rowz ?r32))

            ;;; ?v41 or ?v42 in column ?c4 = ?c5 outside cells r41c4 r42c4 r51c5 r52c5
			(and (or (eq ?nbz ?v41) (eq ?nbz ?v42)) (eq ?colz ?c4) (neq ?rowz ?r41) (neq ?rowz ?r42) (neq ?rowz ?r51) (neq ?rowz ?r52))

            ;;; ?v61 or ?v62 in column ?c6 = ?c1 outside cells r61c6 r62c6 r11c1 r12c1
			(and (or (eq ?nbz ?v61) (eq ?nbz ?v62)) (eq ?colz ?c6) (neq ?rowz ?r61) (neq ?rowz ?r62) (neq ?rowz ?r11) (neq ?rowz ?r12))
    ))
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-belts*) then
			(printout t ?*implication-sign* (row-name ?rowz) (column-name ?colz) " <> " (numeral-name ?nbz) crlf)
	)
)




(defrule belt6-eliminate-blocks
	(declare (salience ?*belt6-elim-blocks-salience*))
	(technique ?cont belts6)
    (belt6 ?cont ?bl1 ?r1 ?c1 ?c11 ?c12 ?r11 ?r12 ?h11 ?h12 ?v11 ?v12 ?i11 ?i12 
                 ?bl2 ?r2 ?c2 ?c21 ?c22 ?r21 ?r22 ?h21 ?h22 ?v21 ?v22 ?i21 ?i22
                 ?bl3 ?r3 ?c3 ?c31 ?c32 ?r31 ?r32 ?h31 ?h32 ?v31 ?v32 ?i31 ?i32
                 ?bl4 ?r4 ?c4 ?c41 ?c42 ?r41 ?r42 ?h41 ?h42 ?v41 ?v42 ?i41 ?i42
                 ?bl5 ?r5 ?c5 ?c51 ?c52 ?r51 ?r52 ?h51 ?h52 ?v51 ?v52 ?i51 ?i52
                 ?bl6 ?r6 ?c6 ?c61 ?c62 ?r61 ?r62 ?h61 ?h62 ?v61 ?v62 ?i61 ?i62
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
              
            ;;; ?i51 and ?i52 in block ?bl5 outside the ends r5c51 r5c52 r51c5 r52c5
			(and (or (eq ?nbz ?i51) (eq ?nbz ?i52)) 
                (eq ?blz ?bl5)
                (not (and (eq ?rowz ?r5) (eq ?colz ?c51)))
                (not (and (eq ?rowz ?r5) (eq ?colz ?c52)))
                (not (and (eq ?colz ?c5) (eq ?rowz ?r51)))
                (not (and (eq ?colz ?c5) (eq ?rowz ?r52)))
            )
             
            ;;; ?i61 and ?i52 in block ?bl6 outside the ends r6c61 r6c62 r61c6 r62c6
			(and (or (eq ?nbz ?i61) (eq ?nbz ?i62)) 
                (eq ?blz ?bl6)
                (not (and (eq ?rowz ?r6) (eq ?colz ?c61)))
                (not (and (eq ?rowz ?r6) (eq ?colz ?c62)))
                (not (and (eq ?colz ?c6) (eq ?rowz ?r61)))
                (not (and (eq ?colz ?c6) (eq ?rowz ?r62)))
            )
   ))
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-belts*) then
			(printout t ?*implication-sign* (row-name ?rowz) (column-name ?colz) " <> " (numeral-name ?nbz) crlf)
	)
)



