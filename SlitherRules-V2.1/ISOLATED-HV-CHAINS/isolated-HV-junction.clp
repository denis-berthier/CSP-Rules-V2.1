
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ISOLATED HV JUNCTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2020             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-isolated-HV-junction
   (declare (salience ?*activate-xtd-loop[3]-salience*))
   (logical (context (name ?cont)) (technique ?cont BRT))
   (not (deactivate ?cont isolated-HV-chain))
=>
   (assert (technique ?cont isolated-HV-junction))
   (bind ?*technique* isolated-HV-junction)
)



(defrule isolated-HV-junction[2]
    (declare (salience ?*partial-loop[2]-salience*))
    (logical
        (technique ?cont isolated-HV-junction)
        (candidate (context ?cont) (status cand) (type ?type1&H|V) (row ?row1) (column ?col1) (label ?lab1) (value 1))
        (candidate (context ?cont) (status cand) (type ?type2&H|V) (row ?row2) (column ?col2) (label ?lab2) (value 1))
    )
    (test (touching-lines ?row1 ?col1 ?type1 ?row2 ?col2 ?type2))
    (or
        ;;; both H or both V
        (and (test (and (eq ?type1 H) (eq ?type2 H) (eq ?row2 ?row1) (eq ?col2 (+ ?col1 1))))
            (or
                (test (eq ?row1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (column ?col2) (row ?rowx&:(eq ?rowx (- ?row1 1))))
            )
            (or
                (test (eq ?row1 (+ ?*nb-rows* 1)))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (column ?col2) (row ?row1))
            )
        )
            
        (and (test (and (eq ?type1 V) (eq ?type2 V) (eq ?col2 ?col1) (eq ?row2 (+ ?row1 1))))
            (or
                (test (eq ?col1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row2) (column ?colx&:(eq ?colx (- ?col1 1))))
            )
            (or
                (test (eq ?col1 (+ ?*nb-columns* 1)))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row2) (column ?col1))
            )
        )
        
        ;;; mixed H and V, increasing lines
        (and (test (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 (+ ?col1 1)) (eq ?row2 (- ?row1 1))))
            (or
                (test (eq ?col1 ?*nb-columns*))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row1) (column ?col2))
            )
            (or
                (test (eq ?row1 ?*nb-rows*))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (row ?row1) (column ?col2))
            )
        )
        (and (test (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 (+ ?col1 1)) (eq ?row2 ?row1)))
            (or
                (test (eq ?col1 ?*nb-columns*))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row1) (column ?col2))
            )
            (or
                (test (eq ?row1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (row ?rowx&:(eq ?rowx (- ?row1 1))) (column ?col2))
            )
        )
        
        (and (test (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 (+ ?row1 1)) (eq ?col2 (- ?col1 1))))
            (or
                (test (eq ?col1 (+ ?*nb-columns* 1)))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row2) (column ?col1))
            )
            (or
                (test (eq ?row1 ?*nb-rows*))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (row ?row2) (column ?col1))
            )
        )
        (and (test (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 (+ ?row1 1)) (eq ?col2 ?col1)))
            (or
                (test (eq ?col1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row2) (column ?colx&:(eq ?colx (- ?col1 1))))
            )
            (or
                (test (eq ?row1 ?*nb-rows*))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (row ?row2) (column ?col1))
            )
        )
        
        ;;; mixed H and V, decreasing lines
        (and (test (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 ?col1) (eq ?row2 ?row1)))
            (or
                (test (eq ?col1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row1) (column ?colx&:(eq ?colx (- ?col1 1))))
            )
            (or
                (test (eq ?row1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (row ?rowx&:(eq ?rowx (- ?row1 1))) (column ?col1))
            )
        )
        (and (test (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 ?col1) (eq ?row2 (- ?row1 1))))
            (or
                (test (eq ?col1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row1) (column ?colx&:(eq ?colx (- ?col1 1))))
            )
            (or
                (test (eq ?row2 ?*nb-rows*))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (row ?row1) (column ?col1))
            )
        )

        (and (test (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 ?row1) (eq ?col2 (- ?col1 1))))
            (or
                (test (eq ?col2 ?*nb-columns*))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row1) (column ?col1))
            )
            (or
                (test (eq ?row1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (row ?rowx&:(eq ?rowx (- ?row1 1))) (column ?col1))
            )
        )
        (and (test (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 ?row1) (eq ?col2 ?col1)))
            (or
                (test (eq ?col1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type H) (row ?row1) (column ?colx&:(eq ?colx (- ?col1 1))))
            )
            (or
                (test (eq ?row1 1))
                (candidate (context ?cont) (status c-value) (value 0) (type V) (row ?rowx&:(eq ?rowx (- ?row1 1))) (column ?col1))
            )
        )
    )
=>
   (assert
      (unique-HV-connexion ?cont ?row1 ?col1 ?type1 ?row2 ?col2 ?type2)
      (unique-HV-connexion ?cont ?row2 ?col2 ?type2 ?row1 ?col1 ?type1)
   )
)



