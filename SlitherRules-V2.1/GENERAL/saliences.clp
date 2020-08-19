w
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ZERO + HV, N and P SINGLES, AND SPECIFIC PRE-SINGLES (BEFORE B AND I SINGLES)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; (defglobal ?*update-HV-candidates-nb-contacts-salience* = 0)

;;; Most obvious patterns

(defglobal ?*detect-zero-salience* = 0)
(defglobal ?*activate-special-single-salience* = 0)
(defglobal ?*H-V-single-salience* = 0)
(defglobal ?*N-single-salience* = 0)
(defglobal ?*special-N-single-salience* = 0)


;;; Other basic-patterns

(defglobal ?*detect-adjacent-3-0-salience* = 0)
(defglobal ?*detect-adjacent-3-nolines-salience* = 0)

(defglobal ?*activate-corners-salience* = 0)
(defglobal ?*detect-a-1-in-a-corner-salience* = 0)
(defglobal ?*detect-a-3-in-a-corner-salience* = 0)
(defglobal ?*detect-a-2-in-a-corner-salience* = 0)

(defglobal ?*detect-3-closed-corner-salience* = 0)


;;; Cell-corners

(defglobal ?*detect-closed-corner-salience* = 0)
(defglobal ?*detect-symmetric-corner-salience* = 0)
(defglobal ?*detect-asymmetric-corner-salience* = 0)

(defglobal ?*detect-2-open-corner-salience* = 0)
(defglobal ?*detect-2-isolated-corner-salience* = 0)
(defglobal ?*detect-2-non-closed-corner-salience* = 0)
(defglobal ?*detect-2-symmetric-corner-salience* = 0)
(defglobal ?*detect-2-asymmetric-corner-salience* = 0)


;;; Auxiliary diagonal-2s and diagonal-3-2s patterns

(defglobal ?*detect-diagonal-2s-2-salience* = 0)
(defglobal ?*detect-diagonal-2s-3-salience* = 0)
(defglobal ?*detect-diagonal-2s-4-salience* = 0)
(defglobal ?*detect-diagonal-2s-5-salience* = 0)
(defglobal ?*detect-diagonal-2s-6-salience* = 0)
(defglobal ?*detect-diagonal-2s-7-salience* = 0)
(defglobal ?*detect-diagonal-2s-8-salience* = 0)
(defglobal ?*detect-diagonal-2s-large-salience* = 0)

(defglobal ?*detect-diagonal-3-2s-1-salience* = 0)
(defglobal ?*detect-diagonal-3-2s-2-salience* = 0)
(defglobal ?*detect-diagonal-3-2s-3-salience* = 0)
(defglobal ?*detect-diagonal-3-2s-4-salience* = 0)
(defglobal ?*detect-diagonal-3-2s-5-salience* = 0)
(defglobal ?*detect-diagonal-3-2s-6-salience* = 0)
(defglobal ?*detect-diagonal-3-2s-7-salience* = 0)
(defglobal ?*detect-diagonal-3-2s-8-salience* = 0)
(defglobal ?*detect-diagonal-3-2s-large-salience* = 0)


;;; Patterns with diagonal-2s or diagonal-3-2s

(defglobal ?*detect-diagonal-3-0-salience* = 0)
(defglobal ?*detect-diagonal-3-2-0-salience* = 0) ; not used
(defglobal ?*detect-diagonal-3-2-2-0-salience* = 0) ; not used
(defglobal ?*detect-diagonal-3-2-2-2-0-salience* = 0) ; not used
(defglobal ?*detect-diagonal-3-2-2-2-2-0-salience* = 0) ; not used
(defglobal ?*detect-diagonal-3-2-2-2-2-2-0-salience* = 0) ; not used

(defglobal ?*detect-3-non-isolated-corner-salience* = 0)
(defglobal ?*detect-3-isolated-corner-salience* = 0)
(defglobal ?*detect-3-symmetric-corner-salience* = 0) ; used to replace rules diagonal-3-2s-0 and diagonal-3-2s-symmetric-end


(defglobal ?*detect-diagonal-3s-salience* = 0)
(defglobal ?*detect-diagonal-3-2-3-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-3-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2-3-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2-2-3-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2-2-2-3-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2-2-2-2-3-salience* = 0)

(defglobal ?*detect-3-asymmetric-corner-salience* = 0)


(defglobal ?*detect-diagonal-3-2+0-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2+0-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2+0-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2-2+0-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2-2-2+0-salience* = 0)

(defglobal ?*detect-diagonal-3-2-non-closed-corner-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-non-closed-end-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2-non-closed-end-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2-2-non-closed-end-salience* = 0)
(defglobal ?*detect-diagonal-3-2-2-2-2-2-non-closed-end-salience* = 0)


