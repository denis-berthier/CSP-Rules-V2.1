
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              SPECIAL SINGLES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SPECIAL N SINGLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule HV-to-N-special-single
    "if the number of sides of a cell is known by its H/V c-values, then assert the corresponding N c-value"
    (declare (salience ?*special-N-single-salience*))
    (technique ?cont special-single)
    ;;; the four known lines around cell (?row, ?col):
    (candidate (context ?cont) (status c-value) (type H) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value ?h1))
    (candidate (context ?cont) (status c-value) (type H) (row ?row2&:(eq ?row2(+ ?row 1))) (column ?col) (value ?h2))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value ?v1))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col2&:(eq ?col2(+ ?col 1))) (value ?v2))
    ;;; the N candidate in this cell:
    ?cand <- (candidate (context ?cont) (status cand) (type N) (row ?row) (column ?col) (value ?n&:(eq ?n (+ ?h1 ?h2 ?v1 ?v2))))
=>
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "special-HV-to-N: N" (row-name ?row) (column-name ?col) ?*equal-sign* ?n crlf)
    )
    (modify ?cand (status c-value))
)


(defrule special-B-to-N-single
    "if there is a B csp-variable whose candidates all have the same number of sides, then assert the corresponding N c-value"
    (declare (salience ?*special-N-single-salience*))
    (technique ?cont special-single)
    (row ?row&~0&:(<= ?row ?*nb-rows*))
    (column ?col&~0&:(<= ?col ?*nb-columns*))
    (N-value ?n)
    (forall (candidate (context ?cont) (type B) (row ?row) (column ?col) (value ?value))
        (test (eq (B-value-number-of-sides ?value) ?n))
    )
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab) (type N) (value ?n) (row ?row) (column ?col))
=>
    (if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "B-to-N-single: N" (row-name ?row) (column-name ?col) ?*equal-sign* ?n crlf)
    )
    (modify ?cand (status c-value))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SPECIAL 1 SINGLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule detect-special-1-single-n
    "if a cell with a 1 has a decided H/V line, then assert 0 for its other three borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-1-single-n ?row ?col))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-1-single-n-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule apply-special-1-single-n
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont special-1-single-n ?row ?col)
    ?mod <- (candidate (context ?cont) (status cand) (type ?t&H|V) (row ?rowz) (column ?colz) (value 0))
    (test
        (or (and (eq ?t H) (eq ?colz ?col) (eq ?rowz (+ ?row 1)))
            (and (eq ?t V) (eq ?rowz ?row) (or (eq ?colz ?col) (eq ?colz (+ ?col 1))))
        )
    )
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?elim (str-cat ?t (row-name ?rowz) (column-name ?colz) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-special-1-single-s
    "if a cell with a 1 has a decided H/V line, then assert 0 for its other three borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type H) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?col) (value 1))

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-1-single-s ?row ?col))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-1-single-s-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule apply-special-1-single-s
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont special-1-single-s ?row ?col)
    ?mod <- (candidate (context ?cont) (status cand) (type ?t&H|V) (row ?rowz) (column ?colz) (value 0))
    (test
        (or (and (eq ?t H) (eq ?colz ?col) (eq ?rowz ?row))
            (and (eq ?t V) (eq ?rowz ?row) (or (eq ?colz ?col) (eq ?colz (+ ?col 1))))
        )
    )
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?elim (str-cat ?t (row-name ?rowz) (column-name ?colz) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-special-1-single-w
    "if a cell with a 1 has a decided H/V line, then assert 0 for its other three borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-1-single-w ?row ?col))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-1-single-w-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule apply-special-1-single-w
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont special-1-single-w ?row ?col)
    ?mod <- (candidate (context ?cont) (status cand) (type ?t&H|V) (row ?rowz) (column ?colz) (value 0))
    (test
        (or (and (eq ?t V) (eq ?rowz ?row) (eq ?colz (+ ?col 1)))
            (and (eq ?t H) (eq ?colz ?col) (or (eq ?rowz ?row) (eq ?rowz (+ ?row 1))))
        )
    )
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?elim (str-cat ?t (row-name ?rowz) (column-name ?colz) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-special-1-single-e
    "if a cell with a 1 has a decided H/V line, then assert 0 for its other three borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colx&:(eq ?colx (+ ?col 1))) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-1-single-e ?row ?col))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-1-single-e-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule apply-special-1-single-e
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont special-1-single-e ?row ?col)
    ?mod <- (candidate (context ?cont) (status cand) (type ?t&H|V) (row ?rowz) (column ?colz) (value 0))
    (test
        (or (and (eq ?t V) (eq ?rowz ?row) (eq ?colz ?col))
            (and (eq ?t H) (eq ?colz ?col) (or (eq ?rowz ?row) (eq ?rowz (+ ?row 1))))
        )
    )
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?elim (str-cat ?t (row-name ?rowz) (column-name ?colz) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
    )
)


