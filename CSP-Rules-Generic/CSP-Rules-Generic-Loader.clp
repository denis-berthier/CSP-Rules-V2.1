
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              GENERIC LOADER
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





(if (eq ?*inference-engine* CLIPS) then (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "CLIPS-utils.clp")))

;;; Notice that this generic loader also loads the application-specific files




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; SET THE DEPENDENCIES BETWEEN RULES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For pure logical reasons
;;; and in order to respect the definitions of resolution theories in PBCS,
;;; the loading of some rules implies the loading of other rules
;;; as specified by the following implications.
;;; A dummy defglobal is used for the purpose of setting these depndencies before loading.

(defglobal ?*dummy-variable-for-setting-generic-rules-dependencies* = (progn
    
    ;;; Subsets and gSubsets
    ;;; Finned Fish have no predefined generic variables, but there are some for g-Subsets
    (if ?*g-Subsets* then (bind ?*g-Subsets[4]* TRUE) (bind ?*Subsets* TRUE))
    (if ?*g-Subsets[4]* then (bind ?*g-Subsets[3]* TRUE) (bind ?*Subsets[3]* TRUE))
    (if ?*g-Subsets[3]* then (bind ?*g-Subsets[2]* TRUE) (bind ?*Subsets[3]* TRUE))
    
    ;;; Subsets are not coded generically,
    ;;; but they have pre-defined generic globals, saliences and print nrc functions
    (if ?*Subsets* then (bind ?*Subsets[4]* TRUE))
    (if ?*Subsets[4]* then (bind ?*Subsets[3]* TRUE))
    (if ?*Subsets[3]* then (bind ?*Subsets[2]* TRUE))
    
    
    ;;; All the generic chain-rules
    (if ?*All-generic-chain-rules* then
        (bind ?*Typed-Bivalue-Chains* TRUE)
        (bind ?*Typed-z-Chains* TRUE)
        (bind ?*Typed-t-Whips* TRUE)
        (bind ?*Typed-Whips* TRUE)
        (bind ?*Typed-g-Whips* TRUE)
        (bind ?*Forcing-G-Braids* TRUE)
        ;;; add those that are not implied by the previous ones:
        (bind ?*Bivalue-Chains* TRUE)
        (bind ?*z-Chains* TRUE)
        (bind ?*t-Whips* TRUE)
    )
        
    ;;; Add the relevant part for Bi-Whips, Bi-Braids, ...

        
    ;;; Forcing-whips, forcing-gwhips, forcing-braids, forcing-gbraids
    (if ?*Forcing-G-Braids* then
        (bind ?*Forcing-G-Whips* TRUE) (bind ?*forcing-gwhips-max-length* (max ?*forcing-gbraids-max-length* ?*forcing-gwhips-max-length*))
        (bind ?*Forcing-Braids* TRUE) (bind ?*forcing-braids-max-length* (max ?*forcing-gbraids-max-length* ?*forcing-braids-max-length*))
        (bind ?*G-Braids* TRUE) (bind ?*gbraids-max-length* (max ?*forcing-gbraids-max-length* ?*gbraids-max-length*))
    )
    (if ?*Forcing-G-Whips* then
        (bind ?*Forcing-Whips* TRUE) (bind ?*forcing-whips-max-length* (max ?*forcing-gwhips-max-length* ?*forcing-whips-max-length*))
        (bind ?*G-Whips* TRUE) (bind ?*gwhips-max-length* (max ?*forcing-gwhips-max-length* ?*gwhips-max-length*))
    )
    (if ?*Forcing-Braids* then
        (bind ?*Forcing-Whips* TRUE) (bind ?*forcing-whips-max-length* (max ?*forcing-braids-max-length* ?*forcing-whips-max-length*))
        (bind ?*Braids* TRUE) (bind ?*braids-max-length* (max ?*forcing-braids-max-length* ?*braids-max-length*))
    )
    (if ?*Forcing-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*forcing-whips-max-length* ?*whips-max-length*))
    )

    ;;; Bivalue-chains, whips, gwhips, braids, gbraids
    (if ?*G-Braids* then
        (bind ?*G-Whips* TRUE) (bind ?*gwhips-max-length* (max ?*gbraids-max-length* ?*gwhips-max-length*))
        (bind ?*Braids* TRUE) (bind ?*braids-max-length* (max ?*gbraids-max-length* ?*braids-max-length*))
    )
    (if ?*G-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*gwhips-max-length* ?*whips-max-length*))
    )
    (if ?*G2-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*g2whips-max-length* ?*whips-max-length*))
    )
    (if ?*Braids* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*braids-max-length* ?*whips-max-length*))
    )
    
    (if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*) then (bind ?*G-Labels* TRUE))
    
    ;;; Typed-whips
    (if ?*Typed-g-Whips* then
        (bind ?*Typed-Whips* TRUE) (bind ?*typed-whips-max-length* (max ?*typed-gwhips-max-length* ?*typed-whips-max-length*))
    )

    
    ;;; All the resolution theories, apart from BRT, must have Whips[1]
    ;;; There is a special global variable ?*Whips[1]* to take this into account
    (if (or ?*Subsets[2]*
            ?*Typed-Bivalue-Chains*
            ?*Bivalue-Chains*
            ?*Typed-z-Chains*
            ?*z-Chains*
            ?*Oddagons*
            ?*Typed-t-Whips*
            ?*t-Whips*
            ?*Typed-Whips*
            ?*Whips*
            ?*Quick-B-Rating*
        )
        then (bind ?*Whips[1]* TRUE)
    )
    
    ;;; Typed-Chains is an abstract name for any kind of typed chain
    ;;; It can be used in links.clp and glinks.clp as a condition for adding
    ;;; the relevant typed forms of predicates (csp-linked ....
    (if (or ?*Typed-Bivalue-Chains*
            ?*Typed-z-Chains*
            ?*Typed-t-Whips*
            ?*Typed-Whips*
            ?*Typed-g-Whips*
        )
        then
            (bind ?*Typed-Chains* TRUE)
            (bind ?*Typed-Partial-Whips[1]* TRUE)
    )
    
    ;;; z-chains imply bivalue-chains
    (if ?*z-Chains* then (bind ?*Bivalue-Chains* TRUE))
    (if ?*Typed-z-Chains* then (bind ?*Typed-Bivalue-Chains* TRUE))

    (printout t "Generic rules dependencies set" crlf)
    
    TRUE
))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; DEFINE THE GENERIC RATING TYPE ACCORDING TO THE ABOVE DEPENDENCIES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Notice that this generic rating doesn't take into account the application-specific rules

