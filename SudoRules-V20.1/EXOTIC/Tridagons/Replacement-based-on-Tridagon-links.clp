
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              SUDORULES / EXOTIC
;;;                              ELEVEN REPLACEMENT BASED ON TRIDAGON LINKS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - April 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ELEVEN REPLACEMENT BASED ON TRIDAGON LINKS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule activate-eleven-replacement-based-on-tridagon-links
    (declare (salience ?*activate-eleven-replacement-based-on-tridagon-link-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont eleven-replacement-based-on-tridagon-link))
    )
=>
    (if ?*print-levels* then (printout t "Entering_level_eleven-replact-for-trid"))
    (assert (technique ?cont eleven-replacement-based-on-tridagon-link))
    (bind ?*technique* eleven-replacement-based-on-tridagon-link)
)


(defrule track-eleven-replacement-based-on-tridagon
    (declare (salience ?*activate-eleven-replacement-based-on-tridagon-link-salience*))
    ?level <- (technique ?cont eleven-replacement-based-on-tridagon-link)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule eleven-replacement-based-on-tridagon-link
	(declare (salience ?*eleven-replacement-based-on-tridagon-link-salience*))
	(technique ?cont eleven-replacement-based-on-tridagon-link)
    (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3)
    (not (eleven-tried ?cont))
=>
    (bind ?RS (compute-current-resolution-state))
    (printout t crlf)
    (pretty-print-sukaku-list ?RS)
    (printout t "***** STARTING ELEVEN''S REPLACEMENT TECHNIQUE *****" crlf)
    (printout t "RELEVANT DIGIT REPLACEMENTS WILL BE NECESSARY AT THE END, based on the original givens." crlf)
    (assert (eleven-tried ?cont))
    (solve-sukaku-list-by-eleven-replacement ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?RS)
)

