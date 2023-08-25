
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              COMPUTE-RS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - December 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; This file defines the generic functions for computing or printing a resolution state.
;;; They do nothing.
;;; They must be redefined in any application that needs to use them.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; AUXILLIARY USER FUNCTIONS:
;;; - COMPUTE OR PRINT CURRENT RESOLUTION STATE
;;; - INIT AN INSTANCE FROM A RESOLUTION STATE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; These generic functions are place-holders for application-specific ones.
;;; If they are not redefined by an application, they will do nothing,
;;; but their existence makes it easier to define other functions in generic form.

;;; Compute or print current resolution state in some context:
(deffunction compute-current-resolution-state-in-context (?cont) TRUE)
(deffunction print-current-resolution-state-in-context (?cont) TRUE)
;;; Allow smarter printing:
(deffunction pretty-print-current-resolution-state-in-context (?cont) (print-current-resolution-state-in-context ?cont))
;;; Allow initialisation from any resolution state:
(deffunction init-context-with-resolution-state (?cont $?RS) TRUE)

;;; compute solution string
(deffunction compute-solution-string-in-context (?cont) "")

;;; Define specific functions for context 0:
(deffunction compute-current-resolution-state () (compute-current-resolution-state-in-context 0))
(deffunction print-current-resolution-state () (print-current-resolution-state-in-context 0))
(deffunction pretty-print-current-resolution-state () (print-current-resolution-state))
(deffunction init-resolution-state ($?RS) (init-context-with-resolution-state 0 ?RS))

;;; Allow abbreviations in context 0:
(deffunction compute-RS () (compute-current-resolution-state))
(deffunction print-RS () (print-current-resolution-state))
(deffunction pretty-print-RS () (pretty-print-current-resolution-state))
(deffunction init-RS ($?RS) (init-resolution-state ?RS))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRINT SOLUTION IN INITIAL CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; These two generic functions are place-holders for application-specific ones
(deffunction print-solution-in-context (?cont) TRUE)
(deffunction pretty-print-solution-in-context (?cont) (print-solution-in-context ?cont))

(deffunction print-solution () (print-solution-in-context 0))
(deffunction pretty-print-solution () (print-solution))