(deffunction define-generic-rating-type ()
    (bind ?*generic-rating-type* "")
    (if ?*Whips[1]* then (bind ?*generic-rating-type* "W1"))
    
    ;;; typed-chains
    (if ?*Typed-Bivalue-Chains* then (bind ?*generic-rating-type* "TyBC"))
    (if ?*Typed-z-Chains* then (bind ?*generic-rating-type* "TyZ"))
    (if ?*Typed-t-Whips* then
        (bind ?*generic-rating-type*
            (if (eq ?*generic-rating-type* "") then "TytW" else (str-cat ?*generic-rating-type* "+TytW"))
        )
    )
    (if ?*Typed-Whips* then (bind ?*generic-rating-type* "TyW"))
    (if ?*Typed-g-Whips* then (bind ?*generic-rating-type* "TygW"))

    ;;; Untyped-chain-rules
    (if ?*Bivalue-Chains* then
        (bind ?*generic-rating-type* "BC")
        (if ?*Typed-z-Chains* then (bind ?*generic-rating-type* "TyZ+BC"))
        (if ?*Typed-t-Whips* then (bind ?*generic-rating-type* "TytW+BC"))
        (if ?*Typed-Whips* then (bind ?*generic-rating-type* "TyW+BC"))
        (if ?*Typed-g-Whips* then (bind ?*generic-rating-type* "TygW+BC"))
    )

    (if ?*z-Chains* then
        (bind ?*generic-rating-type* "Z")
        (if ?*Typed-t-Whips* then (bind ?*generic-rating-type* "TytW+Z"))
        (if ?*Typed-Whips* then (bind ?*generic-rating-type* "TyW+Z"))
        (if ?*Typed-g-Whips* then (bind ?*generic-rating-type* "TygW+Z"))
    )

    (if ?*t-Whips* then
        (bind ?*generic-rating-type* "tW")
        (if ?*Typed-Whips* then (bind ?*generic-rating-type* "TyW+tW"))
        (if ?*Typed-g-Whips* then (bind ?*generic-rating-type* "TygW+tW"))
    )

    
    (if ?*Whips* then
        (bind ?*generic-rating-type* "W")
        (if ?*Typed-g-Whips* then (bind ?*generic-rating-type* "TygW+W"))
    )
    
    (if ?*G2-Whips* then (bind ?*generic-rating-type* "g2W"))
    (if ?*G-Whips* then (bind ?*generic-rating-type* "gW"))
    (if ?*Braids* then
        (if ?*G2-Whips* then (bind ?*generic-rating-type* "g2W+B")
            else (if ?*G-Whips* then (bind ?*generic-rating-type* "gW+B")
                                else (bind ?*generic-rating-type* "B")
                )
        )
    )
    (if ?*Quick-B-Rating* then (bind ?*generic-rating-type* "B-Rating"))
    
    (if ?*G-Braids* then (bind ?*generic-rating-type* "gB"))
    
    
    (if ?*Forcing-Whips* then
        (if (eq ?*generic-rating-type* "W")
            then (bind ?*generic-rating-type* "FW")
            else (bind ?*generic-rating-type* (str-cat ?*generic-rating-type* "+FW"))
        )
    )
    ;;; at this point, ?*rating-type* can only be gW, B,gW+B, gB, FW, gW+FW, B+FW, gW+B+FW, gB+FW
    ;;; Forcing g-whips and g-braids are not supposed to be used with g2-whips
    (if ?*Forcing-G-Whips* then
        ;;; ?*Forcing-Whips* and ?*G-Whips* are TRUE
        (if (eq ?*generic-rating-type* "gW") then (bind ?*generic-rating-type* "FgW"))
        (if (eq ?*generic-rating-type* "B") then (bind ?*generic-rating-type* "B+FgW"))
        (if (eq ?*generic-rating-type* "gW+B") then (bind ?*generic-rating-type* "B+FgW"))
        (if (eq ?*generic-rating-type* "gB")then (bind ?*generic-rating-type* "gB+FgW"))
        
        (if (eq ?*generic-rating-type* "FW") then (bind ?*generic-rating-type* "FgW"))
        (if (eq ?*generic-rating-type* "gW+FW") then (bind ?*generic-rating-type* "FgW"))
        (if (eq ?*generic-rating-type* "B+FW") then (bind ?*generic-rating-type* "B+FgW"))
        (if (eq ?*generic-rating-type* "gW+B+FW") then (bind ?*generic-rating-type* "B+FgW"))
        (if (eq ?*generic-rating-type* "gB+FW") then (bind ?*generic-rating-type* "gB+FgW"))
    )
    ;;; at this point, ?*rating-type* can only be
    ;;; gW, B,gW+B, gB, FW, gW+FW, B+FW, gW+B+FW, gB+FW, FgW, B+FgW, gB+FgW
    (if ?*Forcing-Braids* then
        (if (eq ?*generic-rating-type* "FW") then (bind ?*generic-rating-type* "FB"))
        (if (eq ?*generic-rating-type* "B") then (bind ?*generic-rating-type* "FB"))
        (if (eq ?*generic-rating-type* "gW+B") then (bind ?*generic-rating-type* "gW+FB"))
        (if (eq ?*generic-rating-type* "gB") then (bind ?*generic-rating-type* "gB+FB"))
        (if (eq ?*generic-rating-type* "FW") then (bind ?*generic-rating-type* "FB"))
        (if (eq ?*generic-rating-type* "gW+FW") then (bind ?*generic-rating-type* "gW+FB"))
        (if (eq ?*generic-rating-type* "B+FW") then (bind ?*generic-rating-type* "FB"))
        (if (eq ?*generic-rating-type* "gW+B+FW") then (bind ?*generic-rating-type* "gW+FB"))
        (if (eq ?*generic-rating-type* "gB+FW") then (bind ?*generic-rating-type* "gB+FB"))
        (if (eq ?*generic-rating-type* "FgW") then (bind ?*generic-rating-type* "FgW+FB"))
        (if (eq ?*generic-rating-type* "B+FgW") then (bind ?*generic-rating-type* "FgW+FB"))
        (if (eq ?*generic-rating-type* "gB+FgW") then (bind ?*generic-rating-type* "gB+FgW+FB"))
    )
    (if ?*Forcing-G-Braids* then (bind ?*generic-rating-type* "FgB"))

    ;;; Add the relevant part for Bi-Whips, Bi-Braids, ...

    (if ?*Oddagons* then
        (bind ?*generic-rating-type*
            (if (eq ?*generic-rating-type* "") then "O" else (str-cat ?*generic-rating-type* "+O"))
        )
    )
    ?*generic-rating-type*
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; LOAD GENERIC FUNCTIONS AND RULES + APPLICATION-SPECIFIC TEMPLATES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; utilities allowing to control locally what is printed:
(defglobal ?*print-actions-backup* = ?*print-actions*)
(defglobal ?*print-levels-backup* = ?*print-levels*)
(defglobal ?*print-hypothesis-backup* = ?*print-hypothesis*)
(defglobal ?*print-phase-backup* = ?*print-phase*)
(deffunction mute-print-options ()
    (bind ?*print-actions-backup* ?*print-actions*)
    (bind ?*print-levels-backup* ?*print-levels*)
    (bind ?*print-hypothesis-backup* ?*print-hypothesis*)
    (bind ?*print-phase-backup* ?*print-phase*)
    (bind ?*print-actions* FALSE)
    (bind ?*print-levels* FALSE)
    (bind ?*print-hypothesis* FALSE)
    (bind ?*print-phase* FALSE)
)
(deffunction restore-print-options ()
    (bind ?*print-actions* ?*print-actions-backup*)
    (bind ?*print-levels* ?*print-levels-backup*)
    (bind ?*print-hypothesis* ?*print-hypothesis-backup*)
    (bind ?*print-phase* ?*print-phase-backup*)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; basic parameters, structures and functions
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "parameters.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "saliences.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "saliences.clp"))
;;; initialise the saliences within a load, using a dummy variable
(defglobal ?*dummy-variable-for-saliences* = (initialise-saliences))

