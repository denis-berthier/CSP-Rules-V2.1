
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





;;; Whether links have been activated or not,
;;; but never before (because the numbers of links must be known before being printed),
;;; start "serious" play.
;;; Notice that this rule will never fire is there is a solution in BRT.


(defrule enable-rules-beyond-BRT-in-initial-context
	(declare (salience ?*start-serious-play-salience*))
	(logical (context (name ?cont&0)) (technique ?cont BRT))
    (not (play-already-asserted))
=>
    (bind ?*density* (density ?*nb-candidates* ?*links-count*))
    (if (and ?*print-actions* ?*print-RS-after-Singles*) then
        (printout t "Resolution state after Singles:" crlf)
        (pretty-print-current-resolution-state)
        (printout t ?*nb-candidates* " candidates, "
            ?*csp-links-count* " csp-links and " ?*links-count* " links."
            " Density = " ?*density* "%" crlf
        )
        (printout t "Starting non trivial part of solution." crlf)
    )
    (assert (play))
    (assert (play-already-asserted))
)


