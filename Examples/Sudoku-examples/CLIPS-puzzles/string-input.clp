
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; RULES FOR STRING INPUT
;;; author: Denis Berthier, May 2021
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; cancel the CLIP-sudoku initialisation rules
(defrule initialize-techniques =>)
(defrule initialize =>)
(defrule grid-values =>)


(deffunction block (?segment-size ?row ?col)
    (+ 1
       (* ?segment-size (div (- ?row 1) ?segment-size))
       (div (- ?col 1) ?segment-size)
    )
)

;;; convert input data to numbers
(deffunction transform-hexa-to-nb (?nb)
    (if (or (eq ?nb A) (eq ?nb a)) then (bind ?nb 10))
    (if (or (eq ?nb B) (eq ?nb b)) then (bind ?nb 11))
    (if (or (eq ?nb C) (eq ?nb c)) then (bind ?nb 12))
    (if (or (eq ?nb D) (eq ?nb d)) then (bind ?nb 13))
    (if (or (eq ?nb E) (eq ?nb e)) then (bind ?nb 14))
    (if (or (eq ?nb F) (eq ?nb f)) then (bind ?nb 15))
    (if (or (eq ?nb G) (eq ?nb g)) then (bind ?nb 16))
    ?nb
)

(deffunction transform-25letters-to-nb (?nb)
    (if (or (eq ?nb A) (eq ?nb a)) then (bind ?nb 10))
    (if (or (eq ?nb B) (eq ?nb b)) then (bind ?nb 11))
    (if (or (eq ?nb C) (eq ?nb c)) then (bind ?nb 12))
    (if (or (eq ?nb D) (eq ?nb d)) then (bind ?nb 13))
    (if (or (eq ?nb E) (eq ?nb e)) then (bind ?nb 14))
    (if (or (eq ?nb F) (eq ?nb f)) then (bind ?nb 15))
    (if (or (eq ?nb G) (eq ?nb g)) then (bind ?nb 16))
    (if (or (eq ?nb H) (eq ?nb h)) then (bind ?nb 17))
    (if (or (eq ?nb I) (eq ?nb i)) then (bind ?nb 18))
    (if (or (eq ?nb J) (eq ?nb j)) then (bind ?nb 19))
    (if (or (eq ?nb K) (eq ?nb k)) then (bind ?nb 20))
    (if (or (eq ?nb L) (eq ?nb l)) then (bind ?nb 21))
    (if (or (eq ?nb M) (eq ?nb m)) then (bind ?nb 22))
    (if (or (eq ?nb N) (eq ?nb n)) then (bind ?nb 23))
    (if (or (eq ?nb O) (eq ?nb o)) then (bind ?nb 24))
    (if (or (eq ?nb P) (eq ?nb p)) then (bind ?nb 25))
    ?nb
)

(deffunction transform-36letters-to-nb (?nb)
    (if (or (eq ?nb A) (eq ?nb a)) then (bind ?nb 10))
    (if (or (eq ?nb B) (eq ?nb b)) then (bind ?nb 11))
    (if (or (eq ?nb C) (eq ?nb c)) then (bind ?nb 12))
    (if (or (eq ?nb D) (eq ?nb d)) then (bind ?nb 13))
    (if (or (eq ?nb E) (eq ?nb e)) then (bind ?nb 14))
    (if (or (eq ?nb F) (eq ?nb f)) then (bind ?nb 15))
    (if (or (eq ?nb G) (eq ?nb g)) then (bind ?nb 16))
    (if (or (eq ?nb H) (eq ?nb h)) then (bind ?nb 17))
    (if (or (eq ?nb I) (eq ?nb i)) then (bind ?nb 18))
    (if (or (eq ?nb J) (eq ?nb j)) then (bind ?nb 19))
    (if (or (eq ?nb K) (eq ?nb k)) then (bind ?nb 20))
    (if (or (eq ?nb L) (eq ?nb l)) then (bind ?nb 21))
    (if (or (eq ?nb M) (eq ?nb m)) then (bind ?nb 22))
    (if (or (eq ?nb N) (eq ?nb n)) then (bind ?nb 23))
    (if (or (eq ?nb O) (eq ?nb o)) then (bind ?nb 24))
    (if (or (eq ?nb P) (eq ?nb p)) then (bind ?nb 25))
    (if (or (eq ?nb Q) (eq ?nb q)) then (bind ?nb 26))
    (if (or (eq ?nb R) (eq ?nb r)) then (bind ?nb 27))
    (if (or (eq ?nb S) (eq ?nb s)) then (bind ?nb 28))
    (if (or (eq ?nb T) (eq ?nb t)) then (bind ?nb 29))
    (if (or (eq ?nb U) (eq ?nb u)) then (bind ?nb 30))
    (if (or (eq ?nb V) (eq ?nb v)) then (bind ?nb 31))
    (if (or (eq ?nb W) (eq ?nb w)) then (bind ?nb 32))
    (if (or (eq ?nb X) (eq ?nb x)) then (bind ?nb 33))
    (if (or (eq ?nb Y) (eq ?nb y)) then (bind ?nb 34))
    (if (or (eq ?nb Z) (eq ?nb z)) then (bind ?nb 35))
    (if (or (eq ?nb 0) (eq ?nb 0)) then (bind ?nb 36))
    ?nb
)


