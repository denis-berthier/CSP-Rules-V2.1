
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              MODULES
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








(defmodule MAIN (export ?ALL))
(load (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "enter-module.clp"))

(defglobal ?*module-BRT-loaded* = FALSE)
(defglobal ?*module-W1-loaded* = FALSE)
(defglobal ?*module-BIVALUE-CHAINS-loaded* = FALSE)
(defglobal ?*module-REVERSIBLE-CHAINS-loaded* = FALSE)

(defglobal ?*list-of-generic-modules* = (create$ BRT W1 BIVALUE-CHAINS REVERSIBLE-CHAINS))
(defglobal ?*list-of-modules* = ?*list-of-generic-modules*)



(deffunction load-modules ($?modules)
    ;;; First check that all the modules are correct.
    (bind ?undefined-modules (create$))
    (foreach ?module $?modules
        (if (not (member$ ?module ?*list-of-modules*)) then (bind ?undefined-modules (create$ ?undefined-modules ?module)))
    )
    (if (neq (length$ ?undefined-modules) 0)
        then
        ;;; some modules undefined:
        (printout t
            "The following modules are undefined: " ?undefined-modules crlf
            "The allowed modules are: " ?*list-of-modules* crlf
        )
        (return FALSE)
        ;;; all modules defined:
        else
        (bind ?*modules-used* TRUE)
        (foreach ?module $?modules
            (switch ?module
                (case BRT then
                    (if (not ?*module-BRT-loaded*) then
                        (batch* (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "BRT-module.clp"))
                        (bind ?*module-BRT-loaded* TRUE)
                ))
                (case W1 then
                    (if (not ?*module-W1-loaded*) then
                        (batch* (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "W1-module.clp"))
                        (bind ?*module-W1-loaded* TRUE)
                ))
                (case BIVALUE-CHAINS then
                    (if (not ?*module-BIVALUE-CHAINS-loaded*) then
                        (batch* (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "BIVALUE-CHAINS-module.clp"))
                        (bind ?*module-BIVALUE-CHAINS-loaded* TRUE)
                ))
                (case REVERSIBLE-CHAINS then
                    (if (not ?*module-REVERSIBLE-CHAINS-loaded*) then
                        (batch* (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "REVERSIBLE-CHAINS-module.clp"))
                        (bind ?*module-REVERSIBLE-CHAINS-loaded* TRUE)
                ))

                (case MAIN then TRUE)
                (default (printout t "This (" ?module ") is not a defined module." crlf
                            "The list of available modules is: " ?*list-of-modules* crlf
                ))
            )
        )
        (return TRUE)
    )
)


(deffunction solve-w-preferences ($?list) (solve $?list))



