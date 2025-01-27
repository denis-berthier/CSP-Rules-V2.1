
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


;;; Rules for sk-loops:
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
;;; SUBSETS, DEADLY PATTERNS, TRIDAGONS and IMPOSSIBLE PATTERNS
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


;;; deadly patterns:
(defglobal ?*activate-deadly-pattern-rule[4-2]-salience* = 0)
(defglobal ?*deadly-pattern-rule[4-2]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[6-2]-salience* = 0)
(defglobal ?*deadly-pattern-rule[6-2]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[6-3]-salience* = 0)
(defglobal ?*deadly-pattern-rule[6-3]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[8-2]-salience* = 0)
(defglobal ?*deadly-pattern-rule[8-2]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[8-3]-salience* = 0)
(defglobal ?*deadly-pattern-rule[8-3]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[8-4]-salience* = 0)
(defglobal ?*deadly-pattern-rule[8-4]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[9-2]-salience* = 0)
(defglobal ?*deadly-pattern-rule[9-2]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[9-3]-salience* = 0)
(defglobal ?*deadly-pattern-rule[9-3]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[9-4]-salience* = 0)
(defglobal ?*deadly-pattern-rule[9-4]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[10-2]-salience* = 0)
(defglobal ?*deadly-pattern-rule[10-2]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[10-3]-salience* = 0)
(defglobal ?*deadly-pattern-rule[10-3]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[10-4]-salience* = 0)
(defglobal ?*deadly-pattern-rule[10-4]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[10-5]-salience* = 0)
(defglobal ?*deadly-pattern-rule[10-5]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[11-2]-salience* = 0)
(defglobal ?*deadly-pattern-rule[11-2]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[11-3]-salience* = 0)
(defglobal ?*deadly-pattern-rule[11-3]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[11-4]-salience* = 0)
(defglobal ?*deadly-pattern-rule[11-4]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[11-5]-salience* = 0)
(defglobal ?*deadly-pattern-rule[11-5]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[12-2]-salience* = 0)
(defglobal ?*deadly-pattern-rule[12-2]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[12-3]-salience* = 0)
(defglobal ?*deadly-pattern-rule[12-3]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[12-4]-salience* = 0)
(defglobal ?*deadly-pattern-rule[12-4]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[12-5]-salience* = 0)
(defglobal ?*deadly-pattern-rule[12-5]-salience* = 0)
(defglobal ?*activate-deadly-pattern-rule[12-6]-salience* = 0)
(defglobal ?*deadly-pattern-rule[12-6]-salience* = 0)

