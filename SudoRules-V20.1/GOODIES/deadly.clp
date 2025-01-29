
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              DEADLY PATTERNS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - January 2025             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Utilities for deadly patterns
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction deadly-pattern-short-name (?c ?k ?n)
    (sym-cat "DP" ?c "-" ?k "-" ?n)
)

(deffunction pretty-print-deadly-pattern (?c ?n)
    ;;; supposes ?n is not larger than the number of DPs in ?c cells
    (if (or (< ?c 4) (eq ?c 5) (eq ?c 7) (> ?c 12))
        then (printout t "SudoRules has no deadly pattern on " ?c " cells." crlf) (return FALSE)
        else
        (bind ?file
            (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol*
                    "Deadly-Patterns" ?*Directory-symbol* "DP" ?c ".txt")
        )
        (open ?file "file" "r")
        (loop-for-count (- ?n 1) (readline "file"))
        (bind ?pattern-string (readline "file"))
        (close "file")
        (bind ?pattern-list (subseq$ (explode$ ?pattern-string) 1 81))
        (printout t ?pattern-list crlf)
        (pretty-print-sukaku-list ?pattern-list)
    )
)



(deffunction explode-RS-entry-9x9 (?entry)
    ;;; When the candidates for a cell are given as e.g. 1236 transform this to a list (1 2 3 6)
    ;;; This is restricted to at most 9 candidates
    (bind ?entry-list (create$ ?entry))
    (if (> ?entry 9) then (bind ?entry-list (create$ (div (mod ?entry 100) 10) (mod ?entry 10))))
    (if (> ?entry 99) then (bind ?entry-list (create$ (div (mod ?entry 1000) 100) ?entry-list)))
    (if (> ?entry 999) then (bind ?entry-list (create$ (div (mod ?entry 10000) 1000) ?entry-list)))
    (if (> ?entry 9999) then (bind ?entry-list (create$ (div (mod ?entry 100000) 10000) ?entry-list)))
    (if (> ?entry 99999) then (bind ?entry-list (create$ (div (mod ?entry 1000000) 100000) ?entry-list)))
    (if (> ?entry 999999) then (bind ?entry-list (create$ (div (mod ?entry 10000000) 1000000) ?entry-list)))
    (if (> ?entry 9999999) then (bind ?entry-list (create$ (div (mod ?entry 100000000) 10000000) ?entry-list)))
    (if (> ?entry 99999999) then (bind ?entry-list (create$ (div (mod ?entry 1000000000) 100000000) ?entry-list)))
    ?entry-list
)

(deffunction implode-RS-entry-list-9x9 ($?entry)
    (bind ?x 0)
    (foreach ?y ?entry
        (bind ?x (+ (* 10 ?x) ?y))
    )
    ?x
)



(deffunction find-digit-order-of-deadly-pattern ($?pattern-list)
    (bind ?new-pattern-list (create$))
    (foreach ?x ?pattern-list
        (if (and (neq ?x .) (neq ?x 0))
            then (bind ?new-pattern-list (create$ ?new-pattern-list (explode-RS-entry-9x9  ?x)))
        )
    )
    (bind ?digit-order (create$))
    (foreach ?x ?new-pattern-list
        (if (not (member$ ?x ?digit-order)) then (bind ?digit-order (create$ ?digit-order ?x)))
    )
    ?digit-order
)


(deffunction put-deadly-pattern-in-digit-minlex-form ($?pattern-list)
    (bind ?digit-order (find-digit-order-of-deadly-pattern ?pattern-list))
    (bind ?minlex-pattern (create$))
    (foreach ?x ?pattern-list
        (if (or (eq ?x .) (eq ?x 0))
            then (bind ?minlex-pattern (create$ ?minlex-pattern ?x))
            else
            (bind ?x-list (explode-RS-entry-9x9 ?x))
            (bind ?new-x-list (create$))
            (foreach ?y ?x-list
                (bind ?new-x-list (create$ ?new-x-list (member$ ?y ?digit-order)))
            )
            (bind ?minlex-pattern (create$ ?minlex-pattern (implode-RS-entry-list-9x9 ?new-x-list)))
        )
    )
    ?minlex-pattern
)



(deffunction deadly-pattern-diagonal-symmetry-list ($?pattern-list)
    (bind ?pattern-list (subseq$ ?pattern-list 1 81))
    (bind ?sym-pat-list (create$))
    (foreach ?col ?*columns*
        (foreach ?row ?*rows*
            (bind ?cll (cell-index ?row ?col))
            (bind ?sym-pat-list (create$ ?sym-pat-list (nth$ ?cll ?pattern-list)))
        )
    )
    ?sym-pat-list
)



