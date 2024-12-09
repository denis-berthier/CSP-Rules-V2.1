
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              SUDORULES / EXOTIC
;;;                              ELEVEN REPLACEMENT IN DCT-LIKE BLOCK
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





(defrule activate-eleven-replacement-in-dct-block
    (declare (salience ?*activate-eleven-replacement-in-dct-block-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont eleven-replacement-in-dct-block))
    )
=>
    (if ?*print-levels* then (printout t "Entering_level_eleven-replact-for-gen-dct"))
    (assert (technique ?cont eleven-replacement-in-dct-block))
    ; (bind ?*technique* eleven-replacement-in-dct-block)
)


(defrule track-eleven-replacement-in-dct-block
    (declare (salience ?*activate-eleven-replacement-in-dct-block-salience*))
    ?level <- (technique ?cont eleven-replacement-in-dct-block)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)


(defrule eleven-replacement-in-dct-block
    (declare (salience ?*eleven-replacement-in-dct-block-salience*))
    (technique ?cont eleven-replacement-in-dct-block)
    
    (number ?nb1)
    (number ?nb2&:(< ?nb1 ?nb2))
    (number ?nb3&:(< ?nb2 ?nb3))
    
    ;;; the conditions ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11, has at most the 3 candidates in its three cells, in a cyclic pattern:
    (number ?nb1a&:(or (eq ?nb1a ?nb1) (eq ?nb1a ?nb2) (eq ?nb1a ?nb3)))
    (number ?nb2a&~?nb1a&:(or (eq ?nb2a ?nb1) (eq ?nb2a ?nb2) (eq ?nb2a ?nb3)))
    (number ?nb3a&~?nb1a&~?nb2a&:(or (eq ?nb3a ?nb1) (eq ?nb3a ?nb2) (eq ?nb3a ?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1a))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2a))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    (test (progn (printout t "OK1" crlf) TRUE))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&:(< ?row1 ?row2)) (column ?col2&~?col1) (number ?nb2a))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3a))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    (test (progn (printout t "OK2" crlf) TRUE))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&:(< ?row2 ?row3)) (column ?col3&~?col1&~?col2) (number ?nb3a))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb1a))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    (test (progn (printout t "OK3" crlf) TRUE))

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
