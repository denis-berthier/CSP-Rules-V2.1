
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              MARK K-DIGIT PATTERNS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - February 2023            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Normalise the pattern strings
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction normalise-k-digit-pattern-string (?pattern-string)
    ;;; this functon supposes there is only one symbol per entry
    ;;; replace 0's and 1's by dots and X's and complete the pattern to 81
    ;;; (0's and 1's raise overflow problems when read as integers
    (bind ?string-len (str-length ?pattern-string))
    (bind ?new-string "")
    (bind ?i 0)
    (while (< ?i ?string-len)
        (bind ?i (+ ?i 1))
        (bind ?char (sub-string ?i ?i ?pattern-string))
        (if (or (eq ?char "X") (eq ?char "1")) then (bind ?new-string (str-cat ?new-string "X")))
        (if (or (eq ?char ".") (eq ?char "0")) then (bind ?new-string (str-cat ?new-string ".")))
        (if (eq ?char "o") then (bind ?new-string (str-cat ?new-string "o")))
    )
    (if (neq (str-length ?new-string) ?string-len) then (printout t "ERROR" crlf) (return "ERROR IN PATTERN"))
    (if (< (str-length ?new-string) 81) then
        (bind ?compl "")
        (bind ?i ?string-len)
        (while (< ?i 81)
            (bind ?i (+ ?i 1))
            (bind ?compl (str-cat ?compl "."))
        )
        (bind ?new-string (str-cat ?new-string ?compl))
    )
    ?new-string
)


(deffunction normalise-k-digit-pattern-file (?file-length ?file-in ?file-out)
    (open ?file-in "file-in" "r")
    (open ?file-out "file-out" "w")
    (bind ?n 0)
    (while (< ?n ?file-length)
        (bind ?n (+ ?n 1))
        (bind ?pattern-string (readline "file-in"))
        (bind ?new-string (normalise-k-digit-pattern-string ?pattern-string))
        (printout t "#" ?n " : " crlf
            "     " ?pattern-string crlf
            "     " ?new-string crlf
        )
        (printout "file-out" ?new-string crlf)
    )
    (close "file-out")
    (close "file-in")
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for marking normalised pattern strings and pattern files
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction count-cells-in-k-digit-pattern (?pattern-string)
    (bind ?nb-cells 0)
    (bind ?i 0)
    (while (< ?i 81)
        (bind ?i (+ ?i 1))
        (bind ?pati (sub-string ?i ?i ?pattern-string))
        ;;; note that the entry is "" and nothing happens if the pattern-string lentgh is shorter than 81
        (if (or (eq ?pati "X") (eq ?pati "1"))
            then (bind ?nb-cells (+ ?nb-cells 1))
        )
    )
    ?nb-cells
)


(deffunction mark-pattern-string-w-free-cells (?pattern-string ?free-cell-indices)
    (bind ?new-pat "")
    (bind ?i 0)
    (while (< ?i 81)
        (bind ?i (+ ?i 1))
        (bind ?pati (sub-string ?i ?i ?pattern-string))
        (if (or (eq ?pati "X") (eq ?pati "1"))
            then (bind ?new-pat (str-cat ?new-pat "X"))
            else (if (member$ ?i ?free-cell-indices)
                    then (bind ?new-pat (str-cat ?new-pat "o"))
                    else (bind ?new-pat (str-cat ?new-pat "."))
                )
        )
    )
    ?new-pat
)


