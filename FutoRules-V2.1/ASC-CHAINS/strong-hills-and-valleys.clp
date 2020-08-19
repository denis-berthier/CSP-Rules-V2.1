
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              STRONG HILLS AND VALLEYS
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





(deftemplate sub-extremum
    (slot length)
    (multislot asc)
    (multislot desc)
    (slot extremum-type) ; hill or valley
    (slot top-or-bottom) ; cell
)


;;; all the hills and valleys must be taken into account, not only the maximal ones

(defrule strong-sub-extremum
	(declare (salience ?*strong-extremum-salience*))
    (extremum (length ?len) (asc $?cells1) (desc $?cells2) (extremum-type ?type) (top-or-bottom ?tb))
=>
    (bind ?k1 (length$ $?cells1))
    (bind ?k2 (length$ $?cells2))
    (bind ?i 1)
    (while (< ?i ?k1)
        (bind ?j 2)
        (while (<= ?j ?k2)
            (assert (sub-extremum  (length (+ (- ?k1 ?i) (- ?j 1)))
                                    (asc (subseq$ $?cells1 ?i ?k1))
                                    (desc (subseq$ $?cells2 1 ?j))
                                    (extremum-type ?type)
                                    (top-or-bottom ?tb)))
            (bind ?j (+ ?j 1))
        )
        (bind ?i (+ ?i 1))
    )
)



(defrule hill-strong-elimination-rule
	(declare (salience ?*strong-extremum-eliminate-salience*))
    (sub-extremum (length ?len) (asc $?cells1) (desc $?cells2) (extremum-type hill) (top-or-bottom ?tb))

    ;;; identify the ends of the hill
    (candidate (context ?cont) (status cand) (row ?row1) (column ?col1))
    (test (eq (rc-to-cell ?row1 ?col1) (nth$ 1 $?cells1)))
    (candidate (context ?cont) (status cand) (row ?row2) (column ?col2))
    (test (eq (rc-to-cell ?row2 ?col2) (nth$ (length$ $?cells2) $?cells2)))

    ;;; find the minimum candidate in the ends
    (number ?m)
    (or (candidate (context ?cont) (status cand) (number ?m)(row ?row1) (column ?col1))
        (candidate (context ?cont) (status cand) (number ?m)(row ?row2) (column ?col2))
    )
    (not (candidate (context ?cont) (status cand) (number ?nbx&:(< ?nbx ?m)) (row ?row1) (column ?col1)))
    (not (candidate (context ?cont) (status cand) (number ?nby&:(< ?nby ?m)) (row ?row2) (column ?col2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab) (number ?nb&:(< ?nb (+ ?len ?m))) (row ?row) (column ?col))
    (test (eq (rc-to-cell ?row ?col) ?tb))
=>
    (retract ?cand)
    (print-strong-hill $?cells1 $?cells2)
    (print-deleted-candidate ?lab)
    (printout t crlf)
)




(defrule valley-strong-elimination-rule
	(declare (salience ?*strong-extremum-eliminate-salience*))
    (sub-extremum (length ?len) (desc $?cells1) (asc $?cells2) (extremum-type valley) (top-or-bottom ?tb))

    ;;; identify the ends of the valley
    (candidate (context ?cont) (status cand) (row ?row1) (column ?col1))
    (test (eq (rc-to-cell ?row1 ?col1) (nth$ 1 $?cells1)))
    (candidate (context ?cont) (status cand) (row ?row2) (column ?col2))
    (test (eq (rc-to-cell ?row2 ?col2) (nth$ (length$ $?cells2) $?cells2)))

    ;;; find the maximum candidate in the ends
    (number ?M)
    (or (candidate (context ?cont) (status cand) (number ?M)(row ?row1) (column ?col1))
        (candidate (context ?cont) (status cand) (number ?M)(row ?row2) (column ?col2))
    )
    (not (candidate (context ?cont) (status cand) (number ?nbx&:(> ?nbx ?M)) (row ?row1) (column ?col1)))
    (not (candidate (context ?cont) (status cand) (number ?nby&:(> ?nby ?M)) (row ?row2) (column ?col2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab) (number ?nb&:(> ?nb (- ?M ?len))) (row ?row) (column ?col))
    (test (eq (rc-to-cell ?row ?col) ?tb))
=>
    (retract ?cand)
    (print-strong-valley $?cells1 $?cells2)
    (print-deleted-candidate ?lab)
    (printout t crlf)
)

  