(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "utils.clp"))

;;; load generic templates
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "templates.clp"))
;;; in any application, also load application specific templates 
;;; because those that are modified must be loaded before any rule <<<<<<<<<<<<<
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "templates.clp"))


(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "generic-background.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "generic-output.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "solve.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "focused-elims.clp"))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; basic rules: management rules and BRT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Notice that in this version of CSP-Rules, ECP and Singles rely on function labels-linked
;;; As a result, T&E and DFS may be slower

(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "SimulatedElim.clp")) ; for simulating non-programmed rules
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "manage.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "ECP.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Single.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "blocked-rules.clp"))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; basic rules: special cases
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; init-links
(if (or ?*Whips[1]* ?*Bi-Whips* ?*Bi-Braids*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
)

;;; start play
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "play.clp"))


;;; Whips[1]
(if ?*Whips[1]* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
            ?*Directory-symbol* "WHIPS" ?*Directory-symbol*
            (if ?*blocked-Whips[1]* then "Blocked-Whips" else "Whips") "[1].clp"
        )
    )
)

;;; typed-partial-whips[1]
(if ?*Typed-Partial-Whips[1]* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
        ?*Directory-symbol* "TYPED-PARTIAL-WHIPS" ?*Directory-symbol* "Typed-Partial-Whips[" 1 "].clp")
    )
)