(deffunction browse-k-digit-pattern (?k ?pattern-string ?print-completed-pattern)
    (bind ?row-variables-names (create$ r1 r2 r3 r4 r5 r6 r7 r8 r9))
    (bind ?col-variables-names (create$ c1 c2 c3 c4 c5 c6 c7 c8 c9))
    (bind ?blk-variables-names (create$ b1 b2 b3 b4 b5 b6 b7 b8 b9))
    (bind ?used-row-variables-names (create$))
    (bind ?used-col-variables-names (create$))
    (bind ?used-blk-variables-names (create$))
    (bind ?used-band-variables-names (create$))
    (bind ?used-stack-variables-names (create$))

    (bind ?band-variables-names (create$ B1 B2 B3))
    (bind ?stack-variables-names (create$ S1 S2 S3))
    (bind ?used-band-variables-names (create$))
    (bind ?used-stack-variables-names (create$))

    ;;; scan all the cells:
    (bind ?row 0)
    (while (< ?row 9)
        (bind ?row (+ ?row 1))
        (bind ?row-var-name (nth$ ?row ?row-variables-names))
        (bind ?bnd (band ?row))
        (bind ?band-var-name (nth$ ?bnd ?band-variables-names))
        
        (bind ?col 0)
        (while (< ?col 9)
            (bind ?col (+ ?col 1))
            (bind ?col-var-name (nth$ ?col ?col-variables-names))
            (bind ?blk (block ?row ?col))
            (bind ?blk-var-name (nth$ ?blk ?blk-variables-names))
            (bind ?stk (stack ?col))
            (bind ?stack-var-name (nth$ ?stk ?stack-variables-names))
            
            (bind ?cell-index (cell-index ?row ?col))
            (bind ?entry (sub-string ?cell-index ?cell-index ?pattern-string))
            ;;; note that the entry is "" and nothing happens if the pattern-string lentgh is shorter than 81
            
            ;;; if the cell belongs to the pattern:
            (if (or (eq ?entry "1") (eq ?entry "X")) then
                ;;; update used rows / cols / blks / bands / stacks
                (if (not (member$ ?row-var-name ?used-row-variables-names)) then
                    (bind ?used-row-variables-names (create$ ?used-row-variables-names ?row-var-name))
                )
                (if (not (member$ ?col-var-name ?used-col-variables-names)) then
                    (bind ?used-col-variables-names (create$ ?used-col-variables-names ?col-var-name))
                )
                (if (not (member$ ?blk-var-name ?used-blk-variables-names)) then
                    (bind ?used-blk-variables-names (create$ ?used-blk-variables-names ?blk-var-name))
                )
               (if (not (member$ ?band-var-name ?used-band-variables-names)) then
                    (bind ?used-band-variables-names (create$ ?used-band-variables-names ?band-var-name))
                )
                (if (not (member$ ?stack-var-name ?used-stack-variables-names)) then
                    (bind ?used-stack-variables-names (create$ ?used-stack-variables-names ?stack-var-name))
                )
           )
        )
    )
    
    ;;; compute free cells
    (bind ?free-cells (create$))
    (bind ?free-cell-indices (create$))
    (bind ?free-rows (create$))
    (bind ?free-cols (create$))
    (bind ?free-blks (create$))
    (bind ?free-bnds (create$))
    (bind ?free-stks (create$))
    (bind ?row 0)
    (while (< ?row 9)
        (bind ?row (+ ?row 1))
        (bind ?row-var-name (nth$ ?row ?row-variables-names))
        (bind ?bnd (band ?row))
        (bind ?band-var-name (nth$ ?bnd ?band-variables-names))
        (bind ?col 0)
        (while (< ?col 9)
            (bind ?col (+ ?col 1))
            (bind ?col-var-name (nth$ ?col ?col-variables-names))
            (bind ?blk (block ?row ?col))
            (bind ?blk-var-name (nth$ ?blk ?blk-variables-names))
            (bind ?stk (stack ?col))
            (bind ?stack-var-name (nth$ ?stk ?stack-variables-names))
            (if (and (not (member$ ?row-var-name ?used-row-variables-names))
                    (not (member$ ?col-var-name ?used-col-variables-names))
                    (not (member$ ?blk-var-name ?used-blk-variables-names))
                )
                then (bind ?free-cells (create$ ?free-cells (sym-cat (row-name ?row) (column-name ?col))))
                    (bind ?free-cell-indices (create$ ?free-cell-indices (cell-index ?row ?col)))
            )
            (if (and (not (member$ ?row-var-name ?used-row-variables-names)) (not (member$ ?row-var-name ?free-rows)))
                then (bind ?free-rows (create$ ?free-rows ?row-var-name))
            )
            (if (and (not (member$ ?col-var-name ?used-col-variables-names)) (not (member$ ?col-var-name ?free-cols)))
                then (bind ?free-cols (create$ ?free-cols ?col-var-name))
            )
            (if (and (not (member$ ?blk-var-name ?used-blk-variables-names)) (not (member$ ?blk-var-name ?free-blks)))
                then (bind ?free-blks (create$ ?free-blks ?blk-var-name))
            )
            (if (and (not (member$ ?band-var-name ?used-band-variables-names)) (not (member$ ?band-var-name ?free-bnds)))
                then (bind ?free-bnds (create$ ?free-bnds ?band-var-name))
            )
            (if (and (not (member$ ?stack-var-name ?used-stack-variables-names)) (not (member$ ?stack-var-name ?free-stks)))
                then (bind ?free-stks (create$ ?free-stks ?stack-var-name))
            )
        )
    )
    (bind ?nb-free-cells (length$ ?free-cells))
    (printout t "   " ?nb-free-cells " cells free for pattern digits: " ?free-cells crlf)
    (bind ?nb-free-rows (length$ ?free-rows))
    (printout t "   " ?nb-free-rows " rows with no cell in the pattern: " ?free-rows crlf)
    (bind ?nb-free-cols (length$ ?free-cols))
    (printout t "   " ?nb-free-cols " columns with no-cell in the pattern: " ?free-cols crlf)
    (bind ?nb-free-blks (length$ ?free-blks))
    (printout t "   " ?nb-free-blks " blocks with no-cell in the pattern: " ?free-blks crlf)
    (bind ?nb-free-bnds (length$ ?free-bnds))
    (printout t "   " ?nb-free-bnds " bands with no-cell in the pattern: " ?free-bnds crlf)
    (bind ?nb-free-stks (length$ ?free-stks))
    (printout t "   " ?nb-free-stks " stacks with no-cell in the pattern: " ?free-stks crlf)

    (bind ?new-pat (mark-pattern-string-w-free-cells ?pattern-string ?free-cell-indices))
    (if ?print-completed-pattern then
        (printout t crlf)
        (pretty-print ?new-pat)
        (printout t crlf)
    )
    (printout t ?new-pat crlf crlf)
)


