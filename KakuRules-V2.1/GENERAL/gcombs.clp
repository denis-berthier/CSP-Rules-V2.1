
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              G-COMBINATIONS
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





;;; this file is loaded only if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*),
;;; i.e. only if G-Bivalue-Chains or G-Whips or G-Braids are used



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; utilities
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; conversion between numbers and ascending sequences of digts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction number-as-list (?number)
    (bind ?number-as-list (create$))
    (bind ?factor 100000000)
    (bind ?i 1)
    (while (<= ?i 9)
        (bind ?first (div ?number ?factor))
        (if (neq ?first 0) then (bind ?number-as-list (create$ ?number-as-list ?first)))
        (bind ?number (mod ?number ?factor))
        (bind ?factor (div ?factor 10))
        (bind ?i (+ ?i 1))
    )
    (return ?number-as-list)
)


(deffunction list-as-number (?list)
    (bind ?result 0)
    (while (> (length$ ?list) 0)
        (bind ?result (+ (* 10 ?result) (nth$ 1 ?list)))
        (bind ?list (rest$ ?list))
    )
    (return ?result)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ascending sequences of compatible digts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; in all these functions, compats is passed as a number

(deffunction ascending-sequences-of-1-digit (?compats)
    ?compats
)


(deffunction ascending-sequences-of-2-digits (?compats)
    (bind ?nb-compats (length$ ?compats))
    (bind ?seqs (create$))
    (if (< ?nb-compats 2) then (return ?seqs))
    (bind ?j1 1)
    (while (<= ?j1 (- ?nb-compats 1))
        (bind ?i1 (nth$ ?j1 ?compats))
        (bind ?j2 (+ ?j1 1))
        (while (<= ?j2 (- ?nb-compats 0))
            (bind ?i2 (nth$ ?j2 ?compats))
            (bind ?seq (+ (* 10 ?i1) ?i2))
            (bind ?seqs (create$ ?seqs ?seq))
            (bind ?j2 (+ ?j2 1))
        )
        (bind ?j1 (+ ?j1 1))
    )
    (return ?seqs)
)


(deffunction ascending-sequences-of-3-digits (?compats)
    (bind ?nb-compats (length$ ?compats))
    (bind ?seqs (create$))
    (if (< ?nb-compats 3) then (return ?seqs))
    (bind ?j1 1)
    (while (<= ?j1 (- ?nb-compats 2))
        (bind ?i1 (nth$ ?j1 ?compats))
        (bind ?j2 (+ ?j1 1))
        (while (<= ?j2 (- ?nb-compats 1))
            (bind ?i2 (nth$ ?j2 ?compats))
            (bind ?j3 (+ ?j2 1))
            (while (<= ?j3 (- ?nb-compats 0))
                (bind ?i3 (nth$ ?j3 ?compats))
                (bind ?seq (+ (* 100 ?i1) (* 10 ?i2) ?i3))
                (bind ?seqs (create$ ?seqs ?seq))
                (bind ?j3 (+ ?j3 1))
            )
            (bind ?j2 (+ ?j2 1))
        )
        (bind ?j1 (+ ?j1 1))
    )
    (return ?seqs) 
)


(deffunction ascending-sequences-of-4-digits (?compats)
    (bind ?nb-compats (length$ ?compats))
    (bind ?seqs (create$))
    (if (< ?nb-compats 4) then (return ?seqs))
    (bind ?j1 1)
    (while (<= ?j1 (- ?nb-compats 3))
        (bind ?i1 (nth$ ?j1 ?compats))
        (bind ?j2 (+ ?j1 1))
        (while (<= ?j2 (- ?nb-compats 2))
            (bind ?i2 (nth$ ?j2 ?compats))
            (bind ?j3 (+ ?j2 1))
            (while (<= ?j3 (- ?nb-compats 1))
                (bind ?i3 (nth$ ?j3 ?compats))
                (bind ?j4 (+ ?j3 1))
                (while (<= ?j4 (- ?nb-compats 0))
                    (bind ?i4 (nth$ ?j4 ?compats))
                    (bind ?seq (+ (* 1000 ?i1) (* 100 ?i2) (* 10 ?i3) ?i4))
                    (bind ?seqs (create$ ?seqs ?seq))
                    (bind ?j4 (+ ?j4 1))
                )
                (bind ?j3 (+ ?j3 1))
            )
            (bind ?j2 (+ ?j2 1))
        )
        (bind ?j1 (+ ?j1 1))
    )
    (return ?seqs) 
)


(deffunction ascending-sequences-of-5-digits (?compats)
    (bind ?nb-compats (length$ ?compats))
    (bind ?seqs (create$))
    (if (< ?nb-compats 5) then (return ?seqs))
    (bind ?j1 1)
    (while (<= ?j1 (- ?nb-compats 4))
        (bind ?i1 (nth$ ?j1 ?compats))
        (bind ?j2 (+ ?j1 1))
        (while (<= ?j2 (- ?nb-compats 3))
            (bind ?i2 (nth$ ?j2 ?compats))
            (bind ?j3 (+ ?j2 1))
            (while (<= ?j3 (- ?nb-compats 2))
                (bind ?i3 (nth$ ?j3 ?compats))
                (bind ?j4 (+ ?j3 1))
                (while (<= ?j4 (- ?nb-compats 1))
                    (bind ?i4 (nth$ ?j4 ?compats))
                    (bind ?j5 (+ ?j4 1))
                    (while (<= ?j5 (- ?nb-compats 0))
                        (bind ?i5 (nth$ ?j5 ?compats))
                        (bind ?seq (+ (* 10000 ?i1) (* 1000 ?i2) (* 100 ?i3) (* 10 ?i4) ?i5))
                        (bind ?seqs (create$ ?seqs ?seq))
                        (bind ?j5 (+ ?j5 1))
                    )
                    (bind ?j4 (+ ?j4 1))
                )
                (bind ?j3 (+ ?j3 1))
            )
            (bind ?j2 (+ ?j2 1))
        )
        (bind ?j1 (+ ?j1 1))
    )
    (return ?seqs) 
)


(deffunction ascending-sequences-of-6-digits (?compats)
    (bind ?nb-compats (length$ ?compats))
    (bind ?seqs (create$))
    (if (< ?nb-compats 6) then (return ?seqs))
    (bind ?j1 1)
    (while (<= ?j1 (- ?nb-compats 5))
        (bind ?i1 (nth$ ?j1 ?compats))
        (bind ?j2 (+ ?j1 1))
        (while (<= ?j2 (- ?nb-compats 4))
            (bind ?i2 (nth$ ?j2 ?compats))
            (bind ?j3 (+ ?j2 1))
            (while (<= ?j3 (- ?nb-compats 3))
                (bind ?i3 (nth$ ?j3 ?compats))
                (bind ?j4 (+ ?j3 1))
                (while (<= ?j4 (- ?nb-compats 2))
                    (bind ?i4 (nth$ ?j4 ?compats))
                    (bind ?j5 (+ ?j4 1))
                    (while (<= ?j5 (- ?nb-compats 1))
                        (bind ?i5 (nth$ ?j5 ?compats))
                        (bind ?j6 (+ ?j5 1))
                        (while (<= ?j6 (- ?nb-compats 0))
                            (bind ?i6 (nth$ ?j6 ?compats))
                            (bind ?seq (+ (* 100000 ?i1) (* 10000 ?i2) (* 1000 ?i3) (* 100 ?i4) (* 10 ?i5) ?i6))
                            (bind ?seqs (create$ ?seqs ?seq))
                            (bind ?j6 (+ ?j6 1))
                        )
                        (bind ?j5 (+ ?j5 1))
                    )
                    (bind ?j4 (+ ?j4 1))
                )
                (bind ?j3 (+ ?j3 1))
            )
            (bind ?j2 (+ ?j2 1))
        )
        (bind ?j1 (+ ?j1 1))
    )
    (return ?seqs) 
)


(deffunction ascending-sequences-of-7-digits (?compats)
    (bind ?nb-compats (length$ ?compats))
    (bind ?seqs (create$))
    (if (< ?nb-compats 7) then (return ?seqs))
    (bind ?j1 1)
    (while (<= ?j1 (- ?nb-compats 6))
        (bind ?i1 (nth$ ?j1 ?compats))
        (bind ?j2 (+ ?j1 1))
        (while (<= ?j2 (- ?nb-compats 5))
            (bind ?i2 (nth$ ?j2 ?compats))
            (bind ?j3 (+ ?j2 1))
            (while (<= ?j3 (- ?nb-compats 4))
                (bind ?i3 (nth$ ?j3 ?compats))
                (bind ?j4 (+ ?j3 1))
                (while (<= ?j4 (- ?nb-compats 3))
                    (bind ?i4 (nth$ ?j4 ?compats))
                    (bind ?j5 (+ ?j4 1))
                    (while (<= ?j5 (- ?nb-compats 2))
                        (bind ?i5 (nth$ ?j5 ?compats))
                        (bind ?j6 (+ ?j5 1))
                        (while (<= ?j6 (- ?nb-compats 1))
                            (bind ?i6 (nth$ ?j6 ?compats))
                            (bind ?j7 (+ ?j6 1))
                            (while (<= ?j7 (- ?nb-compats 0))
                                (bind ?i7 (nth$ ?j7 ?compats))
                                (bind ?seq(+ (* 1000000 ?i1) (* 100000 ?i2) (* 10000 ?i3) (* 1000 ?i4) (* 100 ?i5) (* 10 ?i6) ?i7))
                                (bind ?seqs (create$ ?seqs ?seq))
                                (bind ?j7 (+ ?j7 1))
                            )
                            (bind ?j6 (+ ?j6 1))
                        )
                        (bind ?j5 (+ ?j5 1))
                    )
                    (bind ?j4 (+ ?j4 1))
                )
                (bind ?j3 (+ ?j3 1))
            )
            (bind ?j2 (+ ?j2 1))
        )
        (bind ?j1 (+ ?j1 1))
    )
    (return ?seqs) 
)


(deffunction ascending-sequences-of-8-digits (?compats)
    (bind ?nb-compats (length$ ?compats))
    (bind ?seqs (create$))
    (if (< ?nb-compats 8) then (return ?seqs))
    (bind ?j1 1)
    (while (<= ?j1 (- ?nb-compats 7))
        (bind ?i1 (nth$ ?j1 ?compats))
        (bind ?j2 (+ ?j1 1))
        (while (<= ?j2 (- ?nb-compats 6))
            (bind ?i2 (nth$ ?j2 ?compats))
            (bind ?j3 (+ ?j2 1))
            (while (<= ?j3 (- ?nb-compats 5))
                (bind ?i3 (nth$ ?j3 ?compats))
                (bind ?j4 (+ ?j3 1))
                (while (<= ?j4 (- ?nb-compats 4))
                    (bind ?i4 (nth$ ?j4 ?compats))
                    (bind ?j5 (+ ?j4 1))
                    (while (<= ?j5 (- ?nb-compats 3))
                        (bind ?i5 (nth$ ?j5 ?compats))
                        (bind ?j6 (+ ?j5 1))
                        (while (<= ?j6 (- ?nb-compats 2))
                            (bind ?i6 (nth$ ?j6 ?compats))
                            (bind ?j7 (+ ?j6 1))
                            (while (<= ?j7 (- ?nb-compats 1))
                                (bind ?i7 (nth$ ?j7 ?compats))
                                (bind ?j8 (+ ?j7 1))
                                (while (<= ?j8 (- ?nb-compats 0))
                                    (bind ?i8 (nth$ ?j8 ?compats))
                                    (bind ?seq (+ (* 10000000 ?i1) (* 1000000 ?i2) (* 100000 ?i3) (* 10000 ?i4) (* 1000 ?i5) (* 100 ?i6) (* 10 ?i7) ?i8))
                                    (bind ?seqs (create$ ?seqs ?seq))
                                    (bind ?j8 (+ ?j8 1))
                                )
                                (bind ?j7 (+ ?j7 1))
                            )
                            (bind ?j6 (+ ?j6 1))
                        )
                        (bind ?j5 (+ ?j5 1))
                    )
                    (bind ?j4 (+ ?j4 1))
                )
                (bind ?j3 (+ ?j3 1))
            )
            (bind ?j2 (+ ?j2 1))
        )
        (bind ?j1 (+ ?j1 1))
    )
    (return ?seqs)
)


(deffunction ascending-sequences-of-9-digits (?compats)
    (bind ?nb-compats (length$ ?compats))
    (bind ?seqs (create$))
    (if (< ?nb-compats 9) then (return ?seqs))
    (create$ 123456789)
)


(deffunction ascending-sequences-of-q-digits (?q ?compats)
    (if (eq ?q 1) then return (ascending-sequences-of-1-digit ?compats) else
        (if (eq ?q 2) then return (ascending-sequences-of-2-digits ?compats) else
            (if (eq ?q 3) then return (ascending-sequences-of-3-digits ?compats) else
                (if (eq ?q 4) then return (ascending-sequences-of-4-digits ?compats) else
                    (if (eq ?q 5) then return (ascending-sequences-of-5-digits ?compats) else
                        (if (eq ?q 6) then return (ascending-sequences-of-6-digits ?compats) else
                            (if (eq ?q 7) then return (ascending-sequences-of-7-digits ?compats) else
                                (if (eq ?q 8) then return (ascending-sequences-of-8-digits ?compats) else
                                    (if (eq ?q 9) then return (ascending-sequences-of-9-digits ?compats) else
                                        (return (create$))
))))))))))



(deffunction test-all-ascending-sequences-of-digits (?compats)
    (printout t (ascending-sequences-of-1-digit ?compats) crlf)
    (printout t (ascending-sequences-of-2-digits ?compats) crlf)
    (printout t (ascending-sequences-of-3-digits ?compats) crlf)
    (printout t (ascending-sequences-of-4-digits ?compats) crlf)
    (printout t (ascending-sequences-of-5-digits ?compats) crlf)
    (printout t (ascending-sequences-of-6-digits ?compats) crlf)
    (printout t (ascending-sequences-of-7-digits ?compats) crlf)
    (printout t (ascending-sequences-of-8-digits ?compats) crlf)
    (printout t (ascending-sequences-of-9-digits ?compats) crlf)
)    


; (test-all-ascending-sequences-of-digits (create$ 1 2 3 4 5 6 7 8 9)) ; OK
; (test-all-ascending-sequences-of-digits (create$ 1 2 3 4 5 6 7 8)) ; OK
; (test-all-ascending-sequences-of-digits (create$ 1 2 3 4 5 6)) ; OK
; (test-all-ascending-sequences-of-digits (create$ 1)) ; OK




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; gcombs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; a potential-gcomb(S, p) is a strict subset gC of Comb(S, p):
;;; - containing at least two elements
;;; - and such that gC excludes at least one (S, p)-compatible digit i [equivalently:  Env(gC) is not the full set of (S, p)-compatible digits].

;;; if gC is a potential-gcomb(S, p), Excl(gC) is the set of (S, p)-compatible digits excluded by gC; it is the complement of Env(gC) in Compat(S, p)

;;; a gcomb(S, p) is a potential-gcomb(S, p) that is saturated in the following sense: 
;;; - any strictly larger (with respect to set-theoretic inclusion) potential-gcomb(S, p), if any, has a strictly smaller set of excluded digits;
;;; - Equivalently: any strictly larger potential-gcomb(S, p) has a strictly larger envelope.
;;; - Equivalently: it is equal to its envelope


;;; a combination(?S ?n) is represented by an integer with digits in ascending order: 56, 1234, 3578, ...
;;; a gcomb(?S ?n) is also represented by an integer with digits in ascending order, namely its envelope
;;; they are distinguished only by the way they  are used (and by their length: a comb has length p, a g-comb has length > p).




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; combinations contained in a number; envelope of a set of combs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction comb-in-number (?comb ?number)
    ;;; ?comb and ?number are given as numbers < 999999999
    (bind ?result TRUE)
    (bind ?comb-as-list (number-as-list ?comb))
    (foreach ?digit ?comb-as-list
        (if (not (digit-in-number ?digit ?number)) then (return FALSE))
    )
    TRUE
)


