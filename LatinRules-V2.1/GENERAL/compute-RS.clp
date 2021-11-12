
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              COMPUTE RESOLUTION STATE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - December 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; COMPUTE CURRENT RESOLUTION STATE AS A LIST OR PRINT IT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-n-spaces (?n)
    (loop-for-count ?n (printout t " "))
)


(deffunction compute-current-resolution-state-in-context (?cont)
    (if (> ?*grid-size* 25) then (printout t "Currently, this function works only for grid size ≤ 25" crlf) (return FALSE))
    (bind ?current-rs (create$))
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?rc-content "")
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    ;;; add these lines for puzzles on larger grids
                    (bind ?nb2 ?nb)
                    (if (> ?*grid-size* 9) then (bind ?nb2 (transform-nb-to-letter ?nb)))
                   (bind ?rc-content (sym-cat ?rc-content ?nb2))
                )
                (if (= ?nb ?*grid-size*) then (bind ?current-rs (create$ ?current-rs ?rc-content)))
            )
        )
    )
    ?current-rs
)


(deffunction print-current-resolution-state-in-context (?cont)
    (if (> ?*grid-size* 25) then (printout t "Currently, this function works only for grid size ≤ 25" crlf) (return FALSE))
    (foreach ?row ?*rows*
        (printout t "   ")
        (foreach ?col ?*columns*
            (bind ?nb-cands 0)
            (bind ?spaces (+ ?*grid-size* 1))
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?nb2 ?nb)
                    (bind ?nb-cands (+ ?nb-cands 1))
                    (bind ?spaces (- ?spaces 1))
                    ;;; add this line for puzzles on larger grids
                    (if (> ?*grid-size* 9) then (bind ?nb2 (transform-nb-to-letter ?nb)))
                    (printout t ?nb2)
                )
                (if (= ?nb ?*grid-size*) then (print-n-spaces ?spaces))
            )
            (if (= ?col ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)


(deffunction print-current-resolution-state ()
    (print-current-resolution-state-in-context 0)
)


(deffunction print-current-resolution-state-in-context-rn-view (?cont)
    (if (> ?*grid-size* 25) then (printout t "Currently, this function works only for grid size ≤ 25" crlf) (return FALSE))
    (printout t
        "rn-view:" crlf
        "Physical rows are rows, physical columns are digits. Data are columns." crlf
    )
    (foreach ?row ?*rows*
        (printout t "   ")
        (foreach ?nb ?*numbers*
            (bind ?nb-cands 0)
            (bind ?spaces (+ ?*grid-size* 1))
            (foreach ?col ?*columns*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?col2 ?col)
                    (bind ?nb-cands (+ ?nb-cands 1))
                    (bind ?spaces (- ?spaces 1))
                    ;;; add this line for puzzles on larger grids
                    (if (> ?*grid-size* 9) then (bind ?nb2 (transform-nb-to-letter ?nb)))
                    (printout t ?col2)
                )
                (if (= ?col ?*grid-size*) then (print-n-spaces ?spaces))
            )
            (if (= ?nb ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)


(deffunction print-current-resolution-state-rn-view ()
    (print-current-resolution-state-in-context-rn-view 0)
)


(deffunction print-current-resolution-state-in-context-cn-view (?cont)
    (if (> ?*grid-size* 25) then (printout t "Currently, this function works only for grid size ≤ 25" crlf) (return FALSE))
    (printout t
        "cn-view:" crlf
        "Physical rows are columns, physical columns are digits. Data are rows." crlf
    )
    (foreach ?col ?*columns*
        (printout t "   ")
        (foreach ?nb ?*numbers*
            (bind ?nb-cands 0)
            (bind ?spaces (+ ?*grid-size* 1))
            (foreach ?row ?*rows*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?row2 ?row)
                    (bind ?nb-cands (+ ?nb-cands 1))
                    (bind ?spaces (- ?spaces 1))
                    ;;; add this line for puzzles on larger grids
                    (if (> ?*grid-size* 9) then (bind ?nb2 (transform-nb-to-letter ?nb)))
                    (printout t ?row2)
                )
                (if (= ?row ?*grid-size*) then (print-n-spaces ?spaces))
            )
            (if (= ?nb ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)


(deffunction print-current-resolution-state-cn-view ()
    (print-current-resolution-state-in-context-cn-view 0)
)


(deffunction print-current-resolution-state-all-views ()
    (printout t
        "standard rc-view:" crlf
        "Physical rows are rows, physical columns are columns. Data are digits." crlf
    )
    (print-current-resolution-state)
    (printout t "The following representations may be used e.g. to more easily spot" crlf
        "rn-, cn- or bn- bivalue pairs (also named bilocal pairs), mono-typed-chains," crlf
        "hidden subsets and fishes (which will appear as naked subsets in the proper space)." crlf crlf)
    (print-current-resolution-state-rn-view)
    (print-current-resolution-state-cn-view)
)


;;; abbrevations
(deffunction print-RS () (print-current-resolution-state))
(deffunction print-RS-rc () (print-current-resolution-state))
(deffunction print-RS-rn () (print-current-resolution-state-rn-view))
(deffunction print-RS-cn () (print-current-resolution-state-cn-view))
(deffunction print-RS-all () (print-current-resolution-state-all-views))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRINT SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Printing of the solution is managed by the generic rules,
;;; using the application-specific printing function:

(deffunction print-solution-in-context (?cont)
    ;;; a unique solution is supposed to have been found in context ?cont
    (if (> ?*grid-size* 25) then
        (printout t "print-current-resolution-state works only for grid size ≤ 25" crlf)
        (return FALSE)
    )
    (foreach ?row ?*rows*
        (printout t "   ")
        (foreach ?col ?*columns*
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (eq ?cand:status c-value) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?nb2 ?nb)
                    ;;; add this line for puzzles on larger grids
                    (if (> ?*grid-size* 9) then (bind ?nb2 (transform-nb-to-letter ?nb)))
                    (printout t ?nb2)
                )
            )
            (if (= ?col ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)

(deffunction print-solution ()
    (print-solution-in-context 0)
)


