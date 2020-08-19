
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              UNBIASED STATISTICS
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
;;; produced by the top-down controlled-bias generator.



(defglobal ?*cf-sequence-17-35-old* =
	(progn
		(bind ?cf24 1)
		(bind ?cf25 (/ (* (- 81 24) ?cf24) 25))
		(bind ?cf26 (/ (* (- 81 25) ?cf25) 26))
		(bind ?cf27 (/ (* (- 81 26) ?cf26) 27))
		(bind ?cf28 (/ (* (- 81 27) ?cf27) 28))
		(bind ?cf29 (/ (* (- 81 28) ?cf28) 29))
		(bind ?cf30 (/ (* (- 81 29) ?cf29) 30))
		(bind ?cf31 (/ (* (- 81 30) ?cf30) 31))
		(bind ?cf32 (/ (* (- 81 31) ?cf31) 32))
		(bind ?cf33 (/ (* (- 81 31) ?cf32) 33))
		(bind ?cf34 (/ (* (- 81 31) ?cf33) 34))
		(bind ?cf35 (/ (* (- 81 31) ?cf34) 35))
	
		(bind ?cf23 (* 24 (/ ?cf24 (- 81 23))))
		(bind ?cf22 (* 23 (/ ?cf23 (- 81 22))))
		(bind ?cf21 (* 22 (/ ?cf22 (- 81 21))))
		(bind ?cf20 (* 21 (/ ?cf21 (- 81 20))))
		(bind ?cf19 (* 20 (/ ?cf20 (- 81 19))))
		(bind ?cf18 (* 19 (/ ?cf19 (- 81 18))))
		(bind ?cf17 (* 18 (/ ?cf18 (- 81 17))))
		
	(printout t "cf-sequence[17...35] =   " ?cf17 "  " ?cf18 "  " ?cf19 "  " ?cf20 "  " ?cf21 "  " ?cf22 "  " ?cf23 "  " 
											?cf24 "  " ?cf25 "  " ?cf26 "  " ?cf27 "  " ?cf28 "  " ?cf29 "  " ?cf30 "  " 
											?cf31 "  " ?cf32 "  " ?cf33 "  " ?cf34 "  " ?cf35 crlf crlf)
		(create$ ?cf17 ?cf18 ?cf19 ?cf20 ?cf21 ?cf22 ?cf23 ?cf24 ?cf25 ?cf26 ?cf27 ?cf28 ?cf29 ?cf30 ?cf31 ?cf32 ?cf33 ?cf34 ?cf35)
	)
)


;;; new version has cf(26) = 1
(defglobal ?*cf-sequence-17-35* =
	(progn
		(bind ?cf26 1)
		(bind ?cf27 (/ (* (- 81 26) ?cf26) 27))
		(bind ?cf28 (/ (* (- 81 27) ?cf27) 28))
		(bind ?cf29 (/ (* (- 81 28) ?cf28) 29))
		(bind ?cf30 (/ (* (- 81 29) ?cf29) 30))
		(bind ?cf31 (/ (* (- 81 30) ?cf30) 31))
		(bind ?cf32 (/ (* (- 81 31) ?cf31) 32))
		(bind ?cf33 (/ (* (- 81 31) ?cf32) 33))
		(bind ?cf34 (/ (* (- 81 31) ?cf33) 34))
		(bind ?cf35 (/ (* (- 81 31) ?cf34) 35))
	
		(bind ?cf25 (* 26 (/ ?cf26 (- 81 25))))
		(bind ?cf24 (* 25 (/ ?cf25 (- 81 24))))
		(bind ?cf23 (* 24 (/ ?cf24 (- 81 23))))
		(bind ?cf22 (* 23 (/ ?cf23 (- 81 22))))
		(bind ?cf21 (* 22 (/ ?cf22 (- 81 21))))
		(bind ?cf20 (* 21 (/ ?cf21 (- 81 20))))
		(bind ?cf19 (* 20 (/ ?cf20 (- 81 19))))
		(bind ?cf18 (* 19 (/ ?cf19 (- 81 18))))
		(bind ?cf17 (* 18 (/ ?cf18 (- 81 17))))
		
	(printout t "cf-sequence[17...35] =   " ?cf17 "  " ?cf18 "  " ?cf19 "  " ?cf20 "  " ?cf21 "  " ?cf22 "  " ?cf23 "  " 
											?cf24 "  " ?cf25 "  " ?cf26 "  " ?cf27 "  " ?cf28 "  " ?cf29 "  " ?cf30 "  " 
											?cf31 "  " ?cf32 "  " ?cf33 "  " ?cf34 "  " ?cf35 crlf crlf)
		(create$ ?cf17 ?cf18 ?cf19 ?cf20 ?cf21 ?cf22 ?cf23 ?cf24 ?cf25 ?cf26 ?cf27 ?cf28 ?cf29 ?cf30 ?cf31 ?cf32 ?cf33 ?cf34 ?cf35)
	)
)


(deffunction cf(?n)
	(if (or (< ?n 17) (> ?n 35)) 
		then (printout t "n = " ?n "out of bounds.") (return FALSE)
		else (return (nth$ (- ?n 16) ?*cf-sequence-17-35*))
	)
)
	
	
	

(deffunction unbiased-average 
	(?ono19 ?ono20 ?ono21 ?ono22 ?ono23 ?ono24 ?ono25 ?ono26 ?ono27 ?ono28 ?ono29 ?ono30 ?ono31
	 ?mean19 ?mean20 ?mean21 ?mean22 ?mean23 ?mean24 ?mean25 ?mean26 ?mean27 ?mean28 ?mean29 ?mean30 ?mean31  
	 ?sd19 ?sd20 ?sd21 ?sd22 ?sd23 ?sd24 ?sd25 ?sd26 ?sd27 ?sd28 ?sd29 ?sd30 ?sd31)  
	;;; for obtaining unbiased statistics from controlled-bias top-down generators
	;;; ?ono(n) = observed number of occurrences of puzzles with n clues
	;;; ?mean(n) = observed mean value of variable X for puzzles with n clues
	;;; ?sd(n) = observed standard deviation of variable X for puzzles with n clues
	
	;;; ?rp real probabilities
	; (bind ?rp17 (* (cf 17) ?ono17))
	; (bind ?rp18 (* (cf 18) ?ono18))
	(bind ?rp19 (* (cf 19) ?ono19))
	(bind ?rp20 (* (cf 20) ?ono20))
	(bind ?rp21 (* (cf 21) ?ono21))
	(bind ?rp22 (* (cf 22) ?ono22))
	(bind ?rp23 (* (cf 23) ?ono23))
	(bind ?rp24 (* (cf 24) ?ono24))
	(bind ?rp25 (* (cf 25) ?ono25))
	(bind ?rp26 (* (cf 26) ?ono26))
	(bind ?rp27 (* (cf 27) ?ono27))
	(bind ?rp28 (* (cf 28) ?ono28))
	(bind ?rp29 (* (cf 29) ?ono29))
	(bind ?rp30 (* (cf 30) ?ono30))
	(bind ?rp31 (* (cf 31) ?ono31))
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
	; (printout t ?rptotal crlf crlf) ; check
	
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
	(printout t "raw-standard-deviation = "?raw-sd "     unbiased-standard-deviation = " ?unbiased-sd crlf crlf)
	
	(printout t "unbiased distribution:" crlf)
	(printout t "#clues  #instances       %                  unbiased %               standard deviation of unbiased %" crlf)
	(printout t "        in cb sample     in cb sample      (estimated)               (estimated)" crlf)
	(printout t 19 "      " ?ono19 "      " (* (/ ?ono19 ?ono-total) 100) "      " (* ?rp19 100)  "      ")
		(if (neq ?ono19 0) then (printout t (/ (* ?rp19 100) (sqrt ?ono19)) crlf) else (printout t crlf))
	(printout t 20 "      " ?ono20 "      " (* (/ ?ono20 ?ono-total) 100) "      " (* ?rp20 100)  "      ")
		(if (neq ?ono20 0) then (printout t (/ (* ?rp20 100) (sqrt ?ono20)) crlf) else (printout t crlf))
	(printout t 21 "      " ?ono21 "      " (* (/ ?ono21 ?ono-total) 100) "      " (* ?rp21 100)  "      ")
		(if (neq ?ono21 0) then (printout t (/ (* ?rp21 100) (sqrt ?ono21)) crlf) else (printout t crlf))
	(printout t 22 "      " ?ono22 "      " (* (/ ?ono22 ?ono-total) 100) "      " (* ?rp22 100)  "      ")
		(if (neq ?ono22 0) then (printout t (/ (* ?rp22 100) (sqrt ?ono22)) crlf) else (printout t crlf))
	(printout t 23 "      " ?ono23 "      " (* (/ ?ono23 ?ono-total) 100) "      " (* ?rp23 100)  "      ")
		(if (neq ?ono23 0) then (printout t (/ (* ?rp23 100) (sqrt ?ono23)) crlf) else (printout t crlf))
	(printout t 24 "      " ?ono24 "      " (* (/ ?ono24 ?ono-total) 100) "      " (* ?rp24 100)  "      ")
		(if (neq ?ono24 0) then (printout t (/ (* ?rp24 100) (sqrt ?ono24)) crlf) else (printout t crlf))
	(printout t 25 "      " ?ono25 "      " (* (/ ?ono25 ?ono-total) 100) "      " (* ?rp25 100)  "      ")
		(if (neq ?ono25 0) then (printout t (/ (* ?rp25 100) (sqrt ?ono25)) crlf) else (printout t crlf))
	(printout t 26 "      " ?ono26 "      " (* (/ ?ono26 ?ono-total) 100) "      " (* ?rp26 100)  "      ")
		(if (neq ?ono26 0) then (printout t (/ (* ?rp26 100) (sqrt ?ono26)) crlf) else (printout t crlf))
	(printout t 27 "      " ?ono27 "      " (* (/ ?ono27 ?ono-total) 100) "      " (* ?rp27 100)  "      ")
		(if (neq ?ono27 0) then (printout t (/ (* ?rp27 100) (sqrt ?ono27)) crlf) else (printout t crlf))
	(printout t 28 "      " ?ono28 "      " (* (/ ?ono28 ?ono-total) 100) "      " (* ?rp28 100)  "      ")
		(if (neq ?ono28 0) then (printout t (/ (* ?rp28 100) (sqrt ?ono28)) crlf) else (printout t crlf))
	(printout t 29 "      " ?ono29 "      " (* (/ ?ono29 ?ono-total) 100) "      " (* ?rp29 100)  "      ")
		(if (neq ?ono29 0) then (printout t (/ (* ?rp29 100) (sqrt ?ono29)) crlf) else (printout t crlf))
	(printout t 30 "      " ?ono30 "      " (* (/ ?ono30 ?ono-total) 100) "      " (* ?rp30 100)  "      ")
		(if (neq ?ono30 0) then (printout t (/ (* ?rp30 100) (sqrt ?ono30)) crlf) else (printout t crlf))
	(printout t 31 "      " ?ono31 "      " (* (/ ?ono31 ?ono-total) 100) "      " (* ?rp31 100)  "      ")
		(if (neq ?ono31 0) then (printout t (/ (* ?rp31 100) (sqrt ?ono31)) crlf) else (printout t crlf))
	
	(return 
		(create$ 
			(* ?rp19 100) (* ?rp20 100)(* ?rp21 100)(* ?rp22 100)(* ?rp23 100)(* ?rp24 100)(* ?rp25 100)
			(* ?rp26 100)(* ?rp27 100)(* ?rp28 100)(* ?rp29 100)(* ?rp30 100)(* ?rp31 100)
		)
	)
)





