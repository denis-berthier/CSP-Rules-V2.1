
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
;;; Specific parameters and associated naming functions for the nrc notation.
;;; All the parameters potentially useful for any application defined on a 2D grid:
;;; numbers, rows, columns, blocks and squares in blocks, diagonals and anti-diagonals.
;;; In case any parameter xxx is missing here, an application MUST add it
;;; and the associated xxx-name(?xxx) function in its own General/parameters file.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*numeral-symbol* = "")
(defglobal ?*number-symbol* = n)
(defglobal ?*row-symbol* = r)
(defglobal ?*column-symbol* = c)
(defglobal ?*block-symbol* = b)
(defglobal ?*square-symbol* = s)
(defglobal ?*diagonal-symbol* = d)
(defglobal ?*anti-diagonal-symbol* = a)

(deffunction number-name (?nb) (sym-cat ?*number-symbol* ?nb))
(deffunction numeral-name (?nb) (sym-cat ?*numeral-symbol* ?nb))
(deffunction row-name (?row) (sym-cat ?*row-symbol* ?row))
(deffunction column-name (?col) (sym-cat ?*column-symbol* ?col))
(deffunction block-name (?bl) (sym-cat ?*block-symbol* ?bl))
(deffunction square-name (?sq) (sym-cat ?*square-symbol* ?sq))
(deffunction diagonal-name (?diag) (sym-cat ?*diagonal-symbol* ?diag))
(deffunction anti-diagonal-name (?anti-diag) (sym-cat ?*anti-diagonal-symbol* ?anti-diag))


