
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              CLIPS-UTILS
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions on lists
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This was used in CLIPS 6.3
;;; It will raise an irrelevant "can't redefine" error in CLIPS 6.4

(deffunction union$ (?l1 ?l2)
	(insert$ ?l1 (+ (length$ ?l1) 1) ?l2)
)


(deffunction complement$ (?l1 ?l2)
	(bind ?l (create$))
	(loop-for-count (?i 1 (length$ ?l2))
		(bind ?nb (nth$ ?i ?l2))
		(if (not (member$ ?nb ?l1)) then
			(bind ?l (union$ ?l (create$ ?nb))))
	)
	?l
)


(deffunction intersection$ (?l1 ?l2)
	(if (< (length$ ?l1) (length$ ?l2))
		then (complement$ (complement$ ?l2 ?l1) ?l1)
		else (complement$ (complement$ ?l1 ?l2) ?l2)
	)
)



;;; This is introduced for backwards compatibility with CLIPS 6.3
;;; It will raise an irrelevant "can't redefine" error in CLIPS 6.4

(deffunction flush ($?vars)
    ;;; do nothing; it's already done in CLIPS 6.3
)


;;; This will work in Clips 6.3 and 6.4
;;; To be used within "progression bar" functions
(deffunction flush-stdout()
    (flush stdout)
)