;;;



(defrule special-1-single-esw
    "if a cell with a 1 has 3 decided H/V nolines, then assert 1 for its fourth border"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type H) (row ?rowz&:(eq ?rowz (+ ?row 1))) (column ?col) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colz&:(eq ?colz (+ ?col 1))) (value 0))
    ?mod <- (candidate (context ?cont) (status cand) (type H) (row ?row) (column ?col) (value 1))
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "special-1-single-esw-in-" (row-name ?row) (column-name ?col) ": H" (row-name ?row) (column-name ?col) ?*equal-sign* 1 crlf)
    )
)



(defrule special-1-single-wne
    "if a cell with a 1 has 3 decided H/V nolines, then assert 1 for its fourth border"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colz&:(eq ?colz (+ ?col 1))) (value 0))
    ?mod <- (candidate (context ?cont) (status cand) (type H) (row ?rowz&:(eq ?rowz (+ ?row 1))) (column ?col) (value 1))
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "special-1-single-wne-in-" (row-name ?row) (column-name ?col) ": H" (row-name ?rowz) (column-name ?col) ?*equal-sign* 1 crlf)
    )
)



(defrule special-1-single-nes
    "if a cell with a 1 has 3 decided H/V nolines, then assert 1 for its fourth border"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colz&:(eq ?colz (+ ?col 1))) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?row) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?rowz&:(eq ?rowz (+ ?row 1))) (value 0))
    ?mod <- (candidate (context ?cont) (status cand) (type V) (row ?row) (column ?col) (value 1))
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "special-1-single-nes-in-" (row-name ?row) (column-name ?col) ": V" (row-name ?row) (column-name ?col) ?*equal-sign* 1 crlf)
    )
)



(defrule special-1-single-swn
    "if a cell with a 1 has 3 decided H/V nolines, then assert 1 for its fourth border"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?row) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?rowz&:(eq ?rowz (+ ?row 1))) (value 0))
    ?mod <- (candidate (context ?cont) (status cand) (type V) (row ?row) (column ?colz&:(eq ?colz (+ ?col 1))) (value 1))
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "special-1-single-swn-in-" (row-name ?row) (column-name ?col) ": V" (row-name ?row) (column-name ?colz) ?*equal-sign* 1 crlf)
    )
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SPECIAL 3 SINGLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule special-3-single-esw
    "if a cell with a 3 has 3 decided H/V lines, then assert 0 for its fourth border"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))
    (candidate (context ?cont) (status c-value) (type H) (row ?rowz&:(eq ?rowz (+ ?row 1))) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colz&:(eq ?colz (+ ?col 1))) (value 1))
    ?mod <- (candidate (context ?cont) (status cand) (type H) (row ?row) (column ?col) (value 0))
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "special-3-single-esw-in-" (row-name ?row) (column-name ?col) ": H" (row-name ?row) (column-name ?col) ?*equal-sign* 0 crlf)
    )
)



(defrule special-3-single-wne
    "if a cell with a 3 has 3 decided H/V lines, then assert 0 for its fourth border"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colz&:(eq ?colz (+ ?col 1))) (value 1))
    ?mod <- (candidate (context ?cont) (status cand) (type H) (row ?rowz&:(eq ?rowz (+ ?row 1))) (column ?col) (value 0))
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "special-3-single-wne-in-" (row-name ?row) (column-name ?col) ": H" (row-name ?rowz) (column-name ?col) ?*equal-sign* 0 crlf)
    )
)



