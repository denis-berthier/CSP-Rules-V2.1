
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              LOOPS[6]
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





;;; DO NOT USE THE AUTOMATIC GENERATOR FOR THIS FILE

(defrule activate-loop[6]
	(declare (salience ?*activate-loop[6]-salience*))
    (logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont loop))
=>
	(if ?*print-levels* then (printout t "entering level Loop"))
	(assert (technique ?cont loop[6]))
    (assert (technique ?cont partial-loop[5]))
	(bind ?*technique* loop[6])
)



(defrule track-loop[6]
	(declare (salience ?*activate-loop[6]-salience*))
	?level <- (technique ?cont loop[6])
=>
	(if ?*print-levels* then (printout t " with " ?level crlf))
)



(defrule partial-loop[5]
	(declare (salience ?*partial-loop[5]-salience*))
    (logical
        (technique ?cont partial-loop[5])

        (candidate (context ?cont) (status c-value) (value 1) (type ?type1&H|V) (label ?lab1) (row ?row1) (column ?col1))
        (candidate (context ?cont) (status c-value) (value 1) (type ?type2&H|V) (label ?lab2&~?lab1) (row ?row2) (column ?col2))
        (test (touching-lines ?row1 ?col1 ?type1 ?row2 ?col2 ?type2))
        
        (candidate (context ?cont) (status c-value) (value 1) (type ?type3&H|V) (label ?lab3&~?lab1&~?lab2) (row ?row3) (column ?col3))
        (test (combinable-lines ?row1 ?col1 ?type1 ?row2 ?col2 ?type2 ?row3 ?col3 ?type3))
        
        (candidate (context ?cont) (status c-value) (value 1) (type ?type4&H|V) (label ?lab4&~?lab1&~?lab2&~?lab3) (row ?row4) (column ?col4))
        (test (combinable-lines ?row2 ?col2 ?type2 ?row3 ?col3 ?type3 ?row4 ?col4 ?type4))
        
        (candidate (context ?cont) (status c-value) (value 1) (type ?type5&H|V) (label ?lab5&~?lab1&~?lab2&~?lab3&~?lab4) (row ?row5) (column ?col5))
        (test (combinable-lines ?row3 ?col3 ?type3 ?row4 ?col4 ?type4 ?row5 ?col5 ?type5))
    )
=>
    (bind ?nb-conts
        (+
            (nb-contacts ?type1 ?row1 ?col1)
            (nb-contacts ?type2 ?row2 ?col2)
            (nb-contacts ?type3 ?row3 ?col3)
            (nb-contacts ?type4 ?row4 ?col4)
            (nb-contacts ?type5 ?row5 ?col5)
        )
    )
    (assert
        (partial-loop
            (context ?cont)
            (length 5)
            (nb-cont ?nb-conts)
            (labs (create$ ?lab1 ?lab2 ?lab3 ?lab4 ?lab5))
            (rows (create$ ?row1 ?row2 ?row3 ?row4 ?row5))
            (columns (create$ ?col1 ?col2 ?col3 ?col4 ?col5))
            (types (create$ ?type1 ?type2 ?type3 ?type4 ?type5))
        )
    )
)



;;; loop elimination or solution rule

(defrule loop-elimination-or-solution[6]
    (declare (salience ?*loop[6]-salience*))
    (partial-loop
        (context ?cont)
        (length 5)
        (nb-cont ?nb-cont)
        (labs ?lab1 $?middle-labs ?labp ?labq)
        (rows ?row1 $?middle-rows ?rowp ?rowq)
        (columns ?col1 $?middle-cols ?colp ?colq)
        (types ?type1 $?middle-types ?typep ?typeq)
    )

    ;;; closing-line
    ?cand <- (candidate (context ?cont) (status cand) (value 1) (type ?typey&H|V) (row ?rowy) (column ?coly)
        (label ?laby&~?lab1&~?labp&~?labq&:(not (member$ ?laby $?middle-labs)))
    )
    (test (and
        (combinable-lines ?rowp ?colp ?typep ?rowq ?colq ?typeq ?rowy ?coly ?typey)
        (combinable-lines ?rowq ?colq ?typeq ?rowy ?coly ?typey ?row1 ?col1 ?type1)
    ))
    ?cand2 <- (candidate (context ?cont) (status cand) (value 0) (type ?typey&H|V) (row ?rowy) (column ?coly))
=>
    (bind ?*QL-max* (max 6 ?*QL-max*))
    (if (< (+ ?nb-cont (nb-contacts ?typey ?rowy ?coly)) ?*sum-of-givens*)
        then ; value 1 would make a too short loop; it must be deleted
            (retract ?cand)
            (modify ?cand2 (status c-value))
            (print-loop 6 ?row1 ?col1 ?type1 $?middle-rows $?middle-cols $?middle-types ?rowp ?colp ?typep ?rowq ?colq ?typeq ?rowy ?coly ?typey 0)
        else ; loop length is ok for solution; value 0 must be retracted to allow closing the loop
            (retract ?cand2)
            (modify ?cand (status c-value))
            (print-loop 6 ?row1 ?col1 ?type1 $?middle-rows $?middle-cols $?middle-types ?rowp ?colp ?labq ?rowq ?colq ?typeq ?rowy ?coly ?typey 1)
    )
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
)