(deffunction define-deadly-patterns-saliences ()
    (bind ?*activate-deadly-pattern-rule[4-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[4-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[6-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[6-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[6-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[6-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[8-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[8-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[8-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[8-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[8-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[8-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[9-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[9-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[9-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[9-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[9-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[9-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[10-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[10-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[10-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[10-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[10-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[10-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[10-5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[10-5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[11-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[11-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[11-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[11-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[11-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[11-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[11-5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[11-5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[12-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[12-2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[12-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[12-3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[12-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[12-4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[12-5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[12-5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-deadly-pattern-rule[12-6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*deadly-pattern-rule[12-6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

;;; impossible patterns
(defglobal ?*activate-tridagon[12]-salience* = 0)
(defglobal ?*tridagon[12]-salience* = 0)
(defglobal ?*activate-ork-anti-tridagon[12]-salience* = 0)
(defglobal ?*ork-anti-tridagon[12]-salience* = 0)
(defglobal ?*activate-ork-degen-cyclic-anti-tridagon[12]-salience* = 0)
(defglobal ?*ork-degen-cyclic-anti-tridagon[12]-salience* = 0)


;;; ?*Imp630-Select1*
(defglobal ?*activate-ork-EL13c290-salience* = 0)
(defglobal ?*ork-EL13c290-salience* = 0)
(defglobal ?*activate-ork-EL14c30-salience* = 0)
(defglobal ?*ork-EL14c30-salience* = 0)
(defglobal ?*activate-ork-EL14c159-salience* = 0)
(defglobal ?*ork-EL14c159-salience* = 0)
(defglobal ?*activate-ork-EL14c1-salience* = 0)
(defglobal ?*ork-EL14c1-salience* = 0)
(defglobal ?*activate-ork-EL14c13-salience* = 0)
(defglobal ?*ork-EL14c13-salience* = 0)

;;; ?*Imp630-Select2*
(defglobal ?*activate-ork-EL10c28-salience* = 0)
(defglobal ?*ork-EL10c28-salience* = 0)
(defglobal ?*activate-ork-EL13c179-salience* = 0)
(defglobal ?*ork-EL13c179-salience* = 0)
(defglobal ?*activate-ork-EL13c30-salience* = 0)
(defglobal ?*ork-EL13c30-salience* = 0)
(defglobal ?*activate-ork-EL13c171-salience* = 0)
(defglobal ?*ork-EL13c171-salience* = 0)
(defglobal ?*activate-ork-EL13c234-salience* = 0)
(defglobal ?*ork-EL13c234-salience* = 0)
(defglobal ?*activate-ork-EL13c176-salience* = 0)
(defglobal ?*ork-EL13c176-salience* = 0)
(defglobal ?*activate-ork-EL10c6-salience* = 0)
(defglobal ?*ork-EL10c6-salience* = 0)

;;; ?*Imp630-Select3*
(defglobal ?*activate-ork-EL13c259-salience* = 0)
(defglobal ?*ork-EL13c259-salience* = 0)
(defglobal ?*activate-ork-EL10c8-salience* = 0)
(defglobal ?*ork-EL10c8-salience* = 0)
(defglobal ?*activate-ork-EL13c172-salience* = 0)
(defglobal ?*ork-EL13c172-salience* = 0)
(defglobal ?*activate-ork-EL14c19-salience* = 0)
(defglobal ?*ork-EL14c19-salience* = 0)
(defglobal ?*activate-ork-EL10c4-salience* = 0)
(defglobal ?*ork-EL10c4-salience* = 0)

;;; ?*Imp630-Select4*
(defglobal ?*activate-ork-EL13c175-salience* = 0)
(defglobal ?*ork-EL13c175-salience* = 0)
(defglobal ?*activate-ork-EL13c136-salience* = 0)
(defglobal ?*ork-EL13c136-salience* = 0)
(defglobal ?*activate-ork-EL15c97-salience* = 0)
(defglobal ?*ork-EL15c97-salience* = 0)
(defglobal ?*activate-ork-EL13c187-salience* = 0)
(defglobal ?*ork-EL13c187-salience* = 0)
(defglobal ?*activate-ork-EL14c93-salience* = 0)
(defglobal ?*ork-EL14c93-salience* = 0)
(defglobal ?*activate-ork-EL12c2-salience* = 0)
(defglobal ?*ork-EL12c2-salience* = 0)
(defglobal ?*activate-ork-EL14c154-salience* = 0)
(defglobal ?*ork-EL14c154-salience* = 0)
(defglobal ?*activate-ork-EL13c19-salience* = 0)
(defglobal ?*ork-EL13c19-salience* = 0)
(defglobal ?*activate-ork-EL13c170-salience* = 0)
(defglobal ?*ork-EL13c170-salience* = 0)
(defglobal ?*activate-ork-EL13c168-salience* = 0)
(defglobal ?*ork-EL13c168-salience* = 0)
(defglobal ?*activate-ork-EL10c10-salience* = 0)
(defglobal ?*ork-EL10c10-salience* = 0)


;;; Saliences for impossible patterns, in general.
;;; ork-Imp630-<xx>c saliences are intended for eleven's 630 patterns in two bands;
;;; ork-Imp-<xx>c saliences are intended for other impossible patterns.
;;; They come after saliences for the Imp630 lists with same number of cells
;;; because they will span three bands instead of two.
(defglobal ?*activate-ork-Imp630-10c-salience* = 0)
(defglobal ?*ork-Imp630-10c-salience* = 0)
(defglobal ?*activate-ork-Imp-10c-salience* = 0)
(defglobal ?*ork-Imp-10c-salience* = 0)
(defglobal ?*activate-ork-Imp-11c-salience* = 0)
(defglobal ?*ork-Imp-11c-salience* = 0)
(defglobal ?*activate-ork-Imp630-12c-salience* = 0)
(defglobal ?*ork-Imp630-12c-salience* = 0)
(defglobal ?*activate-ork-Imp-12c-salience* = 0)
(defglobal ?*ork-Imp-12c-salience* = 0)
(defglobal ?*activate-ork-Imp630-13c-salience* = 0)
(defglobal ?*ork-Imp630-13c-salience* = 0)
(defglobal ?*activate-ork-Imp-13c-salience* = 0)
(defglobal ?*ork-Imp-13c-salience* = 0)
(defglobal ?*activate-ork-Imp630-14c-salience* = 0)
(defglobal ?*ork-Imp630-14c-salience* = 0)
(defglobal ?*activate-ork-Imp-14c-salience* = 0)
(defglobal ?*ork-Imp-14c-salience* = 0)
(defglobal ?*activate-ork-Imp630-15c-salience* = 0)
(defglobal ?*ork-Imp630-15c-salience* = 0)
(defglobal ?*activate-ork-Imp-15c-salience* = 0)
(defglobal ?*ork-Imp-15c-salience* = 0)
(defglobal ?*activate-ork-Imp630-16c-salience* = 0)
(defglobal ?*ork-Imp630-16c-salience* = 0)
(defglobal ?*activate-ork-Imp-16c-salience* = 0)
(defglobal ?*ork-Imp-16c-salience* = 0)
(defglobal ?*activate-ork-Imp-17c-salience* = 0)
(defglobal ?*ork-Imp-17c-salience* = 0)
(defglobal ?*activate-ork-Imp-18c-salience* = 0)
(defglobal ?*ork-Imp-18c-salience* = 0)



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


;;; Allow to raise saliences for pre-selected subsets of Imp630 patterns
(deffunction define-selected-Imp630-saliences-at-L3 ()
    ;;; ?*Imp630-Select1*
    (bind ?*activate-ork-EL13c290-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c290-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL14c30-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL14c30-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL14c159-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL14c159-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL14c1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL14c1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL14c13-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL14c13-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
    ;;; ?*Imp630-Select2*
    (bind ?*activate-ork-EL10c28-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL10c28-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c179-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c179-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c30-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c30-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c171-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c171-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c234-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c234-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c176-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c176-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL10c6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL10c6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; ?*Imp630-Select3*
    (bind ?*activate-ork-EL13c259-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c259-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL10c8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL10c8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c172-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c172-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL14c19-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL14c19-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL10c4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL10c4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; ?*Imp630-Select4*
    (bind ?*activate-ork-EL13c175-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c175-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c136-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c136-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL15c97-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL15c97-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c187-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c187-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL14c93-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL14c93-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL12c2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL12c2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL14c154-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL14c154-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c19-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c19-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c170-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c170-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL13c168-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL13c168-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-EL10c10-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-EL10c10-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

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
    
     ;;; more complex use of deadly patterns:
     (define-deadly-patterns-saliences)

    ;;; Tridagon and anti-tridagon detection (by default, will possibly be redefined at level 12)
    (bind ?*activate-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    (bind ?*tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    (bind ?*activate-ork-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    (bind ?*ork-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; tridagon
    (bind ?*activate-ork-degen-cyclic-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; degen tridagon
    (bind ?*ork-degen-cyclic-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; degen tridagon

    ;;; Raise saliences for pre-selected subsets of Imp630 patterns
    (define-selected-Imp630-saliences-at-L3)

    ;;; Eleven's 630 impossible patterns and other impossible patterns
    (bind ?*activate-ork-Imp630-10c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp630-10c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp-10c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp-10c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp-11c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp-11c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp630-12c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp630-12c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp-12c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp-12c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp630-13c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp630-13c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp-13c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp-13c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp630-14c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp630-14c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp-14c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp-14c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp630-15c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp630-15c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp-15c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp-15c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp630-16c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp630-16c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp-16c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp-16c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp-17c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp-17c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-ork-Imp-18c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ork-Imp-18c-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; For patterns that have not been explicitly selected, re-assign them their default saliences
    ;;; ?*Imp630-Select1*
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c290*)) then
        (bind ?*activate-ork-EL13c290-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c290-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL14c30*)) then
        (bind ?*activate-ork-EL14c30-salience* ?*activate-ork-Imp630-14c-salience*)
        (bind ?*ork-EL14c30-salience* ?*ork-Imp630-14c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL14c159*)) then
        (bind ?*activate-ork-EL14c159-salience* ?*activate-ork-Imp630-14c-salience*)
        (bind ?*ork-EL14c159-salience* ?*ork-Imp630-14c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL14c1*)) then
        (bind ?*activate-ork-EL14c1-salience* ?*activate-ork-Imp630-14c-salience*)
        (bind ?*ork-EL14c1-salience* ?*ork-Imp630-14c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL14c13*)) then
        (bind ?*activate-ork-EL14c13-salience* ?*activate-ork-Imp630-14c-salience*)
        (bind ?*ork-EL14c13-salience* ?*ork-Imp630-14c-salience*)
    )
    
    ;;; ?*Imp630-Select2*
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL10c28*)) then
        (bind ?*activate-ork-EL10c28-salience* ?*activate-ork-Imp630-10c-salience*)
        (bind ?*ork-EL10c28-salience* ?*ork-Imp630-10c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c179*)) then
        (bind ?*activate-ork-EL13c179-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c179-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c30*)) then
        (bind ?*activate-ork-EL13c30-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c30-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c171*)) then
        (bind ?*activate-ork-EL13c171-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c171-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c234*)) then
        (bind ?*activate-ork-EL13c234-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c234-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c176*)) then
        (bind ?*activate-ork-EL13c176-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c176-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL10c6*)) then
        (bind ?*activate-ork-EL10c6-salience* ?*activate-ork-Imp630-10c-salience*)
        (bind ?*ork-EL10c6-salience* ?*ork-Imp630-10c-salience*)
    )

    ;;; ?*Imp630-Select3*
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c259*)) then
        (bind ?*activate-ork-EL13c259-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c259-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL10c8*)) then
        (bind ?*activate-ork-EL10c8-salience* ?*activate-ork-Imp630-10c-salience*)
        (bind ?*ork-EL10c8-salience* ?*ork-Imp630-10c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c172*)) then
        (bind ?*activate-ork-EL13c172-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c172-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL14c19*)) then
        (bind ?*activate-ork-EL14c19-salience* ?*activate-ork-Imp630-14c-salience*)
        (bind ?*ork-EL14c19-salience* ?*ork-Imp630-14c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL10c4*)) then
        (bind ?*activate-ork-EL10c4-salience* ?*activate-ork-Imp630-10c-salience*)
        (bind ?*ork-EL10c4-salience* ?*ork-Imp630-10c-salience*)
    )
    
    ;;; ?*Imp630-Select4*
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c175*)) then
        (bind ?*activate-ork-EL13c175-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c175-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c136*)) then
        (bind ?*activate-ork-EL13c136-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c136-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL15c97*)) then
        (bind ?*activate-ork-EL15c97-salience* ?*activate-ork-Imp630-15c-salience*)
        (bind ?*ork-EL15c97-salience* ?*ork-Imp630-15c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c187*)) then
        (bind ?*activate-ork-EL13c187-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c187-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL14c93*)) then
        (bind ?*activate-ork-EL14c93-salience* ?*activate-ork-Imp630-14c-salience*)
        (bind ?*ork-EL14c93-salience* ?*ork-Imp630-14c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL12c2*)) then
        (bind ?*activate-ork-EL12c2-salience* ?*activate-ork-Imp630-12c-salience*)
        (bind ?*ork-EL12c2-salience* ?*ork-Imp630-12c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL14c154*)) then
        (bind ?*activate-ork-EL14c154-salience* ?*activate-ork-Imp630-14c-salience*)
        (bind ?*ork-EL14c154-salience* ?*ork-Imp630-14c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c19*)) then
        (bind ?*activate-ork-EL13c19-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c19-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c170*)) then
        (bind ?*activate-ork-EL13c170-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c170-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL13c168*)) then
        (bind ?*activate-ork-EL13c168-salience* ?*activate-ork-Imp630-13c-salience*)
        (bind ?*ork-EL13c168-salience* ?*ork-Imp630-13c-salience*)
    )
    (if (and (not ?*raise-selected-Imp630-saliences*) (not ?*EL10c10*)) then
        (bind ?*activate-ork-EL10c10-salience* ?*activate-ork-Imp630-10c-salience*)
        (bind ?*ork-EL10c10-salience* ?*ork-Imp630-10c-salience*)
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
(defglobal ?*activate-eleven-replacement-in-tridagon-block-salience* = 0)
(defglobal ?*eleven-replacement-in-tridagon-block-salience* = 0)
(defglobal ?*activate-eleven-replacement-in-dct-block-salience* = 0)
(defglobal ?*eleven-replacement-in-dct-block-salience* = 0)


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
        
        (bind ?*activate-ork-degen-cyclic-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; degen tridagon
        (bind ?*ork-degen-cyclic-anti-tridagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ;;;; degen tridagon
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
    
    (bind ?*activate-eleven-replacement-in-tridagon-block-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*eleven-replacement-in-tridagon-block-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-eleven-replacement-in-dct-block-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*eleven-replacement-in-dct-block-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
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
(defglobal ?*template-1-salience* = 0)
(defglobal ?*template-1-assert-salience* = 0)
(defglobal ?*template-1-elim-salience* = 0)

(defglobal ?*activate-template-2-salience* = 0)
(defglobal ?*template-2-salience* = 0)
(defglobal ?*template-2-assert-salience* = 0)
(defglobal ?*template-2-elim-salience* = 0)

(defglobal ?*activate-template-3-salience* = 0)
(defglobal ?*template-3-salience* = 0)
(defglobal ?*template-3-assert-salience* = 0)
(defglobal ?*template-3-clean-salience* = 0)
(defglobal ?*template-3-elim-salience* = 0)

(defglobal ?*activate-template-4-salience* = 0)
(defglobal ?*template-4-salience* = 0)
(defglobal ?*template-4-assert-salience* = 0)
(defglobal ?*template-4-clean-salience* = 0)
(defglobal ?*template-4-elim-salience* = 0)

(defglobal ?*activate-template-5-salience* = 0)
(defglobal ?*template-5-salience* = 0)
(defglobal ?*template-5-assert-salience* = 0)
(defglobal ?*template-5-clean-salience* = 0)
(defglobal ?*template-5-elim-salience* = 0)

(defglobal ?*activate-template-6-salience* = 0)
(defglobal ?*template-6-salience* = 0)
(defglobal ?*template-6-assert-salience* = 0)
(defglobal ?*template-6-clean-salience* = 0)
(defglobal ?*template-6-elim-salience* = 0)

(defglobal ?*activate-template-7-salience* = 0)
(defglobal ?*template-7-salience* = 0)
(defglobal ?*template-7-assert-salience* = 0)
(defglobal ?*template-7-clean-salience* = 0)
(defglobal ?*template-7-elim-salience* = 0)

(defglobal ?*activate-template-8-salience* = 0)
(defglobal ?*template-8-salience* = 0)
(defglobal ?*template-8-assert-salience* = 0)
(defglobal ?*template-8-clean-salience* = 0)
(defglobal ?*template-8-elim-salience* = 0)

(defglobal ?*activate-template-9-salience* = 0)
(defglobal ?*template-9-salience* = 0)
(defglobal ?*template-9-assert-salience* = 0)
(defglobal ?*template-9-clean-salience* = 0)
(defglobal ?*template-9-elim-salience* = 0)


(deffunction define-specific-template-saliences ()
    (bind ?*activate-template-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-1-assert-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-1-elim-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-2-assert-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-2-elim-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-3-assert-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-3-clean-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-3-elim-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-4-assert-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-4-clean-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-4-elim-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-5-assert-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-5-clean-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-5-elim-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-6-assert-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-6-clean-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-6-elim-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-7-assert-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-7-clean-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-7-elim-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-8-assert-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-8-clean-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-8-elim-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-template-9-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-9-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-9-assert-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-9-clean-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*template-9-elim-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)







