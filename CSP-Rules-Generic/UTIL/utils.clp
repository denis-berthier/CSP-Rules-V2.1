
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              UTILS / UTIL
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - April 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General purpose functions
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


(deffunction string> (?a ?b)
    ;;; applies to strings and to symbols
    ;;; "abc" is considered as the same as abc
    (> (str-compare ?a ?b) 0)
)


(deffunction string= (?a ?b)
    ;;; applies to strings and to symbols
    ;;; "abc" is considered as the same as abc
    (eq (str-compare ?a ?b) 0)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Maths
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
;;; List and set operations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Sets are represented as lists
;;; No check is made for non repetition of elements in the lists
;;; Use "list-to-non-redundant-list" to eliminate duplicates

(deffunction set-union (?l1 ?l2)
    ;;; Sets are represented as lists
    ;;; No check is made for non repetition of elements in the given lists
    ;;; The order of elements is guaranteed, with the new ones in ?list2 added after those in ?list1
    (bind ?union ?l1)
    (foreach ?x ?l2
        (if (not (member$ ?x ?l1)) then (bind ?union (create$ ?union ?x)))
    )
    ?union
)


(deffunction set-intersection (?l1 ?l2)
    ;;; Sets are represented as lists
    ;;; No check is made for non repetition of elements in the given lists
    ;;; The order of elements is guaranteed, with those not in ?list2 deleted from ?list1
    (bind ?diff (create$))
    (foreach ?x ?l1
        (if (member$ ?x ?l2) then (bind ?diff (create$ ?diff ?x)))
    )
    ?diff
)


(deffunction set-difference (?l1 ?l2)
    ;;; Sets are represented as lists
    ;;; No check is made for non repetition of elements in the given lists
    ;;; ?l1 minus ?l2
    ;;; The order of elements is guaranteed, with those in ?list2 deleted from ?list1
    (bind ?diff (create$))
    (foreach ?x ?l1
        (if (not (member$ ?x ?l2)) then (bind ?diff (create$ ?diff ?x)))
    )
    ?diff
)


(deffunction list-to-non-redundant-list ($?list)
    ;;; The order of first apparition of elements is guaranteed, with duplicates removed
    (bind ?nodup-list (create$))
    (foreach ?x ?list
        (if (not (member$ ?x ?nodup-list)) then (bind ?nodup-list (create$ ?nodup-list ?x)))
    )
    ?nodup-list
)


;;; same function
;;; different name used in different contexts
(deffunction eliminate-duplicates-from-list ($?list)
    ;;; The order of first apparition of elements is guaranteed, with duplicates removed
    (bind ?ulist (create$))
    (foreach ?element ?list
        (if (not (member$ ?element ?ulist)) then (bind ?ulist (create$ ?ulist ?element)))
    )
    ?ulist
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Graphs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This is the standard definition of density for an undirected graph

(deffunction density (?n-cands ?n-links)
    (bind ?dens (if (or (eq ?n-cands 0) (eq ?n-cands 1)) then 0 else (/ (* 200 ?n-links) (* ?n-cands (- ?n-cands 1)))))
    (/ (round (* ?dens 100)) 100)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for combining and printing lists of solved instances
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction sorted-union$ (?list1 ?list2 ?l)
    ;;; ?l is the number of puzzles in some original list of puzzles to be solved
	(bind ?result (create$))
	(bind ?i 1)
	(while (< ?i (+ ?l 1))
		(if (or (member$ ?i ?list1) (member$ ?i ?list2)) then
			(bind ?result (set-union ?result (create$ ?i))))
		(bind ?i (+ ?i 1))
	)
	?result
)



(deffunction not-in-list$ (?list ?l)
    ;;; ?l is the number of puzzles in some original list of puzzles to be solved
    (bind ?result (create$))
    (bind ?i 1)
    (while (<= ?i ?l)
        (if (not (member$ ?i ?list)) then
            (bind ?result (set-union ?result (create$ ?i))))
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



(deffunction print-list-with-separators (?list ?n)
    (bind ?mod 0)
    (foreach ?item ?list
        (bind ?new-mod (mod ?item ?n))
        (if (< ?mod ?new-mod)
            then (bind ?mod ?new-mod)
            else (bind ?mod 0) (printout t crlf crlf)
        )
        (printout t ?item " ")
    )
    (printout t  crlf)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extracting random subsets of numbers from the {1 ... n} interval
;;; (possibly disjoint from a previous subset)
;;; or of lines from a file
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction p-different-numbers-out-of-n (?p ?n)
    ;;; outputs a list of ?p numbers randomly chosen in [1 ?n]
    ;;; p is supposed to be much less than n
    ;;; (and less than n/2 for efficiency)
    (bind ?list (create$))
    (seed (round (time)))
    (bind ?i 0)
    (while (< ?i ?p)
        (bind ?nb (random 1 ?n))
        (if (not (member$ ?nb ?list)) then
            (bind ?list (create$ ?list ?nb))
            (bind ?i (+ ?i 1))
        )
    )
    ?list
)

(deffunction p-different-ordered-numbers-out-of-n (?p ?n)
    ;;; outputs an ordered list of ?p numbers randomly chosen in [1 ?n]
    ;;; p is supposed to be much less than n
    ;;; (and less than n/2 for efficiency)
    (bind ?list (p-different-numbers-out-of-n ?p ?n))
    (bind ?list2 (create$))
    (bind ?i 0)
    (while (< ?i ?n)
        (bind ?i (+ ?i 1))
        (if (member$ ?i ?list) then (bind ?list2 (create$ ?list2 ?i)))
    )
    ?list2
)


(deffunction p-new-different-numbers-out-of-n (?p ?n $?old-lists)
    ;;; outputs a list of ?p numbers randomly chosen in [1 ?n] but not in ?old-list
    ;;; p is supposed to be much less than n
    ;;; (and less than n/2 for efficiency)
    ;;;
    (bind ?list (create$))
    (seed (round (time)))
    (bind ?i 0)
    (while (< ?i ?p)
        (bind ?nb (random 1 ?n))
        (if (and (not (member$ ?nb ?list)) (not (member$ ?nb ?old-lists))) then
            (bind ?list (create$ ?list ?nb))
            (bind ?i (+ ?i 1))
        )
    )
    ?list
)


(deffunction p-new-different-ordered-numbers-out-of-n (?p ?n $?old-lists)
    (bind ?list (p-new-different-numbers-out-of-n ?p ?n ?old-lists))
    (bind ?list2 (create$))
    (bind ?i 0)
    (while (< ?i ?n)
        (bind ?i (+ ?i 1))
        (if (member$ ?i ?list) then (bind ?list2 (create$ ?list2 ?i)))
    )
    ?list2
)


(deffunction p-different-ordered-lines-out-of-n (?p ?n ?file-in ?file-out)
    ;;; randomly choose p different lines among n from a file
    ;;; p is supposed to be much less than n
    ;;; (and less than n/2 for efficiency)
    (bind ?list (p-different-ordered-numbers-out-of-n ?p ?n))
    (open ?file-in "file-in" "r")
    (open ?file-out "file-out" "w")
    (bind ?i 1)
    (while (<= ?i ?n)
        (bind ?line (readline "file-symb")
            (if (member$ ?i ?list) then (printout ?file-out ?line crlf))
        (bind ?i (+ ?i 1)))
    )
    (close "file-out")
    (close "file-in")
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Dealing with vowels in output
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Used for printing the correct articles before names

(deffunction strict-vowel (?x)
    (or
        (eq ?x "a") (eq ?x "A") (eq ?x a) (eq ?x A)
        (eq ?x "e") (eq ?x "E") (eq ?x e) (eq ?x E)
        (eq ?x "i") (eq ?x "I") (eq ?x i) (eq ?x I)
        (eq ?x "o") (eq ?x "O") (eq ?x o) (eq ?x O)
        (eq ?x "u") (eq ?x "U") (eq ?x u) (eq ?x U)
    )
)

(deffunction leading-vowel (?name)
    (if (not (lexemep ?name))
        then FALSE
        else
            (if (symbolp ?name) then (bind ?name (implode$ (create$ ?name))))
            (bind ?x (sub-string 1 1 ?name))
            (or (strict-vowel ?x)
                (and
                    (or (eq ?x "y") (eq ?x "Y"))
                    (or (eq (str-length ?name) 1)
                        (strict-vowel (sub-string 2 2 ?name))
                        (eq (sub-string 2 2 ?name) "y")
                        (eq (sub-string 2 2 ?name) "Y")
                        (eq (sub-string 2 2 ?name) y)
                        (eq (sub-string 2 2 ?name) Y)
                        (numberp (sub-string 2 2 ?name))
                    )
                )
            )
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Dealing with ordinal numbers in output
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Used for printing the correct endings in ordinals

(deffunction print-odinal-with-ending (?n)
    (bind ?res "")
    (bind ?p (div (mod ?n 100) 10))
    (if (eq ?p 1)
        then (bind ?res (sym-cat ?n th))
        else
        (bind ?q (mod ?n 10))
        (switch ?q
            (case 0 then (bind ?res (sym-cat ?n th)))
            (case 1 then (bind ?res (sym-cat ?n st)))
            (case 2 then (bind ?res (sym-cat ?n nd)))
            (case 3 then (bind ?res (sym-cat ?n rd)))
            (default (bind ?res (sym-cat ?n th)))
        )
    )
    ?res
)


