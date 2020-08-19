
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              PARAMETERS
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; general parameters for the nrc, loop and HV notations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*diagonal-symbol* = "...")

(defglobal ?*link-symbol-in-loops* = "-")



;;; symbols used for printing the HV solution

(defglobal ?*point-sign* = ".") ;;; sign at the corners of the cells (. could be replaced by +)

(defglobal ?*TRUE-horizontal-sign* = "———") ;;; sign for TRUE H variables (alt- could be replaced by -)
(defglobal ?*FALSE-horizontal-sign* = "   ") ;;; sign for FALSE H variables
(defglobal ?*UNDECIDED-horizontal-sign* = "...") ;;; sign for undecided H variables

(defglobal ?*TRUE-vertical-sign* = "|") ;;; sign for TRUE V variables
(defglobal ?*FALSE-vertical-sign* = " ") ;;; sign for FALSE V variables
(defglobal ?*UNDECIDED-vertical-sign* = ":") ;;; sign for undecided V variables

(defglobal ?*no-given-sign* = "   ") ;;; sign for cells with no given
(defglobal ?*pre-given-sign* = " ") ;;; sign for cells with a given
(defglobal ?*post-given-sign* = " ") ;;; sign for cells with a given


; (bind ?*point-sign* "+")
; (bind ?*TRUE-horizontal-sign* "---")


