
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              MODULES
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








(defglobal ?*module-S2-loaded* = FALSE)
(defglobal ?*module-S3-loaded* = FALSE)
(defglobal ?*module-S4-loaded* = FALSE)
(defglobal ?*module-S2Fin-loaded* = FALSE)
(defglobal ?*module-S3Fin-loaded* = FALSE)
(defglobal ?*module-S4Fin-loaded* = FALSE)
(defglobal ?*module-REVERSIBLE-PATTERNS-loaded* = FALSE)
(defglobal ?*module-TRID-loaded* = FALSE)
(defglobal ?*module-IMP630-ORk-W-loaded* = FALSE)
(defglobal ?*module-TRID-FW-loaded* = FALSE)
(defglobal ?*module-TRID-ORk-FW-loaded* = FALSE)
(defglobal ?*module-TRID-ORk-CW-loaded* = FALSE)
(defglobal ?*module-TRID-ORk-W-loaded* = FALSE)
(defglobal ?*module-TRID-ORk-CHAINS-loaded* = FALSE)

(defglobal ?*list-of-application-specific-modules* = (create$
    S2 S3 S4 S2Fin S3Fin S4Fin REVERSIBLE-PATTERNS
    TRID
    TRID-FW TRID-ORk-FW TRID-ORk-CW TRID-ORk-W TRID-ORk-CHAINS
    IMP630-ORk-W
))

(defglobal ?*list-of-modules* =
    (create$ ?*list-of-generic-modules* ?*list-of-application-specific-modules*)
)



(deffunction load-modules ($?modules)
    ;;; First check that all the modules are correct.
    (bind ?undefined-modules (create$))
    (foreach ?module $?modules
        (if (not (member$ ?module ?*list-of-modules*)) then
            (bind ?undefined-modules (create$ ?undefined-modules ?module))
        )
    )
    (if (neq (length$ ?undefined-modules) 0) then
        (printout t
            "The following modules are undefined: " ?undefined-modules crlf
            "The allowed modules are: " ?*list-of-modules* crlf
        )
        (return FALSE)
    )
    (if (neq (length$ ?modules) 0) then (bind ?*modules-used* TRUE))
    (foreach ?module $?modules
        (switch ?module
            ;;; generic modules
            (case BRT then
                (if (not ?*module-BRT-loaded*) then
                    (batch* (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "BRT-module.clp"))
                    (bind ?*module-BRT-loaded* TRUE)
                )
                TRUE
            )
            (case W1 then
                (if (not ?*module-W1-loaded*) then
                    (batch* (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "W1-module.clp"))
                    (bind ?*module-W1-loaded* TRUE)
                )
                TRUE
            )
            (case BIVALUE-CHAINS then
                (if (not ?*module-BIVALUE-CHAINS-loaded*) then
                    (batch* (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "BIVALUE-CHAINS-module.clp"))
                    (bind ?*module-BIVALUE-CHAINS-loaded* TRUE)
                )
                TRUE
            )
            (case REVERSIBLE-CHAINS then
                (if (not ?*module-REVERSIBLE-CHAINS-loaded*) then
                    (batch* (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "REVERSIBLE-CHAINS-module.clp"))
                    (bind ?*module-REVERSIBLE-CHAINS-loaded* TRUE)
                )
                TRUE
            )

            ;;; application-specific modules
            (case S2 then
                (if (not ?*module-S2-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "S2-module.clp"))
                    (bind ?*module-S2-loaded* TRUE)
            ))
            (case S3 then
                (if (not ?*module-S3-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "S3-module.clp"))
                    (bind ?*module-S3-loaded* TRUE)
                )
                TRUE
            )
            (case S4 then
                (if (not ?*module-S4-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "S4-module.clp"))
                    (bind ?*module-S4-loaded* TRUE)
                )
                TRUE
            )
            (case S then
                (if (not ?*module-S4-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "S4-module.clp"))
                    (bind ?*module-S4-loaded* TRUE)
                )
                TRUE
            )

            (case S2Fin then
                (if (not ?*module-S2Fin-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "S2Fin-module.clp"))
                    (bind ?*module-S2Fin-loaded* TRUE)
                )
                TRUE
            )
            (case S3Fin then
                (if (not ?*module-S3Fin-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "S3Fin-module.clp"))
                    (bind ?*module-S3Fin-loaded* TRUE)
                )
                TRUE
            )
            (case S4Fin then
                (if (not ?*module-S4Fin-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "S4Fin-module.clp"))
                    (bind ?*module-S4Fin-loaded* TRUE)
                )
                TRUE
            )
            (case SFin then
                (if (not ?*module-S4Fin-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "S4Fin-module.clp"))
                    (bind ?*module-S4Fin-loaded* TRUE)
                )
                TRUE
            )

            (case REVERSIBLE-PATTERNS then
                (if (not ?*module-REVERSIBLE-PATTERNS-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "REVERSIBLE-PATTERNS-module.clp"))
                    (bind ?*module-REVERSIBLE-PATTERNS-loaded* TRUE)
                )
                TRUE
            )

            (case TRID then
                (if (not ?*module-TRID-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "TRID-module.clp"))
                    (bind ?*module-TRID-loaded* TRUE)
                )
                TRUE
            )

            (case TRID-FW then
                (if (not ?*module-TRID-FW-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "TRID-FW-module.clp"))
                    (bind ?*module-TRID-FW-loaded* TRUE)
                )
                TRUE
            )

            (case TRID-ORk-FW then
                (if (not ?*module-TRID-ORk-FW-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "TRID-ORk-FW-module.clp"))
                    (bind ?*module-TRID-ORk-FW-loaded* TRUE)
                )
                TRUE
            )

            (case TRID-ORk-CW then
                (if (not ?*module-TRID-ORk-CW-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "TRID-ORk-CW-module.clp"))
                    (bind ?*module-TRID-ORk-CW-loaded* TRUE)
                )
                TRUE
            )

            (case TRID-ORk-W then
                (if (not ?*module-TRID-ORk-W-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "TRID-ORk-W-module.clp"))
                    (bind ?*module-TRID-ORk-W-loaded* TRUE)
                )
                TRUE
            )

            (case TRID-ORk-CHAINS then
                (if (not ?*module-TRID-ORk-CHAINS-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "TRID-ORk-CHAINS-module.clp"))
                    (bind ?*module-TRID-ORk-CHAINS-loaded* TRUE)
                )
                TRUE
            )

            (case IMP630-ORk-W then
                (if (not ?*module-IMP630-ORk-W-loaded*) then
                    (batch* (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "IMP630-ORk-W-module.clp"))
                    (bind ?*module-IMP630-ORk-W-loaded* TRUE)
                )
                TRUE
            )

            (case MAIN then TRUE)
            (default (printout t
                        "This (" ?module ") is not a defined module." crlf
                        "The list of available modules is: " ?*list-of-modules* crlf
                    )
            )
        )
    )
)