(deffunction combs-in-number (?combs ?number)
    ;;; ?number is given as a number and ?combs as a sequence of numbers
    (bind ?result (create$))
    (foreach ?comb ?combs
        (if (comb-in-number ?comb ?number) then (bind ?result (create$ ?result ?comb)))
    )
    ?result
)


(deffunction envelope-of-set-of-combs (?combs)
    ;;; result given as list of numbers
    (compatible-digits-as-number ?combs)
)


(deffunction number-is-gcomb-for-combs (?number ?combs)
    (if (<= (length$ ?combs) 2) then (return FALSE))
    (bind ?combs-in-number (combs-in-number ?combs ?number))
    (if (< (length$ ?combs-in-number) 2) then (return FALSE))
    (eq ?number (envelope-of-set-of-combs ?combs-in-number))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; gcombs  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction gcombs-for-combs (?p ?combs)
    ;;; ?combs will be some comb(?S ?p)
    (bind ?gcombs (create$))
    (bind ?nb-combs (length$ ?combs))
    (if (<= ?nb-combs 2) then (return ?gcombs))
    
    (bind ?compat (compatible-digits-as-number ?combs))
    (bind ?compat-as-list (number-as-list ?compat))
    (bind ?nb-digits (length$ ?compat-as-list))

    ;;; there can be q-digit gcombs only for ?p < ?q < ?nb-digits
    (bind ?q (+ ?p 1))
    (while (< ?q ?nb-digits)
        ;;; test all the q-digit sequences
        (bind ?seqs (ascending-sequences-of-q-digits ?q ?compat-as-list))
        (foreach ?number ?seqs
            (if (number-is-gcomb-for-combs ?number ?combs) then
                (bind ?gcombs (create$ ?gcombs ?number))
            )
        )
        (bind ?q (+ ?q 1))
    )
    
    (return ?gcombs)
)



