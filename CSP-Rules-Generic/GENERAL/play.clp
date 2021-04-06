
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              PLAY
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





;;; Whether links have been activated or not, but never before (because the numbers of links are printed)
;;; start "serious" play
;;; Notice that this rule will never fire is there is a solution in BRT.


(defrule enable-rules-beyond-BRT-in-initial-context
	(declare (salience ?*start-serious-play-salience*))
	(logical (context (name ?cont&0)) (technique ?cont BRT))
    (not (play-already-asserted))
=>
    (bind ?*density* (density ?*nb-candidates* ?*links-count*))
    (if ?*print-actions* then
        (printout t crlf "Starting non trivial part of solution ")
        (if ?*print-RS-after-Singles* then (printout t "with the following RESOLUTION STATE:"))
        (printout t crlf)
        (if ?*print-RS-after-Singles* then (print-current-resolution-state))
    )
    (if ?*print-initial-state* then
        (printout t ?*nb-candidates* " candidates, "
            ?*csp-links-count* " csp-links and " ?*links-count* " links."
            " Density = " ?*density* "%" crlf crlf
        )
    )
    (assert (play))
    (assert (play-already-asserted))
)


