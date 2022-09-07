
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
               ;;;            January 2006 - November 2021            ;;;
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
        (bind ?*Forcing-G-Braids* TRUE) ; which will imply all whips, braids...
        ;;; add those that are not implied by the previous ones:
        (bind ?*Bivalue-Chains* TRUE)
        (bind ?*G-Bivalue-Chains* TRUE)
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
    (if ?*Forcing5-Whips* then (bind ?*Forcing4-Whips* TRUE))
    (if ?*Forcing4-Whips* then (bind ?*Forcing3-Whips* TRUE))
    (if ?*Forcing3-Whips* then (bind ?*Forcing2-Whips* TRUE))
    (if ?*Forcing2-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*forcing-whips-max-length* ?*whips-max-length*))
    )

    
    ;;; ORk-Forcing-Whips do NOT change the max length of whips
    ;;; This is because they are intended to work with exotic patterns as their OR-k starting point
    ;(if ?*OR2-Forcing-Whips* then
    ;    (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*OR2-forcing-whips-max-length* ?*whips-max-length*))
    ;)
    ;(if ?*OR3-Forcing-Whips* then
    ;    (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*OR3-forcing-whips-max-length* ?*whips-max-length*))
    ;)
    ;(if ?*OR4-Forcing-Whips* then
    ;    (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*OR4-forcing-whips-max-length* ?*whips-max-length*))
    ;)
    ;(if ?*OR5-Forcing-Whips* then
    ;    (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*OR5-forcing-whips-max-length* ?*whips-max-length*))
    ;)
    ;(if ?*OR6-Forcing-Whips* then
    ;    (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*OR6-forcing-whips-max-length* ?*whips-max-length*))
    ;)
    ;;; But they have dependencies:
    (if ?*OR6-Forcing-Whips* then
        (bind ?*OR5-Forcing-Whips* TRUE)
        (bind ?*OR5-forcing-whips-max-length* (max ?*OR6-forcing-whips-max-length* ?*OR5-forcing-whips-max-length*))
    )
    (if ?*OR5-Forcing-Whips* then
        (bind ?*OR4-Forcing-Whips* TRUE)
        (bind ?*OR4-forcing-whips-max-length* (max ?*OR5-forcing-whips-max-length* ?*OR4-forcing-whips-max-length*))
    )
    (if ?*OR4-Forcing-Whips* then
        (bind ?*OR3-Forcing-Whips* TRUE)
        (bind ?*OR3-forcing-whips-max-length* (max ?*OR4-forcing-whips-max-length* ?*OR3-forcing-whips-max-length*))
    )
    (if ?*OR3-Forcing-Whips* then
        (bind ?*OR2-Forcing-Whips* TRUE)
        (bind ?*OR2-forcing-whips-max-length* (max ?*OR3-forcing-whips-max-length* ?*OR2-forcing-whips-max-length*))
    )
    (if ?*OR2-Forcing-Whips* then (bind ?*Anti-Tridagons* TRUE))

    
    ;;; ORk-Contrad-Whips DO change the max length of whips
    (if ?*OR6-Contrad-Whips* then
        (bind ?*OR5-Contrad-Whips* TRUE)
        (bind ?*OR5-contrad-whips-max-length* (max ?*OR6-contrad-whips-max-length* ?*OR5-contrad-whips-max-length*))
    )
    (if ?*OR5-Contrad-Whips* then
        (bind ?*OR4-Contrad-Whips* TRUE)
        (bind ?*OR4-contrad-whips-max-length* (max ?*OR5-contrad-whips-max-length* ?*OR4-contrad-whips-max-length*))
    )
    (if ?*OR4-Contrad-Whips* then
        (bind ?*OR3-Contrad-Whips* TRUE)
        (bind ?*OR3-contrad-whips-max-length* (max ?*OR4-contrad-whips-max-length* ?*OR3-contrad-whips-max-length*))
    )
    (if ?*OR3-Contrad-Whips* then
        (bind ?*OR2-Contrad-Whips* TRUE)
        (bind ?*OR2-contrad-whips-max-length* (max ?*OR3-contrad-whips-max-length* ?*OR2-contrad-whips-max-length*))
    )
    (if ?*OR2-Contrad-Whips* then
        (bind ?*Whips* TRUE)
        (bind ?*whips-max-length* (max ?*whips-max-length* ?*OR2-contrad-whips-max-length*))
    )
    (if ?*OR2-Contrad-Whips* then
        (bind ?*Anti-Tridagons* TRUE)
    )
    
    ;;; Bivalue-chains, whips, g-bivalue-chains, gwhips, braids, gbraids
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
    
    ;;; (typed or not) z-chains and g-bivalue chains imply (similarly typed or not) bivalue-chains
    (if ?*z-Chains* then (bind ?*Bivalue-Chains* TRUE))
    (if ?*G-Bivalue-Chains* then (bind ?*Bivalue-Chains* TRUE))
    (if ?*Typed-z-Chains* then (bind ?*Typed-Bivalue-Chains* TRUE))

    (if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*) then (bind ?*G-Labels* TRUE))
    
    ;;; Typed-whips
    (if ?*Typed-g-Whips* then
        (bind ?*Typed-Whips* TRUE) (bind ?*typed-whips-max-length* (max ?*typed-gwhips-max-length* ?*typed-whips-max-length*))
    )

    
    ;;; All the resolution theories, apart from BRT, must have Whips[1]
    ;;; There is a special global variable ?*Whips[1]* to take this into account
    ;;; Whips[1] are required by any other resolution theory
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
            ?*OR2-Forcing-Whips*
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

    (printout t "Generic rules dependencies set" crlf)
    
    ;;; Check consitency of the blocked choices
    (if (or ?*blocked-Subsets* ?*blocked-chains* ?*blocked-oddagons*)
        then (bind ?*blocked-Whips[1]* TRUE)
    )
    ;;; define values of secondary variables:
    (bind ?*blocked-bivalue-chains* ?*blocked-chains*)
    (bind ?*blocked-z-chains* ?*blocked-chains*)
    (bind ?*blocked-t-Whips* ?*blocked-chains*)

    ;;; If unblocked-behaviour is selected in the configuration file, reset the global unblocked behaviour:
    (if ?*unblocked-behaviour* then
        (bind ?*blocked-Whips[1]* FALSE)
        (bind ?*blocked-bivalue-chains* FALSE)
        (bind ?*blocked-z-chains* FALSE)
        (bind ?*blocked-t-Whips* FALSE)
        (bind ?*blocked-Subsets* FALSE)
        (bind ?*blocked-oddagons* FALSE)
    )
    
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
    ;;; typed-chains
    (bind ?typed-generic-rating-type "")
    (if ?*Typed-Bivalue-Chains* then (bind ?typed-generic-rating-type "TyBC"))
    (if ?*Typed-z-Chains* then (bind ?typed-generic-rating-type "TyZ"))
    (if ?*Typed-t-Whips* then (bind ?typed-generic-rating-type "TytW"))
    (if (and ?*Typed-z-Chains* ?*Typed-t-Whips*) then (bind ?typed-generic-rating-type "TyZ+TytW"))
    (if ?*Typed-Whips* then (bind ?typed-generic-rating-type "TyW"))
    (if ?*Typed-g-Whips* then (bind ?typed-generic-rating-type "TygW"))

    ;;; Untyped-chain-rules with no g-labels
    (bind ?*generic-rating-type* "")
    (if ?*Whips[1]* then (bind ?*generic-rating-type* "W1"))
    (if ?*Bivalue-Chains* then (bind ?*generic-rating-type* "BC"))
    (if ?*z-Chains* then (bind ?*generic-rating-type* "Z"))
    (if ?*t-Whips* then (bind ?*generic-rating-type* "tW"))
    (if (and ?*z-Chains* ?*t-Whips*) then (bind ?*generic-rating-type* "Z+tW"))
    (if ?*Whips* then (bind ?*generic-rating-type* "W"))
    (if ?*Braids* then (bind ?*generic-rating-type* "B"))
    ;;; not yet implemented:
    (if ?*Quick-B-Rating* then (bind ?*generic-rating-type* "QB"))

    ;;; chains with g-labels
    (if ?*G-Bivalue-Chains* then
        (bind ?*generic-rating-type* "gBC")
        (if ?*z-Chains* then (bind ?*generic-rating-type* "Z+gBC"))
        (if ?*t-Whips* then (bind ?*generic-rating-type* "tW+gBC"))
        (if (and ?*z-Chains* ?*t-Whips*) then (bind ?*generic-rating-type* "Z+tW+gBC"))
        (if ?*Whips* then (bind ?*generic-rating-type* "W+gBC"))
        (if ?*Braids* then (bind ?*generic-rating-type* "B+gBC"))
    )
    ;;; remember that g2-Whips and g-Whips subsume bivalue-chains, z-chains and t-whips
    (if ?*G2-Whips* then
        (bind ?*generic-rating-type* "g2W")
        (if ?*Braids* then (bind ?*generic-rating-type* "B+g2W"))
    )
    (if ?*G-Whips* then
        (bind ?*generic-rating-type* "gW")
        (if ?*Braids* then (bind ?*generic-rating-type* "B+gW"))
    )
    (if ?*G-Braids* then (bind ?*generic-rating-type* "gB"))
    
    ;;; exotic chains:
    (if ?*Oddagons* then
        (bind ?*generic-rating-type*
            (if (eq ?*generic-rating-type* "") then "O" else (str-cat ?*generic-rating-type* "+O"))
        )
    )

    ;;; Fuse the typed and untyped ratings:
    (bind ?*generic-rating-type*
        (if (eq ?typed-generic-rating-type "")
            then ?*generic-rating-type*
            else (str-cat ?typed-generic-rating-type "+" ?*generic-rating-type*)
        )
    )

    ;;; Forcing
    ;;; Note that Forcing Chains and ORk-Forcing chains are not intended to be used at the same time
    (bind ?forcing-type "")
    
    ;;; Forcing chains
    (if ?*Forcing-Whips* then (bind ?forcing-type "FW"))
    (if ?*Forcing3-Whips* then (bind ?forcing-type "F3W"))
    (if ?*Forcing4-Whips* then (bind ?forcing-type "F4W"))
    (if ?*Forcing5-Whips* then (bind ?forcing-type "F5W"))
    (if ?*Forcing-G-Whips* then (bind ?forcing-type "FgW"))
    (if ?*Forcing-Braids* then (bind ?forcing-type "FB"))
    (if (and ?*Forcing-G-Whips* ?*Forcing-Braids*) then (bind ?forcing-type "FgW+FB"))
    (if ?*Forcing-G-Braids* then (bind ?forcing-type "FgB"))

    ;;; ORk-Forcing chains
    (bind ?ORk-forcing-type "")
    (if ?*OR2-Forcing-Whips* then (bind ?ORk-forcing-type "OR2FW"))
    (if ?*OR3-Forcing-Whips* then (bind ?ORk-forcing-type "OR3FW"))
    (if ?*OR4-Forcing-Whips* then (bind ?ORk-forcing-type "OR4FW"))
    (if ?*OR5-Forcing-Whips* then (bind ?ORk-forcing-type "OR5FW"))
    (if ?*OR6-Forcing-Whips* then (bind ?ORk-forcing-type "OR6FW"))
    (if (neq ?ORk-forcing-type "") then
        (bind ?forcing-type (if (eq ?forcing-type "") then ?ORk-forcing-type else (str-cat ?forcing-type "+" ?ORk-forcing-type)))
    )

    ;;; ORk-Contrad chains
    (bind ?ORk-contrad-type "")
    (if ?*OR2-Contrad-Whips* then (bind ?ORk-contrad-type "OR2CW"))
    (if ?*OR3-Contrad-Whips* then (bind ?ORk-contrad-type "OR3CW"))
    (if ?*OR4-Contrad-Whips* then (bind ?ORk-contrad-type "OR4CW"))
    (if ?*OR5-Contrad-Whips* then (bind ?ORk-contrad-type "OR5CW"))
    (if ?*OR6-Contrad-Whips* then (bind ?ORk-contrad-type "OR6CW"))
    (if (neq ?ORk-contrad-type "") then
        (bind ?forcing-type (if (eq ?forcing-type "") then ?ORk-contrad-type else (str-cat ?forcing-type "+" ?ORk-contrad-type)))
    )

    (if (neq ?forcing-type "") then (bind ?*generic-rating-type* (str-cat ?*generic-rating-type* "+" ?forcing-type)))

    ;;; Add the relevant part for Bi-Whips, Bi-Braids, ...

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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; basic rules: management rules and BRT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Notice that in this version of CSP-Rules, ECP and Singles rely on function labels-linked
;;; As a result, T&E and DFS may be slower

