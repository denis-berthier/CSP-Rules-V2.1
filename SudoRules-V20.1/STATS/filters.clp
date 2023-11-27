
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              FILTERS
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





;;; functions to filter grids from text file according to which techniques suffice to solve them



(deffunction solve-n-grids-after-first-p-from-text-file-included-but-excluding (?file ?p ?n ?l-in ?l-out)
	(bind ?*add-instance-to-solved-list* TRUE)
	(bind ?*solved-list* (create$))
	(bind ?*no-sol-list* (create$))
	(bind ?*multi-sol-list* (create$))
	(bind ?*total-time* 0)
	(bind ?*max-time* 0)
	(bind ?*total-outer-time* (time))
	(loop-for-count (?i 1 ?p) (readline ?file))
	(loop-for-count (?i (+ ?p 1) (+ ?p ?n))
		(if (not (member$ ?i ?l-in))
			then (readline ?file)
				 ; (printout t ?i " not in selected list" crlf)
				 (printout t ?i " ")
		    else (if (member$ ?i ?l-out)
					 then (readline ?file)
						  ; (printout t ?i " in already solved lists" crlf)
						  (printout t ?i " ")
					 else (solve-grid-from-text-file ?file ?i)
				)
		)
	)
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
	(printout t ";;; TOTAL OUTER TIME = " ?*total-outer-time* crlf)
	(printout t ";;; TOTAL RESOLUTION TIME = " ?*total-time* crlf)
	(printout t ";;; MAX TIME = " ?*max-time* crlf)
)
		



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; compute the length of the entries of a puzzle
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction length-grid-from-text (?grid)
	(bind ?len 0)
	(loop-for-count (?i 1 ?81)
		(bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?grid))))
		(if (member$ ?nb ?*numbers*) then (bind ?len (+ ?len 1)))
	)
	?len
)


(deffunction length-nth-grid-from-text-file (?tf ?nb)
	(loop-for-count (?i 1 (- ?nb 1)) (readline ?tf))
	(bind ?grid (readline ?tf))
	(printout t  (length-grid-from-text ?grid ?nb) crlf)
)

(deffunction compute-grids-lengths-from-text-file (?tf ?nb)
	(bind ?lengths (create$))
	(loop-for-count (?i 1 ?nb) 
		(bind ?lengths (create$ ?lengths (create$ (length-grid-from-text ?f))))
	)
	?lengths
)


(deffunction max-length-from-text-file (?tf ?nb)
	(bind ?lengths (compute-grids-lengths-from-text-file ?tf ?nb))
	(bind ?max 0)
	(loop-for-count (?i 1 ?nb)
		(bind ?max (max ?max (nth$ ?i ?lengths)))
	)
	?max
)


(deffunction min-length-from-text-file (?tf ?nb)
	(bind ?lengths (compute-grids-lengths-from-text-file ?tf ?nb))
	(bind ?min 81)
	(loop-for-count (?i 1 ?nb)
		(bind ?min (min ?min (nth$ ?i ?lengths)))
	)
	?min
)
	



;;; count grids of given length in text file 

(deffunction count-grids-of-given-length-in-text-file (?tf ?nb ?len)
	(bind ?count 0)
	(bind ?f (open (str-cat "Grids/" ?tf) f r))
	(for (bind ?i 1) (< ?i (+ 1 ?nb)) (++ ?i)
		(if (eq ?len (length-grid-from-text ?f))
			then (bind ?count (+ ?count 1))
		)
	)
	(close ?f)
	?count
)


;;; count grids of given length from sublist 

(deffunction count-grids-of-given-length-from-sublist (?tf ?list ?nb ?len)
	(bind ?count 0)
	(bind ?f (open (str-cat "Grids/" ?tf) f r))
	(for (bind ?i 1) (< ?i (+ 1 ?nb)) (++ ?i)
		(if (and (member$ ?i ?list) (eq ?len (length-grid-from-text ?f)))
			then (bind ?count (+ ?count 1))
		)
	)
	(close ?f)
	?count
)
	

	