(deffunction unbiased-average-32
	(?ono19 ?ono20 ?ono21 ?ono22 ?ono23 ?ono24 ?ono25 ?ono26 ?ono27 ?ono28 ?ono29 ?ono30 ?ono31 ?ono32
	 ?mean19 ?mean20 ?mean21 ?mean22 ?mean23 ?mean24 ?mean25 ?mean26 ?mean27 ?mean28 ?mean29 ?mean30 ?mean31 ?mean32  
	 ?sd19 ?sd20 ?sd21 ?sd22 ?sd23 ?sd24 ?sd25 ?sd26 ?sd27 ?sd28 ?sd29 ?sd30 ?sd31 ?sd32)  
	;;; for obtaining unbiased statistics from controlled-bias top-down generators
	;;; ?ono(n) = observed number of occurrences of puzzles with n clues
	;;; ?mean(n) = observed mean value of variable X for puzzles with n clues
	;;; ?sd(n) = observed standard deviation of variable X for puzzles with n clues
	
	;;; ?rp real probabilities
	; (bind ?rp17 (* (cf 17) ?ono17))
	; (bind ?rp18 (* (cf 18) ?ono18))
	(bind ?rp19 (* (cf 19) ?ono19))
	(bind ?rp20 (* (cf 20) ?ono20))
	(bind ?rp21 (* (cf 21) ?ono21))
	(bind ?rp22 (* (cf 22) ?ono22))
	(bind ?rp23 (* (cf 23) ?ono23))
	(bind ?rp24 (* (cf 24) ?ono24))
	(bind ?rp25 (* (cf 25) ?ono25))
	(bind ?rp26 (* (cf 26) ?ono26))
	(bind ?rp27 (* (cf 27) ?ono27))
	(bind ?rp28 (* (cf 28) ?ono28))
	(bind ?rp29 (* (cf 29) ?ono29))
	(bind ?rp30 (* (cf 30) ?ono30))
	(bind ?rp31 (* (cf 31) ?ono31))
	(bind ?rp32 (* (cf 32) ?ono32))
	;;; limit computations to the practical interval 19-31
	(bind ?rptotal (+ ?rp19 ?rp20 ?rp21 ?rp22 ?rp23 ?rp24 ?rp25 ?rp26 ?rp27 ?rp28 ?rp29 ?rp30 ?rp31 ?rp32))
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
	(bind ?rp32 (/ ?rp32 ?rptotal))
	
	(bind ?rptotal (+ ?rp19 ?rp20 ?rp21 ?rp22 ?rp23 ?rp24 ?rp25 ?rp26 ?rp27 ?rp28 ?rp29 ?rp30 ?rp31 ?rp32)) ;;; must be 1.
	; (printout t ?rptotal crlf crlf) ; check
	
	;;; occurrences:
	(bind ?ono-total (+ ?ono19 ?ono20 ?ono21 ?ono22 ?ono23 ?ono24 ?ono25 ?ono26 ?ono27 ?ono28 ?ono29 ?ono30 ?ono31 ?ono32))
	
	;;; average:
	(bind ?raw-average (/ (+ (* ?mean19 ?ono19) (* ?mean20 ?ono20) (* ?mean21 ?ono21) (* ?mean22 ?ono22) (* ?mean23 ?ono23) 
							 (* ?mean24 ?ono24) (* ?mean25 ?ono25) (* ?mean26 ?ono26) (* ?mean27 ?ono27) (* ?mean28 ?ono28) 
							 (* ?mean29 ?ono29) (* ?mean30 ?ono30) (* ?mean31 ?ono31) (* ?mean32 ?ono32))
						   ?ono-total))
	(bind ?unbiased-average (+ (* ?mean19 ?rp19) (* ?mean20 ?rp20) (* ?mean21 ?rp21) (* ?mean22 ?rp22) (* ?mean23 ?rp23) 
							   (* ?mean24 ?rp24) (* ?mean25 ?rp25) (* ?mean26 ?rp26) (* ?mean27 ?rp27) (* ?mean28 ?rp28) 
							   (* ?mean29 ?rp29) (* ?mean30 ?rp30) (* ?mean31 ?rp31) (* ?mean32 ?rp32)))
	
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
	(bind ?var32 (* ?sd32 ?sd32))

	(bind ?raw-var (/ (+ (* ?var19 ?ono19) (* ?var20 ?ono20) (* ?var21 ?ono21) (* ?var22 ?ono22) (* ?var23 ?ono23) 
						 (* ?var24 ?ono24) (* ?var25 ?ono25) (* ?var26 ?ono26) (* ?var27 ?ono27) (* ?var28 ?ono28) 
						 (* ?var29 ?ono29) (* ?var30 ?ono30) (* ?var31 ?ono31) (* ?var32 ?ono32))
					  ?ono-total))
	(bind ?unbiased-var (+ (* ?var19 ?rp19) (* ?var20 ?rp20) (* ?var21 ?rp21) (* ?var22 ?rp22) (* ?var23 ?rp23) 
						   (* ?var24 ?rp24) (* ?var25 ?rp25) (* ?var26 ?rp26) (* ?var27 ?rp27) (* ?var28 ?rp28) 
						   (* ?var29 ?rp29) (* ?var30 ?rp30) (* ?var31 ?rp31) (* ?var32 ?rp32)))

	;;; standard deviation:
	(bind ?raw-sd (sqrt ?raw-var))
	(bind ?unbiased-sd (sqrt ?unbiased-var))

	(printout t "controlled-bias mean = "?raw-average "     real mean = " ?unbiased-average crlf)
	(printout t "controlled-bias standard-deviation = "?raw-sd "     real standard-deviation = " ?unbiased-sd crlf crlf)
	
	(printout t "unbiased distribution:" crlf)
	(printout t "#clues  #instances       %                  unbiased %               standard deviation of unbiased %" crlf)
	(printout t "in cb sample     in cb sample      (estimated)               (estimated)" crlf)
	(printout t 19 "      " ?ono19 "      " (* (/ ?ono19 ?ono-total) 100) "      " (* ?rp19 100)  "      ")
		(if (neq ?ono19 0) then (printout t (/ (* ?rp19 100) (sqrt ?ono19)) crlf) else (printout t crlf))
	(printout t 20 "      " ?ono20 "      " (* (/ ?ono20 ?ono-total) 100) "      " (* ?rp20 100)  "      ")
		(if (neq ?ono20 0) then (printout t (/ (* ?rp20 100) (sqrt ?ono20)) crlf) else (printout t crlf))
	(printout t 21 "      " ?ono21 "      " (* (/ ?ono21 ?ono-total) 100) "      " (* ?rp21 100)  "      ")
		(if (neq ?ono21 0) then (printout t (/ (* ?rp21 100) (sqrt ?ono21)) crlf) else (printout t crlf))
	(printout t 22 "      " ?ono22 "      " (* (/ ?ono22 ?ono-total) 100) "      " (* ?rp22 100)  "      ")
		(if (neq ?ono22 0) then (printout t (/ (* ?rp22 100) (sqrt ?ono22)) crlf) else (printout t crlf))
	(printout t 23 "      " ?ono23 "      " (* (/ ?ono23 ?ono-total) 100) "      " (* ?rp23 100)  "      ")
		(if (neq ?ono23 0) then (printout t (/ (* ?rp23 100) (sqrt ?ono23)) crlf) else (printout t crlf))
	(printout t 24 "      " ?ono24 "      " (* (/ ?ono24 ?ono-total) 100) "      " (* ?rp24 100)  "      ")
		(if (neq ?ono24 0) then (printout t (/ (* ?rp24 100) (sqrt ?ono24)) crlf) else (printout t crlf))
	(printout t 25 "      " ?ono25 "      " (* (/ ?ono25 ?ono-total) 100) "      " (* ?rp25 100)  "      ")
		(if (neq ?ono25 0) then (printout t (/ (* ?rp25 100) (sqrt ?ono25)) crlf) else (printout t crlf))
	(printout t 26 "      " ?ono26 "      " (* (/ ?ono26 ?ono-total) 100) "      " (* ?rp26 100)  "      ")
		(if (neq ?ono26 0) then (printout t (/ (* ?rp26 100) (sqrt ?ono26)) crlf) else (printout t crlf))
	(printout t 27 "      " ?ono27 "      " (* (/ ?ono27 ?ono-total) 100) "      " (* ?rp27 100)  "      ")
		(if (neq ?ono27 0) then (printout t (/ (* ?rp27 100) (sqrt ?ono27)) crlf) else (printout t crlf))
	(printout t 28 "      " ?ono28 "      " (* (/ ?ono28 ?ono-total) 100) "      " (* ?rp28 100)  "      ")
		(if (neq ?ono28 0) then (printout t (/ (* ?rp28 100) (sqrt ?ono28)) crlf) else (printout t crlf))
	(printout t 29 "      " ?ono29 "      " (* (/ ?ono29 ?ono-total) 100) "      " (* ?rp29 100)  "      ")
		(if (neq ?ono29 0) then (printout t (/ (* ?rp29 100) (sqrt ?ono29)) crlf) else (printout t crlf))
	(printout t 30 "      " ?ono30 "      " (* (/ ?ono30 ?ono-total) 100) "      " (* ?rp30 100)  "      ")
		(if (neq ?ono30 0) then (printout t (/ (* ?rp30 100) (sqrt ?ono30)) crlf) else (printout t crlf))
	(printout t 31 "      " ?ono31 "      " (* (/ ?ono31 ?ono-total) 100) "      " (* ?rp31 100)  "      ")
		(if (neq ?ono31 0) then (printout t (/ (* ?rp31 100) (sqrt ?ono31)) crlf) else (printout t crlf))
	(printout t 32 "      " ?ono32 "      " (* (/ ?ono32 ?ono-total) 100) "      " (* ?rp32 100)  "      ")
		(if (neq ?ono32 0) then (printout t (/ (* ?rp32 100) (sqrt ?ono32)) crlf) else (printout t crlf))
	
	(return 
		(create$ 
			(* ?rp19 100) (* ?rp20 100)(* ?rp21 100)(* ?rp22 100)(* ?rp23 100)(* ?rp24 100)(* ?rp25 100)
			(* ?rp26 100)(* ?rp27 100)(* ?rp28 100)(* ?rp29 100)(* ?rp30 100)(* ?rp31 100)(* ?rp32 100)
		)
	)
)