;;; Bivalue
(if (or ?*Subsets[2]* ?*Bivalue-Chains* ?*Typed-Bivalue-Chains* ?*Oddagons* ?*Forcing-Whips* ?*special-TE* ?*special-DFS*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Bivalue.clp"))
)

;;; g-labels and g-links
(if (or ?*G-Bivalue-Chains* ?*G-Whips*  ?*G-Braids*) then 
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "glabels.clp"))
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "init-glinks.clp"))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Generic Chain Rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; for JESS compatibility "loop-for-count" is avoided

;;; different versions of (typed or untyped) bivalue chains will be loaded, depending on variable ?*blocked-bivalue-chains*
(defglobal ?*typed-bivalue-chains-directory* =
    (if ?*blocked-bivalue-chains* then "BLOCKED-TYPED-BIVALUE-CHAINS" else "TYPED-BIVALUE-CHAINS")
)
(defglobal ?*bivalue-chains-directory* =
    (if ?*blocked-bivalue-chains* then "BLOCKED-BIVALUE-CHAINS" else "BIVALUE-CHAINS")
)


(bind ?i 1)
(while (<= ?i 36)

    ;;; typed-bivalue-chains ≥ 2
    (if (and ?*Typed-Bivalue-Chains* (>= ?i 2) (<= ?i ?*typed-bivalue-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* ?*typed-bivalue-chains-directory*
            ?*Directory-symbol* "Typed-Bivalue-Chains[" ?i "].clp")
        )
    )
    ;;; bivalue-chains ≥ 2
    (if (and ?*Bivalue-Chains* (>= ?i 2) (<= ?i ?*bivalue-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* ?*bivalue-chains-directory*
            ?*Directory-symbol* "Bivalue-Chains[" ?i "].clp")
        )
    )
    

    ;;; typed-z-chains ≥ 2
    (if (and ?*Typed-z-Chains* (>= ?i 2) (<= ?i ?*typed-z-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-Z-CHAINS" ?*Directory-symbol* "Typed-z-chains[" ?i "].clp")
        )
    )

    ;;; z-chains ≥ 2
    (if (and ?*z-Chains* (>= ?i 2) (<= ?i ?*z-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "Z-CHAINS" ?*Directory-symbol* "z-chains[" ?i "].clp")
        )
    )
    
    ;;; oddagons
    (if (and ?*Oddagons* (>= ?i 3) (oddp ?i) (<= ?i ?*oddagons-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "ODDAGONS"
            ?*Directory-symbol* "Oddagons[" ?i "].clp")
        )
    )

    
    ;;; typed-partial-whips >= 1, used by both typed-t-whips ≥ 2 and typed-whips ≥ 2
    (if (or
            (and ?*Typed-t-Whips* (> ?i 2) (<= ?i ?*typed-t-whips-max-length*))
            (and ?*Typed-Whips* (> ?i 2) (<= ?i ?*typed-whips-max-length*))
        ) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "TYPED-PARTIAL-WHIPS"
                    ?*Directory-symbol* "Typed-Partial-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; partial-whips[1], used by both z-chains, t-whips ≥ 2 and whips ≥ 2
    (if (or
            (and ?*z-Chains* (= ?i 2))
            (and ?*t-Whips* (= ?i 2) (<= ?i ?*t-whips-max-length*))
            (and ?*Whips* (= ?i 2) (<= ?i ?*whips-max-length*))
        ) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "PARTIAL-WHIPS"
                ?*Directory-symbol* "Partial-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; partial-whips > 1, used by both t-whips ≥ 2 and whips ≥ 2
    (if (or
            (and ?*t-Whips* (> ?i 2) (<= ?i ?*t-whips-max-length*))
            (and ?*Whips* (> ?i 2) (<= ?i ?*whips-max-length*))
        ) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "PARTIAL-WHIPS"
                ?*Directory-symbol* "Partial-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; typed-t-whips
    (if (and ?*Typed-t-Whips* (>= ?i 2) (<= ?i ?*typed-t-whips-max-length*)) then
        (if ?*blocked-t-Whips*
            then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "BLOCKED-TYPED-T-WHIPS" ?*Directory-symbol* "Typed-t-Whips[" ?i "].clp")
                )
            else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "TYPED-T-WHIPS" ?*Directory-symbol* "Typed-t-Whips[" ?i "].clp")
                )
        )
    )
    
    ;;; t-whips
    (if (and ?*t-Whips* (>= ?i 2) (<= ?i ?*t-whips-max-length*)) then
        (if ?*blocked-t-Whips*
            then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "BLOCKED-T-WHIPS" ?*Directory-symbol* "T-Whips[" ?i "].clp")
                )
            else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "T-WHIPS" ?*Directory-symbol* "T-Whips[" ?i "].clp")
                )
        )
    )

    
    ;;; typed-whips[2]
    (if (and ?*Typed-Whips* (eq ?i 2) (<= ?i ?*typed-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-WHIPS"
                ?*Directory-symbol* (if ?*blocked-Whips[1]* then "Blocked-Typed-Whips" else "Typed-Whips")
                "[2].clp")
        )
    )
    
    ;;; whips[2]
    (if (and ?*Whips* (eq ?i 2) (<= ?i ?*whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "WHIPS" ?*Directory-symbol*
                (if ?*blocked-Whips[1]* then "Blocked-Whips" else "Whips")
                "[2].clp")
        )
    )

    ;;; typed-whips ≥ 3
    (if (and ?*Typed-Whips* (>= ?i 3) (<= ?i ?*typed-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-WHIPS"
                ?*Directory-symbol* "Typed-Whips[" ?i "].clp")
        )
    )

    ;;; whips ≥ 3
    (if (and ?*Whips* (>= ?i 3) (<= ?i ?*whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "WHIPS"
                ?*Directory-symbol* "Whips[" ?i "].clp")
        )
    )

    
    ;;; braids ≥ 3
    (if (and ?*Braids* (>= ?i 3) (<= ?i ?*braids-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "BRAIDS"
                ?*Directory-symbol* "Braids[" ?i "].clp")
        )
    )


    ;;; B-rating ≥ 2
    (if (and ?*Quick-B-Rating* (>= ?i 2) (<= ?i ?*braids-max-length*)) then ;;; start at 2
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-SPEED"
                ?*Directory-symbol* "RATING-BRAIDS"
                ?*Directory-symbol* "Rating-Braids[" ?i "].clp")
        )
    )


    ;;; g-bivalue-chains
    (if (and ?*G-Bivalue-Chains* (>= ?i 1) (<= ?i ?*g-bivalue-chains-max-length*)) then ;;; start at 1
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "G-BIVALUE-CHAINS"
                ?*Directory-symbol* "g-Bivalue-Chains[" ?i "].clp")
        )
    )

    ;;; G2-Whips always use the memory version
    (if (and ?*G2-Whips* (>= ?i 2) (<= ?i ?*g2whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-MEMORY"
                ?*Directory-symbol* "G2-WHIPS"
                ?*Directory-symbol* "g2Whips[" ?i "].clp")
        )
    )

    ;;; typed-g-whips
    ;(if (and ?*Typed-g-Whips* (>= ?i 2) (<= ?i ?*typed-gwhips-max-length*)) then
    ;    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
    ;         ?*Directory-symbol* "TYPED-G-WHIPS" ?*Directory-symbol* "Typed-gWhips[" ?i "].clp")
    ;    )
    ;)

    ;;; g-whips
    (if (and ?*G-Whips* (>= ?i 2) (<= ?i ?*gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "G-WHIPS" ?*Directory-symbol* "gWhips[" ?i "].clp")
        )
    )

    ;;; g-braids
    (if (and ?*G-Braids* (>= ?i 3) (<= ?i ?*gbraids-max-length*)) then  ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "G-BRAIDS" ?*Directory-symbol* "gBraids[" ?i "].clp")
        )
    )



    ;;; forcing whips
    (if (and ?*Forcing-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-WHIPS"
            ?*Directory-symbol* "Forcing-Whips[" ?i "].clp")
        )
    )

    ;;; forcing braids
    (if (and ?*Forcing-Braids* (>= ?i 4) (<= ?i ?*forcing-braids-max-length*)) then ;;; start at 4
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-BRAIDS"
            ?*Directory-symbol* "Forcing-Braids[" ?i "].clp")
        )
    )

    ;;; forcing g-whips
    (if (and ?*Forcing-G-Whips* (>= ?i 3) (<= ?i ?*forcing-gwhips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-G-WHIPS"
            ?*Directory-symbol* "Forcing-gWhips[" ?i "].clp")
        )
    )
    
    ;;; forcing-g-braids
    (if (and ?*Forcing-G-Braids* (>= ?i 3) (<= ?i ?*forcing-gbraids-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-G-BRAIDS"
            ?*Directory-symbol* "Forcing-gBraids[" ?i "].clp")
        )
    )
    
    (bind ?i (+ ?i 1))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; T&E, Forcing T&E, Backdoors, Anti-Backdoors and DFS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; only one of TE1, TE2 or TE3 can be loaded