(deffunction gcombs (?S ?p)
    (gcombs-for-combs ?p (combinations ?S ?p))
)


(deffunction list-of-digits-excluded-by-gcomb (?gcomb ?compat-as-list)
    (bind ?result (create$))
    (foreach ?i ?compat-as-list
        (if (not (digit-in-number ?i ?gcomb)) then (bind ?result (create$ ?result ?i)))
    )
    ?result    
)



    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; gdigs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; a potential-gdig(S, p) is a strict subset gD of Compat(S, p):
;;; - containing at least two digits but not all of Compat(S, p)
;;; - and excluding at least one combination from Comb(S, p) but not all of them.

;;; if gD is a potential-gdig(S, p), Excl(gD) is the set of combinations in Comb(S, p) excluded by gD.

;;; a gdig(S, p) is a potential-gdig(S, p) that is saturated in the following sense: 
;;; - any strictly larger (with respect to set-theoretic inclusion) potential-gdig(S, p), if any, has a strictly smaller set of excluded combinations.

;;; notice that every comb (here considered as a set of digits) contains two or more digits and it exlcudes all the other combs;
;;; it must therefore give rise to a gdig - except for the (45, 9) pair.




(deffunction combs-containing-digit (?i ?combs)
    ;;; ?combs can be any set of combinations
    (bind ?result (create$))
    (bind ?len (length$ ?combs))
    (bind ?x 1)
    (while (<= ?x ?len)
        (bind ?comb (nth$ ?x ?combs))
        (if (digit-in-number ?i ?comb) 
            then (bind ?result (create$ ?result ?comb))
        )
        (bind ?x (+ ?x 1))
    )
    ?result
)
 
       
(deffunction digit-in-some-combination (?i ?combs)
    ;;; ?combs can be any set of combinations
    (bind ?nb-combs (length$ ?combs))
    (bind ?result FALSE)
    (bind ?x 1)
    (while (<= ?x ?nb-combs)
        (bind ?comb (nth$ ?x ?combs))
        (if (digit-in-number ?i ?comb) then (return TRUE))
        (bind ?x (+ ?x 1))
    )
    ?result
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; combinations excluded by a sequence of digits
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction combs-excluded-by-digit (?i ?combs)
    ;;; ?combs can be any set of combinations
    ;;; a comb is excluded by ?i if it does not contain ?i
    (bind ?result (create$))
    (bind ?len (length$ ?combs))
    (bind ?x 1)
    (while (<= ?x ?len)
        (bind ?comb (nth$ ?x ?combs))
        (if (not (digit-in-number ?i ?comb))
            then (bind ?result (create$ ?result ?comb))
        )
        (bind ?x (+ ?x 1))
    )
    ?result
)
 
       
(deffunction combs-excluded-by-number (?number ?combs)
    ;;; ?combs can be any set of combinations
    ;;; a comb is not excluded if it contains some of the digits in ?number
    (bind ?result (create$))
    (bind ?nb-combs (length$ ?combs))
    (bind ?digits (number-as-list ?number))
    (bind ?nb-digits (length$ ?digits))
    (bind ?x 1)
    (while (<= ?x ?nb-combs)
        (bind ?comb (nth$ ?x ?combs))
        (bind ?comb-not-excluded-by-digits FALSE)
        (bind ?y 1)
        (while (<= ?y ?nb-digits)
            (bind ?digit (nth$ ?y ?digits))
            (if (digit-in-number ?digit ?comb) then (bind ?comb-not-excluded-by-digits TRUE))
            (bind ?y (+ ?y 1))
        )
        (if (not ?comb-not-excluded-by-digits) then (bind ?result (create$ ?result ?comb)))
        (bind ?x (+ ?x 1))
    )
    ?result
)


