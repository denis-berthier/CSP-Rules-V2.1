
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              COMBINATIONS
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Combinations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; a combination is represented by an integer with digits in ascending order: 56, 1234, 3578, ...


(deffunction combinations-of-1 (?S)
    (return (create$ ?S)) ;;;;;;;;;;;;;;;;
)



(deffunction combinations-of-2 (?S)
    (bind ?comb (create$))
    (bind ?i1 1)
    (while (<= ?i1 8)
        (bind ?i2 (+ ?i1 1))
        (while (<= ?i2 9)
            (if (eq (+ ?i1 ?i2) ?S) then (bind ?comb (create$ ?comb (+ (* 10 ?i1) ?i2))))
            (bind ?i2 (+ ?i2 1))
        )
        (bind ?i1 (+ ?i1 1))
    )
    (return ?comb) ;;;;;;;;;;;;;;;;
)




(deffunction combinations-of-3 (?S)
    (bind ?comb (create$))
    (bind ?i1 1)
    (while (<= ?i1 7)
        (bind ?i2 (+ ?i1 1))
        (while (<= ?i2 8)
            (bind ?i3 (+ ?i2 1))
            (while (<= ?i3 9)
                (if (eq (+ ?i1 ?i2 ?i3) ?S) then (bind ?comb (create$ ?comb (+ (* 100 ?i1) (* 10 ?i2) ?i3))))
                (bind ?i3 (+ ?i3 1))
            )
            (bind ?i2 (+ ?i2 1))
        )
        (bind ?i1 (+ ?i1 1))
    )
    (return ?comb) ;;;;;;;;;;;;;;;;
)




(deffunction combinations-of-4 (?S)
    (bind ?comb (create$))
    (bind ?i1 1)
    (while (<= ?i1 6)
        (bind ?i2 (+ ?i1 1))
        (while (<= ?i2 7)
            (bind ?i3 (+ ?i2 1))
            (while (<= ?i3 8)
                (bind ?i4 (+ ?i3 1))
                (while (<= ?i4 9)
                    (if (eq (+ ?i1 ?i2 ?i3 ?i4) ?S) then (bind ?comb (create$ ?comb (+ (* 1000 ?i1) (* 100 ?i2) (* 10 ?i3) ?i4))))
                    (bind ?i4 (+ ?i4 1))
                )
                (bind ?i3 (+ ?i3 1))
            )
            (bind ?i2 (+ ?i2 1))
        )
        (bind ?i1 (+ ?i1 1))
    )
    (return ?comb) ;;;;;;;;;;;;;;;;
)




(deffunction combinations-of-5 (?S)
    (bind ?comb (create$))
    (bind ?i1 1)
    (while (<= ?i1 5)
        (bind ?i2 (+ ?i1 1))
        (while (<= ?i2 6)
            (bind ?i3 (+ ?i2 1))
            (while (<= ?i3 7)
                (bind ?i4 (+ ?i3 1))
                (while (<= ?i4 8)
                    (bind ?i5 (+ ?i4 1))
                    (while (<= ?i5 9)
                        (if (eq (+ ?i1 ?i2 ?i3 ?i4 ?i5) ?S) then (bind ?comb (create$ ?comb (+ (* 10000 ?i1) (* 1000 ?i2) (* 100 ?i3) (* 10 ?i4) ?i5))))
                        (bind ?i5 (+ ?i5 1))
                    )
                    (bind ?i4 (+ ?i4 1))
                )
                (bind ?i3 (+ ?i3 1))
            )
            (bind ?i2 (+ ?i2 1))
        )
        (bind ?i1 (+ ?i1 1))
    )
    (return ?comb) ;;;;;;;;;;;;;;;;
)