(if (and ?*TE1* (not ?*TE2*) (not ?*TE3*)) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E1.clp"))
    (if ?*special-TE* then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E1-biv.clp"))
    )
)

(if (and ?*TE2* (not ?*TE1*) (not ?*TE3*)) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E2.clp"))
    (if ?*special-TE* then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E2-biv.clp"))
    )
)


(if (and ?*TE3* (not ?*TE1*) (not ?*TE2*)) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E3.clp"))
    (if ?*special-TE* then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E3-biv.clp"))
    )
)


(if ?*Forcing-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "Forcing-TE.clp"))
)


(if ?*DFS* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "DFS.clp"))
    (if ?*special-DFS* then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "DFS-biv.clp"))
    )
)


(if ?*Backdoors* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "backdoors.clp"))
)

(if ?*Anti-backdoors* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "anti-backdoors.clp"))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Bi-Whips, Bi-Braids, Bi-T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Contrary to the other techniques, those in this section don't produce any assertions or deletions;
;;; They produce contradictions that can be used by W*-Whips, B*-Braids, ... Forcing-Bi-Whips,

(if ?*Bi-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "BI-WHIPS" ?*Directory-symbol* "Bi-Whips-Count.clp"))
    ;;; start at 0
    (bind ?i 0)
    (while (<= ?i ?*biwhips-max-length*) 
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "BI-WHIPS" ?*Directory-symbol* "Bi-Whips[" ?i "].clp"))
        (bind ?i (+ ?i 1))
    )
)