(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "SimulatedElim.clp")) ; for simulating non-programmed rules
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "compute-RS.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "manage.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "ECP.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Single.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "blocked-rules-fns.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "blocked-rules.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "focused-elims.clp"))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Generic modules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "modules.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "enter-module.clp"))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; basic rules: special cases
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; init-links
(if (or ?*Whips[1]* ?*Bi-Whips* ?*Bi-Braids* ?*Forcing{2}-TE* ?*Forcing{3}-TE* ?*Forcing{4}-TE*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
)

;;; start play
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "play.clp"))


;;; Whips[1]
(if ?*Whips[1]* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
            ?*Directory-symbol* "WHIPS" ?*Directory-symbol* "Whips[1].clp"
        )
    )
)


;;; Bivalue and k-value
(if (or ?*Subsets[2]* ?*Bivalue-Chains* ?*Typed-Bivalue-Chains* ?*Oddagons* ?*Forcing-Whips* ?*special-TE* ?*Forcing{2}-TE* ?*special-DFS*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Bivalue.clp"))
)
(if ?*Forcing2-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL"
        ?*Directory-symbol* "2-value.clp")
    )
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL"
        ?*Directory-symbol* "symmetrify-OR-k.clp")
    )
)
(if ?*Forcing3-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL"
        ?*Directory-symbol* "3-value.clp")
    )
)
(if ?*Forcing4-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL"
        ?*Directory-symbol* "4-value.clp")
    )
)
(if ?*Forcing5-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL"
        ?*Directory-symbol* "5-value.clp")
    )
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

