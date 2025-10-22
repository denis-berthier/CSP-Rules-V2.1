
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / XTERNS
;;;                              SUDOKU SPECIFIC EXTERNAL PROGRAMS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;         https://github.com/denis-berthier          ;;;
               ;;;            January 2006 - September 2025           ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DIRECTORIES AND BASIC COMMANDS FOR EXTERNAL SOFTWARE:
;;; - SHC
;;; - GSF's SOLVER
;;; - SER, FPGX
;;; works both for Unix (including MacOS) and Windows
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Basic commands for external programs:

(defglobal ?*SHC-cmd0* = (str-cat "java -jar " ?*SHC* "SHC.jar "))
(defglobal ?*EXPAND-cmd0* = (str-cat "java -jar " ?*SHC* "Expand.jar "))


(defglobal ?*GSF-cmd0* =
    (str-cat ?*GSF*
        (if (OS-Windows) then "sudoku-gsf.exe"
            else (if ?*ARM* then "sudoku-gsf-arm" else "sudoku-gsf-x86")
        )
        " "
    )
)


;;; For the SER or FPGX rating (not relevant for expansions),
;;; but used in other places:
(defglobal ?*SER-cmd0* = (str-cat "java -jar " ?*SER* "SudokuExplainer.jar "))
(defglobal ?*FPGX-cmd0* = (str-cat "java -jar " ?*FPGX* "FPGX.jar "))





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CALLS TO EXTERNAL FUNCTIONS, INCLUDING SHC AND GFS'S SOLVER
;;; works both for Unix (including MacOS) and Windows
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A. SHC
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; the output is the Terminal:
(deffunction SHC-puzzle-BRT-expand (?puzzle)
    (system
        (str-cat
            ?*EXPAND-cmd0*
            " -puzzle " ?puzzle
        )
    )
)

(deffunction SHC-BRT-expand (?input-file ?output-file)
    (system
        (str-cat
            ?*EXPAND-cmd0*
            " -input " ?input-file
            " -output " ?output-file
        )
    )
)


;;; the output is the Terminal:
(deffunction SHC-puzzle-classif (?classif ?params ?puzzle)
    (system
        (str-cat
            ?*SHC-cmd0*
            ?classif
            " "
            ?params
            " "
            " -puzzle "
            ?puzzle
        )
    )
)


