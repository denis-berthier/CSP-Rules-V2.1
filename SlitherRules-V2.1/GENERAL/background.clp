
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              BACKGROUND
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





;;; This file contains general definitions and facts independent of any particular instance.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; NUMBERS (GIVENS), ROWS AND COLUMNS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*binary-values* = (create$ 0 1))
(defglobal ?*ternary-values* = (create$ 0 1 2)) ; 2 is used to complete unsolved grids


;;; a given defines the number of borders of a cell
(defglobal ?*border-numbers* = (create$ 0 1 2 3))


;;; grid size [= max (nb-rows, nb-columns)] is limited to 99x99

(defglobal ?*potential-rows* = 
    (create$
        0 
        1 2 3 4 5 6 7 8 9 10 
        11 12 13 14 15 16 17 18 19 20 
        21 22 23 24 25 26 27 28 29 30
        31 32 33 34 35 36 37 38 39 40
        41 42 43 44 45 46 47 48 49 50
        51 52 53 54 55 56 57 58 59 60
        61 62 63 64 65 66 67 68 69 70
        71 72 73 74 75 76 77 78 79 80
        81 82 83 84 85 86 87 88 89 90
        91 92 93 94 95 96 97 98 99 100
    )
)

(defglobal ?*potential-columns* = ?*potential-rows*)


;;; we add an outer border of rows (indices 0 and ?*nb-rows* + 1) and columns (indices 0 and ?*nb-columns* + 1)
;;; they will be part of the "outside" of the solution curve

