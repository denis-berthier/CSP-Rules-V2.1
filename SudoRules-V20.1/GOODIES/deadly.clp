
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


(deffunction put-deadly-pattern-in-minlex-form ($?pattern-list)
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
    (put-deadly-pattern-in-minlex-form ?sym-pat-list)
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
