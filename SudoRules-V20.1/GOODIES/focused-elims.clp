
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              FOCUSED ELIMINATIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - December 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Try to eliminate selected candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This function currently restricts only whips, braids, g-whips, g-braids, forcing-whips and forcing-braids.
;;; It doesn't restrict the other rules.
;;; It is not compatible with the activation of t-whips.
;;; It works in the current resolution state of contetxt 0,
;;; which must have been previously initialised by a "solve " or an "init" function.

(deffunction try-to-eliminate-candidates ($?list)
    (printout t "WARNING: this function is still at an experimental stage." crlf
        "It currently restricts only the following types of resolution rules:" crlf
        "whips, braids, g-whips, g-braids, forcing-whips and forcing-braids" crlf
        "(and not their typed versions)." crlf
        "It doesn't restrict any other rule." crlf
        "It is not compatible with the activation of t-whips." crlf
        "It works in the current resolution state of contetxt 0," crlf
        "which must have been previously initialised by a "solve " or an "init" function." crlf
    )
    
    (if ?*t-Whips* then
        (printout t "This function  doesn't work if t-whips are active." crlf)
        (halt)
    )
    ;;; first clean any previous focus list:
    (do-for-all-facts ((?focus candidate-in-focus)) TRUE (retract ?focus))
    (bind ?time1 (time))
    ;;; candidates in the focus list are tried for elimination here:
    (foreach ?cand $?list (assert (candidate-in-focus (label ?cand))))
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (if ?*print-time* then
        (printout t "solve-time = " (seconds-to-hours ?*solve-instance-time*) crlf)
        (printout t "nb-facts=" ?*nb-facts* crlf)
        (printout t crlf)
    )
    (print-current-resolution-state-in-context 0)
    ;;; now clean the focus list:
    (do-for-all-facts ((?focus candidate-in-focus)) TRUE (retract ?focus))
)