(deffunction combinations-of-6 (?S)
    (bind ?comb (create$))
    (bind ?i1 1)
    (while (<= ?i1 4)
        (bind ?i2 (+ ?i1 1))
        (while (<= ?i2 5)
            (bind ?i3 (+ ?i2 1))
            (while (<= ?i3 6)
                (bind ?i4 (+ ?i3 1))
                (while (<= ?i4 7)
                    (bind ?i5 (+ ?i4 1))
                    (while (<= ?i5 8)
                        (bind ?i6 (+ ?i5 1))
                        (while (<= ?i6 9)
                            (if (eq (+ ?i1 ?i2 ?i3 ?i4 ?i5 ?i6) ?S) then (bind ?comb (create$ ?comb (+ (* 100000 ?i1) (* 10000 ?i2) (* 1000 ?i3) (* 100 ?i4) (* 10 ?i5) ?i6))))
                            (bind ?i6 (+ ?i6 1))
                        )
                        (bind ?i5 (+ ?i5 1))
                    )
                    (bind ?i4 (+ ?i4 1))
                )
                (bind ?i3 (+ ?i3 1))
            )
            (bind ?i2 (+ ?i2 1))
        )
        (bind ?i1 (+ ?i1 1))
    )
    (return ?comb) ;;;;;;;;;;;;;;;;
)




(deffunction combinations-of-7 (?S)
    (bind ?comb (create$))
    (bind ?i1 1)
    (while (<= ?i1 3)
        (bind ?i2 (+ ?i1 1))
        (while (<= ?i2 4)
            (bind ?i3 (+ ?i2 1))
            (while (<= ?i3 5)
                (bind ?i4 (+ ?i3 1))
                (while (<= ?i4 6)
                    (bind ?i5 (+ ?i4 1))
                    (while (<= ?i5 7)
                        (bind ?i6 (+ ?i5 1))
                        (while (<= ?i6 8)
                            (bind ?i7 (+ ?i6 1))
                            (while (<= ?i7 9)
                                (if (eq (+ ?i1 ?i2 ?i3 ?i4 ?i5 ?i6 ?i7) ?S) then (bind ?comb (create$ ?comb (+ (* 1000000 ?i1) (* 100000 ?i2) (* 10000 ?i3) (* 1000 ?i4) (* 100 ?i5) (* 10 ?i6) ?i7))))
                                (bind ?i7 (+ ?i7 1))
                            )
                            (bind ?i6 (+ ?i6 1))
                        )
                        (bind ?i5 (+ ?i5 1))
                    )
                    (bind ?i4 (+ ?i4 1))
                )
                (bind ?i3 (+ ?i3 1))
            )
            (bind ?i2 (+ ?i2 1))
        )
        (bind ?i1 (+ ?i1 1))
    )
    (return ?comb) ;;;;;;;;;;;;;;;;
)




(deffunction combinations-of-8 (?S)
    (bind ?comb (create$))
    (bind ?i1 1)
    (while (<= ?i1 2)
        (bind ?i2 (+ ?i1 1))
        (while (<= ?i2 3)
            (bind ?i3 (+ ?i2 1))
            (while (<= ?i3 4)
                (bind ?i4 (+ ?i3 1))
                (while (<= ?i4 5)
                    (bind ?i5 (+ ?i4 1))
                    (while (<= ?i5 6)
                        (bind ?i6 (+ ?i5 1))
                        (while (<= ?i6 7)
                            (bind ?i7 (+ ?i6 1))
                            (while (<= ?i7 8)
                                (bind ?i8 (+ ?i7 1))
                                (while (<= ?i8 9)
                                    (if (eq (+ ?i1 ?i2 ?i3 ?i4 ?i5 ?i6 ?i7 ?i8) ?S) then (bind ?comb (create$ ?comb (+ (* 10000000 ?i1) (* 1000000 ?i2) (* 100000 ?i3) (* 10000 ?i4) (* 1000 ?i5) (* 100 ?i6) (* 10 ?i7) ?i8))))
                                    (bind ?i8 (+ ?i8 1))
                                )
                                (bind ?i7 (+ ?i7 1))
                            )
                            (bind ?i6 (+ ?i6 1))
                        )
                        (bind ?i5 (+ ?i5 1))
                    )
                    (bind ?i4 (+ ?i4 1))
                )
                (bind ?i3 (+ ?i3 1))
            )
            (bind ?i2 (+ ?i2 1))
        )
        (bind ?i1 (+ ?i1 1))
    )
    (return ?comb) ;;;;;;;;;;;;;;;;
)