;;; correlation for the subset of the sample with ?nb-clues clues
(deffunction fixed-nb-clues-correlation (?x-file ?y-file ?nb-clues-file ?nb-clues ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	(open ?nb-clues-file "nb-clues-file" "r")
	
	(bind ?i 1)
	(bind ?nb-puzzles 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		(bind ?yi (eval ?yline))
		(bind ?nb-clues-i (eval (readline "nb-clues-file")))
;		(printout t ?xi " " ?yi " " ?nb-clues-i crlf)
		(if (eq ?nb-clues-i ?nb-clues) then
			(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?nb-puzzles)))
			(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?nb-puzzles)))
			(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?nb-puzzles)))
			(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?nb-puzzles)))
			(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?nb-puzzles)))
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
		)
		(bind ?i (+ ?i 1))
	)
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
;	(printout t "EX = " ?EX crlf)
;	(printout t "EY = " ?EY crlf)
;	(printout t "SigmaX = " (sqrt ?VX) crlf)
;	(printout t "SigmaY = " (sqrt ?VY) crlf)
	(printout t "correlationXY = " ?r crlf)
;	(printout t "regression Y = aX+b" crlf)
;	(printout t "a = " ?a crlf)
;	(printout t "b = " ?b crlf)
	(close "x-file")
	(close "y-file")
	(close "nb-clues-file")
)




(deffunction fixed-nb-clues-log-correlation (?x-file ?y-file ?nb-clues-file ?nb-clues ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	(open ?nb-clues-file "nb-clues-file" "r")
	
	(bind ?i 1)
	(bind ?nb-puzzles 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		(bind ?yi (log (eval ?yline)))
		(bind ?nb-clues-i (eval (readline "nb-clues-file")))
;		(printout t ?xi " " ?yi " " ?nb-clues-i crlf)
		(if (eq ?nb-clues-i ?nb-clues) then
			(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?nb-puzzles)))
			(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?nb-puzzles)))
			(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?nb-puzzles)))
			(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?nb-puzzles)))
			(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?nb-puzzles)))
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
		)
		(bind ?i (+ ?i 1))
	)
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
;	(printout t "EX = " ?EX crlf)
;	(printout t "EY = " ?EY crlf)
;	(printout t "SigmaX = " (sqrt ?VX) crlf)
;	(printout t "SigmaY = " (sqrt ?VY) crlf)
	(printout t "correlationXY = " ?r crlf)
;	(printout t "regression Y = aX+b" crlf)
;	(printout t "a = " ?a crlf)
;	(printout t "b = " ?b crlf)
	(close "x-file")
	(close "y-file")
	(close "nb-clues-file")
)



(deffunction stat-number-of-complete-grids-n-after-first-p (?puzzles-file ?p ?n)
	(close)
	(bind ?T 0.0)
	(bind ?EX 0.0)
	(bind ?EX2 0.0)
	(bind ?min 1000000000)
	(bind ?max 0)
	(open ?puzzles-file "puzzles-file" "r")
	(bind ?i 1)
	(while (< ?i (+ ?p 1)) (readline "puzzles-file") (bind ?i (+ ?i 1)))
	(bind ?i (+ ?p 1))
	(bind ?nb-puzzles 1)
	(while (< ?i (+ ?p ?n 1))
		(read "puzzles-file")
		(bind ?nb (read "puzzles-file"))
		;(printout t ?nb crlf)
		; (if (or (not (integerp ?nb)) (not (floatp ?nb))) then (printout t ?nb crlf))
		(bind ?min (min ?min ?nb))
		(bind ?max (max ?max ?nb))
		(bind ?T (+ ?T ?nb))
		(bind ?EX (+ ?EX (/ (- ?nb  ?EX) ?nb-puzzles)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?nb ?nb)  ?EX2) ?nb-puzzles)))
		(bind ?nb-puzzles (+ ?nb-puzzles 1))
		(bind ?i (+ ?i 1))
	)
	(close "puzzles-file")
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?SigmaX (sqrt ?VX))
	(printout t "Tries = " ?T crlf)
	(printout t "E(X) = " ?EX crlf)
	(printout t "sd(X) = " ?SigmaX crlf)
	(printout t "min(X) = " ?min crlf)
	(printout t "max(X) = " ?max crlf)
	(return ?T)
)
	
	




(deffunction file-stat-number-of-complete-grids (?puzzles-file)
	(close)
	(bind ?n (file-length ?puzzles-file))
	(bind ?p 0)
	(stat-number-of-complete-grids-n-after-first-p ?puzzles-file ?p ?n)
)



(deffunction extract-tries (?pairs-file ?tries-file ?nb)
	(close)
	(open ?pairs-file "pairs-file" "r")
	(open ?tries-file "tries-file" "w")
	(bind ?i 0)
	(while (< ?i ?nb)
		(read "pairs-file")
		(bind ?tries (read "pairs-file"))
		(printout "tries-file" ?tries crlf)
		(bind ?i (+ ?i 1))
	)
	(close "pairs-file")
	(close "tries-file")
)


(deffunction nb-minimals (?nb-puzzles ?mean-number-of-grids ?raw26 $?unbiased-distrib)
	;;; ?nb-puzzles : number of minimal puzzles generated
	;;; ?mean-number-of-grids : consumed for 1 minimal
	;;; ?raw26 : number of minimals with 26 clues in the raw distribution
	;;; (bind ?N 5472730538) ; number of classes of complete grids
	(bind ?N 6670903752021072936960.0) ; number of complete grids
	(bind ?N26 (/ (* 81.0 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 61 60 59 58 57 56) 
				  (* 26.0 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2)
			   )
	) ; 81! / (81-26)! / 26! (error if computed with exp function in Clips or Jess)
	(bind ?NN26 (* ?N ?N26)) ; number of singly-indexed puzzles with 26 clues.
	
	(bind ?T (* ?nb-puzzles ?mean-number-of-grids)) ; number of tries
	
	;;; Mc estimated number of minimals with c clues		   
	(bind ?M26 (* ?raw26 (/ ?NN26 ?T)))
	(bind ?prop26 (nth$ (- 26 18) $?unbiased-distrib))
	(bind ?M (create$
				(* ?M26 (/ (nth$ (- 19 18) $?unbiased-distrib) ?prop26))
				(* ?M26 (/ (nth$ (- 20 18) $?unbiased-distrib) ?prop26))
				(* ?M26 (/ (nth$ (- 21 18) $?unbiased-distrib) ?prop26))
				(* ?M26 (/ (nth$ (- 22 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 23 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 24 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 25 18) $?unbiased-distrib) ?prop26))
				?M26 
				(* ?M26 (/ (nth$ (- 27 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 28 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 29 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 30 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 31 18) $?unbiased-distrib) ?prop26)) 
			)
	)
	(bind ?c 1)
	(printout t "#clues   " "#minimals" crlf)
	(while (< ?c 14)
		(printout t (+ ?c 18) "       " (nth$ ?c ?M) crlf)
		(bind ?c (+ ?c 1))
	)
	(return ?M)
)