(defrule special-3-single-nes
    "if a cell with a 3 has 3 decided H/V nolines, then assert 0 for its fourth border"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colz&:(eq ?colz (+ ?col 1))) (value 1))
    (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?row) (value 1))
    (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?rowz&:(eq ?rowz (+ ?row 1))) (value 1))
    ?mod <- (candidate (context ?cont) (status cand) (type V) (row ?row) (column ?col) (value 0))
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "special-3-single-nes-in-" (row-name ?row) (column-name ?col) ": V" (row-name ?row) (column-name ?col) ?*equal-sign* 0 crlf)
    )
)



(defrule special-3-single-swn
    "if a cell with a 3 has 3 decided H/V nolines, then assert 0 for its fourth border"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?row) (value 1))
    (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?rowz&:(eq ?rowz (+ ?row 1))) (value 1))
    ?mod <- (candidate (context ?cont) (status cand) (type V) (row ?row) (column ?colz&:(eq ?colz (+ ?col 1))) (value 0))
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "special-3-single-swn-in-" (row-name ?row) (column-name ?col) ": V" (row-name ?row) (column-name ?colz) ?*equal-sign* 0 crlf)
    )
)


;;;



(defrule detect-special-3-single-n
    "if a cell with a 3 has a decided H/V noline, then assert 1 for its other three borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-3-single-n ?row ?col))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-3-single-n-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule apply-special-3-single-n
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont special-3-single-n ?row ?col)
    ?mod <- (candidate (context ?cont) (status cand) (type ?t&H|V) (row ?rowz) (column ?colz) (value 1))
    (test
        (or (and (eq ?t H) (eq ?colz ?col) (eq ?rowz (+ ?row 1)))
            (and (eq ?t V) (eq ?rowz ?row) (or (eq ?colz ?col) (eq ?colz (+ ?col 1))))
        )
    )
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?elim (str-cat ?t (row-name ?rowz) (column-name ?colz) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-special-3-single-s
    "if a cell with a 3 has a decided H/V noline, then assert 1 for its other three borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))
    (candidate (context ?cont) (status c-value) (type H) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?col) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-3-single-s ?row ?col))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-3-single-s-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule apply-special-3-single-s
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont special-3-single-s ?row ?col)
    ?mod <- (candidate (context ?cont) (status cand) (type ?t&H|V) (row ?rowz) (column ?colz) (value 1))
    (test
        (or (and (eq ?t H) (eq ?colz ?col) (eq ?rowz ?row))
            (and (eq ?t V) (eq ?rowz ?row) (or (eq ?colz ?col) (eq ?colz (+ ?col 1))))
        )
    )
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?elim (str-cat ?t (row-name ?rowz) (column-name ?colz) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-special-3-single-w
    "if a cell with a 3 has a decided H/V noline, then assert 1 for its other three borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-3-single-w ?row ?col))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-3-single-w-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule apply-special-3-single-w
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont special-3-single-w ?row ?col)
    ?mod <- (candidate (context ?cont) (status cand) (type ?t&H|V) (row ?rowz) (column ?colz) (value 1))
    (test
        (or (and (eq ?t V) (eq ?rowz ?row) (eq ?colz (+ ?col 1)))
            (and (eq ?t H) (eq ?colz ?col) (or (eq ?rowz ?row) (eq ?rowz (+ ?row 1))))
        )
    )
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?elim (str-cat ?t (row-name ?rowz) (column-name ?colz) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-special-3-single-e
    "if a cell with a 3 has a decided H/V noline, then assert 1 for its other three borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colx&:(eq ?colx (+ ?col 1))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-3-single-e ?row ?col))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-3-single-e-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule apply-special-3-single-e
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont special-3-single-e ?row ?col)
    ?mod <- (candidate (context ?cont) (status cand) (type ?t&H|V) (row ?rowz) (column ?colz) (value 1))
    (test
        (or (and (eq ?t V) (eq ?rowz ?row) (eq ?colz ?col))
            (and (eq ?t H) (eq ?colz ?col) (or (eq ?rowz ?row) (eq ?rowz (+ ?row 1))))
        )
    )
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?elim (str-cat ?t (row-name ?rowz) (column-name ?colz) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
    )
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SPECIAL 2 SINGLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule detect-special-2-single-ns
    "if a cell with a 2 has exactly two decided H/V lines or two decided H/V nolines, then assert the opposite value for its other two borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 2))
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col) (value ?value)) ; n
    (candidate (context ?cont) (status c-value) (type H) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?col) (value ?value)) ; s
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-2-single ?row ?col ?value n s))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-2-single-ns-in-" (row-name ?row) (column-name ?col)))
    )
)