;;; typed-partial-whips[1], used by typed-z-chains ≥ 2, typed-t-whips ≥ 2 and typed-whips ≥ 2
(if (or
        (and ?*Typed-z-Chains* (<= 2 ?*typed-z-chains-max-length*))
        (and ?*Typed-t-Whips* (<= 2 ?*typed-t-whips-max-length*))
        (and ?*Typed-Whips* (<= 2 ?*typed-whips-max-length*))
    ) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-PARTIAL-WHIPS"
                ?*Directory-symbol* "Typed-Partial-Whips[1].clp")
    )
)

;;; partial-whips[1], used by z-chains ≥ 2, t-whips ≥ 2, whips ≥ 2 (and ORk-Forcing-Whips ≥ 2)
(if (or
        (and ?*z-Chains* (<= 2 ?*z-chains-max-length*))
        (and ?*t-Whips* (<= 2 ?*t-whips-max-length*))
        (and ?*Whips* (<= 2 ?*whips-max-length*))
        ;;; partial-whips in ORk-Forcing-Whips are deliberately restricted by ?*all-chains-max-length*
        ;;; and there is no reason to add the following condition:
        ; (and ?*OR2-Forcing-Whips* (<= 2 ?*OR2-forcing-whips-max-length*))
        (and ?*Quick-B-Rating* (<= 1 ?*braids-max-length*))
    ) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
            ?*Directory-symbol* "PARTIAL-WHIPS"
            ?*Directory-symbol* "Partial-Whips[1].clp")
    )
)
(if ?*Quick-B-Rating* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-SPEED"
            ?*Directory-symbol* "QUICK-BRAIDS"
            ?*Directory-symbol* "Quick-Braids-Functions.clp")
    )
)
 
