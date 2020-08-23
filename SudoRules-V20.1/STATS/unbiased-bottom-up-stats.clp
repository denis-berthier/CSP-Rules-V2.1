
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              UNBIASED BOTTOOM-UP STATISTICS
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





;;; Notice that "while" is used everywhere instead of more advanced control structures.
;;; This is not very elegant.
;;; But "while" is the only iterative control structure common to CLIPS and JESS.





;;; the functions in this file provide unbiased statistics when applied to collection of puzzles
;;; produced by the bottom-up controlled-bias generator.




;;; new version has cf(26) = 1
(defglobal ?*bu-cf-sequence-17-35* =
	(progn
		(bind ?cf26 1.0)
		(bind ?cf27 (* ?cf26 (* (- 81 26) 27)))
		(bind ?cf28 (* ?cf27 (* (- 81 27) 28)))
		(bind ?cf29 (* ?cf28 (* (- 81 28) 29)))
		(bind ?cf30 (* ?cf29 (* (- 81 29) 30)))
		(bind ?cf31 (* ?cf30 (* (- 81 30) 31)))
		(bind ?cf32 (* ?cf31 (* (- 81 31) 32)))
		(bind ?cf33 (* ?cf32 (* (- 81 32) 33)))
		(bind ?cf34 (* ?cf33 (* (- 81 33) 34)))
		(bind ?cf35 (* ?cf34 (* (- 81 34) 35)))

		(bind ?cf25 (/ ?cf26 (* (- 81 25) 26)))
		(bind ?cf24 (/ ?cf25 (* (- 81 24) 25)))
		(bind ?cf23 (/ ?cf24 (* (- 81 23) 24)))
		(bind ?cf22 (/ ?cf23 (* (- 81 22) 23)))
		(bind ?cf21 (/ ?cf22 (* (- 81 21) 22)))
		(bind ?cf20 (/ ?cf21 (* (- 81 20) 21)))
		(bind ?cf19 (/ ?cf20 (* (- 81 19) 20)))
		(bind ?cf18 (/ ?cf19 (* (- 81 18) 19)))
		(bind ?cf17 (/ ?cf18 (* (- 81 17) 18)))


		(bind ?cf27 (* 9 ?cf27))
		(bind ?cf28 (* 81 ?cf28))
		(bind ?cf29 (* 729 ?cf29))
		(bind ?cf30 (* 81 81 ?cf30))
		(bind ?cf31 (* 729 81 ?cf31))

		(bind ?cf25 (/ ?cf25 9))
		(bind ?cf24 (/ ?cf24 81))
		(bind ?cf23 (/ ?cf23 721))
		(bind ?cf22 (/ ?cf22 (* 81 81)))
		(bind ?cf21 (/ ?cf21 (* 729 81)))
		(bind ?cf20 (/ ?cf20 (* 729 721)))
	
		
		(printout t "bu-cf-sequence[17...35] =   " ?cf17 "  " ?cf18 "  " ?cf19 "  " ?cf20 "  " ?cf21 "  " ?cf22 "  " ?cf23 "  " 
												   ?cf24 "  " ?cf25 "  " ?cf26 "  " ?cf27 "  " ?cf28 "  " ?cf29 "  " ?cf30 "  " 
												   ?cf31 "  " 
												   ?cf32 "  " ?cf33 "  " ?cf34 "  " ?cf35 
												   crlf crlf
		)
		(create$ ?cf17 ?cf18 ?cf19 ?cf20 ?cf21 ?cf22 ?cf23 ?cf24 ?cf25 ?cf26 ?cf27 ?cf28 ?cf29 ?cf30 ?cf31 
				 ?cf32 ?cf33 ?cf34 ?cf35
		)
	)
)


;;; bu-cf-sequence[17...35] =   8.82497130934776e-29  1.01663669483686e-25  1.21691412371972e-22  2.87090501382674e-25  3.27354412552517e-21  3.8889704211239e-17  4.80229970930274e-13  5.95029834795917e-09  7.63125763125763e-05  1.0  13365.0  181870920.0  2515820436360.0  3.53221189264944e+16  5.02598430205089e+20  1.36184776766438e+19  2.20210784031331e+22  3.59383999539132e+25  5.91186679241872e+28


