

There are two ways to try the CLIPS-sudoku solver.

The results given in the various examples of this folder use the first method if they come from the CLIPS examples,
the second method otherwise.
They also give the SudoRules solutions, for comparison.


-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
 
;;; If you want to try the original CLIPS-sudoku as is 
;;; (which is how I got the solutions of the original CLIPS-puzzles in this folder),
;;; first go to the CLIPS/CLIPS-sudoku folder and launch CLIPS in it,
;;; then load the following:

    (load "sudoku.clp")
    (load "solve.clp")
    (load "output-frills.clp")


;;; also copy/paste this function

(deffunction CLIPS-solve (?puzzle)
    ;;; ?puzzle must be the name of a file "puzzle.clp"
    (reset)
;   (assert (stress-test))
   (bind ?time0 (time))
   (load (str-cat "puzzles/" ?puzzle ".clp"))
   (run)
   (printout t "CLIPS solve time = " (- (time) ?time0) crlf)
)

;;; To solve the CLIPS puzzle given in file "puzzle.clp", type the command:
 	
	(CLIPS-solve "puzzle")


;;; The problem with this is, the puzzle must be given in the form of a rule that initialises it
;;; and nobody wants to do this.



-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

;;; If you want to use the CLIPS Sudoku solver for puzzles given in the usual string format,
;;; first go to the Examples/Sudoku-examples/CLIPS-puzzles folder and launch CLIPS in it,
;;; then load the following:

    (load "sudoku.clp")
    (load "solve.clp")
    (load "output-frills.clp")
    (load "string-input.clp")

;;; Solve a puzzle given as a string by typing the command:
;;; (where ?segment-size is the square root of a grid side; i.e. 3 for a standard 9x9 Sudoku).

    (CLIPS-solve-string ?segment-size ?string-of-givens)
