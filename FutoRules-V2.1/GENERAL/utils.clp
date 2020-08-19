
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              UTILS
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





;;; NOT LOADED BY FUTORULES
;;; if needed, load manually
;;; transform a solved puzzle into a full ineq puzzle


(deffunction solution-line-to-line-ineqs (?n $?line-data)
    (bind ?line-ineqs "")
    (bind ?i 0)
    (bind ?j 1)
    (bind ?valj (nth$ ?j $?line-data))
    (while (< ?i (- ?n 1))
        (bind ?i ?j)
        (bind ?j (+ ?i 1))
        (bind ?vali ?valj)
        (bind ?valj (nth$ ?j $?line-data))
        ; (printout t ?i " " ?j " " ?vali " " ?valj crlf)
        (if (< ?vali ?valj) then (bind ?line-ineqs (str-cat ?line-ineqs "<"))
            else (if (> ?vali ?valj) then (bind ?line-ineqs (str-cat ?line-ineqs ">"))
                    else (bind ?line-ineqs (str-cat ?line-ineqs "-"))
                )
        )
    )
    ?line-ineqs
)


(deffunction solution-to-solution-row (?n ?row $?solution)
    (subseq$ $?solution (+ 1 (* ?n (- ?row 1))) (* ?n ?row))
)


(deffunction solution-to-solution-column (?n ?col $?solution)
    (bind ?solution-column (create$))
    (bind ?row 1)
    (while (<= ?row ?n)
        (bind ?k (+ ?col (* ?n (- ?row 1))))
        (bind ?solution-column (create$ ?solution-column (nth$ ?k $?solution)))
        (bind ?row (+ ?row 1))
    )
    ?solution-column
)


(deffunction solution-to-horiz-ineqs (?n $?solution)
    (bind ?horiz-ineqs "")
    (bind ?row 1)
    (while (<= ?row ?n)
        (bind ?solution-row (solution-to-solution-row ?n ?row $?solution))
        (bind ?row-ineqs (solution-line-to-line-ineqs ?n ?solution-row))
        (bind ?horiz-ineqs (str-cat ?horiz-ineqs ?row-ineqs))
        (bind ?row (+ ?row 1))
    )
    ?horiz-ineqs
)


(deffunction solution-to-verti-ineqs (?n $?solution)
    (bind ?verti-ineqs "")
    (bind ?col 1)
    (while (<= ?col ?n)
        (bind ?solution-column (solution-to-solution-column ?n ?col $?solution))
        (bind ?column-ineqs (solution-line-to-line-ineqs ?n ?solution-column))
        (bind ?verti-ineqs (str-cat ?verti-ineqs ?column-ineqs))
        (bind ?col (+ ?col 1))
    )
    ?verti-ineqs
)




(deffunction solution-to-ineqs (?n $?solution)
    (create$ (solution-to-horiz-ineqs ?n $?solution) (solution-to-horiz-ineqs ?n $?solution))
)



(deffunction solve-Jim (?n $?solution)
    (bind ?givens "")
    (bind ?i 1)
    (while (<= ?i (* ?n ?n))
        (bind ?givens (str-cat ?givens "."))
        (bind ?i (+ ?i 1))
    )
    (solve ?n ?givens (solution-to-horiz-ineqs ?n $?solution) (solution-to-verti-ineqs ?n $?solution))
)




;;; solve-tatham after replacing manually all commas by spaces

(deffunction solve-Tatham-list (?k ?list)
)