(if ?*Bi-Braids* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "BI-BRAIDS" ?*Directory-symbol* "Bi-Braids-Count.clp"))
    ;;; start at 3
    (bind ?i 3)
    (while (<= ?i ?*bibraids-max-length*) 
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "BI-BRAIDS" ?*Directory-symbol* "Bi-Braids[" ?i "].clp"))
        (bind ?i (+ ?i 1))
    )
)


(if ?*Bi-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "BiT&E-and-T&E*" ?*Directory-symbol* "Bi-T&E.clp" ))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Forcing-Bi-Whips and Forcing-Bi-Braids
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; These are special cases of W*-Whips[1], but their total length is controlled

(if ?*Forcing-Bi-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
        ?*Directory-symbol* "FORCING-BI-WHIPS"
        ?*Directory-symbol* "Forcing-Bi-Whips-Generic.clp")
    )
)
(if ?*Forcing-Bi-Braids* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
        ?*Directory-symbol* "FORCING-BI-BRAIDS"
        ?*Directory-symbol* "Forcing-Bi-Braids-Generic.clp")
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; W*-Whips and B*-Braids
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(if ?*W*-Whips* then ;;; start at 1
    (bind ?i 1)
    (while (<= ?i ?*w*-whips-max-length*)
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "W*-WHIPS" ?*Directory-symbol* "W*-Whips[" ?i "].clp"))
        (bind ?i (+ ?i 1))
    )
)


