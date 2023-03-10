
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SALIENCES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; NO CONFLUENCE RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Rules for uniqueness
;;; Non uniqueness of a solution should be detected as soon as possible
;;; but in a way compatible with all the other constraints

(defglobal ?*ur1-salience* = 0)
(defglobal ?*ur2-salience* = 0)
(defglobal ?*ur2b-salience* = 0)
(defglobal ?*ur3-salience* = 0)
(defglobal ?*ur4-salience* = 0)
(defglobal ?*ur4b-salience* = 0)
(defglobal ?*hur-salience* = 0)
(defglobal ?*bug-salience* = 0)
(defglobal ?*uniqueness-salience* = 0)

;;; Rules for sk-loops

(defglobal ?*cross-salience* = 0)
(defglobal ?*belt4-salience* = 0)
(defglobal ?*belt4-identify-salience* = 0)
(defglobal ?*belt4-elim-rows-salience* = 0)
(defglobal ?*belt4-elim-columns-salience* = 0)
(defglobal ?*belt4-elim-blocks-salience* = 0)
;;; for testing if the x2y2 version is broader:
(defglobal ?*x2y2-segment-salience* = 0)
(defglobal ?*chainable-x2y2-segments-salience* = 0)
(defglobal ?*x2y2-salience* = 0)

(defglobal ?*belt6-salience* = 0)
(defglobal ?*belt6-identify-salience* = 0)
(defglobal ?*belt6-elim-rows-salience* = 0)
(defglobal ?*belt6-elim-columns-salience* = 0)
(defglobal ?*belt6-elim-blocks-salience* = 0)
(defglobal ?*x2y2-belt6-salience* = 0)


