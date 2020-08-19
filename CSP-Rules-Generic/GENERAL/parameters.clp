
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; general parameters for the standard CSP-Rules notation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*CSP-Rules-LevelSymbol* = "") 

(defglobal ?*equal-sign* = " = ")
(defglobal ?*non-equal-sign* = " ≠ ")
(defglobal ?*implication-sign* = " ==> ")

(defglobal ?*link-symbol* = " - ")

(defglobal ?*starting-cell-symbol* = "{")
(defglobal ?*ending-cell-symbol* = "}")
(defglobal ?*separation-sign-in-cell* = " ")
(defglobal ?*dot-in-cell* = ".")
(defglobal ?*or-sign-in-cell* = "|")

(defglobal ?*additional-value-t-symbol* = "")
(defglobal ?*additional-value-z-symbol* = "")

(defglobal ?*oddagon-link-symbol* = ",")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; specific parameters and naming functions for the nrc notation
;;; useful for all the applications defined on a 2D grid
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*numeral-symbol* = "")
(defglobal ?*number-symbol* = n)
(defglobal ?*row-symbol* = r)
(defglobal ?*column-symbol* = c)
(defglobal ?*block-symbol* = b)
(defglobal ?*square-symbol* = s)


(deffunction number-name (?nb) (sym-cat ?*number-symbol* ?nb))
(deffunction numeral-name (?nb) (sym-cat ?*numeral-symbol* ?nb))
(deffunction row-name (?row) (sym-cat ?*row-symbol* ?row))
(deffunction column-name (?col) (sym-cat ?*column-symbol* ?col))
(deffunction block-name (?col) (sym-cat ?*block-symbol* ?col))
(deffunction square-name (?col) (sym-cat ?*square-symbol* ?col))