(defglobal ?*detect-3+diagonal-2-0-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-0-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-2-0-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-2-2-0-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-2-2-2-0-salience* = 0)

(defglobal ?*detect-3+diagonal-2-isolated-end-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-isolated-end-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-2-isolated-end-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-2-2-isolated-end-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-2-2-2-isolated-end-salience* = 0)

;;; 3+diagonal-2s-symmetric-end is dealt with by propagation
(defglobal ?*detect-3+diagonal-2-symmetric-corner-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-symmetric-end-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-2-symmetric-end-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-2-2-symmetric-end-salience* = 0)
(defglobal ?*detect-3+diagonal-2-2-2-2-2-symmetric-end-salience* = 0)

(defglobal ?*detect-diagonal-3-1-salience* = 0)
(defglobal ?*detect-diagonal-3-1-with-no-diagonal-outer-lines-from-1-salience* = 0)
(defglobal ?*detect-diagonal-3-1-with-no-diagonal-outer-lines-from-3-salience* = 0)
(defglobal ?*detect-diagonal-1-1-salience* = 0)
(defglobal ?*detect-1+3+1-salience* = 0)
(defglobal ?*detect-1+diagonal-2s-3+1-salience* = 0)

;;; Edge patterns
(defglobal ?*detect-adjacent-1-1-on-edge-salience* = 0)
(defglobal ?*detect-adjacent-1-1-on-pseudo-edge-salience* = 0)
(defglobal ?*detect-adjacent-1-3-on-edge-salience* = 0)
(defglobal ?*detect-adjacent-1-3-on-pseudo-edge-salience* = 0)
(defglobal ?*detect-adjacent-1-2-on-edge-forward-diagonal-2s-3-salience* = 0)
(defglobal ?*detect-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-salience* = 0)
(defglobal ?*detect-adjacent-1-2-on-edge-backward-diagonal-2s-3-salience* = 0)
(defglobal ?*detect-adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-salience* = 0)


;;; Non-W1-corner-patterns

(defglobal ?*detect-diagonal-1-1-in-corner-salience* = 0)
(defglobal ?*detect-diagonal-1-3-in-corner-salience* = 0)
(defglobal ?*detect-diagonal-2-3-in-corner-salience* = 0)
(defglobal ?*detect-diagonal-of-three-2s-in-corner-salience* = 0)
(defglobal ?*detect-diagonal-of-five-2s-in-corner-salience* = 0)

(defglobal ?*detect-diagonal-2-3+1-in-corner-salience* = 0)
(defglobal ?*detect-diagonal-2-2+3-in-corner-salience* = 0)

;;; Non-W1-patterns

(defglobal ?*detect-adjacent-3-3-salience* = 0)
(defglobal ?*detect-adjacent-3-2-0-salience* = 0)
(defglobal ?*detect-adjacent-3-2-noline-salience* = 0)
(defglobal ?*activate-square-of-2s-salience* = 0)
(defglobal ?*square-of-2s-salience* = 0)

(defglobal ?*detect-diagonal-3-1-salience* = 0)
(defglobal ?*detect-diagonal-1-3-salience* = 0)
(defglobal ?*detect-3+1+1+3-salience* = 0)
(defglobal ?*detect-diag-3-2s+1+1+diag-2s-3-salience* = 0)
(defglobal ?*detect-3-no-U-turn-salience* = 0)
(defglobal ?*detect-adjacent-3-x-symmetric-corners-salience* = 0)

;;; To-classify-patterns

(defglobal ?*detect-1-non-isolated-corner-salience* = 0)




;(defglobal ?*detect-two-diagonal-2s-with-two-lines-at-an-outer-corner-salience* = 0)
;(defglobal ?*detect-three-diagonal-2s-with-two-lines-at-an-outer-corner-salience* = 0)


;;; special-k-singles, I-singles and B-singles are deported here in order to give a chance to the specific rules subsumed by them
(defglobal ?*special-k-single-salience* = 0)
(defglobal ?*P-single-salience* = 0)
(defglobal ?*B-single-salience* = 0)
(defglobal ?*I-single-salience* = 0)

(defglobal ?*detect-1-symmetric-corner-salience* = 0)
(defglobal ?*detect-1-asymmetric-corner-salience* = 0)