(deffunction browse-k-digit-patterns-file (?k ?len ?pattern-file ?print-completed-pattern)
    (printout t ?pattern-file crlf)
    (open ?pattern-file "patterns-file" "r")
    (bind ?i 0)
    (while (< ?i ?len)
        (bind ?i (+ ?i 1))
        (bind ?pattern-string (readline "patterns-file"))
        (printout t "#" ?i " : " crlf)
        (browse-k-digit-pattern ?k ?pattern-string ?print-completed-pattern)
    )
    (close "patterns-file")
    (printout t crlf crlf)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for marking resolution states with data from a pattern
;;; and for pretty-prining the result.
;;; for 9x9 puzzles only
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Originally introduced for marking impossible patterns,
;;; but can be used more generally for marking a resolution state with two types of symboles: # and @
;;; - # for cells with indices in ?list-of-cell-indices
;;; - @ for cells containing a label in ?list-of-labels

(deffunction row-col-has-guardian (?cell-content ?row ?col ?guardians)
    ;;; here, ?cell-content is in integer form, ?guardians is a list of labels
    (bind ?row-col-has-guardian FALSE)
    ;;; check each digit in ?content:
    (bind ?res ?cell-content)
    (while (> ?res 0)
        (bind ?digit (mod ?res 10))
        (bind ?lab (nrc-to-label ?digit ?row ?col))
        (if (member$ ?lab ?guardians) then (bind ?row-col-has-guardian TRUE))
        (bind ?res (div ?res 10))
    )
    ?row-col-has-guardian
)


(deffunction mark-resolution-state-with-pattern (?RS ?real-cell-indices-in-pattern ?real-guardians)
    (bind ?new-RS (create$))
    (bind ?i 0)
    (while (< ?i 81)
        (bind ?i (+ ?i 1))
        (bind ?row (row-from-cell-index ?i))
        (bind ?col (column-from-cell-index ?i))
        ;;; ?i is the cell-index for (?row ?col)
        (bind ?cell-content (nth$ ?i ?RS)) ; the content of cell ?i = (?row ?col), an integer
        (bind ?row-col-has-guardian (row-col-has-guardian ?cell-content ?row ?col ?real-guardians))

        ;;; if the cell is in the pattern, add symbol #
        (if (member$ ?i ?real-cell-indices-in-pattern) then
            (bind ?cell-content (sym-cat ?cell-content #))
        )
        ;;; if the cell has a guardian, add symbol for guardians
        (if ?row-col-has-guardian then (bind ?cell-content (sym-cat ?cell-content @)))

        (bind ?new-RS (create$ ?new-RS ?cell-content))
    )
    ?new-RS
)


;;; Associated print functions:

(deffunction pretty-print-mark-resolution-state (?RS ?list-of-cell-indices ?list-of-labels)
    (pretty-print-sukaku-list
        (mark-resolution-state-with-pattern ?RS ?list-of-cell-indices ?list-of-labels)
    )
)

(deffunction pretty-print-mark-current-resolution-state (?list-of-cell-indices ?list-of-labels)
    (bind ?RS (compute-current-resolution-state))
    ;;; this gives a list of symbols
    ;;; turn it into a list of integers
    (bind ?RS-int (create$))
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from ?RS and turn it into a string:
            (bind ?cand-str (implode$ (create$ (nth$ ?i ?RS))))
            ;;; transform this string into an integer:
            (bind ?cand-integer 0)
            (loop-for-count (?j 1 (str-length ?cand-str))
                (bind ?nb (nth$ 1 (explode$ (sub-string ?j ?j ?cand-str))))
                ;;; add this candiadte to the list of candidates for this cell
                (bind ?cand-integer (+ (* 10 ?cand-integer) ?nb))
            )
            (bind ?RS-int (create$ ?RS-int ?cand-integer))
        )
    )
    (pretty-print-mark-resolution-state ?RS-int ?list-of-cell-indices ?list-of-labels)
)


;;; abbreviations:
(deffunction mark-RS-with-pattern (?RS ?list-of-cell-indices ?list-of-labels)
    (mark-resolution-state-with-pattern ?RS ?list-of-cell-indices ?list-of-labels)
)
(deffunction pretty-print-mark-RS (?RS ?list-of-cell-indices ?list-of-labels)
    (pretty-print-mark-resolution-state ?RS ?list-of-cell-indices ?list-of-labels)
)
(deffunction pretty-print-mark-current-RS (?list-of-cell-indices ?list-of-labels)
    (pretty-print-mark-current-resolution-state ?list-of-cell-indices ?list-of-labels)
)