(defrule detect-special-2-single-we
    "if a cell with a 2 has exactly two decided H/V lines or two decided H/V nolines, then assert the opposite value for its other two borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 2))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value ?value)) ; w
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colx&:(eq ?colx (+ ?col 1))) (value ?value)) ; e
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-2-single ?row ?col ?value w e))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-2-single-we-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule detect-special-2-single-nw
    "if a cell with a 2 has exactly two decided H/V lines or two decided H/V nolines, then assert the opposite value for its other two borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 2))
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col) (value ?value)) ; n
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value ?value)) ; w
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-2-single ?row ?col ?value n w))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-2-single-nw-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule detect-special-2-single-ne
    "if a cell with a 2 has exactly two decided H/V lines or two decided H/V nolines, then assert the opposite value for its other two borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 2))
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col) (value ?value)) ; n
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colx&:(eq ?colx (+ ?col 1))) (value ?value)) ; e
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-2-single ?row ?col ?value n e))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-2-single-ne-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule detect-special-2-single-sw
    "if a cell with a 2 has exactly two decided H/V lines or two decided H/V nolines, then assert the opposite value for its other two borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 2))
    (candidate (context ?cont) (status c-value) (type H) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?col) (value ?value)) ; s
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value ?value)) ; w
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-2-single ?row ?col ?value s w))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-2-single-sw-in-" (row-name ?row) (column-name ?col)))
    )
)


(defrule detect-special-2-single-se
    "if a cell with a 2 has exactly two decided H/V lines or two decided H/V nolines, then assert the opposite value for its other two borders"
    (declare (salience ?*special-k-single-salience*))
    (technique ?cont special-single)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 2))
    (candidate (context ?cont) (status c-value) (type H) (row ?rowx&:(eq ?rowx (+ ?row 1))) (column ?col) (value ?value)) ; s
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colx&:(eq ?colx (+ ?col 1))) (value ?value)) ; e
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-2-single ?row ?col ?value s e))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?*blocked-rule-description* (str-cat "special-2-single-se-in-" (row-name ?row) (column-name ?col)))
    )
)




(defrule apply-special-2-single
    "if a cell with a 2 has exactly two decided H/V lines or two decided H/V nolines, then assert the opposite value for its other two borders"
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont special-2-single ?row ?col ?value $?decided-sides)
    ?mod <- (candidate (context ?cont) (status cand) (type ?t&H|V) (row ?rowz) (column ?colz) (value ?valz&:(eq ?valz (- 1 ?value))))
    (test
        (or (and (eq ?t H) (eq ?colz ?col) (eq ?rowz ?row) (not (member$ n $?decided-sides)))
            (and (eq ?t H) (eq ?colz ?col) (eq ?rowz (+ ?row 1)) (not (member$ s $?decided-sides)))
            (and (eq ?t V) (eq ?rowz ?row) (eq ?colz ?col) (not (member$ w $?decided-sides)))
            (and (eq ?t V) (eq ?rowz ?row) (eq ?colz (+ ?col 1)) (not (member$ e $?decided-sides)))
        )
    )
=>
    (modify ?mod (status c-value))
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (bind ?elim (str-cat ?t (row-name ?rowz) (column-name ?colz) ?*equal-sign* ?valz))
        (add-elimination-to-blocked-rule ?elim)
    )
)