;;; ORk-Forcing-Whips[1]
;;; Note that ORk-Contrad-Whips[1] are obtained as ORk-Forcing-Whips[1]
;;; Both can be considered as mere ORk-Whips[1]
(if (or ?*OR2-Forcing-Whips* ?*OR2-Contrad-Whips*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
        ?*Directory-symbol* "OR2-FORCING-WHIPS"
        ?*Directory-symbol* "OR2-Forcing-Whips[1].clp")
    )
)
(if (or ?*OR3-Forcing-Whips* ?*OR3-Contrad-Whips*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
        ?*Directory-symbol* "OR3-FORCING-WHIPS"
        ?*Directory-symbol* "OR3-Forcing-Whips[1].clp")
    )
)
(if (or ?*OR4-Forcing-Whips* ?*OR4-Contrad-Whips*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
        ?*Directory-symbol* "OR4-FORCING-WHIPS"
        ?*Directory-symbol* "OR4-Forcing-Whips[1].clp")
    )
)
(if (or ?*OR5-Forcing-Whips* ?*OR5-Contrad-Whips*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
        ?*Directory-symbol* "OR5-FORCING-WHIPS"
        ?*Directory-symbol* "OR5-Forcing-Whips[1].clp")
    )
)
(if (or ?*OR6-Forcing-Whips* ?*OR6-Contrad-Whips*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
        ?*Directory-symbol* "OR6-FORCING-WHIPS"
        ?*Directory-symbol* "OR6-Forcing-Whips[1].clp")
    )
)




