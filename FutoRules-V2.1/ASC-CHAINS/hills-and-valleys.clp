
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              HILLS AND VALLEYS
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





(deftemplate maximal-ascending-chain-in-a-line
    (slot length (type INTEGER))
    (multislot cells)
    (slot line-type (type SYMBOL)) ; row or col
)



(deftemplate maximal-descending-chain-in-a-line
    (slot length (type INTEGER))
    (multislot cells)
    (slot line-type (type SYMBOL)) ; row or col
)


(deftemplate extremum
    (slot length (type INTEGER))
    (multislot asc)
    (multislot desc)
    (slot extremum-type) ; hill or valley
    (slot top-or-bottom) ; rc-cell
    ;;; the next slot is used to keep track of the "productivity" of the extremum
    (slot elim (type SYMBOL) (default no-elim)) ; values elim or no-elim
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; linear ascending and descending chains
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Note: relations "less-than" between two cells in a row or a column are asserted during the initialisation phase
;;; (in file "solve.clp")


(defrule first-step-ascending-chain-in-a-line
	(declare (salience ?*ascending-chain-in-a-line-salience*))
	(technique ?cont&0 BRT)
	(less-than ?cell1 ?cell2&:(< ?cell1 ?cell2) ?line-type)
	(not (less-than ? ?cell1 ?line-type))
=>
	(assert (ascending-chain-in-a-line 1 ?cell1 ?cell2 ?line-type))
)


(defrule ascending-chain-in-a-line-p
	(declare (salience ?*ascending-chain-in-a-line-salience*))
	(technique ?cont BRT)
    (ascending-chain-in-a-line ?p $?cells ?cellp ?line-type)
	(less-than ?cellp ?new-cell ?line-type)
=>
	(assert (ascending-chain-in-a-line (+ ?p 1) (create$ $?cells ?cellp ?new-cell) ?line-type))
)


(defrule maximal-ascending-chain-in-a-line
	(declare (salience ?*max-ascending-chain-in-a-line-salience*))
	(technique ?cont BRT)
    (ascending-chain-in-a-line ?p $?cells ?cellp  ?line-type)
	(not (less-than ?cellp ? ?line-type))
=>
    (assert (maximal-ascending-chain-in-a-line (length ?p) (cells (create$ $?cells ?cellp)) (line-type ?line-type)))
)




(defrule first-step-descending-chain-in-a-line
	(declare (salience ?*ascending-chain-in-a-line-salience*))
	(technique ?cont&0 BRT)
	(less-than ?cell2 ?cell1&:(< ?cell1 ?cell2) ?line-type)
	(not (less-than ?cell1 ? ?line-type))
=>
	(assert (descending-chain-in-a-line 1 ?cell1 ?cell2 ?line-type))
)


(defrule descending-chain-in-a-line-p
	(declare (salience ?*ascending-chain-in-a-line-salience*))
	(technique ?cont BRT)
    (descending-chain-in-a-line ?p $?cells ?cellp ?line-type)
	(less-than ?new-cell ?cellp ?line-type)
=>
	(assert (descending-chain-in-a-line (+ ?p 1) (create$ $?cells ?cellp ?new-cell) ?line-type))
)


(defrule maximal-descending-chain-in-a-line
	(declare (salience ?*max-ascending-chain-in-a-line-salience*))
	(technique ?cont BRT)
    (descending-chain-in-a-line ?p $?cells ?cellp ?line-type)
	(not (less-than ? ?cellp ?line-type))
=>
    (assert (maximal-descending-chain-in-a-line (length ?p) (cells (create$ $?cells ?cellp)) (line-type ?line-type)))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; hills and valleys
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule hill-detection-rule
	(declare (salience ?*extremum-salience*))
    (maximal-ascending-chain-in-a-line (length ?len1) (cells $?cells1) (line-type ?line-type))
    (maximal-descending-chain-in-a-line (length ?len2) (cells $?cells2) (line-type ?line-type))
    (test (eq (nth$ (+ ?len1 1) $?cells1) (nth$ 1 $?cells2)))
=>
    (assert (extremum (length (+ ?len1 ?len2)) (asc $?cells1) (desc $?cells2) (extremum-type hill) (top-or-bottom (nth$ 1 $?cells2)) (elim no-elim)))
)



(defrule hill-elimination-rule
	(declare (salience ?*extremum-eliminate-salience*))
    ?extr <- (extremum  (length ?len) (asc $?cells1) (desc $?cells2) (extremum-type hill) (top-or-bottom ?tb) (elim ?elim))
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab) (number ?nb&:(<= ?nb ?len)) (row ?row) (column ?col))
    (test (eq (rc-to-cell ?row ?col) ?tb))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (eq ?elim no-elim)
        then (print-hill $?cells1 $?cells2)
        else (printout t ", ")
    )
    (print-deleted-candidate ?lab)
    (modify ?extr (elim elim))
)




(defrule valley-detection-rule
	(declare (salience ?*extremum-salience*))
    (maximal-descending-chain-in-a-line (length ?len1) (cells $?cells1) (line-type ?line-type))
    (maximal-ascending-chain-in-a-line (length ?len2) (cells $?cells2) (line-type ?line-type))
    (test (eq (nth$ (+ ?len1 1) $?cells1) (nth$ 1 $?cells2)))
=>
    (assert (extremum (length (+ ?len1 ?len2)) (desc $?cells1) (asc $?cells2) (extremum-type valley) (top-or-bottom (nth$ 1 $?cells2)) (elim no-elim)))
)



(defrule valley-elimination-rule
	(declare (salience ?*extremum-eliminate-salience*))
    ?extr <- (extremum (length ?len) (desc $?cells1) (asc $?cells2) (extremum-type valley) (top-or-bottom ?tb) (elim ?elim))
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab) (number ?nb&:(> ?nb (- ?*grid-size* ?len))) (row ?row) (column ?col))
    (test (eq (rc-to-cell ?row ?col) ?tb))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (eq ?elim no-elim)
        then (print-valley $?cells1 $?cells2)
        else (printout t ", ")
    )
    (print-deleted-candidate ?lab)
    (modify ?extr (elim elim))
)
 




(defrule end-hill-elimination-rule
    (declare (salience ?*end-extremum-eliminate-salience*))
    (extremum  (length ?len) (asc $?cells1) (desc $?cells2) (extremum-type hill) (top-or-bottom ?tb) (elim elim))
    (not (and
        (candidate (context ?cont) (status cand) (number ?nb&:(<= ?nb ?len)) (row ?row) (column ?col))
        (test (eq (rc-to-cell ?row ?col) ?tb))
    ))
=>
    (printout t crlf)
)




(defrule end-valley-elimination-rule
    (declare (salience ?*end-extremum-eliminate-salience*))
    (extremum (length ?len) (desc $?cells1) (asc $?cells2) (extremum-type valley) (top-or-bottom ?tb) (elim elim))
    (not (and
        (candidate (context ?cont) (status cand) (number ?nb&:(> ?nb (- ?*grid-size* ?len))) (row ?row) (column ?col))
        (test (eq (rc-to-cell ?row ?col) ?tb))
    ))
=>
    (printout t crlf)
)