(deffunction mean-nb-minimals (?nb-puzzles ?mean-number-of-grids ?raw26 $?unbiased-distrib)
	;;; ?nb-puzzles : number of minimal puzzles generated
	;;; ?mean-number-of-grids : consumed for 1 minimal
	;;; ?raw26 : number of minimals with 26 clues in the raw distribution
	(bind ?N 6670903752021072936960.0) ; number of complete grids
	(bind ?N26 (/ (* 81.0 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 61 60 59 58 57 56) 
				  (* 26.0 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2)
			   )
	) ; 81! / (81-26)! / 26! (error if computed with exp function in Clips or Jess)
	;;; (bind ?NN26 (* ?N ?N26)) ; number of singly-indexed puzzles with 26 clues.
	(bind ?NN26 ?N26) ; mean number of singly-indexed puzzles with 26 clues per grid.
	(bind ?T (* ?nb-puzzles ?mean-number-of-grids)) ; number of tries
	
	;;; Mc estimated number of minimals with c clues		   
	(bind ?M26 (* ?raw26 (/ ?NN26 ?T)))
	(bind ?prop26 (nth$ (- 26 18) $?unbiased-distrib))
	(bind ?M (create$
				(* ?M26 (/ (nth$ (- 19 18) $?unbiased-distrib) ?prop26))
				(* ?M26 (/ (nth$ (- 20 18) $?unbiased-distrib) ?prop26))
				(* ?M26 (/ (nth$ (- 21 18) $?unbiased-distrib) ?prop26))
				(* ?M26 (/ (nth$ (- 22 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 23 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 24 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 25 18) $?unbiased-distrib) ?prop26))
				?M26 
				(* ?M26 (/ (nth$ (- 27 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 28 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 29 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 30 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 31 18) $?unbiased-distrib) ?prop26)) 
				(* ?M26 (/ (nth$ (- 32 18) $?unbiased-distrib) ?prop26)) 
			)
	)
	(bind ?c 1)
	(printout t "#clues   " "mean #minimals" crlf)
	(while (< ?c 14)
		(printout t (+ ?c 18) "       " (nth$ ?c ?M) crlf)
		(bind ?c (+ ?c 1))
	)
	(return ?M)
)



;;; the good one:
 
(deffunction real-mean-numbers-of-minimals (?nb-puzzles ?mean-number-of-grids-consumed ?ctr-bias-distrib ?real-%-distrib)
	;;; ?nb-puzzles : number of minimal puzzles generated
	;;; ?mean-number-of-grids-consumed : complete grids consumed for 1 minimal
	;;; ?ctr-bias-distrib (raw results in numbers of puzzles, 19 to 32)
	;;; ?real-%-distrib (estimated real results in %, 19 to 32)
	;;; check consistency
	(bind ?i 1)
	(bind ?nb 0)
	(while (< ?i 15)
		(bind ?nb (+ ?nb (nth$ ?i $?ctr-bias-distrib)))
		(bind ?i (+ ?i 1))
	)
	(if (neq ?nb ?nb-puzzles) then (printout t "error in puzzle number" crlf) (return))

	;;; number of singly indexed 26-clue puzzles per complete grid
	(bind ?N26 (/ (* 81.0 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 61 60 59 58 57 56) 
				  (* 26.0 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2)
			   )
	)
	;;; number of tries
	(bind ?T (* ?nb-puzzles ?mean-number-of-grids-consumed)) 
	
	;;; propc estimated proportion of minimals with c clues		   
	;;; Mc estimated mean number of minimals with c clues		   
	(bind ?prop26 (nth$ (- 26 18) ?real-%-distrib))
	(bind ?M26 (* (nth$ (- 26 18) ?ctr-bias-distrib) (/ ?N26 ?T)))

	(printout t "#clues    mean #minimals       relative error" crlf)
	(printout t "          per complete grid  " crlf)
	(bind ?i 1)   
	(while (< ?i 8) 
		(bind ?nb (+ ?i 18)) ;;; nb from 19 to 25
		(bind ?nb-cb (nth$ ?i ?ctr-bias-distrib))
		(bind ?real-nb (* ?M26 (/ (nth$ ?i ?real-%-distrib) ?prop26)))
		(bind ?error (if (or (eq ?nb-cb 0.0) (eq ?nb-cb 0)) then 0.0 else (* 100 (sqrt (/ 1 ?nb-cb)))))
		(printout t ?nb "        " ?real-nb "            " ?error "%" crlf)
		(bind ?i (+ ?i 1))
	)
	(bind ?nb-cb (nth$ (- 26 18) ?ctr-bias-distrib))
	(bind ?error (if (or (eq ?nb-cb 0.0) (eq ?nb-cb 0)) then 0.0 else (* 100 (sqrt (/ 1 ?nb-cb)))))
	(printout t 26 "        " ?M26 "            " ?error "%" crlf)
	(bind ?i 9)
	(while (< ?i 15) 
		(bind ?nb (+ ?i 18)) ;;; nb from 27 to 32
		(bind ?nb-cb (nth$ ?i ?ctr-bias-distrib))
		(bind ?real-nb (* ?M26 (/ (nth$ ?i ?real-%-distrib) ?prop26)))
		(bind ?error (if (or (eq ?nb-cb 0.0) (eq ?nb-cb 0)) then 0.0 else (* 100 (sqrt (/ 1 ?nb-cb)))))
		(printout t ?nb "        " ?real-nb "            " ?error "%" crlf)
		(bind ?i (+ ?i 1))
	)
)





(deffunction unbiased-kurtosis(?on ?kurt)
	(bind ?l (length$ ?on))
	(bind ?i 1)
	(bind ?k 0)
	(bind ?n 0)
	(while (< ?i (+ ?l 1))
		(bind ?k (+ ?k (* (nth$ ?i ?kurt) (** (nth$ ?i ?on) 2))))
		(bind ?n (+ ?n (nth$ ?i ?on)))
		(bind ?i (+ ?i 1))
	)
	(return (/ ?k (** ?n 2)))
)
	



(deffunction Gaussian-density (?mean ?sigma ?x)
	(/ (exp (- 0 (/ (** (- ?x ?mean) 2) 2)))
		(* ?sigma (sqrt (* 2 (pi))))
	)
)



(deffunction Gamma-density (?mean ?sigma ?x)
	;;; only for integer values of ?x
	(bind ?theta (/ (** ?sigma 2) ?mean))
	(printout t "theta = " ?theta crlf)
	(bind ?k (/ ?mean ?theta))
	(printout t "k = " ?k crlf)
	(/	(*   (** ?x (- ?k 1))
			 (exp (- 0 (/ ?x ?theta))))
		(* (factorial (- ?k 1)) (** ?theta ?k))
	)
)







(deffunction nrczt-relative-distribution-for-nb-clues (?nrczt-file ?nb-clues-file ?nb ?n)
	;;; X dsitrib in [0.9 1 2 ... 20, total] for the ?nb-clue puzzles; the last element, the 22th is the total.
	(close)
	(open ?nrczt-file "nrczt-file" "r")
	(open ?nb-clues-file "nb-clues-file" "r")
	(bind ?nrczt-dsitrib (create$ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0))
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?nrczt-line (readline "nrczt-file"))
		(bind ?nrczt (eval ?nrczt-line))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?nb-clues (eval ?nb-clues-line))
		(if (eq ?nb-clues ?nb)
			then
				(bind ?nrczt-dsitrib (replace$ ?nrczt-dsitrib 22 22 (+ 1 (nth$ 22 ?nrczt-dsitrib))))
				(if (eq ?nrczt 0.9) 
					then (bind ?nrczt-dsitrib (replace$ ?nrczt-dsitrib 1 1 (+ 1 (nth$ 1 ?nrczt-dsitrib))))
					else (bind ?nrczt-dsitrib (replace$ ?nrczt-dsitrib (+ 1 ?nrczt) (+ 1 ?nrczt) (+ 1 (nth$ (+ 1 ?nrczt) ?nrczt-dsitrib))))
				)
		)
		(bind ?i (+ ?i 1))
	)
	(close "X-file")
	(close "nb-clues-file")
	(return ?nrczt-dsitrib)
)