(deffunction CLIPS-general-init ()
    (reset)
    ;;; initialise techniques (copied from CLIPS-Sudoku)
    (assert (technique (name Naked-Single) (rank 1)))
    (assert (technique (name Hidden-Single) (rank 2)))
    (assert (technique (name Locked-Candidate-Single-Line) (rank 3)))
    (assert (technique (name Locked-Candidate-Multiple-Lines) (rank 4)))
    (assert (technique (name Naked-Pairs) (rank 5)))
    (assert (technique (name Hidden-Pairs) (rank 6)))
    (assert (technique (name X-Wing) (rank 7)))
    (assert (technique (name Naked-Triples) (rank 8)))
    (assert (technique (name Hidden-Triples) (rank 9)))
    (assert (technique (name XY-Wing) (rank 10)))
    (assert (technique (name Swordfish) (rank 11)))
    (assert (technique (name Duplicate-Color) (rank 12)))
    (assert (technique (name Color-Conjugate-Pair) (rank 13)))
    (assert (technique (name Multi-Color-Type-1) (rank 14)))
    (assert (technique (name Multi-Color-Type-2) (rank 15)))
    (assert (technique (name Forced-Chain-Convergence) (rank 16)))
    (assert (technique (name Forced-Chain-XY) (rank 17)))
    (assert (technique (name Unique-Rectangle) (rank 18)))

    ;;; initialise (copied from CLIPS-Sudoku)
    (assert (size-value (size 1) (value 1)))
    (assert (size-value (size 2) (value 2)))
    (assert (size-value (size 2) (value 3)))
    (assert (size-value (size 2) (value 4)))
    (assert (size-value (size 3) (value 5)))
    (assert (size-value (size 3) (value 6)))
    (assert (size-value (size 3) (value 7)))
    (assert (size-value (size 3) (value 8)))
    (assert (size-value (size 3) (value 9)))
    (assert (size-value (size 4) (value 10)))
    (assert (size-value (size 4) (value 11)))
    (assert (size-value (size 4) (value 12)))
    (assert (size-value (size 4) (value 13)))
    (assert (size-value (size 4) (value 14)))
    (assert (size-value (size 4) (value 15)))
    (assert (size-value (size 4) (value 16)))
    (assert (size-value (size 5) (value 17)))
    (assert (size-value (size 5) (value 18)))
    (assert (size-value (size 5) (value 19)))
    (assert (size-value (size 5) (value 20)))
    (assert (size-value (size 5) (value 21)))
    (assert (size-value (size 5) (value 22)))
    (assert (size-value (size 5) (value 23)))
    (assert (size-value (size 5) (value 24)))
    (assert (size-value (size 5) (value 25)))
)


;;; to init puzzles given as a string
(deffunction CLIPS-init-string (?segment-size ?givens)
    (CLIPS-general-init)
    
    (assert (phase expand-any))
    (assert (size ?segment-size))

    (bind ?nb-rows (* ?segment-size ?segment-size))
    (bind ?nb-cells (* ?nb-rows ?nb-rows))
    (assert (size ?segment-size))
    (bind ?index 1)
    (bind ?i 1)
    (bind ?row 1)
    (bind ?col 1)
    (while (<= ?i ?nb-cells)
        (bind ?block (block ?segment-size ?row ?col))
        (bind ?datum (nth$ 1 (explode$ (sub-string ?i ?i ?givens)))) ;;; this supposes there is only one symbol per entry
        ;;; add these lines for 16x16 or 25x25 puzzles given in hexadecimal notation
        (if (eq ?segment-size 4) then (bind ?datum (transform-hexa-to-nb ?datum)))
        (if (eq ?segment-size 5) then (bind ?datum (transform-25letters-to-nb ?datum)))
        (if (eq ?segment-size 6) then (bind ?datum (transform-36letters-to-nb ?datum)))

        (if (numberp ?datum)
            then (assert (possible (row ?row) (column ?col) (value ?datum) (group ?block) (id ?index)))
            else (assert (possible (row ?row) (column ?col) (value any) (group ?block) (id ?index)))
        )
        (bind ?i (+ ?i 1))
        (bind ?index (+ ?index 1))
        (if (< ?col ?nb-rows)
            then (bind ?col (+ ?col 1))
            else (bind ?row (+ ?row 1)) (bind ?col 1)
        )
    )
)

    

;;; to solve puzzles given as a string
(deffunction CLIPS-solve-string (?segment-size ?givens)
    ;;; givens are allowed only 1 symbol per cell, i.e. they must use the hexadecimal, 25-decimal or 36-decimal notation
    (reset)
    (bind ?time0 (time))
    (CLIPS-init-string ?segment-size ?givens)
    (bind ?time1 (time))
    (run)
    (bind ?time2 (time))
    (printout t "CLIPS time: " "init = " (- ?time1 ?time0) "; solve = " (- ?time2 ?time1) "; total = " (- ?time2 ?time0) crlf)
)



