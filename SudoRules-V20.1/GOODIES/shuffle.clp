
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SHUFFLE 9x9 PUZZLE
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Randomly shuffle a puzzle to get an isomorphic one
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction permute-floors-9x9 (?puzzle ?f1 ?f2 ?f3)
    ;;; ?puzzle is supposed to be 9x9 and to be given as a string of 81 characters
    ;;; (?f1, ?f2, ?f3) is supposed to be a permutation of (1, 2, 3)
    (if (eq ?f1 1) then
        (if (eq ?f2 3) then (bind ?puzzle (str-cat (sub-string 1 27 ?puzzle) (sub-string 55 81 ?puzzle) (sub-string 28 54 ?puzzle))))
    )
    (if (eq ?f1 2) then
        (if (eq ?f2 1) then (bind ?puzzle (str-cat (sub-string 28 54 ?puzzle) (sub-string 1 27 ?puzzle) (sub-string 55 81 ?puzzle))))
        (if (eq ?f2 3) then (bind ?puzzle (str-cat (sub-string 28 54 ?puzzle) (sub-string 55 81 ?puzzle) (sub-string 1 27 ?puzzle))))
    )
    (if (eq ?f1 3) then
        (if (eq ?f2 1) then (bind ?puzzle (str-cat (sub-string 55 81 ?puzzle) (sub-string 1 27 ?puzzle) (sub-string 28 54 ?puzzle))))
        (if (eq ?f2 2) then (bind ?puzzle (str-cat (sub-string 55 81 ?puzzle) (sub-string 28 54 ?puzzle) (sub-string 1 27 ?puzzle))))
    )
    ?puzzle
)


(deffunction permute-rows-in-floor-9x9 (?floor ?r1 ?r2 ?r3)
    ;;; ?floor is supposed to be given as a string of 27 characters
    ;;; (?r1, ?r2, ?r3) is supposed to be a permutation of (1, 2, 3)
    ;;; i.e. ?r1, ?r2 and ?r3 are supposed to be pairwise different and equal to 1, 2 or 3
    (if (eq ?r1 1) then
        (if (eq ?r2 3) then (bind ?floor (str-cat (sub-string 1 9 ?floor) (sub-string 19 27 ?floor) (sub-string 10 18 ?floor))))
    )
    (if (eq ?r1 2) then
        (if (eq ?r2 1) then (bind ?floor (str-cat (sub-string 10 18 ?floor) (sub-string 1 9 ?floor) (sub-string 19 27 ?floor))))
        (if (eq ?r2 3) then (bind ?floor (str-cat (sub-string 10 18 ?floor) (sub-string 19 27 ?floor) (sub-string 1 9 ?floor))))
    )
    (if (eq ?r1 3) then
        (if (eq ?r2 1) then (bind ?floor (str-cat (sub-string 19 27 ?floor) (sub-string 1 9 ?floor) (sub-string 10 18 ?floor))))
        (if (eq ?r2 2) then (bind ?floor (str-cat (sub-string 19 27 ?floor) (sub-string 10 18 ?floor) (sub-string 1 9 ?floor))))
    )
    ?floor
)


(defglobal ?*permutations-3* = (create$ "123" "231" "312" "321" "213" "132"))

(deffunction random-permutation-3 ()
    (seed (integer (time)))
    (bind ?perm (nth$ (random 1 6) ?*permutations-3*))
    (create$
        (string-to-field (sub-string 1 1 ?perm))
        (string-to-field (sub-string 2 2 ?perm))
        (string-to-field (sub-string 3 3 ?perm))
    )
)


(deffunction horizontal-random-shuffle-9x9 (?puzzle)
    ;;; shuffle floors
    (bind ?perm (random-permutation-3))
    (bind ?puzzle (permute-floors-9x9 ?puzzle (nth$ 1 ?perm) (nth$ 2 ?perm) (nth$ 2 ?perm)))
    ;;; shuffle rows within each floor
    (bind ?perm (random-permutation-3))
    (bind ?floor1 (permute-rows-in-floor-9x9 (sub-string 1 27 ?puzzle) (nth$ 1 ?perm) (nth$ 2 ?perm) (nth$ 2 ?perm)))
    (bind ?perm (random-permutation-3))
    (bind ?floor2 (permute-rows-in-floor-9x9 (sub-string 28 54 ?puzzle) (nth$ 1 ?perm) (nth$ 2 ?perm) (nth$ 2 ?perm)))
    (bind ?perm (random-permutation-3))
    (bind ?floor3 (permute-rows-in-floor-9x9 (sub-string 55 81 ?puzzle) (nth$ 1 ?perm) (nth$ 2 ?perm) (nth$ 2 ?perm)))
    (bind ?puzzle (str-cat ?floor1 ?floor2 ?floor3))
    ?puzzle
)


(deffunction diagonal-symmetry-9x9 (?puzzle)
    (bind ?sym "")
    (bind ?col 1)
    (while (<= ?col 9)
        (bind ?row 1)
        (while (<= ?row 9)
            (bind ?cell (cell-index ?row ?col))
            (bind ?sym (str-cat ?sym (sub-string ?cell ?cell ?puzzle)))
            (bind ?row (+ ?row 1))
        )
        (bind ?col (+ ?col 1))
    )
    ?sym
)


(deffunction random-shuffle-9x9-puzzle (?puzzle)
    ;;; ?puzzle is supposed to be 9x9 and to be given as a string of 81 characters
    ;;; shuffle the floors and rows
    (seed (integer (time)))
    (bind ?puzzle (horizontal-random-shuffle-9x9 ?puzzle))
    ;;; shuffle the towers and columns
    (bind ?puzzle (diagonal-symmetry-9x9 ?puzzle))
    (bind ?puzzle (horizontal-random-shuffle-9x9 ?puzzle))
    ;;; randomly decide if there must be a diagonal symmetry or not
    (if (eq (random 0 1) 0) then (bind ?puzzle (diagonal-symmetry-9x9 ?puzzle)))
    ?puzzle
)

