
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              INIT-LINKS
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





;;; This is intended only as an example of what must be done
;;; Here, only half of the physical-csp-link and physical-link facts need be defined
;;; the other half is completed by symmetry


;;; based on the application-specific physical links
;;; create the csp-linked, linked and exists-link facts




(defrule track-init-effective-csp-links
    (declare (salience ?*init-csp-links-salience-1*))
	(init-links ?cont)
=>
    (assert (effective-csp-links----------------------------------------------))
)


(defrule init-effective-csp-links
    (declare (salience ?*init-csp-links-salience-2*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1))
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(or (physical-csp-link ?cand1 ?cand2  ?csp) (physical-csp-link ?cand2 ?cand1  ?csp))
=>
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2  ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1  ?csp))
	(bind ?*csp-links-count* (+ ?*csp-links-count* 1))
)




(defrule track-init-effective-non-csp-links
    (declare (salience ?*init-non-csp-links-salience-1*))
	(init-links ?cont)
=>
    (assert (effective-non-csp-links----------------------------------------------))
)


(defrule init-effective-non-csp-links
	;;; assert the other non-csp-links
    (declare (salience ?*init-non-csp-links-salience-2*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (label ?cand1))
		(candidate (context ?cont) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(or (physical-link ?cand1 ?cand2 ?lk) (physical-link ?cand2 ?cand1 ?lk))
=>
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)





