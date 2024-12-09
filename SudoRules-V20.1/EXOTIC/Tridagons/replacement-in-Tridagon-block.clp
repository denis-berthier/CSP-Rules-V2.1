
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              SUDORULES / EXOTIC
;;;                              ELEVEN REPLACEMENT IN TRIDAGON-LIKE BLOck
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - April 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(deffunction modify-RS-by-eleven-replacement (?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 $?sukaku-list)
    ;;; This function works but is unsafe (in case non-structural templates would be added)
    (do-for-all-facts ((?f candidate)) TRUE (retract ?f))
    (do-for-all-facts ((?f g-candidate)) TRUE (retract ?f))
    (do-for-all-facts ((?f chain)) TRUE (retract ?f))
    (do-for-all-facts ((?f typed-chain)) TRUE (retract ?f))
    (do-for-all-facts ((?f csp-chain)) TRUE (retract ?f))
    (do-for-all-facts ((?f chain2r)) TRUE (retract ?f))
    (do-for-all-facts ((?f ORk-relation)) TRUE (retract ?f))
    (do-for-all-facts ((?f ORk-chain)) TRUE (retract ?f))
    (do-for-all-facts ((?f contrad-chain)) TRUE (retract ?f))
    (bind ?new-RS
        (fix-3-digits-in-3-rc-cells-of-sukaku-list
            ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3
            (replace-3-digits-in-sukaku-list ?nb1 ?nb2 ?nb3 ?sukaku-list)
        )
    )
    (bind ?*nb-csp-variables-solved* 0)
    (bind ?*nb-candidates* 0)
    ;;; For every cell,
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?blk (block ?row ?col))
            (bind ?sq (square ?row ?col))
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from the entries and turn it into a string:
            (bind ?cand-str (implode$ (create$ (nth$ ?i ?new-RS))))
            ;;; transform this string into a list of candidates:
            (bind ?cand-list (create$))
            (loop-for-count (?j 1 (str-length ?cand-str))
                (bind ?nb (nth$ 1 (explode$ (sub-string ?j ?j ?cand-str))))
                ;;; add these two lines for 16x16 or 25x25 puzzles given in hexadecimal notation
                (if (eq ?*grid-size* 16) then (bind ?nb (transform-hexa-to-nb ?nb)))
                (if (eq ?*grid-size* 25) then (bind ?nb (transform-25letters-to-nb ?nb)))
                ;(if (not (numberp ?nb)) then (printout t "Error in data for cell " ?row " " ?col crlf) (halt))
                ;;; add this candiadte to the list of candidates for this cell
                (bind ?cand-list (create$ ?cand-list ?nb))
            )
            ;;; use this list for asserting c-values and candidates
            (if (eq (length$ ?cand-list) 1)
                then ; there is a single candidate for this cell; assert it as a c-value
                    (bind ?nb (nth$ 1 ?cand-list))
                    (bind ?xxx (nrc-to-label ?nb ?row ?col))
                    (assert (candidate
                                (context 0) (status c-value)
                                (label ?xxx) (number ?nb) (row ?row) (column ?col) (block ?blk) (square ?sq)
                                (band (band ?row)) (stack (stack ?col))
                    ))
                    (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
                    (if (or ?*print-all-details* ?*print-init-details*) then
                        (printout t "Asserting entry: " (row-name ?row)(column-name ?col) ?*equal-sign* ?nb crlf)
                    )
                    else ; assert each element as a candidate for this cell
                    (foreach ?nb ?cand-list
                        (bind ?xxx (nrc-to-label ?nb ?row ?col))
                        (assert (candidate
                                    (context 0) (status cand)
                                    (label ?xxx) (number ?nb) (row ?row) (column ?col) (block ?blk) (square ?sq)
                                    (band (band ?row)) (stack (stack ?col))
                        ))
                        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                        (if (or ?*print-all-details* ?*print-init-details*) then
                            (printout t "Asserting candidate " ?nb " for " (row-name ?row)(column-name ?col) crlf)
                        )
                    )
            )
        )
    )
    ?new-RS
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; TRIDAGON LINKS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule activate-eleven-replacement-in-tridagon-block
    (declare (salience ?*activate-eleven-replacement-in-tridagon-block-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont eleven-replacement-in-tridagon-block))
    )
