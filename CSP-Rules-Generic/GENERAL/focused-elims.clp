
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

;;; This function is still at an experimental stage.
;;; It currently restricts only the following types of resolution rules:
;;; whips, braids, g-whips, g-braids, forcing-whips and forcing-braids
;;; (and their typed versions when they exist).
;;; It doesn't restrict any other rule (such as Subsets).
;;; It is not compatible with the activation of t-Whips or Typed-t-Whips.
;;; It works in the current resolution state of contetxt ?cont,
;;; which must have been previously initialised.

(deffunction try-to-eliminate-candidates-from-context (?cont $?list)
    ;;; first clean any previous focus list:
    (do-for-all-facts ((?focus candidate-in-focus)) (= ?focus:context ?cont) (retract ?focus))
    (bind ?time1 (time))
    ;;; candidates in the focus list are tried for elimination here:
    (foreach ?cand $?list (assert (candidate-in-focus (context ?cont) (label ?cand))))
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (if ?*print-time* then
        (printout t "solve-time = " (seconds-to-hours ?*solve-instance-time*) crlf)
        (printout t "nb-facts=" ?*nb-facts* crlf)
        (printout t crlf)
    )
    (if (= ?cont 0) then (print-current-resolution-state-in-context 0))
    ;;; now clean the focus list:
    (do-for-all-facts ((?focus candidate-in-focus)) (= ?focus:context ?cont) (retract ?focus))
)


(deffunction try-to-eliminate-candidates ($?list)
    (if (or ?*t-Whips* ?*Typed-t-Whips*) then
        (printout t "WARNING: this function  doesn't work if t-whips or typed-t-whips are active." crlf)
        (halt)
    )
    (printout t "This function works in the current resolution state," crlf
        "which must have been previously initialised by some solve or init function." crlf
    )
    (try-to-eliminate-candidates-from-context 0 $?list)
)
