
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / PREPARATION OF SAMPLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;         https://github.com/denis-berthier          ;;;
               ;;;           January 2006 - September 2025            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A. Create a sample of solution grids
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A1. Preparatory steps for random samples
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction create-digit-sample (?sample-size ?collection-size)
    (bind ?random-list (p-different-ordered-numbers-out-of-n ?sample-size ?collection-size))
    (if (neq (length$ ?random-list) ?sample-size)
        then (printout t "ERROR" crlf) (return FALSE)
        else
        (printout t (length$ ?random-list) crlf)
        (print-list-with-separators ?random-list 10000)
        ?random-list
    )
)


(deffunction SGS-sample-extract-Usols (?digit-sample ?collection-size ?Usols-file-in ?Usols-file-out)
    ;;; This supposes a solutions.txt file exists for the whole collection
    ;;; The solutions must have been computed for the sample beforehand
    (open ?Usols-file-in "SGS-sample-extract-Usols-Usols-file-in" "r")
    (open ?Usols-file-out "SGS-sample-extract-Usols-Usols-file-out" "w")
    (loop-for-count (?i 1 ?collection-size)
        (bind ?puz (readline "SGS-sample-extract-Usols-Usols-file-in"))
        (if (member$ ?i ?digit-sample) then (printout "SGS-sample-extract-Usols-Usols-file-out" ?puz crlf))
    )
    (close "SGS-sample-extract-Usols-Usols-file-out")
    (close "SGS-sample-extract-Usols-Usols-file-in")
)


(deffunction create-disjoint-digit-sample (?sample-size ?collection-size ?old-digit-sample)
    (bind ?random-list
        (p-new-different-ordered-numbers-out-of-n ?sample-size ?collection-size ?old-digit-sample)
    )
    (if (neq (length$ ?random-list) ?sample-size)
        then (printout t "ERROR" crlf) (return FALSE)
        else
        (printout t (length$ ?random-list) crlf)
        (print-list-with-separators ?random-list 10000)
        ?random-list
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A2. Preparatory steps for sequential samples from a global collection
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction copy-n-lines-after-first-p-from-text-file (?file-in ?p ?n ?file-out)
    (open ?file-in "copy-n-lines-after-first-p-from-text-file-file-in" "r")
    (loop-for-count ?p
        (readline "copy-n-lines-after-first-p-from-text-file-file-in")
    )
    (open ?file-out "copy-n-lines-after-first-p-from-text-file-file-out" "w")
    (loop-for-count ?n
        (printout "copy-n-lines-after-first-p-from-text-file-file-out"
            (readline "copy-n-lines-after-first-p-from-text-file-file-in")
            crlf
        )
    )
    (close "copy-n-lines-after-first-p-from-text-file-file-out")
    (close "copy-n-lines-after-first-p-from-text-file-file-in")
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. CREATION OF BASIC STRUCTURE AND DATA FOR THE SAMPLE
;;;
;;; For each unique solution grid number ?i (restricted to ?n grids after ?p):
;;;   - create a GRIDS directory
;;;   - in it, for each i, create a directory USOL-i
;;;   - in each Usol-i, create a "SOLN.txt" file: only one line = the i-th solution
;;;   - in each Usol-i, create a "mins.txt" file with all the original minimals that have this solution
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Utility for finding solution grid #i in a sample
;;; (normally not to be used when doing systematic calculations)

(deffunction SGS-sample-find-Usol-i (?i)
    (open ?*Usols-file* "Usols-file" "r")
    (loop-for-count (?k 1 (- ?i 1)) (readline "Usols-file"))
    (bind ?Usol (readline "Usols-file"))
    (close "Usols-file")
    ?Usol
)


;;; Utilities for creating directories and copying solution files

(deffunction SGS-sample-create-directory-for-Usol-i (?i)
    (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
    (OS-create-directory ?USOL-i-DIR)
)

(deffunction SGS-sample-create-directories-for-n-solution-grids-after-first-p (?p ?n)
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (SGS-sample-create-directory-for-Usol-i (+ ?p ?j))
    )
)

(deffunction SGS-sample-copy-solution-for-Usol-i (?i ?Usol-i ?USOL-i-DIR)
    (bind ?sol-file (str-cat ?USOL-i-DIR "SOLN.txt"))
    (open ?sol-file "SGS-sample-copy-solution-for-Usol-i-sol-file" "w")
    (printout "SGS-sample-copy-solution-for-Usol-i-sol-file" ?Usol-i crlf)
    (close "SGS-sample-copy-solution-for-Usol-i-sol-file")
)

(deffunction SGS-sample-copy-solutions-for-n-solution-grids-after-first-p (?p ?n)
    (open ?*Usols-file* "SGS-sample-copy-solutions-for-n-solution-grids-after-first-p-Usols-file" "r")
    (loop-for-count (?i 1 ?p) (readline "SGS-sample-copy-solutions-for-n-solution-grids-after-first-p-Usols-file"))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        ;;; find ?Usol-i
        (bind ?Usol-i
            (readline "SGS-sample-copy-solutions-for-n-solution-grids-after-first-p-Usols-file")
        )
        (SGS-sample-copy-solution-for-Usol-i ?i ?Usol-i ?USOL-i-DIR)
    )
    (close "SGS-sample-copy-solutions-for-n-solution-grids-after-first-p-Usols-file")
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; B1. Create the basic structure for the sample:
;;;       - create the GRIDS directory;
;;;       - create the solution directories (?USOL-i-DIR);
;;;       - copy the solution grid (?Usol-i) in each of them.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-sample-build-basic-structure-for-n-solution-grids-after-first-p (?p ?n)
    (open ?*Usols-file* "SGS-sample-build-basic-structure-for-n-solution-grids-after-first-p-Usols-file" "r")
    ;;; skip the first ?p lines:
    (loop-for-count (?i 1 ?p)
        (readline "SGS-sample-build-basic-structure-for-n-solution-grids-after-first-p-Usols-file")
    )
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (OS-create-directory ?USOL-i-DIR)
        (bind ?Usol-i
            (readline "SGS-sample-build-basic-structure-for-n-solution-grids-after-first-p-Usols-file")
        )
        (SGS-sample-copy-solution-for-Usol-i ?i ?Usol-i ?USOL-i-DIR)
    )
    (close "SGS-sample-build-basic-structure-for-n-solution-grids-after-first-p-Usols-file")
)


