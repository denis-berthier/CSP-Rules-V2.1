
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              UTILS
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; general purpose functions 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction exor (?a ?b)
	(and (or ?a ?b) (not (and ?a ?b)))
)


;;; first and last element of a list:

(deffunction first (?l)
    ;;; notice that first$ gives a list
    ;;; supposes ?l is a list
    (nth$ 1 ?l)
)

(deffunction last (?l)
    ;;; supposes ?l is a list
    (nth$ (length$ ?l) ?l)
)



(deffunction create-list-of-0s (?n)
    (bind ?list (create$))
    (bind ?i 1)
    (while (<= ?i ?n)
        (bind ?list (create$ ?list 0))
        (bind ?i (+ ?i 1))
    )
    ?list
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; maths
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; the next function is deprecated:

(deffunction same-sets (?l1 ?l2)
    ;;; supposes that l1 and l2 are known to be sets (no repetition)
	(and
		(eq (length$ ?l1) (length$ ?l2))
		(subsetp ?l1 ?l2)
	)
)


(deffunction factorial (?n)
	;;; only for n integer >= 0
    ;;; the result is real because of limitations on integers in CLIPS
    (if (or (not (integerp ?n)) (< ?n 0)) then (printout t "Factorial Error! Argument is not a non-negative integer" crlf))
	(if (or (eq ?n 0) (eq ?n 1))
		then 1.0
		else (* ?n (factorial (- ?n 1)))
	)
)


(deffunction combination (?n ?p)
    ;;; the standard function C(n, p), number of combinations of p elements among n
    ;;; the result is real because of limitations on integers in CLIPS
    (if (or (not (integerp ?n)) (not (integerp ?p)) (< ?p 0) (< ?n ?p)) then (printout t "Combination Error!" crlf))
    (if (or (= ?p ?n) (= ?p 0))
        then 1.0
        else (* (/ ?n ?p) (combination (- ?n 1) (- ?p 1)))
    )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; list and set operations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; sets are represented as lists
;;; no check is made for non repetition of elements in the lists
;;; use "list-to-non-redundant-list" to eliminate duplicates

(deffunction set-union (?l1 ?l2)
    ;;; sets are represented as lists
    ;;; no check is made for non repetition of elements in the lists
    (bind ?union ?l1)
    (foreach ?x ?l2
        (if (not (member$ ?x ?l1)) then (bind ?union (create$ ?union ?x)))
    )
    ?union
)


(deffunction set-intersection (?l1 ?l2)
    ;;; sets are represented as lists
    ;;; no check is made for non repetition of elements in the lists
    (bind ?diff (create$))
    (foreach ?x ?l1
        (if (member$ ?x ?l2) then (bind ?diff (create$ ?diff ?x)))
    )
    ?diff
)


(deffunction set-difference (?l1 ?l2)
    ;;; sets are represented as lists
    ;;; no check is made for non repetition of elements in the lists
    ;;; ?l1 minus ?l2
    (bind ?diff (create$))
    (foreach ?x ?l1
        (if (not (member$ ?x ?l2)) then (bind ?diff (create$ ?diff ?x)))
    )
    ?diff
)


(deffunction list-to-non-redundant-list ($?list)
    (bind ?nodup-list (create$))
    (foreach ?x ?list
        (if (not (member$ ?x ?nodup-list)) then (bind ?nodup-list (create$ ?nodup-list ?x)))
    )
    ?nodup-list
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; graphs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; this is the standrad definition of density for an undirected graph

(deffunction density (?n-cands ?n-links)
    (bind ?dens (if (eq ?n-cands ?n-links) then 1 else (/ (* 200 ?n-links) (* ?n-cands (- ?n-cands 1)))))
    (/ (round (* ?dens 100)) 100)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for combining and printing lists of solved puzzles
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction sorted-union$ (?list1 ?list2 ?l)
    ;;; ?l is the number of puzzles in some original list of puzzles to be solved
	(bind ?result (create$))
	(bind ?i 1)
	(while (< ?i (+ ?l 1))
		(if (or (member$ ?i ?list1) (member$ ?i ?list2)) then
			(bind ?result (union$ ?result (create$ ?i))))
		(bind ?i (+ ?i 1))
	)
	?result
)



(deffunction pretty-print-ordered-nb-list (?list ?step)
	(printout t crlf "        ")
	(bind ?l (length$ ?list))
	(bind ?nb 0)
	(bind ?i 1)
	(while (< ?i ?l)
		(bind ?nb (nth$ ?i ?list))
		(bind ?nb2 (nth$ (+ ?i 1) ?list))
		(printout t ?nb " ")
		(if (eq 0 (mod ?nb ?step))
			then (printout t crlf "        ")
			else (if (and (< (div ?nb ?step) (div (nth$ (+ ?i 1) ?list) ?step))
						  (neq 0 (mod ?nb2 ?step)))
					 then (printout t crlf  "        "))
		)
		(bind ?i (+ ?i 1))
	)
	(printout t (nth$ ?l ?list) crlf)
)