(deffunction unbiased-nrczt-distribution (?nrczt-file ?nb-clues-file ?n)
	;;; nb-clues from 19 to 32
	(bind ?distrib-19 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 19 ?n))
	(bind ?distrib-20 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 20 ?n))
	(bind ?distrib-21 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 21 ?n))
	(bind ?distrib-22 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 22 ?n))
	(bind ?distrib-23 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 23 ?n))
	(bind ?distrib-24 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 24 ?n))
	(bind ?distrib-25 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 25 ?n))
	(bind ?distrib-26 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 26 ?n))
	(bind ?distrib-27 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 27 ?n))
	(bind ?distrib-28 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 28 ?n))
	(bind ?distrib-29 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 29 ?n))
	(bind ?distrib-30 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 30 ?n))
	(bind ?distrib-31 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 31 ?n))
	(bind ?distrib-32 (nrczt-relative-distribution-for-nb-clues ?nrczt-file ?nb-clues-file 32 ?n))
	(bind ?distrib-all 
		(create$
			(+  (nth$ 1 ?distrib-19) (nth$ 1 ?distrib-20) (nth$ 1 ?distrib-21) (nth$ 1 ?distrib-22) (nth$ 1 ?distrib-23) (nth$ 1 ?distrib-24) (nth$ 1 ?distrib-25)
				(nth$ 1 ?distrib-26) (nth$ 1 ?distrib-27) (nth$ 1 ?distrib-28) (nth$ 1 ?distrib-29) (nth$ 1 ?distrib-30) (nth$ 1 ?distrib-31) (nth$ 1 ?distrib-32)
			)
			(+  (nth$ 2 ?distrib-19) (nth$ 2 ?distrib-20) (nth$ 2 ?distrib-21) (nth$ 2 ?distrib-22) (nth$ 2 ?distrib-23) (nth$ 2 ?distrib-24) (nth$ 2 ?distrib-25)
				(nth$ 2 ?distrib-26) (nth$ 2 ?distrib-27) (nth$ 2 ?distrib-28) (nth$ 2 ?distrib-29) (nth$ 2 ?distrib-30) (nth$ 2 ?distrib-31) (nth$ 2 ?distrib-32)
			)
			(+  (nth$ 3 ?distrib-19) (nth$ 3 ?distrib-20) (nth$ 3 ?distrib-21) (nth$ 3 ?distrib-22) (nth$ 3 ?distrib-23) (nth$ 3 ?distrib-24) (nth$ 3 ?distrib-25)
				(nth$ 3 ?distrib-26) (nth$ 3 ?distrib-27) (nth$ 3 ?distrib-28) (nth$ 3 ?distrib-29) (nth$ 3 ?distrib-30) (nth$ 3 ?distrib-31) (nth$ 3 ?distrib-32)
			)
			(+  (nth$ 4 ?distrib-19) (nth$ 4 ?distrib-20) (nth$ 4 ?distrib-21) (nth$ 4 ?distrib-22) (nth$ 4 ?distrib-23) (nth$ 4 ?distrib-24) (nth$ 4 ?distrib-25)
				(nth$ 4 ?distrib-26) (nth$ 4 ?distrib-27) (nth$ 4 ?distrib-28) (nth$ 4 ?distrib-29) (nth$ 4 ?distrib-30) (nth$ 4 ?distrib-31) (nth$ 4 ?distrib-32)
			)
			(+  (nth$ 5 ?distrib-19) (nth$ 5 ?distrib-20) (nth$ 5 ?distrib-21) (nth$ 5 ?distrib-22) (nth$ 5 ?distrib-23) (nth$ 5 ?distrib-24) (nth$ 5 ?distrib-25)
				(nth$ 5 ?distrib-26) (nth$ 5 ?distrib-27) (nth$ 5 ?distrib-28) (nth$ 5 ?distrib-29) (nth$ 5 ?distrib-30) (nth$ 5 ?distrib-31) (nth$ 5 ?distrib-32)
			)
			(+  (nth$ 6 ?distrib-19) (nth$ 6 ?distrib-20) (nth$ 6 ?distrib-21) (nth$ 6 ?distrib-22) (nth$ 6 ?distrib-23) (nth$ 6 ?distrib-24) (nth$ 6 ?distrib-25)
				(nth$ 6 ?distrib-26) (nth$ 6 ?distrib-27) (nth$ 6 ?distrib-28) (nth$ 6 ?distrib-29) (nth$ 6 ?distrib-30) (nth$ 6 ?distrib-31) (nth$ 6 ?distrib-32)
			)
			(+  (nth$ 7 ?distrib-19) (nth$ 7 ?distrib-20) (nth$ 7 ?distrib-21) (nth$ 7 ?distrib-22) (nth$ 7 ?distrib-23) (nth$ 7 ?distrib-24) (nth$ 7 ?distrib-25)
				(nth$ 7 ?distrib-26) (nth$ 7 ?distrib-27) (nth$ 7 ?distrib-28) (nth$ 7 ?distrib-29) (nth$ 7 ?distrib-30) (nth$ 7 ?distrib-31) (nth$ 7 ?distrib-32)
			)
			(+  (nth$ 8 ?distrib-19) (nth$ 8 ?distrib-20) (nth$ 8 ?distrib-21) (nth$ 8 ?distrib-22) (nth$ 8 ?distrib-23) (nth$ 8 ?distrib-24) (nth$ 8 ?distrib-25)
				(nth$ 8 ?distrib-26) (nth$ 8 ?distrib-27) (nth$ 8 ?distrib-28) (nth$ 8 ?distrib-29) (nth$ 8 ?distrib-30) (nth$ 8 ?distrib-31) (nth$ 8 ?distrib-32)
			)
			(+  (nth$ 9 ?distrib-19) (nth$ 9 ?distrib-20) (nth$ 9 ?distrib-21) (nth$ 9 ?distrib-22) (nth$ 9 ?distrib-23) (nth$ 9 ?distrib-24) (nth$ 9 ?distrib-25)
				(nth$ 9 ?distrib-26) (nth$ 9 ?distrib-27) (nth$ 9 ?distrib-28) (nth$ 9 ?distrib-29) (nth$ 9 ?distrib-30) (nth$ 9 ?distrib-31) (nth$ 9 ?distrib-32)
			)
			(+  (nth$ 10 ?distrib-19) (nth$ 10 ?distrib-20) (nth$ 10 ?distrib-21) (nth$ 10 ?distrib-22) (nth$ 10 ?distrib-23) (nth$ 10 ?distrib-24) (nth$ 10 ?distrib-25)
				(nth$ 10 ?distrib-26) (nth$ 10 ?distrib-27) (nth$ 10 ?distrib-28) (nth$ 10 ?distrib-29) (nth$ 10 ?distrib-30) (nth$ 10 ?distrib-31) (nth$ 10 ?distrib-32)
			)
			(+  (nth$ 11 ?distrib-19) (nth$ 11 ?distrib-20) (nth$ 11 ?distrib-21) (nth$ 11 ?distrib-22) (nth$ 11 ?distrib-23) (nth$ 11 ?distrib-24) (nth$ 11 ?distrib-25)
				(nth$ 11 ?distrib-26) (nth$ 11 ?distrib-27) (nth$ 11 ?distrib-28) (nth$ 11 ?distrib-29) (nth$ 11 ?distrib-30) (nth$ 11 ?distrib-31) (nth$ 11 ?distrib-32)
			)
			(+  (nth$ 12 ?distrib-19) (nth$ 12 ?distrib-20) (nth$ 12 ?distrib-21) (nth$ 12 ?distrib-22) (nth$ 12 ?distrib-23) (nth$ 12 ?distrib-24) (nth$ 12 ?distrib-25)
				(nth$ 12 ?distrib-26) (nth$ 12 ?distrib-27) (nth$ 12 ?distrib-28) (nth$ 12 ?distrib-29) (nth$ 12 ?distrib-30) (nth$ 12 ?distrib-31) (nth$ 12 ?distrib-32)
			)
			(+  (nth$ 13 ?distrib-19) (nth$ 13 ?distrib-20) (nth$ 13 ?distrib-21) (nth$ 13 ?distrib-22) (nth$ 13 ?distrib-23) (nth$ 13 ?distrib-24) (nth$ 13 ?distrib-25)
				(nth$ 13 ?distrib-26) (nth$ 13 ?distrib-27) (nth$ 13 ?distrib-28) (nth$ 13 ?distrib-29) (nth$ 13 ?distrib-30) (nth$ 13 ?distrib-31) (nth$ 13 ?distrib-32)
			)
			(+  (nth$ 14 ?distrib-19) (nth$ 14 ?distrib-20) (nth$ 14 ?distrib-21) (nth$ 14 ?distrib-22) (nth$ 14 ?distrib-23) (nth$ 14 ?distrib-24) (nth$ 14 ?distrib-25)
				(nth$ 14 ?distrib-26) (nth$ 14 ?distrib-27) (nth$ 14 ?distrib-28) (nth$ 14 ?distrib-29) (nth$ 14 ?distrib-30) (nth$ 14 ?distrib-31) (nth$ 14 ?distrib-32)
			)
			(+  (nth$ 15 ?distrib-19) (nth$ 15 ?distrib-20) (nth$ 15 ?distrib-21) (nth$ 15 ?distrib-22) (nth$ 15 ?distrib-23) (nth$ 15 ?distrib-24) (nth$ 15 ?distrib-25)
				(nth$ 15 ?distrib-26) (nth$ 15 ?distrib-27) (nth$ 15 ?distrib-28) (nth$ 15 ?distrib-29) (nth$ 15 ?distrib-30) (nth$ 15 ?distrib-31) (nth$ 15 ?distrib-32)
			)
			(+  (nth$ 16 ?distrib-19) (nth$ 16 ?distrib-20) (nth$ 16 ?distrib-21) (nth$ 16 ?distrib-22) (nth$ 16 ?distrib-23) (nth$ 16 ?distrib-24) (nth$ 16 ?distrib-25)
				(nth$ 16 ?distrib-26) (nth$ 16 ?distrib-27) (nth$ 16 ?distrib-28) (nth$ 16 ?distrib-29) (nth$ 16 ?distrib-30) (nth$ 16 ?distrib-31) (nth$ 16 ?distrib-32)
			)
			(+  (nth$ 17 ?distrib-19) (nth$ 17 ?distrib-20) (nth$ 17 ?distrib-21) (nth$ 17 ?distrib-22) (nth$ 17 ?distrib-23) (nth$ 17 ?distrib-24) (nth$ 17 ?distrib-25)
				(nth$ 17 ?distrib-26) (nth$ 17 ?distrib-27) (nth$ 17 ?distrib-28) (nth$ 17 ?distrib-29) (nth$ 17 ?distrib-30) (nth$ 17 ?distrib-31) (nth$ 17 ?distrib-32)
			)
			(+  (nth$ 18 ?distrib-19) (nth$ 18 ?distrib-20) (nth$ 18 ?distrib-21) (nth$ 18 ?distrib-22) (nth$ 18 ?distrib-23) (nth$ 18 ?distrib-24) (nth$ 18 ?distrib-25)
				(nth$ 18 ?distrib-26) (nth$ 18 ?distrib-27) (nth$ 18 ?distrib-28) (nth$ 18 ?distrib-29) (nth$ 18 ?distrib-30) (nth$ 18 ?distrib-31) (nth$ 18 ?distrib-32)
			)
			(+  (nth$ 19 ?distrib-19) (nth$ 19 ?distrib-20) (nth$ 19 ?distrib-21) (nth$ 19 ?distrib-22) (nth$ 19 ?distrib-23) (nth$ 19 ?distrib-24) (nth$ 19 ?distrib-25)
				(nth$ 19 ?distrib-26) (nth$ 19 ?distrib-27) (nth$ 19 ?distrib-28) (nth$ 19 ?distrib-29) (nth$ 19 ?distrib-30) (nth$ 19 ?distrib-31) (nth$ 19 ?distrib-32)
			)
			(+  (nth$ 20 ?distrib-19) (nth$ 20 ?distrib-20) (nth$ 20 ?distrib-21) (nth$ 20 ?distrib-22) (nth$ 20 ?distrib-23) (nth$ 20 ?distrib-24) (nth$ 20 ?distrib-25)
				(nth$ 20 ?distrib-26) (nth$ 20 ?distrib-27) (nth$ 20 ?distrib-28) (nth$ 20 ?distrib-29) (nth$ 20 ?distrib-30) (nth$ 20 ?distrib-31) (nth$ 20 ?distrib-32)
			)
			(+  (nth$ 21 ?distrib-19) (nth$ 21 ?distrib-20) (nth$ 21 ?distrib-21) (nth$ 21 ?distrib-22) (nth$ 21 ?distrib-23) (nth$ 21 ?distrib-24) (nth$ 21 ?distrib-25)
				(nth$ 21 ?distrib-26) (nth$ 21 ?distrib-27) (nth$ 21 ?distrib-28) (nth$ 21 ?distrib-29) (nth$ 21 ?distrib-30) (nth$ 21 ?distrib-31) (nth$ 21 ?distrib-32)
			)
			(+  (nth$ 22 ?distrib-19) (nth$ 22 ?distrib-20) (nth$ 22 ?distrib-21) (nth$ 22 ?distrib-22) (nth$ 22 ?distrib-23) (nth$ 22 ?distrib-24) (nth$ 22 ?distrib-25)
				(nth$ 22 ?distrib-26) (nth$ 22 ?distrib-27) (nth$ 22 ?distrib-28) (nth$ 22 ?distrib-29) (nth$ 22 ?distrib-30) (nth$ 22 ?distrib-31) (nth$ 22 ?distrib-32)
			)
		)
	)
	(bind ?real-distrib 
		(create$
			(+  (* (nth$ 1 ?distrib-19) (cf 19)) (* (nth$ 1 ?distrib-20) (cf 20)) (* (nth$ 1 ?distrib-21)  (cf 21))
				(* (nth$ 1 ?distrib-22) (cf 22)) (* (nth$ 1 ?distrib-23) (cf 23)) (* (nth$ 1 ?distrib-24) (cf 24)) 
				(* (nth$ 1 ?distrib-25) (cf 25)) (* (nth$ 1 ?distrib-26) (cf 26)) (* (nth$ 1 ?distrib-27) (cf 27)) 
				(* (nth$ 1 ?distrib-28) (cf 28)) (* (nth$ 1 ?distrib-29) (cf 29)) (* (nth$ 1 ?distrib-30) (cf 30)) 
				(* (nth$ 1 ?distrib-31) (cf 31)) (* (nth$ 1 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 2 ?distrib-19) (cf 19)) (* (nth$ 2 ?distrib-20) (cf 20)) (* (nth$ 2 ?distrib-21)  (cf 21))
				(* (nth$ 2 ?distrib-22) (cf 22)) (* (nth$ 2 ?distrib-23) (cf 23)) (* (nth$ 2 ?distrib-24) (cf 24)) 
				(* (nth$ 2 ?distrib-25) (cf 25)) (* (nth$ 2 ?distrib-26) (cf 26)) (* (nth$ 2 ?distrib-27) (cf 27)) 
				(* (nth$ 2 ?distrib-28) (cf 28)) (* (nth$ 2 ?distrib-29) (cf 29)) (* (nth$ 2 ?distrib-30) (cf 30)) 
				(* (nth$ 2 ?distrib-31) (cf 31)) (* (nth$ 2 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 3 ?distrib-19) (cf 19)) (* (nth$ 3 ?distrib-20) (cf 20)) (* (nth$ 3 ?distrib-21)  (cf 21))
				(* (nth$ 3 ?distrib-22) (cf 22)) (* (nth$ 3 ?distrib-23) (cf 23)) (* (nth$ 3 ?distrib-24) (cf 24)) 
				(* (nth$ 3 ?distrib-25) (cf 25)) (* (nth$ 3 ?distrib-26) (cf 26)) (* (nth$ 3 ?distrib-27) (cf 27)) 
				(* (nth$ 3 ?distrib-28) (cf 28)) (* (nth$ 3 ?distrib-29) (cf 29)) (* (nth$ 3 ?distrib-30) (cf 30)) 
				(* (nth$ 3 ?distrib-31) (cf 31)) (* (nth$ 3 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 4 ?distrib-19) (cf 19)) (* (nth$ 4 ?distrib-20) (cf 20)) (* (nth$ 4 ?distrib-21)  (cf 21))
				(* (nth$ 4 ?distrib-22) (cf 22)) (* (nth$ 4 ?distrib-23) (cf 23)) (* (nth$ 4 ?distrib-24) (cf 24)) 
				(* (nth$ 4 ?distrib-25) (cf 25)) (* (nth$ 4 ?distrib-26) (cf 26)) (* (nth$ 4 ?distrib-27) (cf 27)) 
				(* (nth$ 4 ?distrib-28) (cf 28)) (* (nth$ 4 ?distrib-29) (cf 29)) (* (nth$ 4 ?distrib-30) (cf 30)) 
				(* (nth$ 4 ?distrib-31) (cf 31)) (* (nth$ 4 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 5 ?distrib-19) (cf 19)) (* (nth$ 5 ?distrib-20) (cf 20)) (* (nth$ 5 ?distrib-21)  (cf 21))
				(* (nth$ 5 ?distrib-22) (cf 22)) (* (nth$ 5 ?distrib-23) (cf 23)) (* (nth$ 5 ?distrib-24) (cf 24)) 
				(* (nth$ 5 ?distrib-25) (cf 25)) (* (nth$ 5 ?distrib-26) (cf 26)) (* (nth$ 5 ?distrib-27) (cf 27)) 
				(* (nth$ 5 ?distrib-28) (cf 28)) (* (nth$ 5 ?distrib-29) (cf 29)) (* (nth$ 5 ?distrib-30) (cf 30)) 
				(* (nth$ 5 ?distrib-31) (cf 31)) (* (nth$ 5 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 6 ?distrib-19) (cf 19)) (* (nth$ 6 ?distrib-20) (cf 20)) (* (nth$ 6 ?distrib-21)  (cf 21))
				(* (nth$ 6 ?distrib-22) (cf 22)) (* (nth$ 6 ?distrib-23) (cf 23)) (* (nth$ 6 ?distrib-24) (cf 24)) 
				(* (nth$ 6 ?distrib-25) (cf 25)) (* (nth$ 6 ?distrib-26) (cf 26)) (* (nth$ 6 ?distrib-27) (cf 27)) 
				(* (nth$ 6 ?distrib-28) (cf 28)) (* (nth$ 6 ?distrib-29) (cf 29)) (* (nth$ 6 ?distrib-30) (cf 30)) 
				(* (nth$ 6 ?distrib-31) (cf 31)) (* (nth$ 6 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 7 ?distrib-19) (cf 19)) (* (nth$ 7 ?distrib-20) (cf 20)) (* (nth$ 7 ?distrib-21)  (cf 21))
				(* (nth$ 7 ?distrib-22) (cf 22)) (* (nth$ 7 ?distrib-23) (cf 23)) (* (nth$ 7 ?distrib-24) (cf 24)) 
				(* (nth$ 7 ?distrib-25) (cf 25)) (* (nth$ 7 ?distrib-26) (cf 26)) (* (nth$ 7 ?distrib-27) (cf 27)) 
				(* (nth$ 7 ?distrib-28) (cf 28)) (* (nth$ 7 ?distrib-29) (cf 29)) (* (nth$ 7 ?distrib-30) (cf 30)) 
				(* (nth$ 7 ?distrib-31) (cf 31)) (* (nth$ 7 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 8 ?distrib-19) (cf 19)) (* (nth$ 8 ?distrib-20) (cf 20)) (* (nth$ 8 ?distrib-21)  (cf 21))
				(* (nth$ 8 ?distrib-22) (cf 22)) (* (nth$ 8 ?distrib-23) (cf 23)) (* (nth$ 8 ?distrib-24) (cf 24)) 
				(* (nth$ 8 ?distrib-25) (cf 25)) (* (nth$ 8 ?distrib-26) (cf 26)) (* (nth$ 8 ?distrib-27) (cf 27)) 
				(* (nth$ 8 ?distrib-28) (cf 28)) (* (nth$ 8 ?distrib-29) (cf 29)) (* (nth$ 8 ?distrib-30) (cf 30)) 
				(* (nth$ 8 ?distrib-31) (cf 31)) (* (nth$ 8 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 9 ?distrib-19) (cf 19)) (* (nth$ 9 ?distrib-20) (cf 20)) (* (nth$ 9 ?distrib-21)  (cf 21))
				(* (nth$ 9 ?distrib-22) (cf 22)) (* (nth$ 9 ?distrib-23) (cf 23)) (* (nth$ 9 ?distrib-24) (cf 24)) 
				(* (nth$ 9 ?distrib-25) (cf 25)) (* (nth$ 9 ?distrib-26) (cf 26)) (* (nth$ 9 ?distrib-27) (cf 27)) 
				(* (nth$ 9 ?distrib-28) (cf 28)) (* (nth$ 9 ?distrib-29) (cf 29)) (* (nth$ 9 ?distrib-30) (cf 30)) 
				(* (nth$ 9 ?distrib-31) (cf 31)) (* (nth$ 9 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 10 ?distrib-19) (cf 19)) (* (nth$ 10 ?distrib-20) (cf 20)) (* (nth$ 10 ?distrib-21)  (cf 21))
				(* (nth$ 10 ?distrib-22) (cf 22)) (* (nth$ 10 ?distrib-23) (cf 23)) (* (nth$ 10 ?distrib-24) (cf 24)) 
				(* (nth$ 10 ?distrib-25) (cf 25)) (* (nth$ 10 ?distrib-26) (cf 26)) (* (nth$ 10 ?distrib-27) (cf 27)) 
				(* (nth$ 10 ?distrib-28) (cf 28)) (* (nth$ 10 ?distrib-29) (cf 29)) (* (nth$ 10 ?distrib-30) (cf 30)) 
				(* (nth$ 10 ?distrib-31) (cf 31)) (* (nth$ 10 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 11 ?distrib-19) (cf 19)) (* (nth$ 11 ?distrib-20) (cf 20)) (* (nth$ 11 ?distrib-21)  (cf 21))
				(* (nth$ 11 ?distrib-22) (cf 22)) (* (nth$ 11 ?distrib-23) (cf 23)) (* (nth$ 11 ?distrib-24) (cf 24)) 
				(* (nth$ 11 ?distrib-25) (cf 25)) (* (nth$ 11 ?distrib-26) (cf 26)) (* (nth$ 11 ?distrib-27) (cf 27)) 
				(* (nth$ 11 ?distrib-28) (cf 28)) (* (nth$ 11 ?distrib-29) (cf 29)) (* (nth$ 11 ?distrib-30) (cf 30)) 
				(* (nth$ 11 ?distrib-31) (cf 31)) (* (nth$ 11 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 12 ?distrib-19) (cf 19)) (* (nth$ 12 ?distrib-20) (cf 20)) (* (nth$ 12 ?distrib-21)  (cf 21))
				(* (nth$ 12 ?distrib-22) (cf 22)) (* (nth$ 12 ?distrib-23) (cf 23)) (* (nth$ 12 ?distrib-24) (cf 24)) 
				(* (nth$ 12 ?distrib-25) (cf 25)) (* (nth$ 12 ?distrib-26) (cf 26)) (* (nth$ 12 ?distrib-27) (cf 27)) 
				(* (nth$ 12 ?distrib-28) (cf 28)) (* (nth$ 12 ?distrib-29) (cf 29)) (* (nth$ 12 ?distrib-30) (cf 30)) 
				(* (nth$ 12 ?distrib-31) (cf 31)) (* (nth$ 12 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 13 ?distrib-19) (cf 19)) (* (nth$ 13 ?distrib-20) (cf 20)) (* (nth$ 13 ?distrib-21)  (cf 21))
				(* (nth$ 13 ?distrib-22) (cf 22)) (* (nth$ 13 ?distrib-23) (cf 23)) (* (nth$ 13 ?distrib-24) (cf 24)) 
				(* (nth$ 13 ?distrib-25) (cf 25)) (* (nth$ 13 ?distrib-26) (cf 26)) (* (nth$ 13 ?distrib-27) (cf 27)) 
				(* (nth$ 13 ?distrib-28) (cf 28)) (* (nth$ 13 ?distrib-29) (cf 29)) (* (nth$ 13 ?distrib-30) (cf 30)) 
				(* (nth$ 13 ?distrib-31) (cf 31)) (* (nth$ 13 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 14 ?distrib-19) (cf 19)) (* (nth$ 14 ?distrib-20) (cf 20)) (* (nth$ 14 ?distrib-21)  (cf 21))
				(* (nth$ 14 ?distrib-22) (cf 22)) (* (nth$ 14 ?distrib-23) (cf 23)) (* (nth$ 14 ?distrib-24) (cf 24)) 
				(* (nth$ 14 ?distrib-25) (cf 25)) (* (nth$ 14 ?distrib-26) (cf 26)) (* (nth$ 14 ?distrib-27) (cf 27)) 
				(* (nth$ 14 ?distrib-28) (cf 28)) (* (nth$ 14 ?distrib-29) (cf 29)) (* (nth$ 14 ?distrib-30) (cf 30)) 
				(* (nth$ 14 ?distrib-31) (cf 31)) (* (nth$ 14 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 15 ?distrib-19) (cf 19)) (* (nth$ 15 ?distrib-20) (cf 20)) (* (nth$ 15 ?distrib-21)  (cf 21))
				(* (nth$ 15 ?distrib-22) (cf 22)) (* (nth$ 15 ?distrib-23) (cf 23)) (* (nth$ 15 ?distrib-24) (cf 24)) 
				(* (nth$ 15 ?distrib-25) (cf 25)) (* (nth$ 15 ?distrib-26) (cf 26)) (* (nth$ 15 ?distrib-27) (cf 27)) 
				(* (nth$ 15 ?distrib-28) (cf 28)) (* (nth$ 15 ?distrib-29) (cf 29)) (* (nth$ 15 ?distrib-30) (cf 30)) 
				(* (nth$ 15 ?distrib-31) (cf 31)) (* (nth$ 15 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 16 ?distrib-19) (cf 19)) (* (nth$ 16 ?distrib-20) (cf 20)) (* (nth$ 16 ?distrib-21)  (cf 21))
				(* (nth$ 16 ?distrib-22) (cf 22)) (* (nth$ 16 ?distrib-23) (cf 23)) (* (nth$ 16 ?distrib-24) (cf 24)) 
				(* (nth$ 16 ?distrib-25) (cf 25)) (* (nth$ 16 ?distrib-26) (cf 26)) (* (nth$ 16 ?distrib-27) (cf 27)) 
				(* (nth$ 16 ?distrib-28) (cf 28)) (* (nth$ 16 ?distrib-29) (cf 29)) (* (nth$ 16 ?distrib-30) (cf 30)) 
				(* (nth$ 16 ?distrib-31) (cf 31)) (* (nth$ 16 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 17 ?distrib-19) (cf 19)) (* (nth$ 17 ?distrib-20) (cf 20)) (* (nth$ 17 ?distrib-21)  (cf 21))
				(* (nth$ 17 ?distrib-22) (cf 22)) (* (nth$ 17 ?distrib-23) (cf 23)) (* (nth$ 17 ?distrib-24) (cf 24)) 
				(* (nth$ 17 ?distrib-25) (cf 25)) (* (nth$ 17 ?distrib-26) (cf 26)) (* (nth$ 17 ?distrib-27) (cf 27)) 
				(* (nth$ 17 ?distrib-28) (cf 28)) (* (nth$ 17 ?distrib-29) (cf 29)) (* (nth$ 17 ?distrib-30) (cf 30)) 
				(* (nth$ 17 ?distrib-31) (cf 31)) (* (nth$ 17 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 18 ?distrib-19) (cf 19)) (* (nth$ 18 ?distrib-20) (cf 20)) (* (nth$ 18 ?distrib-21)  (cf 21))
				(* (nth$ 18 ?distrib-22) (cf 22)) (* (nth$ 18 ?distrib-23) (cf 23)) (* (nth$ 18 ?distrib-24) (cf 24)) 
				(* (nth$ 18 ?distrib-25) (cf 25)) (* (nth$ 18 ?distrib-26) (cf 26)) (* (nth$ 18 ?distrib-27) (cf 27)) 
				(* (nth$ 18 ?distrib-28) (cf 28)) (* (nth$ 18 ?distrib-29) (cf 29)) (* (nth$ 18 ?distrib-30) (cf 30)) 
				(* (nth$ 18 ?distrib-31) (cf 31)) (* (nth$ 18 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 19 ?distrib-19) (cf 19)) (* (nth$ 19 ?distrib-20) (cf 20)) (* (nth$ 19 ?distrib-21)  (cf 21))
				(* (nth$ 19 ?distrib-22) (cf 22)) (* (nth$ 19 ?distrib-23) (cf 23)) (* (nth$ 19 ?distrib-24) (cf 24)) 
				(* (nth$ 19 ?distrib-25) (cf 25)) (* (nth$ 19 ?distrib-26) (cf 26)) (* (nth$ 19 ?distrib-27) (cf 27)) 
				(* (nth$ 19 ?distrib-28) (cf 28)) (* (nth$ 19 ?distrib-29) (cf 29)) (* (nth$ 19 ?distrib-30) (cf 30)) 
				(* (nth$ 19 ?distrib-31) (cf 31)) (* (nth$ 19 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 20 ?distrib-19) (cf 19)) (* (nth$ 20 ?distrib-20) (cf 20)) (* (nth$ 20 ?distrib-21)  (cf 21))
				(* (nth$ 20 ?distrib-22) (cf 22)) (* (nth$ 20 ?distrib-23) (cf 23)) (* (nth$ 20 ?distrib-24) (cf 24)) 
				(* (nth$ 20 ?distrib-25) (cf 25)) (* (nth$ 20 ?distrib-26) (cf 26)) (* (nth$ 20 ?distrib-27) (cf 27)) 
				(* (nth$ 20 ?distrib-28) (cf 28)) (* (nth$ 20 ?distrib-29) (cf 29)) (* (nth$ 20 ?distrib-30) (cf 30)) 
				(* (nth$ 20 ?distrib-31) (cf 31)) (* (nth$ 20 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 21 ?distrib-19) (cf 19)) (* (nth$ 21 ?distrib-20) (cf 20)) (* (nth$ 21 ?distrib-21)  (cf 21))
				(* (nth$ 21 ?distrib-22) (cf 22)) (* (nth$ 21 ?distrib-23) (cf 23)) (* (nth$ 21 ?distrib-24) (cf 24)) 
				(* (nth$ 21 ?distrib-25) (cf 25)) (* (nth$ 21 ?distrib-26) (cf 26)) (* (nth$ 21 ?distrib-27) (cf 27)) 
				(* (nth$ 21 ?distrib-28) (cf 28)) (* (nth$ 21 ?distrib-29) (cf 29)) (* (nth$ 21 ?distrib-30) (cf 30)) 
				(* (nth$ 21 ?distrib-31) (cf 31)) (* (nth$ 21 ?distrib-32) (cf 32))
			)
			(+  (* (nth$ 22 ?distrib-19) (cf 19)) (* (nth$ 22 ?distrib-20) (cf 20)) (* (nth$ 22 ?distrib-21)  (cf 21))
				(* (nth$ 22 ?distrib-22) (cf 22)) (* (nth$ 22 ?distrib-23) (cf 23)) (* (nth$ 22 ?distrib-24) (cf 24)) 
				(* (nth$ 22 ?distrib-25) (cf 25)) (* (nth$ 22 ?distrib-26) (cf 26)) (* (nth$ 22 ?distrib-27) (cf 27)) 
				(* (nth$ 22 ?distrib-28) (cf 28)) (* (nth$ 22 ?distrib-29) (cf 29)) (* (nth$ 22 ?distrib-30) (cf 30)) 
				(* (nth$ 22 ?distrib-31) (cf 31)) (* (nth$ 22 ?distrib-32) (cf 32))
			)
		)
	)
				
	(printout t "19: " ?distrib-19 crlf)
	(printout t "20: " ?distrib-20 crlf)
	(printout t "21: " ?distrib-21 crlf)
	(printout t "22: " ?distrib-22 crlf)
	(printout t "23: " ?distrib-23 crlf)
	(printout t "24: " ?distrib-24 crlf)
	(printout t "25: " ?distrib-25 crlf)
	(printout t "26: " ?distrib-26 crlf)
	(printout t "27: " ?distrib-27 crlf)
	(printout t "28: " ?distrib-28 crlf)
	(printout t "29: " ?distrib-29 crlf)
	(printout t "30: " ?distrib-30 crlf)
	(printout t "31: " ?distrib-31 crlf)
	(printout t "32: " ?distrib-32 crlf)
	(printout t "all: " ?distrib-all crlf)
	(printout t "real: " ?real-distrib crlf)
	
	(printout t percentages: crlf)
	
	(bind ?total (nth$ 22 ?distrib-all))
	(bind ?percentages-all
		(create$ 
			(* (nth$ 1 ?distrib-all) (/ 100 ?total))
			(* (nth$ 2 ?distrib-all) (/ 100 ?total))
			(* (nth$ 3 ?distrib-all) (/ 100 ?total))
			(* (nth$ 4 ?distrib-all) (/ 100 ?total))
			(* (nth$ 5 ?distrib-all) (/ 100 ?total))
			(* (nth$ 6 ?distrib-all) (/ 100 ?total))
			(* (nth$ 7 ?distrib-all) (/ 100 ?total))
			(* (nth$ 8 ?distrib-all) (/ 100 ?total))
			(* (nth$ 9 ?distrib-all) (/ 100 ?total))
			(* (nth$ 10 ?distrib-all) (/ 100 ?total))
			(* (nth$ 11 ?distrib-all) (/ 100 ?total))
			(* (nth$ 12 ?distrib-all) (/ 100 ?total))
			(* (nth$ 13 ?distrib-all) (/ 100 ?total))
			(* (nth$ 14 ?distrib-all) (/ 100 ?total))
			(* (nth$ 15 ?distrib-all) (/ 100 ?total))
			(* (nth$ 16 ?distrib-all) (/ 100 ?total))
			(* (nth$ 17 ?distrib-all) (/ 100 ?total))
			(* (nth$ 18 ?distrib-all) (/ 100 ?total))
			(* (nth$ 19 ?distrib-all) (/ 100 ?total))
			(* (nth$ 20 ?distrib-all) (/ 100 ?total))
			(* (nth$ 21 ?distrib-all) (/ 100 ?total))
			(* (nth$ 22 ?distrib-all) (/ 100 ?total))
		)
	)
	(printout t "%-all: " ?percentages-all crlf)
	
	(bind ?total (nth$ 22 ?real-distrib))
	(bind ?real-percentages 
		(create$ 
			(* (nth$ 1 ?real-distrib) (/ 100 ?total))
			(* (nth$ 2 ?real-distrib) (/ 100 ?total))
			(* (nth$ 3 ?real-distrib) (/ 100 ?total))
			(* (nth$ 4 ?real-distrib) (/ 100 ?total))
			(* (nth$ 5 ?real-distrib) (/ 100 ?total))
			(* (nth$ 6 ?real-distrib) (/ 100 ?total))
			(* (nth$ 7 ?real-distrib) (/ 100 ?total))
			(* (nth$ 8 ?real-distrib) (/ 100 ?total))
			(* (nth$ 9 ?real-distrib) (/ 100 ?total))
			(* (nth$ 10 ?real-distrib) (/ 100 ?total))
			(* (nth$ 11 ?real-distrib) (/ 100 ?total))
			(* (nth$ 12 ?real-distrib) (/ 100 ?total))
			(* (nth$ 13 ?real-distrib) (/ 100 ?total))
			(* (nth$ 14 ?real-distrib) (/ 100 ?total))
			(* (nth$ 15 ?real-distrib) (/ 100 ?total))
			(* (nth$ 16 ?real-distrib) (/ 100 ?total))
			(* (nth$ 17 ?real-distrib) (/ 100 ?total))
			(* (nth$ 18 ?real-distrib) (/ 100 ?total))
			(* (nth$ 19 ?real-distrib) (/ 100 ?total))
			(* (nth$ 20 ?real-distrib) (/ 100 ?total))
			(* (nth$ 21 ?real-distrib) (/ 100 ?total))
			(* (nth$ 22 ?real-distrib) (/ 100 ?total))
		)
	)
	(printout t "%-real: " ?real-percentages crlf)
)	