(deffunction SHC-classif (?classif ?params ?input-file ?output-file ?tmp-file)
    (system
        (str-cat
            ?*SHC-cmd0*
            ?classif
            " "
            ?params
            " -input " ?input-file
            " -output " ?output-file
        )
    )
    ;;; remove the spurious first lines printed by SHC
    (OS-remove-first-line-of-file ?output-file ?tmp-file)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. GSF's solver
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; BRT-expands - not used in expansion scripts, where SHC expand is used

;;; the output is the Terminal:
(deffunction GSF-compute-puzzle-BRT-expand (?puzzle)
    (system
        (str-cat
            ?*GSF-cmd0*
            " -E "
            " -qFN " ; necessary to restrict expansion to Singles
            ?puzzle
        )
    )
)

(deffunction GSF-compute-BRT-expands (?input-file ?output-file)
    (system
        (str-cat
            ?*GSF-cmd0*
            " -E "
            " -qFN " ; necessary to restrict expansion to Singles
            " < " ?input-file
            " > " ?output-file
        )
    )
)



;;; Solutions

;;; the output is the Terminal:
(deffunction GSF-compute-puzzle-solution (?puzzle)
    (system
        (str-cat
            ?*GSF-cmd0*
            (if (OS-Windows) then " -f\"%%C\" " else " -f'%C' ")
            " -qFN " ; faster with this option
            ?puzzle
        )
    )
)

(deffunction GSF-compute-solutions (?input-file ?output-file)
    (system
        (str-cat
            ?*GSF-cmd0*
            (if (OS-Windows) then " -f\"%%C\" " else " -f'%C' " )
            " -qFN " ; faster with this option
            " < " ?input-file
            " > " ?output-file
        )
    )
)



;;; gsf's solution minlex form

;;; the output is the Terminal:
(deffunction GSF-put-puzzle-to-sol-minlex-form (?puzzle)
    (system
        (str-cat
            ?*GSF-cmd0*
            (if (OS-Windows) then " -f\"%%#.c\" " else " -f'%#.c' ")
            " -qFN " ; faster with this option
            ?puzzle
        )
    )
)

(deffunction GSF-put-to-sol-minlex-form (?input-file ?output-file)
    (system
        (str-cat
            ?*GSF-cmd0*
            (if (OS-Windows) then " -f\"%%#.c\" " else " -f'%#.c' ")
            " -qFN " ; faster with this option
            " < " ?input-file
            " > " ?output-file
        )
    )
)



;;; Elimination of isomorphic puzzles
;;; Note: due to (rare) problems with this gsf function (e.g. in SG021 Usol#787)
;;; (in automorphic grids),
;;; it is now replaced in all the expansion scripts by a generic CSP-Rules function:
;;; "eliminate-duplicates-from-file" that eliminates identical instead of isomorphic puzzles

(deffunction GSF-eliminate-isomorphs (?input-file ?output-file)
    (system
        (str-cat
            ?*GSF-cmd0* 
            (if (OS-Windows) then " -f\"%%#.c\" " else " -f'%#.c' ")
            (if (OS-Windows) then " -e\"uniq()\" " else " -e'uniq()' ")
            " < " ?input-file
            " > " ?output-file
        )
    )
)



;;; Minimals in solution minlex form

;;; the output is the Terminal:
(deffunction GSF-find-all-unique-minimals-not-in-TE0-for-puzzle (?puzzle-string)
    (system
        (str-cat
            ?*GSF-cmd0*
            (if (OS-Windows) then " -f\"%%#.c\" " else " -f'%#.c' ")
            " -m "
            " -qFN " ; faster with this option
            (if (OS-Windows) then " -e\"M>0&&uniq()&&minimal==1\" " else " -e'M>0&&uniq()&&minimal==1' ")
            ?puzzle-string
            ; " | sed s/0/./g " ; useless
        )
    )
)

(deffunction GSF-find-all-unique-minimals-not-in-TE0 (?input-file ?output-file)
    (system
        (str-cat
            ?*GSF-cmd0* 
            (if (OS-Windows) then " -f\"%%#.c\" " else " -f'%#.c' ")
            " -m "
            " -qFN " ; faster with this option
            (if (OS-Windows) then " -e\"M>0&&uniq()&&minimal==1\" " else " -e'M>0&&uniq()&&minimal==1' ")
            " < " ?input-file
            ; " | sed s/0/./g " ; useless
            " > " ?output-file
        )
    )
)



;;; Backdoor size - not used in expansion scripts

;;; the output is the Terminal:
(deffunction GSF-puzzle-backdoor-size (?puzzle-string)
    (system
        (str-cat
            ?*GSF-cmd0*
            " -qFN "
            (if (OS-Windows) then " -f\"%%#bM\" " else " -f'%#bM' ")
            ?puzzle-string
        )
    )
)

(deffunction GSF-backdoor-sizes (?input-file ?output-file)
    (system
        (str-cat
            ?*GSF-cmd0*
            " -qFN "
            (if (OS-Windows) then " -f\"%%#bM\" " else " -f'%#bM' ")
            " < " ?input-file
            " > " ?output-file
        )
    )
)


;;; gsf's rating - not used in expansion scripts
;;; the output is the Terminal:
(deffunction GSF-analyse-puzzle (?puzzle-string)
    (system
        (str-cat
            ?*GSF-cmd0*
            " -qFN "
            ?puzzle-string
        )
    )
)



;;; {-p +q} vicinity search - not used in expansion scripts, but used in T&E(3)-to-high-BxB

;;; the output in solution-minlex form, with no isomorphs, is the Terminal:
(deffunction GSF-find-all-minus-p-plus-q-not-in-TE0-for-puzzle (?p ?q ?puzzle-string)
    (system
        (str-cat
            ?*GSF-cmd0*
            (if (OS-Windows) then " -f\"%%#.c\" " else " -f'%#.c' ")
            (if (OS-Windows) then " -go\"{-" ?p "+" ?q "}\" " else " -go'{-" ?p "+" ?q "}'")
            " -qFN "
            (if (OS-Windows) then " -e\"M>0&&uniq()\" " else " -e'M>0&&uniq()' ")
            ?puzzle-string
            ; " | sed s/0/./g " ; useless
        )
    )
)

;;; all the {-p +q} puzzles not in T&E(0) of puzzles in input-file
;;; output in solution-minlex form, with no isomorphs
(deffunction GSF-find-all-minus-p-plus-q-not-in-TE0 (?p ?q ?input-file ?output-file)
    (system
        (str-cat
            ?*GSF-cmd0*
            (if (OS-Windows) then " -go\"{-" ?p "+" ?q "}\" " else " -go'{-" ?p "+" ?q "}'")
            " -go{-" ?p "+" ?q "} "
            " -qFN "
            (if (OS-Windows) then " -e\"M>0&&uniq()\" " else " -e'M>0&&uniq()' ")
            " < " ?input-file
            ; " | sed s/0/./g " ; useless
            " > " ?output-file
        )
    )
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. SER RATING
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; 1) With no uniqueness rule acitvated:
;;; the output is the Terminal:
(deffunction SERnoU-rate-puzzle (?puzzle-string)
    (system
        (str-cat
            ?*SER-cmd0*
            (if (OS-Windows) then " --format=%%r " else " --format=%r ")
            " -M "
            ?puzzle-string
        )
    )
)

(deffunction SER-noU-rate-file (?input-file ?output-file)
    (system
        (str-cat
            ?*SER-cmd0*
            " -M "
            (if (OS-Windows) then " --format=%%r " else " --format=%r ")
            " --input=" ?input-file
            " --output=" ?output-file
        )
    )
)



;;; 2) With uniqueness rules acitvated:
;;; the output is the Terminal:
(deffunction SER-rate-puzzle (?puzzle-string)
    (system
        (str-cat
            ?*SER-cmd0*
            (if (OS-Windows) then " --format=%%r " else " --format=%r ")
            ?puzzle-string
        )
    )
)

(deffunction SER-rate-file (?input-file ?output-file)
    (system
        (str-cat
            ?*SER-cmd0*
            (if (OS-Windows) then " --format=%%r " else " --format=%r ")
            " --input=" ?input-file
            " --output=" ?output-file
        )
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; FPGX RATING, a faster variant of SER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; 1) With no uniqueness rule acitvated:
;;; the output is the Terminal:
(deffunction FPGXnoU-rate-puzzle (?puzzle-string)
    (system
        (str-cat
            ?*FPGX-cmd0*
            (if (OS-Windows) then " --format=%%r " else " --format=%r ")
            " -M "
            ?puzzle-string
        )
    )
)

(deffunction FPGXnoU-rate-file (?input-file ?output-file)
    (system
        (str-cat
            ?*FPGX-cmd0*
            " -M "
            (if (OS-Windows) then " --format=%%r " else " --format=%r ")
            " --input=" ?input-file
            " --output=" ?output-file
        )
    )
)



;;; 2) With uniqueness rules acitvated:
;;; the output is the Terminal:
(deffunction FPGX-rate-puzzle (?puzzle-string)
    (system
        (str-cat
            ?*FPGX-cmd0*
            (if (OS-Windows) then " --format=%%r " else " --format=%r ")
            ?puzzle-string
        )
    )
)

(deffunction FPGX-rate-file (?input-file ?output-file)
    (system
        (str-cat
            ?*FPGX-cmd0*
            (if (OS-Windows) then " --format=%%r " else " --format=%r ")
            " --input=" ?input-file
            " --output=" ?output-file
        )
    )
)