(bind ?i 2)
(while (<= ?i 36)

    ;;; typed-bivalue-chains ≥ 2
    (if (and ?*Typed-Bivalue-Chains* (<= ?i ?*typed-bivalue-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "TYPED-BIVALUE-CHAINS"
            ?*Directory-symbol* "Typed-Bivalue-Chains[" ?i "].clp")
        )
    )
    ;;; bivalue-chains ≥ 2
    (if (and ?*Bivalue-Chains* (<= ?i ?*bivalue-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "BIVALUE-CHAINS"
            ?*Directory-symbol* "Bivalue-Chains[" ?i "].clp")
        )
    )
    

    ;;; typed-z-chains ≥ 2
    (if (and ?*Typed-z-Chains* (<= ?i ?*typed-z-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-Z-CHAINS"
                ?*Directory-symbol* "Typed-z-chains[" ?i "].clp")
        )
    )

    ;;; z-chains ≥ 2
    (if (and ?*z-Chains* (<= ?i ?*z-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "Z-CHAINS"
                ?*Directory-symbol* "z-chains[" ?i "].clp")
        )
    )
    
    
    ;;; oddagons (?i odd ≥ 3)
    (if (and ?*Oddagons* (>= ?i 3) (oddp ?i) (<= ?i ?*oddagons-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "ODDAGONS"
            ?*Directory-symbol* "Oddagons[" ?i "].clp")
        )
    )

    
    ;;; typed-partial-whips ≥ 2, used by typed-t-whips and typed-whips
    (if (or (and ?*Typed-t-Whips* (< ?i ?*typed-t-whips-max-length*))
            (and ?*Typed-Whips* (< ?i ?*typed-whips-max-length*))
        ) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "TYPED-PARTIAL-WHIPS"
                    ?*Directory-symbol* "Typed-Partial-Whips[" ?i "].clp")
        )
    )
    
    ;;; partial-whips ≥ 2, used by t-whips, whips (and ORk-Forcing-Whips)
    (if (or (and ?*t-Whips* (< ?i ?*t-whips-max-length*))
            (and ?*Whips* (< ?i ?*whips-max-length*))
            ;;; ORk-Forcing-Whips are deliberately restricted by ?*all-chains-max-length*
            ; (and ?*OR2-Forcing-Whips* (< ?i ?*OR2-forcing-whips-max-length*))
        ) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "PARTIAL-WHIPS"
                ?*Directory-symbol* "Partial-Whips[" ?i "].clp")
        )
    )


    ;;; typed-t-whips ≥ 2
    (if (and ?*Typed-t-Whips* (<= ?i ?*typed-t-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "TYPED-T-WHIPS"
                    ?*Directory-symbol* "Typed-t-Whips[" ?i "].clp")
        )
    )
    
    ;;; t-whips ≥ 2
    (if (and ?*t-Whips* (<= ?i ?*t-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "T-WHIPS"
                    ?*Directory-symbol* "T-Whips[" ?i "].clp")
        )
    )

    
    ;;; typed-whips ≥ 2
    (if (and ?*Typed-Whips* (<= ?i ?*typed-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-WHIPS"
                ?*Directory-symbol* "Typed-Whips[" ?i "].clp")
        )
    )
    
    ;;; whips ≥ 2
    (if (and ?*Whips* (<= ?i ?*whips-max-length*)) then
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
    (if (and ?*Quick-B-Rating* (<= ?i ?*braids-max-length*)) then ;;; start at 2
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-SPEED"
                ?*Directory-symbol* "QUICK-BRAIDS"
                ?*Directory-symbol* "Quick-Braids[" ?i "].clp")
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
    (if (and ?*G2-Whips* (<= ?i ?*g2whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-MEMORY"
                ?*Directory-symbol* "G2-WHIPS"
                ?*Directory-symbol* "g2Whips[" ?i "].clp")
        )
    )

    ;;; typed-g-whips
    ;(if (and ?*Typed-g-Whips* (<= ?i ?*typed-gwhips-max-length*)) then
    ;    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
    ;         ?*Directory-symbol* "TYPED-G-WHIPS" ?*Directory-symbol* "Typed-gWhips[" ?i "].clp")
    ;    )
    ;)

    ;;; g-whips
    (if (and ?*G-Whips* (<= ?i ?*gwhips-max-length*)) then
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

    (if (and ?*Forcing2-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR2-FORCING-WHIPS"
            ?*Directory-symbol* "OR2-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*Forcing3-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR3-FORCING-WHIPS"
            ?*Directory-symbol* "OR3-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*Forcing4-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR4-FORCING-WHIPS"
            ?*Directory-symbol* "OR4-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*Forcing5-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR5-FORCING-WHIPS"
            ?*Directory-symbol* "OR5-Forcing-Whips[" ?i "].clp")
        )
    )

    ;;; ORk Forcing Whips
    (if (and ?*OR2-Forcing-Whips* (<= ?i ?*OR2-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR2-FORCING-WHIPS"
            ?*Directory-symbol* "OR2-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-Forcing-Whips* (<= ?i ?*OR3-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR3-FORCING-WHIPS"
            ?*Directory-symbol* "OR3-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-Forcing-Whips* (<= ?i ?*OR4-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR4-FORCING-WHIPS"
            ?*Directory-symbol* "OR4-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-Forcing-Whips* (<= ?i ?*OR5-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR5-FORCING-WHIPS"
            ?*Directory-symbol* "OR5-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-Forcing-Whips* (<= ?i ?*OR6-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR6-FORCING-WHIPS"
            ?*Directory-symbol* "OR6-Forcing-Whips[" ?i "].clp")
        )
    )

    ;;; ORk Contrad Whips
    (if (and ?*OR2-Contrad-Whips* (<= ?i ?*OR2-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR2-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR2-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-Contrad-Whips* (<= ?i ?*OR3-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR3-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR3-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-Contrad-Whips* (<= ?i ?*OR4-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR4-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR4-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-Contrad-Whips* (<= ?i ?*OR5-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR5-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR5-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-Contrad-Whips* (<= ?i ?*OR6-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR6-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR6-Contrad-Whips[" ?i "].clp")
        )
    )
    
    ;;; forcing g-whips
    (if (and ?*Forcing-G-Whips* (>= ?i 3) (<= ?i ?*forcing-gwhips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-G-WHIPS"
            ?*Directory-symbol* "Forcing-gWhips[" ?i "].clp")
        )
    )
    
    ;;; forcing braids
    (if (and ?*Forcing-Braids* (>= ?i 4) (<= ?i ?*forcing-braids-max-length*)) then ;;; start at 4
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-BRAIDS"
            ?*Directory-symbol* "Forcing-Braids[" ?i "].clp")
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
;;; T&E, Forcing T&E, Backdoors, Anti-Backdoors, Anti-Backdoor-Pairs and DFS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; only one of TE1, TE2 or TE3 can be loaded at the same time

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


(if ?*Forcing{2}-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "Forcing2-TE.clp"))
)

(if ?*Forcing{3}-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "Forcing3-TE.clp"))
)

(if ?*Forcing{4}-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "Forcing4-TE.clp"))
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