(if ?*B*-Braids* then ;;; start at 2
    (bind ?i 2)
    (while (<= ?i ?*b*-braids-max-length*)
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "B*-BRAIDS" ?*Directory-symbol* "B*-Braids[" ?i "].clp"))
        (bind ?i (+ ?i 1))
    )
)



(if ?*W-Whips* then 
    (load (str-cat ?*CSP-Rules-Generic-Dir* "W-WHIPS" ?*Directory-symbol* "restart-W-Whips.clp"))
    ;;; start at 1
    (bind ?i 1)
    (while (<= ?i ?*w-whips-max-length*) 
        (load (str-cat ?*CSP-Rules-Generic-Dir* "W-WHIPS" ?*Directory-symbol* "W-Whips[" ?i "].clp"))
        (bind ?i (+ ?i 1))
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; LOAD APPLICATION-SPECIFIC FUNCTIONS AND RULES
;;; AND DEFINE THE GLOBAL RATING-TYPE
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This function will be changed by any application with application-specific rules
(deffunction define-application-specific-rating-type ()
    (bind ?*application-specific-rating-type* "")
)


;;; CSP-Rules cannot work without any application specific entries
;;; load them now
(batch ?*Application-Loader*)


;;; now that all the rules to be used are known, define the global rating type
(deffunction define-rating-type ()
    ;;; generic part
    (define-generic-rating-type)
    ;;; application-specific part
    (define-application-specific-rating-type)
    ;;; combine the two
    (bind ?*rating-type*
        (if (eq ?*application-specific-rating-type* "")
            then ?*generic-rating-type*
            else (if (eq ?*generic-rating-type* "")
                    then ?*application-specific-rating-type*
                    else (if (eq ?*generic-rating-type* "W1")
                            then ?*application-specific-rating-type*
                            else (str-cat ?*generic-rating-type* "+" ?*application-specific-rating-type*)
                        )
                )
        )
    )
    ;;; deal with T&E
    (if (and ?*TE1* (not ?*TE2*) (not ?*TE3*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(1)")
            else (bind ?*rating-type* (str-cat "T&E(1, " ?*rating-type* ")"))
        )
    )
    (if (and ?*TE2* (not ?*TE1*) (not ?*TE3*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(2)")
            else (bind ?*rating-type* (str-cat "T&E(2, " ?*rating-type* ")"))
        )
    )
    (if (and ?*TE3* (not ?*TE1*) (not ?*TE2*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(3)")
            else (bind ?*rating-type* (str-cat "T&E(3, " ?*rating-type* ")"))
        )
    )
    (if (and ?*TE1* ?*simple-bi-TE* (not ?*TE2*) (not ?*TE3*)) then
        (if (neq ?*rating-type* "T&E")
            then (printout t "Config error for bi-T&E" crlf) (halt)
            else (bind ?*rating-type* "in-B*B-test")
        )
    )
    (if (and ?*TE1* ?*simple-bi-TE* ?*Forcing-bi-TE* (not ?*TE2*) (not ?*TE3*)) then
        (if (neq ?*rating-type* "in-B*B-test")
            then (printout t "Config error for Forcing-bi-T&E" crlf) (halt)
            else (bind ?*rating-type* "in-Forcing-B*-braids-test")
        )
    )
    
    ;;; deal with DFS
    (if ?*DFS* then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "DFS")
            else (bind ?*rating-type* (str-cat "DFS(" ?*rating-type* ")"))
        )
    )
        
    ?*rating-type*
)


(define-rating-type)


(print-start-banner)