(deffunction bu-cf(?n)
	(if (or (< ?n 17) (> ?n 35)) 
		then (printout t "n = " ?n "out of bounds.") (return FALSE)
		else (return (nth$ (- ?n 16) ?*bu-cf-sequence-17-35*))
	)
)
	
	
	

(deffunction bottom-up-unbiased-average 
	(?ono19 ?ono20 ?ono21 ?ono22 ?ono23 ?ono24 ?ono25 ?ono26 ?ono27 ?ono28 ?ono29 ?ono30 ?ono31
	 ?mean19 ?mean20 ?mean21 ?mean22 ?mean23 ?mean24 ?mean25 ?mean26 ?mean27 ?mean28 ?mean29 ?mean30 ?mean31  
	 ?sd19 ?sd20 ?sd21 ?sd22 ?sd23 ?sd24 ?sd25 ?sd26 ?sd27 ?sd28 ?sd29 ?sd30 ?sd31)  
	;;; for obtaining unbiased statistics from controlled-bias top-down generators
	;;; ?ono(n) = observed number of occurrences of puzzles with n clues
	;;; ?mean(n) = observed mean value of variable X for puzzles with n clues
	;;; ?sd(n) = observed standard deviation of variable X for puzzles with n clues
	
	;;; ?rp real probabilities
	; (bind ?rp17 (* (bu-cf 17) ?ono17))
	; (bind ?rp18 (* (bu-cf 18) ?ono18))
	(bind ?rp19 (* (bu-cf 19) ?ono19))
	(bind ?rp20 (* (bu-cf 20) ?ono20))
	(bind ?rp21 (* (bu-cf 21) ?ono21))
	(bind ?rp22 (* (bu-cf 22) ?ono22))
	(bind ?rp23 (* (bu-cf 23) ?ono23))
	(bind ?rp24 (* (bu-cf 24) ?ono24))
	(bind ?rp25 (* (bu-cf 25) ?ono25))
	(bind ?rp26 (* (bu-cf 26) ?ono26))
	(bind ?rp27 (* (bu-cf 27) ?ono27))
	(bind ?rp28 (* (bu-cf 28) ?ono28))
	(bind ?rp29 (* (bu-cf 29) ?ono29))
	(bind ?rp30 (* (bu-cf 30) ?ono30))
	(bind ?rp31 (* (bu-cf 31) ?ono31))
	;;; limit computations to the practical interval 19-31
	(bind ?rptotal (+ ?rp19 ?rp20 ?rp21 ?rp22 ?rp23 ?rp24 ?rp25 ?rp26 ?rp27 ?rp28 ?rp29 ?rp30 ?rp31))
	(bind ?rp19 (/ ?rp19 ?rptotal))
	(bind ?rp20 (/ ?rp20 ?rptotal))
	(bind ?rp21 (/ ?rp21 ?rptotal))
	(bind ?rp22 (/ ?rp22 ?rptotal))
	(bind ?rp23 (/ ?rp23 ?rptotal))
	(bind ?rp24 (/ ?rp24 ?rptotal))
	(bind ?rp25 (/ ?rp25 ?rptotal))
	(bind ?rp26 (/ ?rp26 ?rptotal))
	(bind ?rp27 (/ ?rp27 ?rptotal))
	(bind ?rp28 (/ ?rp28 ?rptotal))
	(bind ?rp29 (/ ?rp29 ?rptotal))
	(bind ?rp30 (/ ?rp30 ?rptotal))
	(bind ?rp31 (/ ?rp31 ?rptotal))
	
	(bind ?rptotal (+ ?rp19 ?rp20 ?rp21 ?rp22 ?rp23 ?rp24 ?rp25 ?rp26 ?rp27 ?rp28 ?rp29 ?rp30 ?rp31)) ;;; must be 1.
	(printout t ?rptotal crlf crlf) ; check
	
	;;; occurrences:
	(bind ?ono-total (+ ?ono19 ?ono20 ?ono21 ?ono22 ?ono23 ?ono24 ?ono25 ?ono26 ?ono27 ?ono28 ?ono29 ?ono30 ?ono31))
	
	;;; average:
	(bind ?raw-average (/ (+ (* ?mean19 ?ono19) (* ?mean20 ?ono20) (* ?mean21 ?ono21) (* ?mean22 ?ono22) (* ?mean23 ?ono23) 
							 (* ?mean24 ?ono24) (* ?mean25 ?ono25) (* ?mean26 ?ono26) (* ?mean27 ?ono27) (* ?mean28 ?ono28) 
							 (* ?mean29 ?ono29) (* ?mean30 ?ono30) (* ?mean31 ?ono31))
						   ?ono-total))
	(bind ?unbiased-average (+ (* ?mean19 ?rp19) (* ?mean20 ?rp20) (* ?mean21 ?rp21) (* ?mean22 ?rp22) (* ?mean23 ?rp23) 
							   (* ?mean24 ?rp24) (* ?mean25 ?rp25) (* ?mean26 ?rp26) (* ?mean27 ?rp27) (* ?mean28 ?rp28) 
							   (* ?mean29 ?rp29) (* ?mean30 ?rp30) (* ?mean31 ?rp31)))
	
	;;; variance:
	(bind ?var19 (* ?sd19 ?sd19))
	(bind ?var20 (* ?sd20 ?sd20))
	(bind ?var21 (* ?sd21 ?sd21))
	(bind ?var22 (* ?sd22 ?sd22))
	(bind ?var23 (* ?sd23 ?sd23))
	(bind ?var24 (* ?sd24 ?sd24))
	(bind ?var25 (* ?sd25 ?sd25))
	(bind ?var26 (* ?sd26 ?sd26))
	(bind ?var27 (* ?sd27 ?sd27))
	(bind ?var28 (* ?sd28 ?sd28))
	(bind ?var29 (* ?sd29 ?sd29))
	(bind ?var30 (* ?sd30 ?sd30))
	(bind ?var31 (* ?sd31 ?sd31))

	(bind ?raw-var (/ (+ (* ?var19 ?ono19) (* ?var20 ?ono20) (* ?var21 ?ono21) (* ?var22 ?ono22) (* ?var23 ?ono23) 
						 (* ?var24 ?ono24) (* ?var25 ?ono25) (* ?var26 ?ono26) (* ?var27 ?ono27) (* ?var28 ?ono28) 
						 (* ?var29 ?ono29) (* ?var30 ?ono30) (* ?var31 ?ono31))
					  ?ono-total))
	(bind ?unbiased-var (+ (* ?var19 ?rp19) (* ?var20 ?rp20) (* ?var21 ?rp21) (* ?var22 ?rp22) (* ?var23 ?rp23) 
						   (* ?var24 ?rp24) (* ?var25 ?rp25) (* ?var26 ?rp26) (* ?var27 ?rp27) (* ?var28 ?rp28) 
						   (* ?var29 ?rp29) (* ?var30 ?rp30) (* ?var31 ?rp31)))

	;;; standard deviation:
	(bind ?raw-sd (sqrt ?raw-var))
	(bind ?unbiased-sd (sqrt ?unbiased-var))

	(printout t "raw-average = "?raw-average "     unbiased-average = " ?unbiased-average crlf)
	(printout t "raw-standard-deviation = "?raw-sd "     unbiased-standard-deviation = " ?unbiased-sd crlf)
	
	(printout t "unbiased distribution:" crlf)
	(printout t "#clues  raw-mean       unbiased-mean" crlf)
	(printout t 19 "      " ?ono19 "      " (* ?rp19 1000000) crlf)
	(printout t 20 "      " ?ono20 "      " (* ?rp20 1000000) crlf)
	(printout t 21 "      " ?ono21 "      " (* ?rp21 1000000) crlf)
	(printout t 22 "      " ?ono22 "      " (* ?rp22 1000000) crlf)
	(printout t 23 "      " ?ono23 "      " (* ?rp23 1000000) crlf)
	(printout t 24 "      " ?ono24 "      " (* ?rp24 1000000) crlf)
	(printout t 25 "      " ?ono25 "      " (* ?rp25 1000000) crlf)
	(printout t 26 "      " ?ono26 "      " (* ?rp26 1000000) crlf)
	(printout t 27 "      " ?ono27 "      " (* ?rp27 1000000) crlf)
	(printout t 28 "      " ?ono28 "      " (* ?rp28 1000000) crlf)
	(printout t 29 "      " ?ono29 "      " (* ?rp29 1000000) crlf)
	(printout t 30 "      " ?ono30 "      " (* ?rp30 1000000) crlf)
	(printout t 31 "      " ?ono31 "      " (* ?rp31 1000000) crlf)
)





