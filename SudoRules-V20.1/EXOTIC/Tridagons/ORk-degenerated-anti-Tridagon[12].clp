
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              SUDORULES / EXOTIC
;;;                              ORk DEGENERATED ANTI-TRIDAGON
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;           January 2006 - September 2022            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ORk DEGENERATED ANTI-TRIDAGON PATTERN
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule activate-degenerated-ORk-degenerated-anti-tridagon[12]
    (declare (salience ?*activate-ork-anti-tridagon[12]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont ORk-degenerated-anti-tridagon[12]))
    )
=>
    (if ?*print-levels* then (printout t "Entering_level_ORk-degenerated-anti-tridagon[12]"))
    (assert (technique ?cont ORk-degenerated-anti-tridagon[12]))
    ;;; In order to allow the ORkXW[n] to be found as the hardest techniques,
    ;;; don't take the ORk-degenerated-anti-tridagon[12] into account:
    ; (bind ?*technique* ORk-degenerated-anti-tridagon[12])
)


(defrule track-degenerated-ORk-anti-tridagon[12]
    (declare (salience ?*activate-ork-anti-tridagon[12]-salience*))
    ?level <- (technique ?cont ORk-degenerated-anti-tridagon[12])
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule ORk-degenerated-anti-tridagon[12]
    (declare (salience ?*ork-anti-tridagon[12]-salience*))
    (technique ?cont ORk-degenerated-anti-tridagon[12])
    
    ;;; not necessary
    ;(blocks-in-same-band ?b11 ?b12&:(< ?b11 ?b12))
    ;(blocks-in-same-stack ?b11 ?b21&:(< ?b12 ?b21))
    ;(blocks-in-same-band ?b21 ?b22&:(< ?b21 ?b22))
    ;(blocks-in-same-stack ?b12 ?b22)
    ;;; the three numbers of the pattern:
    (number ?nb1)
    (number ?nb2&:(< ?nb1 ?nb2))
    (number ?nb3&:(< ?nb2 ?nb3))
    
    ;;; The conditions in each of the 4 blocks ensure that the 3 cells in the block are in different rows and different columns
    ;;; and that each of the 6 rows and eaach of the 6 columns in the pattern has 2 cells of the pattern.
    
    ;;; 1st block, b11:
    ;;; 1) each of the 3 cells has at least two candidates among ?nb1 ?nb2 and ?nb3:
    (candidate (context ?cont) (status cand) (block ?b11)(square ?sq11) (row ?row1) (column ?col1)
        (number ?nb1-11&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11)
        (number ?nb2-11&?nb1|?nb2|?nb3&:(< ?nb1-11 ?nb2-11)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&:(< ?row1 ?row2)) (column ?col2&~?col1)
        (number ?nb1-22&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12)
        (number ?nb2-22&?nb1|?nb2|?nb3&:(< ?nb1-22 ?nb2-22)))
    
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&:(< ?row2 ?row3)) (column ?col3&~?col1&~?col2)
        (number ?nb1-33&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13)
        (number ?nb2-33&?nb1|?nb2|?nb3&:(< ?nb1-33 ?nb2-33)))

    ;;; 2) each number must appear in at least two of the three cells of the block:
    (exists
        (candidate (context ?cont) (status cand) (block ?b11) (number ?nb1) (square ?sq11-1a&?sq11|?sq12|?sq13))
        (candidate (context ?cont) (status cand) (block ?b11) (number ?nb1) (square ?sq11-1b&?sq11|?sq12|?sq13&~?sq11-1a))
    )
    (exists
        (candidate (context ?cont) (status cand) (block ?b11) (number ?nb2) (square ?sq11-2a&?sq11|?sq12|?sq13))
        (candidate (context ?cont) (status cand) (block ?b11) (number ?nb2) (square ?sq11-2b&?sq11|?sq12|?sq13&~?sq11-2a))
    )
    (exists
        (candidate (context ?cont) (status cand) (block ?b11) (number ?nb3) (square ?sq11-3a&?sq11|?sq12|?sq13))
        (candidate (context ?cont) (status cand) (block ?b11) (number ?nb3) (square ?sq11-3b&?sq11|?sq12|?sq13&~?sq11-3a))
    )

     (test (progn (printout t "OK1 block " ?b11 " numbers: " ?nb1 " " ?nb2 " " ?nb3 crlf) TRUE))
    
    
    ;;; 2nd block, b12, in same band as the 1st:
    ;;; 1) each of the 3 cells has at least two candidates among ?nb1 ?nb2 and ?nb3:
    (candidate (context ?cont) (status cand) (block ?b12&:(< ?b11 ?b12)) (square ?sq14) (row ?row1) (column ?col4)
        (number ?nb1-14&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14)
        (number ?nb2-14&?nb1|?nb2|?nb3&:(< ?nb1-14 ?nb2-14)))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq25&~?sq14) (row ?row2) (column ?col5&~?col4)
        (number ?nb1-25&~?nb1-14&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq25)
        (number ?nb2-25&?nb1|?nb2|?nb3&:(< ?nb1-25 ?nb2-25)))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq36&~?sq14&~?sq25) (row ?row3) (column ?col6&~?col4&~?col5)
        (number ?nb1-36&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq36)
        (number ?nb2-36&?nb1|?nb2|?nb3&:(< ?nb1-36 ?nb2-36)))

    ;;; 2) each number must appear in at least two of the three cells of the block:
    (exists
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb1) (square ?sq12-1a&?sq14|?sq25|?sq36))
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb1) (square ?sq12-1b&?sq14|?sq25|?sq36&~?sq12-1a))
    )
    (exists
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb2) (square ?sq12-2a&?sq14|?sq25|?sq36))
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb2) (square ?sq12-2b&?sq14|?sq25|?sq36&~?sq12-2a))
    )
    (exists
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb3) (square ?sq12-3a&?sq14|?sq25|?sq36))
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb3) (square ?sq12-3b&?sq14|?sq25|?sq36&~?sq12-3a))
    )

     (test (progn (printout t "OK2 blocks " ?b11 " " ?b12  " numbers: " ?nb1 " " ?nb2 " " ?nb3 crlf) TRUE))


    ;;; 3rd block, b21, in same stack as the 1st:
    (candidate (context ?cont) (status cand) (block ?b21&:(< ?b12 ?b21)) (square ?sq41) (column ?col1) (row ?row4)
        (number ?nb1-41&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41)
        (number ?nb2-41&?nb1|?nb2|?nb3&:(< ?nb1-41 ?nb2-41)))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq52&~?sq41) (column ?col2) (row ?row5&~?row4)
        (number ?nb1-52&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq52)
        (number ?nb2-52&?nb1|?nb2|?nb3&:(< ?nb1-52 ?nb2-52)))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq63&~?sq41&~?sq52) (column ?col3) (row ?row6&~?row4&~?row5)
        (number ?nb1-63&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq63)
        (number ?nb2-63&?nb1|?nb2|?nb3&:(< ?nb1-63 ?nb2-63)))
    
    ;;; each number must appear in at least two of the 3 cells of the block
    (exists
        (candidate (context ?cont) (status cand) (block ?b21) (number ?nb1) (square ?sq41-1a&?sq41|?sq52|?sq63))
        (candidate (context ?cont) (status cand) (block ?b21) (number ?nb1) (square ?sq41-1b&?sq41|?sq52|?sq63&~?sq41-1a))
    )
    (exists
        (candidate (context ?cont) (status cand) (block ?b21) (number ?nb2) (square ?sq52-2a&?sq41|?sq52|?sq63))
        (candidate (context ?cont) (status cand) (block ?b21) (number ?nb2) (square ?sq52-2b&?sq41|?sq52|?sq63&~?sq52-2a))
    )
    (exists
        (candidate (context ?cont) (status cand) (block ?b21) (number ?nb3) (square ?sq63-3a&?sq41|?sq52|?sq63))
        (candidate (context ?cont) (status cand) (block ?b21) (number ?nb3) (square ?sq63-3b&?sq41|?sq52|?sq63&~?sq63-3a))
    )

     (test (progn (printout t "OK3 blocks " ?b11 " " ?b12 " " ?b21  " numbers: " ?nb1 " " ?nb2 " " ?nb3 crlf) TRUE))

    
    ;;; 4th block, b22, in same band as the 3rd and in same stack as the 2nd:
    ;;; 1) each of the 3 cells has at least two candidates among ?nb1 ?nb2 and ?nb3:
    (candidate (context ?cont) (status cand) (block ?b22&~?b11&~?b12&~?b21) (square ?sq44i) (row ?row4) (column ?col4i)
        (number ?nb1-44i&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i)
        (number ?nb2-44i&?nb1|?nb2|?nb3&:(< ?nb1-44i ?nb2-44i)))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i&~?sq44i) (row ?row5) (column ?col5i)
        (number ?nb1-55i&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i)
        (number ?nb2-55i&?nb1|?nb2|?nb3&:(< ?nb1-55i ?nb2-55i)))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i&~?sq44i&~?sq55i) (row ?row6) (column ?col6i)
        (number ?nb1-66i&?nb1|?nb2|?nb3))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i)
        (number ?nb2-66i&?nb1|?nb2|?nb3&:(< ?nb1-66i ?nb2-66i)))
    
    ;;; 2) each number must appear in at least two of the three cells of the block:
    (exists
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb1) (square ?sq44i-1a&?sq14|?sq25|?sq36))
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb1) (square ?sq44i-1b&~?sq44i-1a&?sq14|?sq25|?sq36))
    )
    (exists
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb2) (square ?sq55i-2a&?sq14|?sq25|?sq36))
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb2) (square ?sq55i-2b&~?sq55i-2a&?sq14|?sq25|?sq36))
    )
    (exists
       (candidate (context ?cont) (status cand) (block ?b12) (number ?nb3) (square ?sq66i-3a&?sq14|?sq25|?sq36))
        (candidate (context ?cont) (status cand) (block ?b12) (number ?nb3) (square ?sq66i-3b&~?sq66i-3a&?sq14|?sq25|?sq36))
    )


     (test (progn (printout t "OK4 blocks " ?b11 " " ?b12 " " ?b21 " " ?b22  " numbers: " ?nb1 " " ?nb2 " " ?nb3 crlf) TRUE))

    ;;; additional structural conditions on the 4th block
    (test (or
            (and (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            (and (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))

=>
    ;;; find the additional candidates ("guardians")
    (bind ?nb-guardians 0)
    (bind ?guardians (create$))
    (do-for-all-facts
        ((?c candidate))
        (and (eq ?c:status cand)
            (neq ?c:number ?nb1)
            (neq ?c:number ?nb2)
            (neq ?c:number ?nb3)
            (or
                (and (eq ?c:row ?row1) (eq ?c:column ?col1))
                (and (eq ?c:row ?row1) (eq ?c:column ?col4))
                (and (eq ?c:row ?row2) (eq ?c:column ?col2))
                (and (eq ?c:row ?row2) (eq ?c:column ?col5))
                (and (eq ?c:row ?row3) (eq ?c:column ?col3))
                (and (eq ?c:row ?row3) (eq ?c:column ?col6))
                (and (eq ?c:row ?row4) (eq ?c:column ?col1))
                (and (eq ?c:row ?row4) (eq ?c:column ?col4i))
                (and (eq ?c:row ?row5) (eq ?c:column ?col2))
                (and (eq ?c:row ?row5) (eq ?c:column ?col5i))
                (and (eq ?c:row ?row6) (eq ?c:column ?col3))
                (and (eq ?c:row ?row6) (eq ?c:column ?col6i))
            )
        )
        (bind ?nb-guardians (+ ?nb-guardians 1))
        (bind ?guardians (create$ ?guardians ?c:label))
    )
    (assert
        (ORk-relation
            (OR-name Trid)
            (OR-complexity 12)
            (context ?cont)
            (OR-size ?nb-guardians)
            (OR-candidates ?guardians)
        )
    )
    (bind ?*has-tridagon* TRUE)
    (bind ?*ORk-size* ?nb-guardians)
    (bind ?*ORk-sizes-list* (create$ ?*ORk-sizes-list* ?nb-guardians))

    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "OR" ?nb-guardians "-degenerated-anti-tridagon[12] for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  ", " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
            "with " ?nb-guardians " guardians: " (print-list-of-labels ?guardians) crlf
        )
    )
)
    



