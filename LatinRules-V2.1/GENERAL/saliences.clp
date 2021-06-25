
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              SALIENCES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - July 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SUBSETS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*one-step-candidate-salience* = 0)

(defglobal ?*naked-pairs-salience* = 0)
(defglobal ?*hidden-pairs-salience* = 0)
(defglobal ?*super-hidden-pairs-salience* = 0)
(defglobal ?*x-wing-salience* = 0)
(defglobal ?** = 0)

(defglobal ?*activate-z-pairs-salience* = 0)
(defglobal ?*z-pairs-salience* = 0)


(defglobal ?*naked-triplets-salience* = 0)
(defglobal ?*hidden-triplets-salience* = 0)
(defglobal ?*super-hidden-triplets-salience* = 0)
(defglobal ?*swordfish-salience* = 0)

(defglobal ?*activate-z-triplets-salience* = 0)
(defglobal ?*z-triplets-salience* = 0)


(defglobal ?*activate-cyclic-quads-salience* = 0)
(defglobal ?*naked-cyclic-quads-salience* = 0)
(defglobal ?*hidden-cyclic-quads-salience* = 0)
(defglobal ?*super-hidden-cyclic-quads-salience* = 0)
(defglobal ?*cyclic-quads-salience* = 0)

(defglobal ?*activate-special-quads-salience* = 0)
(defglobal ?*naked-special-quads-salience* = 0)
(defglobal ?*hidden-special-quads-salience* = 0)
(defglobal ?*super-hidden-special-quads-salience* = 0)
(defglobal ?*special-quads-salience* = 0)

(defglobal ?*naked-quads-salience* = 0)
(defglobal ?*hidden-quads-salience* = 0)
(defglobal ?*super-hidden-quads-salience* = 0)
(defglobal ?*jellyfish-salience* = 0)

(defglobal ?*activate-z-quads-salience* = 0)
(defglobal ?*z-quads-salience* = 0)



(deffunction define-specific-saliences-at-L2 ()
    (bind ?*one-step-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*x-wing-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*super-hidden-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-z-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*z-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)


 (deffunction define-specific-saliences-at-L3 ()
    (bind ?*activate-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*swordfish-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*super-hidden-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-z-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*z-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


(deffunction define-specific-saliences-at-L4 ()
    (bind ?*activate-cyclic-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-cyclic-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-cyclic-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*super-hidden-cyclic-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*cyclic-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-special-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-special-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-special-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*super-hidden-special-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*jellyfish-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-z-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*z-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)