(deffunction combinations-of-9 (?S)
    (if (eq ?S 45) then (create$ 123456789) else (create$))
)




(deffunction combinations (?S ?n)
    (if (eq ?n 1) then return (combinations-of-1 ?S) else
        (if (eq ?n 2) then return (combinations-of-2 ?S) else
            (if (eq ?n 3) then return (combinations-of-3 ?S) else
                (if (eq ?n 4) then return (combinations-of-4 ?S) else
                    (if (eq ?n 5) then return (combinations-of-5 ?S) else
                        (if (eq ?n 6) then return (combinations-of-6 ?S) else
                            (if (eq ?n 7) then return (combinations-of-7 ?S) else
                                (if (eq ?n 8) then return (combinations-of-8 ?S) else
                                    (if (eq ?n 9) then return (combinations-of-9 ?S) else
                                        (return (create$))
)))))))))) ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Compatible digits
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction digit-in-number (?n ?comb)
    (or (eq ?n (mod ?comb 10)) 
        (and (> ?comb 10) (digit-in-number ?n (div ?comb 10)))
    )
)


(deffunction compatible-digits-as-list (?combs)
    ;;; find all the digits appearing in at least one of the combinations of ?combs (i.e. the envelope of ?combs)
    ;;; return list
    (bind ?l (length$ ?combs))
    (bind ?digits (create$))
    (bind ?i 1)
    (while (<= ?i 9)
        (if (not (member$ ?i ?digits)) then
            (bind ?index 1)
            (while (<= ?index ?l)
                (if (and (not (member$ ?i ?digits)) (digit-in-number ?i (nth$ ?index ?combs))) then
                    (bind ?digits (create$ ?digits ?i))
                )
                (bind ?index (+ ?index 1))
            )
        )
        (bind ?i (+ ?i 1))
    )
    (return ?digits)
)


(deffunction compatible-digits-as-number (?combs)
    ;;; find all the digits appearing in at least one of the combinations of ?combs (i.e. the envelope of ?combs)
    ;;; return number
    (bind ?comp (compatible-digits-as-list ?combs))
    (bind ?result 0)
    (bind ?len (length$ ?comp))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?nb (nth$ ?i ?comp))
        (if (eq ?result 0) then (bind ?result ?nb) else (bind ?result (+ (* 10 ?result) ?nb)))
        (bind ?i (+ ?i 1))
    )
    (return ?result)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Digits common to all combinations(S, p) - used for pseudo-magic sectors
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction list-of-digits-in-all-combinations (?compat-as-list ?combs)
    (bind ?common-digits (create$))
    (bind ?compat-len (length$ ?compat-as-list))
    (bind ?combs-len (length$ ?combs))
    
    (bind ?nb 1)
    (while (<= ?nb ?compat-len)
        (bind ?digit (nth$ ?nb ?compat-as-list))
        ; (printout t "examining compatible digit " ?digit)
        (bind ?OK TRUE)
        (bind ?i 1)
        (while (<= ?i (length$ ?combs))
            (bind ?comb (nth$ ?i ?combs))
            ;;; corrected 2013/08/20
            ; (if (not (digit-in-number ?nb ?comb)) then (bind ?OK FALSE) (printout t ": not in " ?comb crlf))
            (if (not (digit-in-number ?digit ?comb)) then 
                (bind ?OK FALSE) 
                ; (printout t ": not in " ?comb crlf)
            )
            (bind ?i (+ ?i 1))
        )
        (if ?OK then 
            (bind ?common-digits (create$ ?common-digits ?digit)) 
            ;(printout t crlf)
        )
        (bind ?nb (+ ?nb 1))
    )
    (return ?common-digits)
)


(deffunction digits-in-all-combinations (?S ?n)
    (bind ?combs (combinations ?S ?n))
    (bind ?compat-as-list (compatible-digits-as-list ?combs))
    (list-of-digits-in-all-combinations ?compat-as-list ?combs)
)