(defglobal ?*rows* = (subseq$ ?*potential-rows* 1 (+ ?*grid-size* 2)))
(defglobal ?*columns* = (subseq$ ?*potential-columns* 1 (+ ?*grid-size* 2)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CELLS, RELATIVE POSITIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction row-col-to-cell (?r ?c) (+ (* ?*internal-factor-1* ?r) ?c))

(deffunction cell-row (?cell)
    (div ?cell ?*internal-factor-1*)
)

(deffunction cell-column (?cell) (mod ?cell ?*internal-factor-1*))


;;; Two cells are the same iff :

(deffunction same-cell (?row1 ?col1 ?row2 ?col2)
	(and (eq ?row1 ?row2) (eq ?col1 ?col2)))
	
(deffunction not-same-cell (?row1 ?col1 ?row2 ?col2)
	(or (neq ?row1 ?row2) (neq ?col1 ?col2))
)





(deffunction inner-corner (?row ?col)
    (and 
        (or (eq ?row 1) (eq ?row ?*nb-rows*))
        (or (eq ?col 1) (eq ?col ?*nb-columns*))
    )
)


(deffunction adjacent (?row1 ?col1 ?row2 ?col2)
    ;;; includes corner adjacency
    (and (or (neq ?row1 ?row2) (neq ?col1 ?col2)) ; different
         (<= (abs (- ?row1 ?row2)) 1) 
         (<= (abs (- ?col1 ?col2)) 1)
    )
)


(deffunction relative-positions (?row1 ?col1 ?row2 ?col2)
    ;;; (?row1 ?col1) and (?row2 ?col2) are supposed to be different and adjacent (including corner adjacency)
    ;;; for efficiency reasons, this is not checked
    ;;; outputs the relative position of (row2 col2) wrt (row1 col1)
    (if (eq ?row1 ?row2) then (if (< ?col1 ?col2) then (return east) else (return west)))
    (if (eq ?col1 ?col2) then (if (< ?row1 ?row2) then (return south) else (return north)))
    (if (< ?row1 ?row2) then (if (< ?col1 ?col2) then (return south-east) else (return south-west)))
    (if (> ?row1 ?row2) then (if (< ?col1 ?col2) then (return north-east) else (return north-west)))
    (printout t "ERROR IN DATA PASSED TO RELATIVE-POSITIONS" crlf) 
    (halt)
)


(deffunction opposite-diagonal (?vect)
    (if (eq ?vect nw) then (return se))
    (if (eq ?vect ne) then (return sw))
    (if (eq ?vect se) then (return nw))
    (if (eq ?vect sw) then (return ne))
    FALSE
)


(deffunction opposite-cardinal-point (?dir)
    (if (eq ?dir n) then (return s))
    (if (eq ?dir e) then (return w))
    (if (eq ?dir s) then (return n))
    (if (eq ?dir w) then (return e))
    FALSE
)


(deffunction is-direction (?dir ?row1 ?col1 ?row2 ?col2)
    ;;; can only be true for (horizontally, vertically or diagonally) adjacent cells
    (or
        (and (eq ?dir n) (eq ?row2 (- ?row1 1)) (eq ?col2 ?col1))
        (and (eq ?dir s) (eq ?row2 (+ ?row1 1)) (eq ?col2 ?col1))
        (and (eq ?dir w) (eq ?row2 ?row1) (eq ?col2 (- ?col1 1)))
        (and (eq ?dir e) (eq ?row2 ?row1) (eq ?col2 (+ ?col1 1)))
        (and (eq ?dir nw) (eq ?row2 (- ?row1 1)) (eq ?col2 (- ?col1 1)))
        (and (eq ?dir ne) (eq ?row2 (- ?row1 1)) (eq ?col2 (+ ?col1 1)))
        (and (eq ?dir sw) (eq ?row2 (+ ?row1 1)) (eq ?col2 (- ?col1 1)))
        (and (eq ?dir se) (eq ?row2 (+ ?row1 1)) (eq ?col2 (+ ?col1 1)))
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; there are six types of CSP variables: B (borders of a cell), H (horizontal borders), V (vertical borders), P (points) and I (inside), N (number of sides) with respective indices 1, 2, 3, 4, 5, 6.
;;; H, V and I variables can only have values 0 or 1.
;;; N variables can only have values 0, 1, 2, 3 ; they are managed in a different way than the other variables (see N-singles)

(deffunction row-col-to-B-csp-var (?r ?c)
    (+ (* ?*internal-factor-2* 1) (* ?*internal-factor-1* ?r) ?c)
)

(deffunction row-col-to-H-csp-var (?r ?c)
    (+ (* ?*internal-factor-2* 2) (* ?*internal-factor-1* ?r) ?c)
)

(deffunction row-col-to-V-csp-var (?r ?c)
    (+ (* ?*internal-factor-2* 3) (* ?*internal-factor-1* ?r) ?c)
)

(deffunction row-col-to-P-csp-var (?r ?c)
    (+ (* ?*internal-factor-2* 4) (* ?*internal-factor-1* ?r) ?c)
)

(deffunction row-col-to-I-csp-var (?r ?c)
    (+ (* ?*internal-factor-2* 5) (* ?*internal-factor-1* ?r) ?c)
)

(deffunction row-col-to-N-csp-var (?r ?c)
    (+ (* ?*internal-factor-2* 6) (* ?*internal-factor-1* ?r) ?c)
)



(deffunction row-of-csp-var (?var)
    (div (mod ?var ?*internal-factor-2*) ?*internal-factor*)
)

(deffunction column-of-csp-var (?var)
    (mod ?var ?*internal-factor*)
)

(deffunction type-of-csp-var (?var)
    (if (>= ?var (* ?*internal-factor-2* 6)) then (printout t ?var " IS NOT A NUMBER FOR A CSP VARIABLE" crlf) (halt))
    (bind ?type (div ?var ?*internal-factor-2*))
    (if (eq ?type 1) then (return B))
    (if (eq ?type 2) then (return H))
    (if (eq ?type 3) then (return V))
    (if (eq ?type 4) then (return P))
    (if (eq ?type 5) then (return I))
    (if (eq ?type 6) then (return N))
    (printout t ?var " IS NOT A NUMBER FOR A CSP VARIABLE" crlf) 
    (halt)
)


(deffunction type-name (?type)
    (if (eq ?type 1) then (return B))
    (if (eq ?type 2) then (return H))
    (if (eq ?type 3) then (return V))
    (if (eq ?type 4) then (return P))
    (if (eq ?type 5) then (return I))
    (if (eq ?type 6) then (return N))
    (printout t ?type " IS NOT A NUMBER FOR A CSP VARIABLE TYPE" crlf) 
    (halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B-VALUES 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; There are 15 possible B-values for the B csp-variables, depending on their border 
;;; o means no border
;;; Internally, any object of any type is represented by an integer
;;; B correspondence:
;;; o  n  e  s  w  ne  ns  nw  se  ew  sw  esw  swn  wne  nes
;;; 1  2  3  4  5  6   7   8   9   10  11  12   13   14   15


(defglobal ?*B-values* = (create$ o n e s w ne ns nw se ew sw esw swn wne nes))
(defglobal ?*B-value-numbers* = (create$ 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))
(defglobal ?*B-value-sizes* = (create$ 0 1 1 1 1 2 2 2 2 2 2 3 3 3 3))


(deffunction B-value-name-0 (?nb) (nth$ ?nb ?*B-values*))

(deffunction B-value-name (?nb) (nth$ ?nb ?*B-values*))


(defglobal ?*B-value-numbers-with-0-side* = (create$ 1))
(defglobal ?*B-value-numbers-with-1-side* = (create$ 2 3 4 5))
(defglobal ?*B-value-numbers-with-2-sides* = (create$ 6 7 8 9 10 11))
(defglobal ?*B-value-numbers-with-3-sides* = (create$ 12 13 14 15))

(deffunction B-values-with-k-sides (?k)
    (if (or (not (numberp ?k)) (< ?k 0) (> ?k 3)) then (printout t "ERROR IN ARGUMENT PASSED TO FUNCTION B-VALUE-WITH-K-SIDES." crlf) (halt))
    (if (eq ?k 0) then (return ?*B-value-numbers-with-0-side*))
    (if (eq ?k 1) then (return ?*B-value-numbers-with-1-side*))
    (if (eq ?k 2) then (return ?*B-value-numbers-with-2-sides*))
    (if (eq ?k 3) then (return ?*B-value-numbers-with-3-sides*))
)


(deffunction B-value-number-of-sides (?val)
    (if (member$ ?val ?*B-value-numbers-with-0-side*) then (return 0))
    (if (member$ ?val ?*B-value-numbers-with-1-side*) then (return 1))
    (if (member$ ?val ?*B-value-numbers-with-2-sides*) then (return 2))
    (if (member$ ?val ?*B-value-numbers-with-3-sides*) then (return 3))
    FALSE
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; SIDES OF THE B-VALUES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; o  n  e  s  w  ne  ns  nw  se  ew  sw  esw  swn  wne  nes
;;; 1  2  3  4  5  6   7   8   9   10  11  12   13   14   15

(defglobal ?*B-values-with-a-north-border* = (create$ 2 6 7 8 13 14 15))
(defglobal ?*B-values-with-an-east-border* = (create$ 3 6 9 10 12 14 15))
(defglobal ?*B-values-with-a-south-border* = (create$ 4 7 9 11 12 13 15))
(defglobal ?*B-values-with-a-west-border* = (create$ 5 8 10 11 12 13 14))

(defglobal ?*B-values-with-no-north-border* = (complement$ ?*B-values-with-a-north-border* ?*B-value-numbers*))
(defglobal ?*B-values-with-no-east-border* = (complement$ ?*B-values-with-an-east-border* ?*B-value-numbers*))
(defglobal ?*B-values-with-no-south-border* = (complement$ ?*B-values-with-a-south-border* ?*B-value-numbers*))
(defglobal ?*B-values-with-no-west-border* = (complement$ ?*B-values-with-a-west-border* ?*B-value-numbers*))


(defglobal ?*B-values-with-north-west-borders* = (create$ 8 13 14))
(defglobal ?*B-values-with-north-east-borders* = (create$ 6 14 15))
(defglobal ?*B-values-with-south-west-borders* = (create$ 11 12 13))
(defglobal ?*B-values-with-south-east-borders* = (create$ 9 12 15))

(defglobal ?*B-values-with-no-north-west-borders* = (create$ 1 3 4 9))
(defglobal ?*B-values-with-no-north-east-borders* = (create$ 1 4 5 11))
(defglobal ?*B-values-with-no-south-east-borders* = (create$ 1 2 5 8))
(defglobal ?*B-values-with-no-south-west-borders* = (create$ 1 2 3 6))



;;; each B-value for a B csp-variable has 4 "sides" or "borders", with possible values 1 or 0

(deffunction B-value-north (?val)
    (if (member$ ?val ?*B-values-with-a-north-border*) then 1 else 0)
)

(deffunction B-value-east (?val)
    (if (member$ ?val ?*B-values-with-an-east-border*) then 1 else 0)
)

(deffunction B-value-south (?val)
    (if (member$ ?val ?*B-values-with-a-south-border*) then 1 else 0)
)

(deffunction B-value-west (?val)
    (if (member$ ?val ?*B-values-with-a-west-border*) then 1 else 0)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; B-VALUES IMPOSSIBLE AT THE FOUR CORNERS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*B-values-impossible-at-the-nw-corner* = (create$ 2 5 6 7 10 11 12 15))
(defglobal ?*B-values-impossible-at-the-ne-corner* = (create$ 2 3 7 8 9 10 12 13))
(defglobal ?*B-values-impossible-at-the-se-corner* = (create$ 3 4 6 7 10 11 13 14))
(defglobal ?*B-values-impossible-at-the-sw-corner* = (create$ 4 5 7 8 9 10 14 15))


(deffunction impossible-B-value-at-a-corner (?val ?row ?col)
    (if (not (inner-corner ?row ?col)) then (return FALSE))
    (if (or 
            (and (eq ?row 1) (eq ?col 1) (member$ ?val ?*B-values-impossible-at-the-nw-corner*))
            (and (eq ?row 1) (eq ?col ?*nb-columns*) (member$ ?val ?*B-values-impossible-at-the-ne-corner*))
            (and (eq ?row ?*nb-rows*) (eq ?col ?*nb-columns*) (member$ ?val ?*B-values-impossible-at-the-se-corner*))
            (and (eq ?row ?*nb-rows*) (eq ?col 1) (member$ ?val ?*B-values-impossible-at-the-sw-corner*))
        )
        then TRUE else FALSE
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CORNERS OF THE B-VALUES 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; o  n  e  s  w  ne  ns  nw  se  ew  sw  esw  swn  wne  nes
;;; 1  2  3  4  5  6   7   8   9   10  11  12   13   14   15

;;; each B-value for a B csp-variable has 4 "corners", with possible values 0, 1 or 2 (the number of lines in this corner of the cell)

(defglobal ?*north-east-corners-with-0-line* = (create$ 1 4 5 11))
(defglobal ?*north-east-corners-with-1-line* = (create$ 2 3 7 8 9 10 12 13))
(defglobal ?*north-east-corners-with-2-lines* = (create$ 6 14 15))

(deffunction nb-lines-north-east (?val)
    (if (member$ ?val ?*north-east-corners-with-0-line*) then (return 0))
    (if (member$ ?val ?*north-east-corners-with-1-line*) then (return 1))
    (if (member$ ?val ?*north-east-corners-with-2-lines*) then (return 2))
)


(defglobal ?*south-east-corners-with-0-line* = (create$ 1 2 5 8))
(defglobal ?*south-east-corners-with-1-line* = (create$ 3 4 6 7 10 11 13 14))
(defglobal ?*south-east-corners-with-2-lines* = (create$ 9 12 15))

(deffunction nb-lines-south-east (?val)
    (if (member$ ?val ?*south-east-corners-with-0-line*) then (return 0))
    (if (member$ ?val ?*south-east-corners-with-1-line*) then (return 1))
    (if (member$ ?val ?*south-east-corners-with-2-lines*) then (return 2))
)


(defglobal ?*south-west-corners-with-0-line* = (create$ 1 2 3 6))
(defglobal ?*south-west-corners-with-1-line* = (create$ 4 5 7 8 9 10 14 15))
(defglobal ?*south-west-corners-with-2-lines* = (create$ 11 12 13))

(deffunction nb-lines-south-west (?val)
    (if (member$ ?val ?*south-west-corners-with-0-line*) then (return 0))
    (if (member$ ?val ?*south-west-corners-with-1-line*) then (return 1))
    (if (member$ ?val ?*south-west-corners-with-2-lines*) then (return 2))
)


(defglobal ?*north-west-corners-with-0-line* = (create$ 1 3 4 9))
(defglobal ?*north-west-corners-with-1-line* = (create$ 2 5 6 7 10 11 12 15))
(defglobal ?*north-west-corners-with-2-lines* = (create$ 8 13 14))

(deffunction nb-lines-north-west (?val)
    (if (member$ ?val ?*north-west-corners-with-0-line*) then (return 0))
    (if (member$ ?val ?*north-west-corners-with-1-line*) then (return 1))
    (if (member$ ?val ?*north-west-corners-with-2-lines*) then (return 2))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; P-VALUES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; There are 7 possible P-values for the P csp-variables, depending on which lines they have,
;;; taking into account that they can only have 0 or 2 lines.
;;; o means no line
;;; Internally, any object of any type is represented by an integer
;;; P correspondence:
;;; o  ne ns nw se ew  sw  
;;; 1  2  3  4  5  6   7   


(defglobal ?*P-values* = (create$ o ne ns nw se ew sw))
(defglobal ?*P-value-numbers* = (create$ 1 2 3 4 5 6 7 ))
(defglobal ?*P-value-sizes* = (create$ 0 2 2 2 2 2 2 ))


(deffunction P-value-name-0 (?nb) (nth$ ?nb ?*P-values*))

(deffunction P-value-name (?nb) (nth$ ?nb ?*P-values*))


(defglobal ?*P-value-numbers-with-0-side* = (create$ 1))
(defglobal ?*P-value-numbers-with-2-sides* = (create$ 2 3 4 5 6 7))

(deffunction P-values-with-k-sides (?k)
    (if (or (not (numberp ?k)) (and (neq ?k 0) (neq ?k 2))) then (printout t "ERROR IN ARGUMENTS PASSED TO P-VALUES-WITH-K-SIDES." crlf) (halt))
    (if (eq ?k 0) then (return ?*P-value-numbers-with-0-side*))
    (if (eq ?k 2) then (return ?*P-value-numbers-with-2-sides*))
)


(deffunction P-value-number-of-sides (?val)
    (if (member$ ?val ?*B-value-numbers-with-0-side*) then (return 0))
    (if (member$ ?val ?*B-value-numbers-with-2-sides*) then (return 2))
    FALSE
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LINES OF THE P-VALUES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; P correspondence:
;;; o  ne ns nw se ew sw
;;; 1  2  3  4  5  6  7   

(defglobal ?*P-values-with-a-north-line* = (create$ 2 3 4))
(defglobal ?*P-values-with-an-east-line* = (create$ 2 5 6))
(defglobal ?*P-values-with-a-south-line* = (create$ 3 5 7))
(defglobal ?*P-values-with-a-west-line* = (create$ 4 6 7))

(defglobal ?*P-values-with-no-north-line* = (complement$ ?*P-values-with-a-north-line* ?*P-value-numbers*))
(defglobal ?*P-values-with-no-east-line* = (complement$ ?*P-values-with-an-east-line* ?*P-value-numbers*))
(defglobal ?*P-values-with-no-south-line* = (complement$ ?*P-values-with-a-south-line* ?*P-value-numbers*))
(defglobal ?*P-values-with-no-west-line* = (complement$ ?*P-values-with-a-west-line* ?*P-value-numbers*))


(defglobal ?*P-values-with-north-west-lines* = (create$ 4))
(defglobal ?*P-values-with-north-east-lines* = (create$ 2))
(defglobal ?*P-values-with-south-east-lines* = (create$ 5))
(defglobal ?*P-values-with-south-west-lines* = (create$ 7))

(defglobal ?*P-values-with-no-north-west-lines* = (create$ 1 5))
(defglobal ?*P-values-with-no-north-east-lines* = (create$ 1 7))
(defglobal ?*P-values-with-no-south-east-lines* = (create$ 1 4))
(defglobal ?*P-values-with-no-south-west-lines* = (create$ 1 2))



;;; each P-value for a P csp-variable has 4 "lines", with possible values 1 or 0

(deffunction P-value-north (?val)
    (if (member$ ?val ?*P-values-with-a-north-line*) then 1 else 0)
)

(deffunction P-value-east (?val)
    (if (member$ ?val ?*P-values-with-an-east-line*) then 1 else 0)
)

(deffunction P-value-south (?val)
    (if (member$ ?val ?*P-values-with-a-south-line*) then 1 else 0)
)

(deffunction P-value-west (?val)
    (if (member$ ?val ?*P-values-with-a-west-line*) then 1 else 0)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; V, H, I and N VALUES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; There are 2 possible values for the V, H and I csp-variables

(defglobal ?*H-values* = (create$ 0 1))
(defglobal ?*H-value-numbers* = (create$ 0 1))
(deffunction H-value-name (?val) ?val)

(defglobal ?*V-values* = (create$ 0 1))
(defglobal ?*V-value-numbers* = (create$ 0 1 ))
(deffunction V-value-name (?val) ?val)


(defglobal ?*I-values* = (create$ out in)) ;;; corrected 16/07/2013
(defglobal ?*I-value-numbers* = (create$ 0 1 ))
(deffunction I-value-name (?val) (nth$ (+ ?val 1) ?*I-values*))

;;; There are 4 possible values for the N csp-variables

(defglobal ?*N-values* = ?*border-numbers*)
(defglobal ?*N-value-numbers* = ?*border-numbers*)
(deffunction N-value-name (?val) ?val)


;;; External names for values
             
(deffunction value-name (?val ?type)
    (if (eq ?type B) then (return (B-value-name ?val)))
    (if (eq ?type H) then (return (H-value-name ?val)))
    (if (eq ?type V) then (return (V-value-name ?val)))
    (if (eq ?type P) then (return (P-value-name ?val)))
    (if (eq ?type I) then (return (I-value-name ?val)))
    (if (eq ?type N) then (return (N-value-name ?val)))
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; FUNCTIONS FOR LABELS  
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction same-cand (?in1 ?val1 ?row1 ?col1 ?in2 ?val2 ?row2 ?col2)
	(and (eq ?in1 ?in2) (eq ?val1 ?val2) (eq ?row1 ?row2) (eq ?col1 ?col2))
)

(deffunction not-same-cand (?in1 ?val1 ?row1 ?col1 ?in2 ?val2 ?row2 ?col2)
	(or (neq ?in1 ?in2) (neq ?val1 ?val2) (neq ?row1 ?row2) (neq ?col1 ?col2))
)


    
(deffunction value-row-col-to-B-label (?n ?r ?c)
    (+ (* ?*internal-factor-3* ?n) (row-col-to-B-csp-var ?r ?c))
)
    
(deffunction value-row-col-to-H-label (?n ?r ?c)
    (+ (* ?*internal-factor-3* ?n) (row-col-to-H-csp-var ?r ?c))
)
    
(deffunction value-row-col-to-V-label (?n ?r ?c)
    (+ (* ?*internal-factor-3* ?n) (row-col-to-V-csp-var ?r ?c))
)
    
(deffunction value-row-col-to-P-label (?n ?r ?c)
    (+ (* ?*internal-factor-3* ?n) (row-col-to-P-csp-var ?r ?c))
)
    
(deffunction value-row-col-to-I-label (?n ?r ?c)
    (+ (* ?*internal-factor-3* ?n) (row-col-to-I-csp-var ?r ?c))
)
   
(deffunction value-row-col-to-N-label (?n ?r ?c)
    (+ (* ?*internal-factor-3* ?n) (row-col-to-N-csp-var ?r ?c))
)



(deffunction label-value (?label)
    (div ?label ?*internal-factor-3*)
)

;;; same as label-value, for potential output compatibility issues
(deffunction label-number (?label) 
    (div ?label ?*internal-factor-3*)
)

(deffunction label-csp-var (?label)
    (mod ?label ?*internal-factor-3*)
)

(deffunction label-cell (?label)
    (mod ?label ?*internal-factor-2*)
)

(deffunction label-type (?label)
    (div (mod ?label ?*internal-factor-3*) ?*internal-factor-2*)
)

(deffunction label-type-symbol (?label)
    (bind ?x (label-type ?label))
    (if (eq ?x 1) then (return B))
    (if (eq ?x 2) then (return H))
    (if (eq ?x 3) then (return V))
    (if (eq ?x 4) then (return P))
    (if (eq ?x 5) then (return I))
    (if (eq ?x 6) then (return N))
)

(deffunction label-row (?label)
    (div (mod ?label ?*internal-factor-2*) ?*internal-factor*)
)

(deffunction label-column (?label)
    (mod ?label ?*internal-factor*)
)


(deffunction label-pair (?xxx ?yyy)
    (+ (* ?*internal-factor-4* ?xxx) ?yyy)
)


              


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B vs P and P vs H/V incompatibilities  
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; each B csp-variable has a set of incompatibilities with four B csp-variables, 
;;; one on each side of the rc-cell.

(deffunction B-value-n-compatible-with-B-value (?B-val1 ?B-val2)
    (eq (B-value-north ?B-val1) (B-value-south ?B-val2))
)

(deffunction B-value-e-compatible-with-B-value (?B-val1 ?B-val2)
    (eq (B-value-east ?B-val1) (B-value-west ?B-val2))
)

(deffunction B-value-s-compatible-with-B-value (?B-val1 ?B-val2)
    (eq (B-value-south ?B-val1) (B-value-north ?B-val2))
)

(deffunction B-value-w-compatible-with-P-value (?B-val1 ?B-val2)
    (eq (B-value-west ?B-val1) (B-value-east ?B-val2))
)




;;; each B csp-variable has a set of incompatibilities with four B csp-variables, 
;;; one on each corner of the rc-cell.

(deffunction B-value-nw-compatible-with-B-value (?B-val1 ?B-val2)
    (bind ?lines (+ (nb-lines-north-west ?B-val1) (nb-lines-south-east ?B-val2)))
    (if (or (eq ?lines 0) (eq ?lines 2)) then TRUE else FALSE)
)

(deffunction B-value-ne-compatible-with-B-value (?B-val1 ?B-val2)
    (bind ?lines (+ (nb-lines-north-east ?B-val1) (nb-lines-south-west ?B-val2)))
    (if (or (eq ?lines 0) (eq ?lines 2)) then TRUE else FALSE)
)

(deffunction B-value-se-compatible-with-B-value (?B-val1 ?B-val2)
    (bind ?lines (+ (nb-lines-south-east ?B-val1) (nb-lines-north-west ?B-val2)))
    (if (or (eq ?lines 0) (eq ?lines 2)) then TRUE else FALSE)
)

(deffunction B-value-sw-compatible-with-B-value (?B-val1 ?B-val2)
    (bind ?lines (+ (nb-lines-south-west ?B-val1) (nb-lines-north-east ?B-val2)))
    (if (or (eq ?lines 0) (eq ?lines 2)) then TRUE else FALSE)
)




;;; each B csp-variable has a set of incompatibilities with four P csp-variables, 
;;; one on each corner of the rc-cell.

(deffunction B-value-nw-compatible-with-P-value (?B-val ?P-val)
    (and (eq (B-value-north ?B-val) (P-value-east ?P-val))
         (eq (B-value-west ?B-val) (P-value-south ?P-val))
    )
)

(deffunction B-value-ne-compatible-with-P-value (?B-val ?P-val)
    (and (eq (B-value-north ?B-val) (P-value-west ?P-val))
         (eq (B-value-east ?B-val) (P-value-south ?P-val))
    )
)

(deffunction B-value-se-compatible-with-P-value (?B-val ?P-val)
    (and (eq (B-value-east ?B-val) (P-value-north ?P-val))
         (eq (B-value-south ?B-val) (P-value-west ?P-val))
    )
)

(deffunction B-value-sw-compatible-with-P-value (?B-val ?P-val)
    (and (eq (B-value-south ?B-val) (P-value-east ?P-val))
         (eq (B-value-west ?B-val) (P-value-north ?P-val))
    )
)




;;; each P csp-variable has a set of incompatibilities with four other P csp-variables,
;;; one in each direction off the point.

(deffunction P-value-n-compatible-with-P-value (?P-val1 ?P-val2)
    (eq (P-value-north ?P-val1) (P-value-south ?P-val2))
)

(deffunction P-value-e-compatible-with-P-value (?P-val1 ?P-val2)
    (eq (P-value-east ?P-val1) (P-value-west ?P-val2))
)

(deffunction P-value-s-compatible-with-P-value (?P-val1 ?P-val2)
    (eq (P-value-south ?P-val1) (P-value-north ?P-val2))
)

(deffunction P-value-w-compatible-with-P-value (?P-val1 ?P-val2)
    (eq (P-value-west ?P-val1) (P-value-east ?P-val2))
)





;;; each P csp-variable has a set of incompatibilities with four H or V csp-variables, 
;;; one on each side of the rc-cell.

(deffunction P-value-n-compatible-with-V-value (?P-val ?V-val)
    (eq (P-value-north ?P-val) ?V-val)
)

(deffunction P-value-s-compatible-with-V-value (?P-val ?V-val)
    (eq (P-value-south ?P-val) ?V-val)
)


(deffunction P-value-e-compatible-with-H-value (?P-val ?H-val)
    (eq (P-value-east ?P-val) ?H-val)
)

(deffunction P-value-w-compatible-with-H-value (?P-val ?H-val)
    (eq (P-value-west ?P-val) ?H-val)
)




              


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B glabels and glinks  
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Reminder: B correspondence:
;;; o  n  e  s  w  ne  ns  nw  se  ew  sw  esw  swn  wne  nes
;;; 1  2  3  4  5  6   7   8   9   10  11  12   13   14   15

;;; There are 8 possible B-gvalues for the B csp-variables
;;; Internally, any object of any type is represented by an integer
;;; Bg correspondence:
;;; s-nw  s-ne  s-se  s-sw  a-nw a-ne a-se a-sw
;;; 16    17    18    19    20   21   22   23

(defglobal ?*B-gvalues* = (create$ s-nw s-ne s-se s-sw a-nw a-ne a-se a-sw))
(defglobal ?*B-gvalue-numbers* = (create$ 16 17 18 19 20 21 22 23))


(deffunction B-gvalue-name (?nb) (nth$ (- ?nb 15) ?*B-gvalues*))

(deffunction B-value-name (?nb) 
    (if (<= ?nb 15) then (B-value-name-0 ?nb) else (B-gvalue-name ?nb))
)


(deffunction gvalue-row-col-to-B-glabel (?n ?r ?c)
    (+ (* ?*internal-factor-3* ?n) (row-col-to-B-csp-var ?r ?c))
)

(deffunction B-values-in-B-gvalue (?gval)
    (if (eq ?gval 16) then (return (create$ 1 3 4 8 9 13 14))) ; s-nw
    (if (eq ?gval 17) then (return (create$ 1 4 5 6 11 14 15))); s-ne
    (if (eq ?gval 18) then (return (create$ 1 2 5 8 9 12 15))); s-se
    (if (eq ?gval 19) then (return (create$ 1 2 3 6 11 12 13))); s-sw

    (if (eq ?gval 20) then (return (create$ 2 5 6 7 10 11 12 15))) ; a-nw
    (if (eq ?gval 21) then (return (create$ 2 3 7 8 9 10 12 13))); a-ne
    (if (eq ?gval 22) then (return (create$ 3 4 6 7 10 11 13 14))); a-se
    (if (eq ?gval 23) then (return (create$ 4 5 7 8 9 10 14 15))); a-sw

    (printout t "ERROR IN  " ?gval " PASSED TO FUNCTION B-VALUES-IN-B-GVALUE" crlf)
    (halt) 
)

(deffunction B-value-in-B-gvalue (?val ?gval)
    (if (member$ ?val (B-values-in-B-gvalue ?gval)) then TRUE else FALSE)
)


        

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; P glabels and glinks  
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Reminder: P correspondence:
;;; o  ne ns nw se ew sw
;;; 1  2  3  4  5  6  7

;;; There are 3 possible P-gvalues for the P csp-variables
;;; Internally, any object of any type is represented by an integer
;;; Pg correspondence:
;;; /   \    a
;;; 8   9   10

(defglobal ?*P-gvalues* = (create$ / \ a))
(defglobal ?*P-gvalue-numbers* = (create$ 8 9 10))


(deffunction P-gvalue-name (?nb) (nth$ (- ?nb 7) ?*P-gvalues*))

(deffunction P-value-name (?nb) 
    (if (<= ?nb 7) then (P-value-name-0 ?nb) else (P-gvalue-name ?nb))
)

(deffunction gvalue-row-col-to-P-glabel (?n ?r ?c)
    (+ (* ?*internal-factor-3* ?n) (row-col-to-P-csp-var ?r ?c))
)

(deffunction P-values-in-P-gvalue (?gval)
    (if (eq ?gval 8) then (return (create$ 1 2 7))) ; /-symmetry
    (if (eq ?gval 9) then (return (create$ 1 4 5))) ; \-symmetry
    (if (eq ?gval 10) then (return (create$ 3 6))) ; asymmetry

    (printout t "ERROR IN G-VALUE " ?gval " PASSED TO FUNCTION P-VALUES-IN-P-GVALUE" crlf)
    (halt) 
)

(deffunction P-value-in-P-gvalue (?val ?gval)
    (if (member$ ?val (P-values-in-P-gvalue ?gval)) then TRUE else FALSE)
)