;;; This is the function to build the whole structure
(deffunction SGS-sample-build-basic-structure ()
    (OS-create-directory ?*GRIDS-DIR*)
    (SGS-sample-build-basic-structure-for-n-solution-grids-after-first-p 0 ?*Sample-Size*))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; B2. Copy all the minimals to the relevant ?USOL-i-DIR sub-directory of "GRIDS"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction read-solution-from-unique-file (?file)
    (open ?file "read-solution-from-unique-file-file" "r")
    (bind ?soln (readline "read-solution-from-unique-file-file"))
    (close "read-solution-from-unique-file-file")
    ?soln
)

(deffunction SGS-sample-copy-minimals-for-Usol-i (?i ?Usol-i ?USOL-i-DIR)
    ;;; Find all the minimal puzzles in the original list with solution ?Usol-i
    ;;; and store them in file mins.txt in directory USOL-i
    (bind ?puz "")
    (bind ?nb-mins-i 0)
    (bind ?mins-i-file (str-cat ?USOL-i-DIR "mins.txt"))
    (open ?mins-i-file "mins-i" "w")
    (open ?*collection-minimals-file* "collection-minimals-file" "r")
    (loop-for-count (?k 1 ?*nb-minimals-in-collection*)
        (bind ?puz (readline "collection-minimals-file"))
        (if (puzzle-in-puzzle ?puz ?Usol-i) then
            (printout "mins-i" ?puz crlf)
            (bind ?nb-mins-i (+ ?nb-mins-i 1))
        )
    )
    (close "collection-minimals-file")
    (close "mins-i")
    (printout t ?nb-mins-i " minimals in USOL-" ?i crlf)
    ?nb-mins-i
)


(deffunction SGS-sample-copy-minimals-for-n-solution-grids-after-first-p (?p ?n)
    (bind ?t0 (time))
    (bind ?sum-nb-mins 0)
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        ;;; find ?Usol-i
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?Usol-i (read-solution-from-unique-file (str-cat ?USOL-i-DIR "SOLN.txt")))
        ;;; copy all the original minimals with solution ?Usol-i
        (bind ?sum-nb-mins
            (+ ?sum-nb-mins
                (SGS-sample-copy-minimals-for-Usol-i ?i ?Usol-i ?USOL-i-DIR)
            )
        )
    )
    (close "Usols-file")
    (printout t "copy-minimals total time = " (seconds-to-hours (- (time) ?t0))  crlf)
    (printout t ?sum-nb-mins " minimals copied." crlf)
    ?sum-nb-mins
)

;;; This is the function to copy all the minimals for the sample
(deffunction SGS-sample-copy-minimals ()
    (SGS-sample-copy-minimals-for-n-solution-grids-after-first-p 0 ?*Sample-Size*)
)