=>
    (if ?*print-levels* then (printout t "Entering_level_eleven-replact-for-gen-trid"))
    (assert (technique ?cont eleven-replacement-in-tridagon-block))
    ; (bind ?*technique* eleven-replacement-in-tridagon-block)
)


(defrule track-eleven-replacement-in-tridagon-block
    (declare (salience ?*activate-eleven-replacement-in-tridagon-block-salience*))
    ?level <- (technique ?cont eleven-replacement-in-tridagon-block)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)


(defrule eleven-replacement-in-tridagon-block
    (declare (salience ?*eleven-replacement-in-tridagon-block-salience*))
    (technique ?cont eleven-replacement-in-tridagon-block)
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11, has only 3 candidates in its three cells:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band as the first, may have more candidates:
    (candidate (context ?cont) (status cand) (block ?b12&~?b11) (square ?sq14) (row ?row1) (column ?col4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15&~?sq14) (row ?row2) (column ?col5&~?col4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq16&~?sq14&~?sq15) (row ?row3) (column ?col6&~?col4&~?col5) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq16) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq16) (number ?nb3))

    ; (test (progn (printout t "block " ?b12 " OK" crlf) TRUE))

    ;;; 3rd block, b21, in same stack as the 1st, may have more candidates
    (candidate (context ?cont) (status cand) (block ?b21&~?b11) (square ?sq41) (column ?col1) (row ?row4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51&~?sq41) (column ?col2) (row ?row5&~?row4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61&~?sq41&~?sq51) (column ?col3) (row ?row6&~?row4&~?row5) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nb3))
    
    ; (test (progn (printout t "block " ?b21 " OK" crlf) TRUE))

    ;;; 4th block, b22, in same band as the 3rd and in same stack as the 2nd, may have more candidates:
    (candidate (context ?cont) (status cand) (block ?b22&~?b11&~?b12&~?b21) (square ?sq44i) (row ?row4) (column ?col4i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i&~?sq44i) (row ?row5) (column ?col5i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i&~?sq44i&~?sq55i) (row ?row6) (column ?col6i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nb3))

    ; (test (progn (printout t "block " ?b22 " OK" crlf) TRUE))

    ;;; additional structural conditions on the 4th block
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))
    ;(test (or (eq ?col4i ?col4) (eq ?col5i ?col5) (eq ?col6i ?col6)))
    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))

=>
    (bind ?RS (compute-current-resolution-state))
    (printout t crlf)
    (pretty-print-sukaku-list ?RS)
    (printout t "***** STARTING ELEVEN''S REPLACEMENT TECHNIQUE *****" crlf)
    (printout t "RELEVANT DIGIT REPLACEMENTS WILL BE NECESSARY AT THE END, based on the original givens." crlf)
    (solve-sukaku-list-by-eleven-replacement ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?RS)
)


(defrule eleven-replacement-in-tridagon-block
=>
)


(defrule eleven-replacement-in-tridagon-block
    (declare (salience ?*eleven-replacement-in-tridagon-block-salience*))
    (technique ?cont eleven-replacement-in-tridagon-block)
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11, has only 3 candidates in its three cells:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ;(not (eleven-tried-block ?cont ?b11))
    (test (not (member$ ?b11 ?*eleven-tried-blocks*)))
=>
    (bind ?RS (compute-current-resolution-state))
    (printout t crlf)
    (pretty-print-sukaku-list ?RS)
    (printout t "***** STARTING ELEVEN_S REPLACEMENT TECHNIQUE *****" crlf)
    (printout t "RELEVANT DIGIT REPLACEMENTS WILL BE NECESSARY AT THE END, based on the original givens." crlf)
    (printout t "Trying in block " ?b11 crlf)
    ;;; It is safer to have a global variable "eleven-tried-blocks" and to use "solve-sukaku-list-by-eleven-replacement"
    ;(bind ?RS (modify-RS-by-eleven-replacement ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?RS))
    ;(pretty-print-RS)
    ;(run)
    ;(assert (eleven-tried-block ?cont ?b11))
    (bind ?*eleven-tried-blocks* (create$ ?*eleven-tried-blocks* ?b11))
    (solve-sukaku-list-by-eleven-replacement ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?RS)
)