(deffunction envelope-of-set-of-digits-as-number (?number ?compat-as-list ?combs)
    ;;; result given as number
    (bind ?combs-excluded-by-number (combs-excluded-by-number ?number ?combs))
    (bind ?env (envelope-of-set-of-combs ?combs-excluded-by-number))
    (bind ?result 0)
    (foreach ?i ?compat-as-list
        (if (not (digit-in-number ?i ?env)) then
            (bind ?result (+ (* 10 ?result) ?i))
        )
    )
    ?result    
)


(deffunction number-is-gdig-for-combs (?number ?compat-as-list ?combs)
    (if (<= (length$ ?combs) 2) then (return FALSE))
    ;;; a g-digit must have at least two digits:
    (if (< ?number 10) then (return FALSE))
    (bind ?env (envelope-of-set-of-digits-as-number ?number ?compat-as-list ?combs))
    (eq ?number ?env)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; gdigs for a set of combinations 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction gdigs-for-combs (?p ?compat-as-list ?combs)
    ;;; ?combs will be some comb(?S ?p)
    (bind ?gdigs (create$))
    (bind ?nb-combs (length$ ?combs))
    (if (<= ?nb-combs 2) then (return ?gdigs))
    
    (bind ?compat (compatible-digits-as-number ?combs))
    (bind ?compat-as-list (number-as-list ?compat))
    (bind ?nb-digits (length$ ?compat-as-list))
    (if (<= ?nb-digits 2) then (return ?gdigs))

    ;;; there can be q-digit gdigs only for 1 < ?q < ?nb-digits
    (bind ?q 2)
    (while (< ?q ?nb-digits)
        ;;; test all the q-digit sequences
        (bind ?seqs (ascending-sequences-of-q-digits ?q ?compat-as-list))
        (foreach ?number ?seqs
            (if (number-is-gdig-for-combs ?number ?compat-as-list ?combs) then
                (bind ?gdigs (create$ ?gdigs ?number))
            )
        )
        (bind ?q (+ ?q 1))
    )
    
    (return ?gdigs)
)




