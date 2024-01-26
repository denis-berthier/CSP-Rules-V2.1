
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              COMPUTE EXPANSIONS OF PUZZLES BY ANY EXPANSION TECHNIQUE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2023              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; To use with only BRT loaded in  order to get min-expands
;;; To use with only DFS loaded in  order to get full solutions
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction compute-partial-solution-string-in-context (?cont)
    ;;; when this function is called, a partial solution is supposed to have been reached in context ?cont
    (if (> ?*segment-size* 5) then
        (printout t "compute-partial-solution-string-in-context works only for grid size ≤ 25" crlf)
        (return FALSE)
    )
    (bind ?sol-str "")
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?rc-content "")
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb) (eq ?cand:status c-value))
                    ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
                    (bind ?nb2 ?nb)
                    ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?nb2 (transform-nb-to-hexa ?nb)))
                    (if (eq ?*grid-size* 25) then (bind ?nb2 (transform-nb-to-25letters ?nb)))
                    (bind ?rc-content (str-cat ?rc-content ?nb2)) ; this should apply at most once for each (row, col)
                )
                (if (= ?nb ?*grid-size*) then
                    (if (eq ?rc-content "") then (bind ?rc-content "."))
                    (bind ?sol-str (str-cat ?sol-str ?rc-content))
                )
            )
        )
    )
    ?sol-str
)


(deffunction compute-partial-solution-string ()
    ;;; when this function is called,
    ;;; either DFS is used and a solution has been stored in variables ?*solution-string*,
    ;;; or DFS is not used and only a partial solution is reached in context 0.
    (if ?*DFS*
        then ?*solution-string* ; at this point, this has been computed by DFS
        else (compute-partial-solution-string-in-context 0)
    )
)


(deffunction record-expansions-n-grids-after-first-p-from-text-file (?puzzles-file ?p ?n ?expansions-file)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (init-lists-for-files)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (close)
    (open ?puzzles-file "puzles-file-symb" "r")
    (open ?expansions-file "expansions-file-symb" "w")
    (bind ?i 1)
    (while (< ?i (+ ?p 1)) (readline "puzles-file-symb") (bind ?i (+ ?i 1)))

    (bind ?i (+ ?p 1))
    (while (<= ?i (+ ?p ?n))
        (printout t "Expanding puzzle #" ?i crlf)
        (solve-grid-from-text-file "puzles-file-symb" ?i)
        (printout "expansions-file-symb" (compute-partial-solution-string) crlf)
        
        (bind ?*all-ORk-relations-used-in-list* (create$ ?*all-ORk-relations-used-in-list* ?*ORk-relations-used*))
        (if ?*solution-found* then
            (bind ?*all-ORk-relations-used-in-solved-list* (create$ ?*all-ORk-relations-used-in-solved-list* ?*ORk-relations-used*))
        )
        (printout t "#" ?i " " ?*technique* " " ?*total-instance-time* " " ?*nb-facts* crlf crlf)
        (if (neq (length$ ?*ORk-relations-used*) 0) then
            (printout t "#" ?i " ORk relations used in this puzzle: " ?*ORk-relations-used* crlf)
            (if (not (member$ Trid ?*ORk-relations-used*)) then (printout t "#" ?i " No Tridagon used" crlf))
        )
        (printout t crlf crlf)
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with potential memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "puzles-file-symb")
    (close "expansions-file-symb")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)

