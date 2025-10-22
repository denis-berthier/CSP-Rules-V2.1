
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / XTERNS
;;;                              GENERIC FUNCTIONS
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
;;; DIRECTORIES AND BASIC COMMANDS FOR EXTERNAL GENERIC FUNCIONS:
;;; - FILTER-wrt-VALUE
;;; - ELIM-DUP
;;; works both for Unix (including MacOS) and Windows
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Basic commands for external programs:
(defglobal ?*FILTER-wrt-VALUE-cmd0* =
    (str-cat ?*XTERN-UTIL*
        (if (OS-Windows) then "filter-wrt-value.exe"
            else (if ?*ARM* then "filter-wrt-value-arm" else "filter-wrt-value-x86")
        )
        " "
    )
)

(defglobal ?*ELIM-DUP-cmd0* =
    (str-cat ?*XTERN-UTIL*
        (if (OS-Windows) then "elim-dup.exe"
            else (if ?*ARM* then "elim-dup-arm" else "elim-dup-x86")
        )
        " "
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CALLS TO EXTERNAL FUNCTIONS, INCLUDING SHC AND GFS'S SOLVER
;;; works both for Unix (including MacOS) and Windows
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A. FILTER LINES wrt VALUE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-data-from-lines-with-X-value (?file-in ?X-values-file ?file-len ?X-value ?file-out)
    (system
        (str-cat ?*FILTER-wrt-VALUE-cmd0*
            ?file-in
            " "
            ?X-values-file
            " "
            ?X-value
            " e "
            " > "
            ?file-out
        )
    )
)

(deffunction extract-data-from-lines-with-X-value-greater (?file-in ?X-values-file ?file-len ?X-value ?file-out)
    (system
        (str-cat ?*FILTER-wrt-VALUE-cmd0*
            ?file-in
            " "
            ?X-values-file
            " "
            ?X-value
            " g "
            " > "
            ?file-out
        )
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. ELIMINATE DUPLICATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction eliminate-duplicates-from-file (?file-in ?file-out)
    (if (<= (file-length ?file-in) 10000)
        then (eliminate-duplicates-from-small-file ?file-in ?file-out)
        else
        (system
            (str-cat
                ?*ELIM-DUP-cmd0*
                ?file-in
                " > "
                ?file-out
            )
        )
    )
)