(deffunction gdigs (?S ?p)
    (bind ?combs (combinations ?S ?p))
    (bind ?compat-as-list (compatible-digits-as-list ?combs))
    (gdigs-for-combs ?p ?compat-as-list ?combs)
)




    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; define the (S, p) pairs with gcombs or gdigs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction S-p-pair (?S ?p)
    (+ (* 100 ?p) ?S)
)

(defglobal ?*S-p-pairs-with-gcombs* = (create$ 207 208 209 210 211 212 213 309 310 311 312 313 314 315 316 317 318 319 320 321 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 624 625 626 627 628 629 630 631 632 633 634 635 636))

(defglobal ?*S-p-pairs-with-gdigs* = (create$ 207 208 209 210 211 212 213 309 310 311 312 313 314 315 316 317 318 319 320 321 413 414 415 416 417 418 419 420 421 422 423 424 425 426 427 518 519 520 521 522 523 524 525 526 527 528 529 530 531 532 624 625 626 627 628 629 630 631 632 633 634 635 636 732 733 734 735 736 737 738))



;;; pairs with gdigs but no gcombs:

(defglobal ?*S-p-pairs-with-gdigs-but-no-gcombs* = 
    ;;; (complement$ ?*S-p-pairs-with-gcombs* ?*S-p-pairs-with-gdigs*)
    (create$ 732 733 734 735 736 737 738)
)
; p S  compat    combs
;        nb-gdigs gdigs
; 7 32 123456789 (1234589 1234679 1235678)
;          3   (49 58 67)
; 7 33 123456789 (1234689 1235679 1245678)
;          3   (39 48 57)
; 7 34 123456789 (1234789 1235689 1245679 1345678)
;          4   (29 38 47 56)
; 7 35 123456789 (1235789 1245689 1345679 2345678)
;          4   (19 28 37 46)
; 7 36 123456789 (1236789 1245789 1345689 2345679)
;          4   (18 27 36 45)
; 7 37 123456789 (1246789 1345789 2345689)
;          3   (17 26 35)
; 7 38 123456789 (1256789 1346789 2345789)
;          3   (16 25 34)




(deffunction sector-has-gcombs (?S ?p)
    (if (member$ (S-p-pair ?S ?p) ?*S-p-pairs-with-gcombs*) then TRUE else FALSE)
)


(deffunction sector-has-gdigs (?S ?p)
    (if (member$ (S-p-pair ?S ?p) ?*S-p-pairs-with-gdigs*) then TRUE else FALSE)
)