(if ?*Anti-backdoor-pairs* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "anti-backdoor-pairs.clp"))
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

;;; These are special cases of W*-Whips[[1]], but their total length is controlled

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
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "W*-WHIPS" ?*Directory-symbol* "W*-Whips[[" ?i "]].clp"))
        (bind ?i (+ ?i 1))
    )
)


(if ?*B*-Braids* then ;;; start at 2
    (bind ?i 2)
    (while (<= ?i ?*b*-braids-max-length*)
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "B*-BRAIDS" ?*Directory-symbol* "B*-Braids[[" ?i "]].clp"))
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
    (if (eq ?*rating-type* "") then (bind ?*rating-type* "BRT"))

    ;;; deal with T&E
    (if (and ?*TE1* (not ?*TE2*) (not ?*TE3*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(1)")
            else (bind ?*rating-type* (str-cat "T&E(" ?*rating-type* ", 1)"))
        )
    )
    (if (and ?*TE2* (not ?*TE1*) (not ?*TE3*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(2)")
            else (bind ?*rating-type* (str-cat "T&E(" ?*rating-type* ", 2)"))
        )
    )
    (if (and ?*TE3* (not ?*TE1*) (not ?*TE2*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(3)")
            else (bind ?*rating-type* (str-cat "T&E(" ?*rating-type* ", 3)"))
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