(deffunction weighted-relative-error (?weights ?sds)
	;;; weights and standards deviations from 19 to 32 clues
	(bind ?sum
		(+ 
			(nth$ 1 ?weights)
			(nth$ 2 ?weights)
			(nth$ 3 ?weights)
			(nth$ 4 ?weights)
			(nth$ 5 ?weights)
			(nth$ 6 ?weights)
			(nth$ 7 ?weights)
			(nth$ 8 ?weights)
			(nth$ 9 ?weights)
			(nth$ 10 ?weights)
			(nth$ 11 ?weights)
			(nth$ 12 ?weights)
			(nth$ 13 ?weights)
			(nth$ 14 ?weights)
		)
	)
	(bind ?variances
		(create$ 
			(** (nth$ 1 ?sds) 2)
			(** (nth$ 2 ?sds) 2)
			(** (nth$ 3 ?sds) 2)
			(** (nth$ 4 ?sds) 2)
			(** (nth$ 5 ?sds) 2)
			(** (nth$ 6 ?sds) 2)
			(** (nth$ 7 ?sds) 2)
			(** (nth$ 8 ?sds) 2)
			(** (nth$ 9 ?sds) 2)
			(** (nth$ 10 ?sds) 2)
			(** (nth$ 11 ?sds) 2)
			(** (nth$ 12 ?sds) 2)
			(** (nth$ 13 ?sds) 2)
			(** (nth$ 14 ?sds) 2)
		)
	)
	(bind ?global-variance 
		(+
			(** (* (nth$ 1 ?weights) (nth$ 1 ?variances)) 2)
			(** (* (nth$ 2 ?weights) (nth$ 2 ?variances)) 2)
			(** (* (nth$ 3 ?weights) (nth$ 3 ?variances)) 2)
			(** (* (nth$ 4 ?weights) (nth$ 4 ?variances)) 2)
			(** (* (nth$ 5 ?weights) (nth$ 5 ?variances)) 2)
			(** (* (nth$ 6 ?weights) (nth$ 6 ?variances)) 2)
			(** (* (nth$ 7 ?weights) (nth$ 7 ?variances)) 2)
			(** (* (nth$ 8 ?weights) (nth$ 8 ?variances)) 2)
			(** (* (nth$ 9 ?weights) (nth$ 9 ?variances)) 2)
			(** (* (nth$ 10 ?weights) (nth$ 10 ?variances)) 2)
			(** (* (nth$ 11 ?weights) (nth$ 11 ?variances)) 2)
			(** (* (nth$ 12 ?weights) (nth$ 12 ?variances)) 2)
			(** (* (nth$ 13 ?weights) (nth$ 13 ?variances)) 2)
			(** (* (nth$ 14 ?weights) (nth$ 14 ?variances)) 2)
		)
	)
	(return (create$ ?sum (/ (sqrt ?global-variance) ?sum)))
)


