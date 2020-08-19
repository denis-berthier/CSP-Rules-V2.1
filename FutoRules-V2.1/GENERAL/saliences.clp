
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
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





(defglobal ?*max-ascending-chain-eliminate-salience* = 0)
(defglobal ?*end-max-ascending-chain-eliminate-salience* = 0)
(defglobal ?*max-ascending-chain-salience* = 0)
(defglobal ?*ascending-chain-salience* = 0)

(defglobal ?*strong-ascending-chain-eliminate-salience* = 0)
(defglobal ?*end-strong-ascending-chain-eliminate-salience* = 0)

(defglobal ?*extremum-eliminate-salience* = 0)
(defglobal ?*end-extremum-eliminate-salience* = 0)

(defglobal ?*strong-extremum-eliminate-salience* = 0)
(defglobal ?*end-strong-extremum-eliminate-salience* = 0)


(deffunction define-specific-pre-Singles-saliences ()
    ;;; ascending chains, a type of whip[1], are given high priority in pure Futoshiki
    (bind ?*max-ascending-chain-eliminate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-max-ascending-chain-eliminate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*max-ascending-chain-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ascending-chain-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*strong-ascending-chain-eliminate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-strong-ascending-chain-eliminate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*extremum-eliminate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-extremum-eliminate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*strong-extremum-eliminate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-strong-extremum-eliminate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)



(defglobal ?*strong-ascending-chain-salience* = 0)

(defglobal ?*max-ascending-chain-in-a-line-salience* = 0)
(defglobal ?*extremum-salience* = 0)
(defglobal ?*ascending-chain-in-a-line-salience* = 0)

(defglobal ?*strong-extremum-salience* = 0)



(deffunction define-specific-post-Singles-pre-init-links-saliences ()
    ;;; ascending chains are given lower priority than Singles in "impure" Futoshiki
    (if (not ?*pure-Futoshiki*) then
        (bind ?*max-ascending-chain-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
        (bind ?*ascending-chain-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    ;;; strong-ascending chains are given lower priority than singles but higher priority than whips[1]
    (bind ?*strong-ascending-chain-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; hills and valleys are given exceptionally high priority; weak form and strong form have the same priority
    (bind ?*max-ascending-chain-in-a-line-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*extremum-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*ascending-chain-in-a-line-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*strong-extremum-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
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


(defglobal ?*naked-triplets-salience* = 0)
(defglobal ?*hidden-triplets-salience* = 0)
(defglobal ?*super-hidden-triplets-salience* = 0)
(defglobal ?*swordfish-salience* = 0)


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


(deffunction define-specific-saliences-at-L2 ()
    (bind ?*activate-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*x-wing-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*super-hidden-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)


 (deffunction define-specific-saliences-at-L3 ()
    (bind ?*activate-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*swordfish-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*super-hidden-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
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
)