(deffunction pretty-print-diag-sym-of-deadly-pattern (?c ?n)
    (if (or (< ?c 4) (eq ?c 5) (eq ?c 7) (> ?c 12))
        then (printout t "SudoRules has no deadly pattern on " ?c " cells." crlf) (return FALSE)
        else
        (bind ?file
            (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol*
                    "Deadly-Patterns" ?*Directory-symbol* "DP" ?c ".txt")
        )
        (open ?file "file" "r")
        (loop-for-count (- ?n 1) (readline "file"))
        (bind ?pattern-string (readline "file"))
        (close "file")
        (bind ?pattern-list (deadly-pattern-diagonal-symmetry-list (subseq$ (explode$ ?pattern-string) 1 81)))
        (printout t ?pattern-list crlf)
        (pretty-print-sukaku-list ?pattern-list)
    )
)



(deffunction pretty-print-digit-minlex-diag-sym-of-deadly-pattern (?c ?n)
    (if (or (< ?c 4) (eq ?c 5) (eq ?c 7) (> ?c 12))
        then (printout t "SudoRules has no deadly pattern on " ?c " cells." crlf) (return FALSE)
        else
        (bind ?file
            (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol*
                    "Deadly-Patterns" ?*Directory-symbol* "DP" ?c ".txt")
        )
        (open ?file "file" "r")
        (loop-for-count (- ?n 1) (readline "file"))
        (bind ?pattern-string (readline "file"))
        (close "file")
        (bind ?pattern-list (deadly-pattern-diagonal-symmetry-list (subseq$ (explode$ ?pattern-string) 1 81)))
        (bind ?pattern-list (put-deadly-pattern-in-digit-minlex-form ?pattern-list))
        (printout t ?pattern-list crlf)
        (pretty-print-sukaku-list ?pattern-list)
    )
)


(deffunction same-deadly-patterns (?DP1 ?DP2)
    (bind ?result TRUE)
    (loop-for-count (?i 1 81)
        (if (neq (nth$ ?i ?DP1) (nth$ ?i ?DP2)) then (bind ?result FALSE) (return ?result))
    )
    ?result
)



(deffunction auto-symmetric-deadly-pattern (?c ?n)
    (if (or (< ?c 4) (eq ?c 5) (eq ?c 7) (> ?c 12))
        then (printout t "SudoRules has no deadly pattern on " ?c " cells." crlf) (return FALSE)
        else
        (bind ?file
            (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol*
                    "Deadly-Patterns" ?*Directory-symbol* "DP" ?c ".txt")
        )
        (open ?file "file" "r")
        (loop-for-count (- ?n 1) (readline "file"))
        (bind ?pattern-string (readline "file"))
        (close "file")
        (bind ?pattern-list (subseq$ (explode$ ?pattern-string) 1 81))
        (bind ?minlex-sym-pat-list
            (put-deadly-pattern-in-digit-minlex-form
                (deadly-pattern-diagonal-symmetry-list ?pattern-list)
            )
        )
        (same-deadly-patterns ?pattern-list ?minlex-sym-pat-list)
    )
)


(deffunction list-of-auto-symmetric-deadly-patterns ()
    (bind ?list (create$))
    ;;; the only 4c is not auto-symmetric
    ;;; 6c
    (loop-for-count (?n 1 4)
        (if (auto-symmetric-deadly-pattern 6 ?n)
            then (bind ?list (create$ ?list (str-cat "6-" ?n)))
        )
    )
    ;;; no 7c
    ;;; 8c
    (loop-for-count (?n 1 9)
        (if (auto-symmetric-deadly-pattern 8 ?n)
            then (bind ?list (create$ ?list (str-cat "8-" ?n)))
        )
    )
    ;;; 9c
    (loop-for-count (?n 1 3)
        (if (auto-symmetric-deadly-pattern 9 ?n)
            then (bind ?list (create$ ?list (str-cat "9-" ?n)))
        )
    )
    ;;; 10c
    (loop-for-count (?n 1 43)
        (if (auto-symmetric-deadly-pattern 10 ?n)
            then (bind ?list (create$ ?list (str-cat "10-" ?n)))
        )
    )
    ;;; 11c
    (loop-for-count (?n 1 32)
        (if (auto-symmetric-deadly-pattern 11 ?n)
            then (bind ?list (create$ ?list (str-cat "11-" ?n)))
        )
    )
    ;;; 12c
    (loop-for-count (?n 1 316)
        (if (auto-symmetric-deadly-pattern 12 ?n)
            then (bind ?list (create$ ?list (str-cat "12-" ?n)))
        )
    )
    ?list
)

;;; test
;;; (list-of-auto-symmetric-deadly-patterns)
;;; ("6-4" "8-9" "9-3" "10-17" "10-37" "10-38" "10-41" "12-185" "12-207" "12-308" "12-312")