(deffunction define-no-confluence-saliences ()
    ;;; Rules for uniqueness
    (bind ?*ur1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ur2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ur2b-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ur3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ur4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ur4b-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hur-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*bug-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; Rules for sk-loops
    (bind ?*cross-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*belt4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*belt4-identify-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*belt4-elim-rows-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*belt4-elim-columns-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*belt4-elim-blocks-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    ;;; for testing if the x2y2 version is broader:
    (bind ?*x2y2-segment-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*chainable-x2y2-segments-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*x2y2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*belt6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*belt6-identify-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*belt6-elim-rows-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*belt6-elim-columns-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*belt6-elim-blocks-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*x2y2-belt6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SUBSETS and TRIDAGONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*one-step-candidate-salience* = 0)

(defglobal ?*naked-pairs-salience* = 0)
(defglobal ?*hidden-pairs-salience* = 0)
(defglobal ?*super-hidden-pairs-salience* = 0)
(defglobal ?*x-wing-salience* = 0)
(defglobal ?*finned-x-wing-salience* = 0)

(defglobal ?*activate-z-pairs-salience* = 0)
(defglobal ?*z-pairs-salience* = 0)
(defglobal ?*activate-g-pairs-salience* = 0)
(defglobal ?*g-pairs-salience* = 0)


(defglobal ?*naked-triplets-salience* = 0)
(defglobal ?*hidden-triplets-salience* = 0)
(defglobal ?*super-hidden-triplets-salience* = 0)
(defglobal ?*swordfish-salience* = 0)
(defglobal ?*finned-swordfish-salience* = 0)

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
(defglobal ?*finned-jellyfish-salience* = 0)

(defglobal ?*activate-z-quads-salience* = 0)
(defglobal ?*z-quads-salience* = 0)
(defglobal ?*activate-g-quads-salience* = 0)
(defglobal ?*g-quads-salience* = 0)


(defglobal ?*activate-tridagon[12]-salience* = 0)
(defglobal ?*tridagon[12]-salience* = 0)
(defglobal ?*activate-ork-anti-tridagon[12]-salience* = 0)
(defglobal ?*ork-anti-tridagon[12]-salience* = 0)



(defglobal ?*activate-EL13c290-salience* = 0)
(defglobal ?*EL13c290-salience* = 0)
(defglobal ?*activate-EL14c30-salience* = 0)
(defglobal ?*EL14c30-salience* = 0)
(defglobal ?*activate-EL14c159-salience* = 0)
(defglobal ?*EL14c159-salience* = 0)
(defglobal ?*activate-EL14c13-salience* = 0)
(defglobal ?*EL14c13-salience* = 0)
(defglobal ?*activate-EL14c1-salience* = 0)
(defglobal ?*EL14c1-salience* = 0)
(defglobal ?*activate-EL10c28-salience* = 0)
(defglobal ?*EL10c28-salience* = 0)
(defglobal ?*activate-EL13c30-salience* = 0)
(defglobal ?*EL13c30-salience* = 0)
(defglobal ?*activate-EL13c176-salience* = 0)
(defglobal ?*EL13c176-salience* = 0)
(defglobal ?*activate-EL13c234-salience* = 0)
(defglobal ?*EL13c234-salience* = 0)
(defglobal ?*activate-EL13c179-salience* = 0)
(defglobal ?*EL13c179-salience* = 0)
(defglobal ?*activate-EL10c6-salience* = 0)
(defglobal ?*EL10c6-salience* = 0)
(defglobal ?*activate-EL13c259-salience* = 0)
(defglobal ?*EL13c259-salience* = 0)
(defglobal ?*activate-EL13c172-salience* = 0)
(defglobal ?*EL13c172-salience* = 0)
(defglobal ?*activate-EL13c171-salience* = 0)
(defglobal ?*EL13c171-salience* = 0)
(defglobal ?*activate-EL13c187-salience* = 0)
(defglobal ?*EL13c187-salience* = 0)
(defglobal ?*activate-EL13c175-salience* = 0)
(defglobal ?*EL13c175-salience* = 0)
(defglobal ?*activate-EL13c168-salience* = 0)
(defglobal ?*EL13c168-salience* = 0)
(defglobal ?*activate-EL10c8-salience* = 0)
(defglobal ?*EL10c8-salience* = 0)
(defglobal ?*activate-EL14c93-salience* = 0)
(defglobal ?*EL14c93-salience* = 0)
(defglobal ?*activate-EL14c154-salience* = 0)
(defglobal ?*EL14c154-salience* = 0)
(defglobal ?*activate-EL15c97-salience* = 0)
(defglobal ?*EL15c97-salience* = 0)


(defglobal ?*activate-ork-Imposs630-10c-salience* = 0)
(defglobal ?*ork-Imposs630-10c-salience* = 0)
(defglobal ?*activate-ork-Imposs630-12c-salience* = 0)
(defglobal ?*ork-Imposs630-12c-salience* = 0)
(defglobal ?*activate-ork-Imposs630-13c-salience* = 0)
(defglobal ?*ork-Imposs630-13c-salience* = 0)
(defglobal ?*activate-ork-Imposs630-14c-salience* = 0)
(defglobal ?*ork-Imposs630-14c-salience* = 0)
(defglobal ?*activate-ork-Imposs630-15c-salience* = 0)
(defglobal ?*ork-Imposs630-15c-salience* = 0)
(defglobal ?*activate-ork-Imposs630-16c-salience* = 0)
(defglobal ?*ork-Imposs630-16c-salience* = 0)



(deffunction define-specific-saliences-at-L2 ()
    (bind ?*one-step-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*x-wing-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*super-hidden-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*finned-x-wing-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
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
    
    (bind ?*finned-swordfish-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-z-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*z-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
    (bind ?*activate-g-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*g-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
    ;;; Tridagon and anti-tridagon detection (by default, will possibly be redefined at level 12)
    (bind ?*activate-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    (bind ?*tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    (bind ?*activate-ork-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    (bind ?*ork-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
        
    ;;; Special EL<xx>c<yy> saliences
    (bind ?*activate-EL13c290-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c290-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL14c30-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL14c30-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL14c159-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL14c159-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL14c13-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL14c13-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL14c1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL14c1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL10c28-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL10c28-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c30-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c30-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c176-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c176-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c234-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c234-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c179-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c179-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL10c6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL10c6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c259-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c259-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c172-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c172-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c171-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c171-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c187-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c187-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c175-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c175-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL13c168-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL13c168-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL10c8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL10c8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL14c93-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL14c93-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL14c154-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL14c154-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-EL15c97-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*EL15c97-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; Eleven's 630 impossible patterns
    (bind ?*activate-ork-Imposs630-10c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imposs630-10c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imposs630-12c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imposs630-12c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imposs630-13c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imposs630-13c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imposs630-14c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imposs630-14c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imposs630-15c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imposs630-15c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imposs630-16c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imposs630-16c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*EL13c290*) then
        (bind ?*activate-EL13c290-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c290-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL14c30*) then
        (bind ?*activate-EL14c30-salience* ?*activate-ork-Imposs630-14c-salience*)
        (bind ?*EL14c30-salience* ?*ork-Imposs630-14c-salience*)
    )
    (if (not ?*EL14c159*) then
        (bind ?*activate-EL14c159-salience* ?*activate-ork-Imposs630-14c-salience*)
        (bind ?*EL14c159-salience* ?*ork-Imposs630-14c-salience*)
    )
    (if (not ?*EL14c13*) then
        (bind ?*activate-EL14c13-salience* ?*activate-ork-Imposs630-14c-salience*)
        (bind ?*EL14c13-salience* ?*ork-Imposs630-14c-salience*)
    )
    (if (not ?*EL14c1*) then
        (bind ?*activate-EL14c1-salience* ?*activate-ork-Imposs630-14c-salience*)
        (bind ?*EL14c1-salience* ?*ork-Imposs630-14c-salience*)
    )
    (if (not ?*EL10c28*) then
        (bind ?*activate-EL10c28-salience* ?*activate-ork-Imposs630-10c-salience*)
        (bind ?*EL10c28-salience* ?*ork-Imposs630-10c-salience*)
    )
    (if (not ?*EL13c30*) then
        (bind ?*activate-EL13c30-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c30-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL13c176*) then
        (bind ?*activate-EL13c176-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c176-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL13c234*) then
        (bind ?*activate-EL13c234-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c234-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL13c179*) then
        (bind ?*activate-EL13c179-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c179-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL10c6*) then
        (bind ?*activate-EL10c6-salience* ?*activate-ork-Imposs630-10c-salience*)
        (bind ?*EL10c6-salience* ?*ork-Imposs630-10c-salience*)
    )
    (if (not ?*EL13c259*) then
        (bind ?*activate-EL13c259-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c259-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL13c172*) then
        (bind ?*activate-EL13c172-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c172-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL13c171*) then
        (bind ?*activate-EL13c171-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c171-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL13c187*) then
        (bind ?*activate-EL13c187-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c187-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL13c175*) then
        (bind ?*activate-EL13c175-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c175-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL13c168*) then
        (bind ?*activate-EL13c168-salience* ?*activate-ork-Imposs630-13c-salience*)
        (bind ?*EL13c168-salience* ?*ork-Imposs630-13c-salience*)
    )
    (if (not ?*EL10c8*) then
        (bind ?*activate-EL10c8-salience* ?*activate-ork-Imposs630-10c-salience*)
        (bind ?*EL10c8-salience* ?*ork-Imposs630-10c-salience*)
    )
    (if (not ?*EL14c93*) then
        (bind ?*activate-EL14c93-salience* ?*activate-ork-Imposs630-14c-salience*)
        (bind ?*EL14c93-salience* ?*ork-Imposs630-14c-salience*)
    )
    (if (not ?*EL14c154*) then
        (bind ?*activate-EL14c154-salience* ?*activate-ork-Imposs630-14c-salience*)
        (bind ?*EL14c154-salience* ?*ork-Imposs630-14c-salience*)
    )
    (if (not ?*EL15c97*) then
        (bind ?*activate-EL15c97-salience* ?*activate-ork-Imposs630-15c-salience*)
        (bind ?*EL15c97-salience* ?*ork-Imposs630-15c-salience*)
    )
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

    (bind ?*finned-jellyfish-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-z-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*z-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-g-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*g-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; EXOCETS AND TRIDAGONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*activate-J2-Exocet-salience* = 0)
(defglobal ?*J2-Exocet-elimination-salience* = 0)
(defglobal ?*J2-Exocet-detection-salience* = 0)

(defglobal ?*activate-J3-Exocet-salience* = 0)
(defglobal ?*J3-Exocet-elimination-salience* = 0)
(defglobal ?*J3-Exocet-detection-salience* = 0)

(defglobal ?*activate-J4-Exocet-salience* = 0)
(defglobal ?*J4-Exocet-elimination-salience* = 0)
(defglobal ?*J4-Exocet-detection-salience* = 0)

(defglobal ?*activate-J5-Exocet-salience* = 0)
(defglobal ?*J5-Exocet-elimination-salience* = 0)
(defglobal ?*J5-Exocet-detection-salience* = 0)

(defglobal ?*activate-tridagon-link[12]-salience* = 0)
(defglobal ?*tridagon-link[12]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[12]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[12]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[13]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[13]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[14]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[14]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[15]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[15]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[16]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[16]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[17]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[17]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[18]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[18]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[19]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[19]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[20]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[20]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[21]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[21]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[22]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[22]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[23]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[23]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[24]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[24]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[25]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[25]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[26]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[26]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[27]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[27]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[28]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[28]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[29]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[29]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[30]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[30]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[31]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[31]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[32]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[32]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[33]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[33]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[34]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[34]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[35]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[35]-salience* = 0)
(defglobal ?*activate-tridagon-forcing-whip[36]-salience* = 0)
(defglobal ?*tridagon-forcing-whip[36]-salience* = 0)

(defglobal ?*activate-eleven-replacement-based-on-tridagon-link-salience* = 0)
(defglobal ?*eleven-replacement-based-on-tridagon-link-salience* = 0)
(defglobal ?*activate-eleven-replacement-based-on-general-tridagon-salience* = 0)
(defglobal ?*eleven-replacement-based-on-general-tridagon-salience* = 0)


(deffunction define-specific-saliences-at-L5 ()
)

(deffunction define-specific-saliences-at-L6 ()
    (bind ?*activate-J2-Exocet-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
    (bind ?*J2-Exocet-elimination-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
    (bind ?*J2-Exocet-detection-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
)

(deffunction define-specific-saliences-at-L9 ()
    (bind ?*activate-J3-Exocet-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
    (bind ?*J3-Exocet-elimination-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
    (bind ?*J3-Exocet-detection-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
)

(deffunction define-specific-saliences-at-L12 ()
    (bind ?*activate-J4-Exocet-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
    (bind ?*J4-Exocet-elimination-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
    (bind ?*J4-Exocet-detection-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
    
    (if (not ?*use-high-Tridagon-salience*) then
        (bind ?*activate-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
        (bind ?*tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
        
        (bind ?*activate-ork-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
        (bind ?*ork-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    )
    (bind ?*activate-tridagon-link[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    (bind ?*tridagon-link[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    
    (bind ?*activate-tridagon-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
)

(deffunction define-specific-saliences-at-L13 ()
    (bind ?*activate-tridagon-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L14 ()
    (bind ?*activate-tridagon-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L15 ()
    (bind ?*activate-J5-Exocet-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
    (bind ?*J5-Exocet-elimination-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS
    (bind ?*J5-Exocet-detection-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; EXOCETS

    (bind ?*activate-tridagon-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
)

(deffunction define-specific-saliences-at-L16 ()
    (bind ?*activate-tridagon-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L17 ()
    (bind ?*activate-tridagon-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L18 ()
    (bind ?*activate-tridagon-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L19 ()
    (bind ?*activate-tridagon-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L20 ()
    (bind ?*activate-tridagon-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L21 ()
    (bind ?*activate-tridagon-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L22 ()
    (bind ?*activate-tridagon-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L23 ()
    (bind ?*activate-tridagon-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L24 ()
    (bind ?*activate-tridagon-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L25 ()
    (bind ?*activate-tridagon-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L26 ()
    (bind ?*activate-tridagon-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L27 ()
    (bind ?*activate-tridagon-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L28 ()
    (bind ?*activate-tridagon-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L29 ()
    (bind ?*activate-tridagon-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L30 ()
    (bind ?*activate-tridagon-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L31 ()
    (bind ?*activate-tridagon-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L32 ()
    (bind ?*activate-tridagon-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L33 ()
    (bind ?*activate-tridagon-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L34 ()
    (bind ?*activate-tridagon-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L35 ()
    (bind ?*activate-tridagon-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L36 ()
    (bind ?*activate-tridagon-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*tridagon-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-eleven-replacement-based-on-tridagon-link-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*eleven-replacement-based-on-tridagon-link-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
    (bind ?*activate-eleven-replacement-based-on-general-tridagon-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*eleven-replacement-based-on-general-tridagon-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; TEMPLATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; templates are special global patterns (akin to mega-T&E)

(defglobal ?*activate-template-1-salience* = 0)
(defglobal ?*partial-template-1-salience* = 0)
(defglobal ?*template-1-salience* = 0)

(defglobal ?*activate-template-2-salience* = 0)
(defglobal ?*partial-template-2-salience* = 0)
(defglobal ?*template-2-salience* = 0)

(defglobal ?*activate-template-3-salience* = 0)
(defglobal ?*partial-template-3-salience* = 0)
(defglobal ?*template-3-salience* = 0)

(defglobal ?*activate-template-4-salience* = 0)
(defglobal ?*partial-template-4-salience* = 0)
(defglobal ?*template-4-salience* = 0)

(defglobal ?*activate-template-5-salience* = 0)
(defglobal ?*partial-template-5-salience* = 0)
(defglobal ?*template-5-salience* = 0)

(defglobal ?*activate-template-6-salience* = 0)
(defglobal ?*partial-template-6-salience* = 0)
(defglobal ?*template-6-salience* = 0)

(defglobal ?*activate-template-7-salience* = 0)
(defglobal ?*partial-template-7-salience* = 0)
(defglobal ?*template-7-salience* = 0)

(defglobal ?*activate-template-8-salience* = 0)
(defglobal ?*partial-template-8-salience* = 0)
(defglobal ?*template-8-salience* = 0)

(defglobal ?*activate-template-9-salience* = 0)
(defglobal ?*partial-template-9-salience* = 0)
(defglobal ?*template-9-salience* = 0)


(deffunction define-specific-template-saliences ()
    (bind ?*activate-template-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-template-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-template-2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-template-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-template-4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-template-5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-template-6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-template-7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-template-8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-9-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-template-9-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-9-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)