(deffunction define-specific-pre-Singles-saliences ()
    
    ;;; Most obvious patterns
    (bind ?*detect-zero-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*H-V-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*N-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-N-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind  ?*activate-special-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; Other basic-patterns

    (bind ?*detect-adjacent-3-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-3-nolines-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-corners-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-a-1-in-a-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-a-3-in-a-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-a-2-in-a-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; Cell-corners

    (bind ?*detect-closed-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-symmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-asymmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*detect-2-open-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-2-isolated-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-2-non-closed-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-2-symmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-2-asymmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    ;;; Auxiliary diagonal-2s and diagonal-3-2s patterns

    (bind ?*detect-diagonal-2s-2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-2s-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-2s-4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-2s-5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-2s-6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-2s-7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-2s-8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-2s-large-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*detect-diagonal-3-2s-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2s-2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2s-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2s-4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2s-5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2s-6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2s-7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2s-8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2s-large-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    ;;; Patterns with diagonal-2s or diagonal-3-2s

    (bind ?*detect-diagonal-3-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-2-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    (bind ?*detect-diagonal-3s-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-2-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-2-2-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-2-2-2-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    (bind ?*detect-diagonal-3-2+0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2+0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2+0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-2+0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-2-2+0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*detect-diagonal-3-2-2-2-2-2-non-closed-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-2-non-closed-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-2-non-closed-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-2-non-closed-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-2-non-closed-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    (bind ?*detect-3+diagonal-2-2-2-2-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-2-2-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-2-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*detect-3+diagonal-2-2-2-2-2-isolated-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-2-2-2-isolated-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-2-2-isolated-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-2-isolated-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-isolated-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*detect-3+diagonal-2-2-2-2-2-symmetric-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-2-2-2-symmetric-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-2-2-symmetric-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-2-symmetric-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+diagonal-2-symmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    (bind ?*detect-3-closed-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3-non-isolated-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3-isolated-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3-symmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3-asymmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    (bind ?*detect-diagonal-3-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-1-with-no-diagonal-outer-lines-from-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-3-1-with-no-diagonal-outer-lines-from-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-1-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-1+3+1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-1+diagonal-2s-3+1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; Edge patterns
    (bind ?*detect-adjacent-1-1-on-edge-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-1-1-on-pseudo-edge-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-1-3-on-edge-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-1-3-on-pseudo-edge-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-1-2-on-edge-forward-diagonal-2s-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-1-2-on-edge-backward-diagonal-2s-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    (bind ?*detect-3-closed-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3-isolated-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3-symmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3-asymmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))



    ;;; Non-W1-corner-patterns

    (bind ?*detect-diagonal-1-1-in-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-1-3-in-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-2-3-in-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-of-three-2s-in-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-of-five-2s-in-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*detect-diagonal-2-3+1-in-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-2-2+3-in-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; Non-W1-patterns

    (bind ?*detect-adjacent-3-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-3-2-0-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-3-2-noline-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-square-of-2s-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*square-of-2s-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*detect-diagonal-3-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diagonal-1-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3+1+1+3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-diag-3-2s+1+1+diag-2s-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-3-no-U-turn-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-adjacent-3-x-symmetric-corners-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; To-classify-patterns

    (bind ?*detect-1-non-isolated-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

;    (bind ?*detect-two-diagonal-2s-with-two-lines-at-an-outer-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
;    (bind ?*detect-three-diagonal-2s-with-two-lines-at-an-outer-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    ;;; Delayed special Singles:
    ;;; special-k-singles, I-singles and B-singles are deported here in order to give a chance to the specific rules subsumed by them
    (bind ?*special-k-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*P-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*B-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*I-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; propagate (a)symmetry of 1s
    (bind ?*detect-1-symmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*detect-1-asymmetric-corner-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; POST-SINGLES, PRE-INIT-LINKS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LOOP ELIMINATION RULES and LINE vs COLOUR RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; LOOPS

(defglobal ?*activate-loop[6]-salience* = 0)
(defglobal ?*loop[6]-salience* = 0)
(defglobal ?*partial-loop[5]-salience* = 0)

(defglobal ?*activate-loop[8]-salience* = 0)
(defglobal ?*loop[8]-salience* = 0)
(defglobal ?*partial-loop[7]-salience* = 0)

(defglobal ?*activate-loop[10]-salience* = 0)
(defglobal ?*loop[10]-salience* = 0)
(defglobal ?*partial-loop[9]-salience* = 0)

(defglobal ?*activate-loop[12]-salience* = 0)
(defglobal ?*loop[12]-salience* = 0)
(defglobal ?*partial-loop[11]-salience* = 0)

(defglobal ?*activate-loop[14]-salience* = 0)
(defglobal ?*loop[14]-salience* = 0)
(defglobal ?*partial-loop[13]-salience* = 0)

(defglobal ?*activate-loop[16]-salience* = 0)
(defglobal ?*loop[16]-salience* = 0)
(defglobal ?*partial-loop[15]-salience* = 0)

(defglobal ?*activate-loop[18]-salience* = 0)
(defglobal ?*loop[18]-salience* = 0)
(defglobal ?*partial-loop[17]-salience* = 0)

(defglobal ?*activate-loop[20]-salience* = 0)
(defglobal ?*loop[20]-salience* = 0)
(defglobal ?*partial-loop[19]-salience* = 0)

(defglobal ?*activate-loop[22]-salience* = 0)
(defglobal ?*loop[22]-salience* = 0)
(defglobal ?*partial-loop[21]-salience* = 0)

(defglobal ?*activate-loop[24]-salience* = 0)
(defglobal ?*loop[24]-salience* = 0)
(defglobal ?*partial-loop[23]-salience* = 0)

(defglobal ?*activate-loop[26]-salience* = 0)
(defglobal ?*loop[26]-salience* = 0)
(defglobal ?*partial-loop[25]-salience* = 0)

(defglobal ?*activate-loop[28]-salience* = 0)
(defglobal ?*loop[28]-salience* = 0)
(defglobal ?*partial-loop[27]-salience* = 0)

(defglobal ?*activate-loop[30]-salience* = 0)
(defglobal ?*loop[30]-salience* = 0)
(defglobal ?*partial-loop[29]-salience* = 0)

(defglobal ?*activate-loop[32]-salience* = 0)
(defglobal ?*loop[32]-salience* = 0)
(defglobal ?*partial-loop[31]-salience* = 0)

(defglobal ?*activate-loop[34]-salience* = 0)
(defglobal ?*loop[34]-salience* = 0)
(defglobal ?*partial-loop[33]-salience* = 0)

(defglobal ?*activate-loop[36]-salience* = 0)
(defglobal ?*loop[36]-salience* = 0)
(defglobal ?*partial-loop[35]-salience* = 0)

(defglobal ?*activate-loop[38]-salience* = 0)
(defglobal ?*loop[38]-salience* = 0)
(defglobal ?*partial-loop[37]-salience* = 0)

(defglobal ?*activate-loop[40]-salience* = 0)
(defglobal ?*loop[40]-salience* = 0)
(defglobal ?*partial-loop[39]-salience* = 0)

(defglobal ?*activate-loop[42]-salience* = 0)
(defglobal ?*loop[42]-salience* = 0)
(defglobal ?*partial-loop[41]-salience* = 0)

(defglobal ?*activate-loop[44]-salience* = 0)
(defglobal ?*loop[44]-salience* = 0)
(defglobal ?*partial-loop[43]-salience* = 0)

(defglobal ?*activate-loop[46]-salience* = 0)
(defglobal ?*loop[46]-salience* = 0)
(defglobal ?*partial-loop[45]-salience* = 0)

(defglobal ?*activate-loop[48]-salience* = 0)
(defglobal ?*loop[48]-salience* = 0)
(defglobal ?*partial-loop[47]-salience* = 0)

(defglobal ?*activate-loop[50]-salience* = 0)
(defglobal ?*loop[50]-salience* = 0)
(defglobal ?*partial-loop[49]-salience* = 0)

(defglobal ?*activate-loop[52]-salience* = 0)
(defglobal ?*loop[52]-salience* = 0)
(defglobal ?*partial-loop[51]-salience* = 0)

(defglobal ?*activate-loop[54]-salience* = 0)
(defglobal ?*loop[54]-salience* = 0)
(defglobal ?*partial-loop[53]-salience* = 0)

(defglobal ?*activate-loop[56]-salience* = 0)
(defglobal ?*loop[56]-salience* = 0)
(defglobal ?*partial-loop[55]-salience* = 0)

(defglobal ?*activate-loop[58]-salience* = 0)
(defglobal ?*loop[58]-salience* = 0)
(defglobal ?*partial-loop[57]-salience* = 0)

(defglobal ?*activate-loop[60]-salience* = 0)
(defglobal ?*loop[60]-salience* = 0)
(defglobal ?*partial-loop[59]-salience* = 0)

(defglobal ?*activate-loop[62]-salience* = 0)
(defglobal ?*loop[62]-salience* = 0)
(defglobal ?*partial-loop[61]-salience* = 0)

(defglobal ?*activate-loop[64]-salience* = 0)
(defglobal ?*loop[64]-salience* = 0)
(defglobal ?*partial-loop[63]-salience* = 0)

(defglobal ?*activate-loop[66]-salience* = 0)
(defglobal ?*loop[66]-salience* = 0)
(defglobal ?*partial-loop[65]-salience* = 0)

(defglobal ?*activate-loop[68]-salience* = 0)
(defglobal ?*loop[68]-salience* = 0)
(defglobal ?*partial-loop[67]-salience* = 0)

(defglobal ?*activate-loop[70]-salience* = 0)
(defglobal ?*loop[70]-salience* = 0)
(defglobal ?*partial-loop[69]-salience* = 0)

(defglobal ?*activate-loop[72]-salience* = 0)
(defglobal ?*loop[72]-salience* = 0)
(defglobal ?*partial-loop[71]-salience* = 0)

(defglobal ?*activate-loop[74]-salience* = 0)
(defglobal ?*loop[74]-salience* = 0)
(defglobal ?*partial-loop[73]-salience* = 0)

(defglobal ?*activate-loop[76]-salience* = 0)
(defglobal ?*loop[76]-salience* = 0)
(defglobal ?*partial-loop[75]-salience* = 0)

(defglobal ?*activate-loop[78]-salience* = 0)
(defglobal ?*loop[78]-salience* = 0)
(defglobal ?*partial-loop[77]-salience* = 0)

(defglobal ?*activate-loop[80]-salience* = 0)
(defglobal ?*loop[80]-salience* = 0)
(defglobal ?*partial-loop[79]-salience* = 0)

(defglobal ?*activate-loop[>80]-salience* = 0)
(defglobal ?*loop[>80]-salience* = 0)
(defglobal ?*partial-loop[80]-salience* = 0)
(defglobal ?*partial-loop[>80]-salience* = 0)


(deffunction define-specific-loop-saliences ()
    (bind ?*activate-loop[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[38]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[38]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[37]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[40]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[40]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[39]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[42]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[42]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[41]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[44]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[44]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[43]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[46]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[46]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[45]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[48]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[48]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[47]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[50]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[50]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[49]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[52]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[52]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[51]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[54]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[54]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[53]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[56]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[56]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[55]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[58]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[58]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[57]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[60]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[60]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[59]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[62]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[62]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[61]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[64]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[64]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[63]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[66]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[66]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[65]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[68]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[68]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[67]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[70]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[70]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[69]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[72]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[72]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[71]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[74]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[74]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[73]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[76]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[76]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[75]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[78]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[78]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[77]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[79]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-loop[>80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*loop[>80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-loop[>80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)


;;; LINE vs COLOUR

(defglobal ?*activate-lines-vs-colours-salience* = 0)
(defglobal ?*lines-to-colours-salience* = 0)
(defglobal ?*colours-to-lines-salience* = 0)


(deffunction define-specific-colour-saliences ()
    (bind ?*activate-lines-vs-colours-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*lines-to-colours-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*colours-to-lines-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; EXTENDED LOOP ELIMINATION RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*activate-xtd-loop[2]-salience* = 0)
(defglobal ?*xtd-loop[2]-salience* = 0)

(defglobal ?*activate-xtd-loop[3]-salience* = 0)
(defglobal ?*xtd-loop[3]-salience* = 0)
(defglobal ?*partial-loop[2]-salience* = 0)

(defglobal ?*activate-xtd-loop[4]-salience* = 0)
(defglobal ?*xtd-loop[4]-salience* = 0)
(defglobal ?*partial-loop[3]-salience* = 0)

(defglobal ?*activate-xtd-loop[5]-salience* = 0)
(defglobal ?*xtd-loop[5]-salience* = 0)
(defglobal ?*partial-loop[4]-salience* = 0)

(defglobal ?*activate-xtd-loop[6]-salience* = 0)
(defglobal ?*xtd-loop[6]-salience* = 0)

(defglobal ?*activate-xtd-loop[7]-salience* = 0)
(defglobal ?*xtd-loop[7]-salience* = 0)
(defglobal ?*partial-loop[6]-salience* = 0)

(defglobal ?*activate-xtd-loop[8]-salience* = 0)
(defglobal ?*xtd-loop[8]-salience* = 0)

(defglobal ?*activate-xtd-loop[9]-salience* = 0)
(defglobal ?*xtd-loop[9]-salience* = 0)
(defglobal ?*partial-loop[8]-salience* = 0)

(defglobal ?*activate-xtd-loop[10]-salience* = 0)
(defglobal ?*xtd-loop[10]-salience* = 0)

(defglobal ?*activate-xtd-loop[11]-salience* = 0)
(defglobal ?*xtd-loop[11]-salience* = 0)
(defglobal ?*partial-loop[10]-salience* = 0)

(defglobal ?*activate-xtd-loop[12]-salience* = 0)
(defglobal ?*xtd-loop[12]-salience* = 0)

(defglobal ?*activate-xtd-loop[13]-salience* = 0)
(defglobal ?*xtd-loop[13]-salience* = 0)
(defglobal ?*partial-loop[12]-salience* = 0)

(defglobal ?*activate-xtd-loop[14]-salience* = 0)
(defglobal ?*xtd-loop[14]-salience* = 0)

(defglobal ?*activate-xtd-loop[15]-salience* = 0)
(defglobal ?*xtd-loop[15]-salience* = 0)
(defglobal ?*partial-loop[14]-salience* = 0)

(defglobal ?*activate-xtd-loop[16]-salience* = 0)
(defglobal ?*xtd-loop[16]-salience* = 0)

(defglobal ?*activate-xtd-loop[17]-salience* = 0)
(defglobal ?*xtd-loop[17]-salience* = 0)
(defglobal ?*partial-loop[16]-salience* = 0)

(defglobal ?*activate-xtd-loop[18]-salience* = 0)
(defglobal ?*xtd-loop[18]-salience* = 0)

(defglobal ?*activate-xtd-loop[19]-salience* = 0)
(defglobal ?*xtd-loop[19]-salience* = 0)
(defglobal ?*partial-loop[18]-salience* = 0)

(defglobal ?*activate-xtd-loop[20]-salience* = 0)
(defglobal ?*xtd-loop[20]-salience* = 0)

(defglobal ?*activate-xtd-loop[21]-salience* = 0)
(defglobal ?*xtd-loop[21]-salience* = 0)
(defglobal ?*partial-loop[20]-salience* = 0)

(defglobal ?*activate-xtd-loop[22]-salience* = 0)
(defglobal ?*xtd-loop[22]-salience* = 0)

(defglobal ?*activate-xtd-loop[23]-salience* = 0)
(defglobal ?*xtd-loop[23]-salience* = 0)
(defglobal ?*partial-loop[22]-salience* = 0)

(defglobal ?*activate-xtd-loop[24]-salience* = 0)
(defglobal ?*xtd-loop[24]-salience* = 0)

(defglobal ?*activate-xtd-loop[25]-salience* = 0)
(defglobal ?*xtd-loop[25]-salience* = 0)
(defglobal ?*partial-loop[24]-salience* = 0)

(defglobal ?*activate-xtd-loop[26]-salience* = 0)
(defglobal ?*xtd-loop[26]-salience* = 0)

(defglobal ?*activate-xtd-loop[27]-salience* = 0)
(defglobal ?*xtd-loop[27]-salience* = 0)
(defglobal ?*partial-loop[26]-salience* = 0)

(defglobal ?*activate-xtd-loop[28]-salience* = 0)
(defglobal ?*xtd-loop[28]-salience* = 0)

(defglobal ?*activate-xtd-loop[29]-salience* = 0)
(defglobal ?*xtd-loop[29]-salience* = 0)
(defglobal ?*partial-loop[28]-salience* = 0)

(defglobal ?*activate-xtd-loop[30]-salience* = 0)
(defglobal ?*xtd-loop[30]-salience* = 0)

(defglobal ?*activate-xtd-loop[31]-salience* = 0)
(defglobal ?*xtd-loop[31]-salience* = 0)
(defglobal ?*partial-loop[30]-salience* = 0)

(defglobal ?*activate-xtd-loop[32]-salience* = 0)
(defglobal ?*xtd-loop[32]-salience* = 0)

(defglobal ?*activate-xtd-loop[33]-salience* = 0)
(defglobal ?*xtd-loop[33]-salience* = 0)
(defglobal ?*partial-loop[32]-salience* = 0)

(defglobal ?*activate-xtd-loop[34]-salience* = 0)
(defglobal ?*xtd-loop[34]-salience* = 0)

(defglobal ?*activate-xtd-loop[35]-salience* = 0)
(defglobal ?*xtd-loop[35]-salience* = 0)
(defglobal ?*partial-loop[34]-salience* = 0)

(defglobal ?*activate-xtd-loop[36]-salience* = 0)
(defglobal ?*xtd-loop[36]-salience* = 0)

(defglobal ?*activate-xtd-loop[37]-salience* = 0)
(defglobal ?*xtd-loop[37]-salience* = 0)
(defglobal ?*partial-loop[36]-salience* = 0)

(defglobal ?*activate-xtd-loop[38]-salience* = 0)
(defglobal ?*xtd-loop[38]-salience* = 0)

(defglobal ?*activate-xtd-loop[39]-salience* = 0)
(defglobal ?*xtd-loop[39]-salience* = 0)
(defglobal ?*partial-loop[38]-salience* = 0)

(defglobal ?*activate-xtd-loop[40]-salience* = 0)
(defglobal ?*xtd-loop[40]-salience* = 0)

(defglobal ?*activate-xtd-loop[41]-salience* = 0)
(defglobal ?*xtd-loop[41]-salience* = 0)
(defglobal ?*partial-loop[40]-salience* = 0)

(defglobal ?*activate-xtd-loop[42]-salience* = 0)
(defglobal ?*xtd-loop[42]-salience* = 0)

(defglobal ?*activate-xtd-loop[43]-salience* = 0)
(defglobal ?*xtd-loop[43]-salience* = 0)
(defglobal ?*partial-loop[42]-salience* = 0)

(defglobal ?*activate-xtd-loop[44]-salience* = 0)
(defglobal ?*xtd-loop[44]-salience* = 0)

(defglobal ?*activate-xtd-loop[45]-salience* = 0)
(defglobal ?*xtd-loop[45]-salience* = 0)
(defglobal ?*partial-loop[44]-salience* = 0)

(defglobal ?*activate-xtd-loop[46]-salience* = 0)
(defglobal ?*xtd-loop[46]-salience* = 0)

(defglobal ?*activate-xtd-loop[47]-salience* = 0)
(defglobal ?*xtd-loop[47]-salience* = 0)
(defglobal ?*partial-loop[46]-salience* = 0)

(defglobal ?*activate-xtd-loop[48]-salience* = 0)
(defglobal ?*xtd-loop[48]-salience* = 0)

(defglobal ?*activate-xtd-loop[49]-salience* = 0)
(defglobal ?*xtd-loop[49]-salience* = 0)
(defglobal ?*partial-loop[48]-salience* = 0)

(defglobal ?*activate-xtd-loop[50]-salience* = 0)
(defglobal ?*xtd-loop[50]-salience* = 0)

(defglobal ?*activate-xtd-loop[51]-salience* = 0)
(defglobal ?*xtd-loop[51]-salience* = 0)
(defglobal ?*partial-loop[50]-salience* = 0)

(defglobal ?*activate-xtd-loop[52]-salience* = 0)
(defglobal ?*xtd-loop[52]-salience* = 0)

(defglobal ?*activate-xtd-loop[53]-salience* = 0)
(defglobal ?*xtd-loop[53]-salience* = 0)
(defglobal ?*partial-loop[52]-salience* = 0)

(defglobal ?*activate-xtd-loop[54]-salience* = 0)
(defglobal ?*xtd-loop[54]-salience* = 0)

(defglobal ?*activate-xtd-loop[55]-salience* = 0)
(defglobal ?*xtd-loop[55]-salience* = 0)
(defglobal ?*partial-loop[54]-salience* = 0)

(defglobal ?*activate-xtd-loop[56]-salience* = 0)
(defglobal ?*xtd-loop[56]-salience* = 0)

(defglobal ?*activate-xtd-loop[57]-salience* = 0)
(defglobal ?*xtd-loop[57]-salience* = 0)
(defglobal ?*partial-loop[56]-salience* = 0)

(defglobal ?*activate-xtd-loop[58]-salience* = 0)
(defglobal ?*xtd-loop[58]-salience* = 0)

(defglobal ?*activate-xtd-loop[59]-salience* = 0)
(defglobal ?*xtd-loop[59]-salience* = 0)
(defglobal ?*partial-loop[58]-salience* = 0)

(defglobal ?*activate-xtd-loop[60]-salience* = 0)
(defglobal ?*xtd-loop[60]-salience* = 0)

(defglobal ?*activate-xtd-loop[61]-salience* = 0)
(defglobal ?*xtd-loop[61]-salience* = 0)
(defglobal ?*partial-loop[60]-salience* = 0)

(defglobal ?*activate-xtd-loop[62]-salience* = 0)
(defglobal ?*xtd-loop[62]-salience* = 0)

(defglobal ?*activate-xtd-loop[63]-salience* = 0)
(defglobal ?*xtd-loop[63]-salience* = 0)
(defglobal ?*partial-loop[62]-salience* = 0)

(defglobal ?*activate-xtd-loop[64]-salience* = 0)
(defglobal ?*xtd-loop[64]-salience* = 0)

(defglobal ?*activate-xtd-loop[65]-salience* = 0)
(defglobal ?*xtd-loop[65]-salience* = 0)
(defglobal ?*partial-loop[64]-salience* = 0)

(defglobal ?*activate-xtd-loop[66]-salience* = 0)
(defglobal ?*xtd-loop[66]-salience* = 0)

(defglobal ?*activate-xtd-loop[67]-salience* = 0)
(defglobal ?*xtd-loop[67]-salience* = 0)
(defglobal ?*partial-loop[66]-salience* = 0)

(defglobal ?*activate-xtd-loop[68]-salience* = 0)
(defglobal ?*xtd-loop[68]-salience* = 0)

(defglobal ?*activate-xtd-loop[69]-salience* = 0)
(defglobal ?*xtd-loop[69]-salience* = 0)
(defglobal ?*partial-loop[68]-salience* = 0)

(defglobal ?*activate-xtd-loop[70]-salience* = 0)
(defglobal ?*xtd-loop[70]-salience* = 0)

(defglobal ?*activate-xtd-loop[71]-salience* = 0)
(defglobal ?*xtd-loop[71]-salience* = 0)
(defglobal ?*partial-loop[70]-salience* = 0)

(defglobal ?*activate-xtd-loop[72]-salience* = 0)
(defglobal ?*xtd-loop[72]-salience* = 0)

(defglobal ?*activate-xtd-loop[73]-salience* = 0)
(defglobal ?*xtd-loop[73]-salience* = 0)
(defglobal ?*partial-loop[72]-salience* = 0)

(defglobal ?*activate-xtd-loop[74]-salience* = 0)
(defglobal ?*xtd-loop[74]-salience* = 0)

(defglobal ?*activate-xtd-loop[75]-salience* = 0)
(defglobal ?*xtd-loop[75]-salience* = 0)
(defglobal ?*partial-loop[74]-salience* = 0)

(defglobal ?*activate-xtd-loop[76]-salience* = 0)
(defglobal ?*xtd-loop[76]-salience* = 0)

(defglobal ?*activate-xtd-loop[77]-salience* = 0)
(defglobal ?*xtd-loop[77]-salience* = 0)
(defglobal ?*partial-loop[76]-salience* = 0)

(defglobal ?*activate-xtd-loop[78]-salience* = 0)
(defglobal ?*xtd-loop[78]-salience* = 0)

(defglobal ?*activate-xtd-loop[79]-salience* = 0)
(defglobal ?*xtd-loop[79]-salience* = 0)
(defglobal ?*partial-loop[78]-salience* = 0)

(defglobal ?*activate-xtd-loop[80]-salience* = 0)
(defglobal ?*xtd-loop[80]-salience* = 0)

(defglobal ?*activate-xtd-loop[>80]-salience* = 0)
(defglobal ?*xtd-loop[>80]-salience* = 0)
(defglobal ?*partial-xtd-loop[80]-salience* = 0)
(defglobal ?*partial-xts-loop[>80]-salience* = 0)



(deffunction define-specific-xtd-loop-saliences ()
   (bind ?*activate-xtd-loop[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[37]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[37]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[38]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[38]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[39]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[39]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[38]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[40]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[40]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[41]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[41]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[40]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[42]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[42]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[43]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[43]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[42]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[44]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[44]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[45]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[45]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[44]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[46]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[46]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[47]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[47]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[46]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[48]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[48]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[49]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[49]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[48]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[50]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[50]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[51]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[51]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[50]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[52]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[52]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[53]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[53]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[52]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[54]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[54]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[55]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[55]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[54]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[56]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[56]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[57]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[57]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[56]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[58]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[58]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[59]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[59]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[58]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[60]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[60]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[61]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[61]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[60]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[62]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[62]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[63]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[63]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[62]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[64]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[64]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[65]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[65]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[64]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[66]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[66]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[67]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[67]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[66]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[68]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[68]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[69]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[69]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[68]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[70]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[70]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[71]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[71]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[70]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[72]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[72]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[73]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[73]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[72]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[74]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[74]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[75]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[75]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[74]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[76]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[76]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[77]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[77]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[76]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[78]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[78]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[79]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[79]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-loop[78]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-xtd-loop[>80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*xtd-loop[>80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-xtd-loop[80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-xts-loop[>80]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; POST-SINGLES, PRE-INIT-LINKS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction define-specific-post-Singles-pre-init-links-saliences ()
    (define-specific-loop-saliences)
    (define-specific-xtd-loop-saliences)
    (define-specific-colour-saliences)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GENERAL RESOLUTION RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SPECIFIC RESOLUTION RULES INVOLVING 1 CSP VARIABLE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*activate-special-whip[1]-salience* = 0)
(defglobal ?*HV-whip[1]-salience* = 0)
(defglobal ?*N-whip[1]-salience* = 0)
(defglobal ?*P-whip[1]-salience* = 0)
(defglobal ?*B-whip[1]-salience* = 0)
(defglobal ?*I-whip[1]-salience* = 0)



(deffunction define-specific-saliences-at-L1 ()
    (bind ?*activate-special-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*HV-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*N-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*P-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*B-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*I-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRINTING OF FINAL STATE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; POST SOLUTION FOUND SALIENCES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; in case no solution is found
(defglobal ?*print-unsolved-final-state-salience* = 0)
(defglobal ?*complete-IO-solution-salience* = 0)
(defglobal ?*complete-HV-solution-salience* = 0)
(defglobal ?*build-IO-solution-salience* = 0)
(defglobal ?*print-IO-solution-salience* = 0)
(defglobal ?*build-HV-solution-salience* = 0)
(defglobal ?*print-HV-solution-salience* = 0)


(deffunction define-final-saliences ()
    (bind ?*print-unsolved-final-state-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*complete-IO-solution-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*complete-HV-solution-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*build-IO-solution-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*print-IO-solution-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*build-HV-solution-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*print-HV-solution-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)



