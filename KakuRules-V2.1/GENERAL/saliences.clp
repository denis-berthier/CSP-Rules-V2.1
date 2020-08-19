
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              SALIENCES
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





;;; This is used in case c-values are asserted in white cells:
(defglobal ?*clean-init-candidates-salience* = 0)
(defglobal ?*horiz-ctr-to-sector-constraints-propagation-initialisation-salience* = 0)
(defglobal ?*verti-ctr-to-sector-constraints-propagation-initialisation-salience* = 0)

;;; Magic naked singles are given the highest priority.
;;; As they correspond to givens, they can only be applied at the start
(defglobal ?*horizontal-magic-naked-single-salience* = 0)
(defglobal ?*vertical-magic-naked-single-salience* = 0)
(defglobal ?*end-init-givens-salience* = O)

(deffunction define-specific-pre-Singles-saliences ()
    ;;; this is used in case c-values are asserted in white cells
    (bind ?*clean-init-candidates-salience* ?*init-salience-1*)
    (bind ?*horiz-ctr-to-sector-constraints-propagation-initialisation-salience* ?*init-salience-2*)
    (bind ?*verti-ctr-to-sector-constraints-propagation-initialisation-salience* ?*init-salience-3*)
    
    ;;; magic naked singles are given the highest priority, as they correspond to givens
    ;;; they can only be applied at the start
    (bind ?*horizontal-magic-naked-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*vertical-magic-naked-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-init-givens-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)



;;; singles 
(defglobal ?*activate-naked-single-salience* = (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
(defglobal ?*rc-naked-single-salience* = (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
(defglobal ?*sum-naked-single-salience* = (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
(defglobal ?*naked-single-salience* = (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

(defglobal ?*activate-hidden-single-salience* = (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
(defglobal ?*magic-hidden-single-salience* = (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
(defglobal ?*pseudo-magic-hidden-single-salience* = (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
(defglobal ?*hidden-single-salience* = (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

(deffunction define-Singles-saliences ()
    (bind ?*activate-naked-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*rc-naked-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*sum-naked-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-hidden-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*magic-hidden-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*pseudo-magic-hidden-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)







(defglobal ?*horiz-ctr-to-sector-constraints-propagation-salience* = 0)
(defglobal ?*verti-ctr-to-sector-constraints-propagation-salience* = 0)
(defglobal ?*cell-to-horiz-ctr-constraints-propagation-salience* = 0)
(defglobal ?*cell-to-verti-ctr-constraints-propagation-salience* = 0)
(defglobal ?*horiz-sector-to-ctr-constraints-propagation-salience* = 0)
(defglobal ?*verti-sector-to-ctr-constraints-propagation-salience* = 0)

;;; In case CSP variables can be created dynamically:
(defglobal ?*activate-dynamic-CSP-variables-salience* = 0)
(defglobal ?*detect-new-dynamic-CSP-variable-salience* = 0)


(deffunction define-specific-post-Singles-pre-init-links-saliences ()
    (bind ?*horiz-ctr-to-sector-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*verti-ctr-to-sector-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*cell-to-horiz-ctr-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*cell-to-verti-ctr-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*horiz-sector-to-ctr-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*verti-sector-to-ctr-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; In case CSP variables can be created dynamically:
    (bind ?*activate-dynamic-CSP-variables-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-new-dynamic-CSP-variable-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SUBSETS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*naked-pairs-salience* = 0)
(defglobal ?*hidden-pairs-salience* = 0)
(defglobal ?*super-hidden-pairs-salience* = 0)
(defglobal ?*x-wing-salience* = 0)

(defglobal ?*activate-z-pairs-salience* = 0)
(defglobal ?*z-pairs-salience* = 0)
(defglobal ?*activate-g-pairs-salience* = 0)
(defglobal ?*g-pairs-salience* = 0)


(defglobal ?*naked-triplets-salience* = 0)
(defglobal ?*hidden-triplets-salience* = 0)
(defglobal ?*super-hidden-triplets-salience* = 0)
(defglobal ?*swordfish-salience* = 0)

(defglobal ?*activate-z-triplets-salience* = 0)
(defglobal ?*z-triplets-salience* = 0)
(defglobal ?*activate-g-triplets-salience* = 0)
(defglobal ?*g-triplets-salience* = 0)


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
(defglobal ?*activate-g-quads-salience* = 0)
(defglobal ?*g-quads-salience* = 0)



(deffunction define-specific-saliences-at-L2 ()
    (bind ?*activate-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*x-wing-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*super-hidden-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-z-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*z-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-g-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*g-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
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

    (bind ?*activate-g-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*g-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
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

    (bind ?*activate-g-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*g-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)




