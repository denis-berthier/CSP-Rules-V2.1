
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





;;; Notice that this generic loader also loads the application-specific files

(if (eq ?*inference-engine* CLIPS) then (load (str-cat ?*CSP-Rules-Generic-Dir* "UTIL" ?*Directory-symbol* "CLIPS-utils.clp")))


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

(load (str-cat ?*CSP-Rules-Generic-Dir* "UTIL" ?*Directory-symbol* "utils.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "UTIL" ?*Directory-symbol* "file-utils.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "UTIL" ?*Directory-symbol* "stats.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "UTIL" ?*Directory-symbol* "system-utils.clp"))

;;; load generic templates
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "templates.clp"))
;;; in any application, also load application specific templates 
;;; because those that are modified must be loaded before any rule <<<<<<<<<<<<<
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "templates.clp"))


(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "generic-background.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "generic-output.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "solve.clp"))

;;; load external generic functions:
(load (str-cat ?*XTERNS* ?*Directory-symbol* "xterns-generic.clp"))


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
;;; Generic Chain Rules at levels 1- and 1
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

;;; ORk-Forcing-Whips[1]
;;; ORk-Whips[1] are currently in the Forcing-Whips directory, but this should change
;;; Note that ORk-Contrad-Whips[1] are obtained as ORk-Forcing-Whips[1]
;;; Both can be considered as mere ORk-Whips[1]

(if ?*OR2-Whips[1]* then
    (if (and ?*OR2-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-FORCING-WHIPS" ?*Directory-symbol* "OR2-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-WHIPS" ?*Directory-symbol* "OR2-Whips[1].clp")
        )
    )
)
(if ?*OR3-Whips[1]* then
    (if (and ?*OR3-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-FORCING-WHIPS" ?*Directory-symbol* "OR3-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-WHIPS" ?*Directory-symbol* "OR3-Whips[1].clp")
        )
    )
)
(if ?*OR4-Whips[1]* then
    (if (and ?*OR4-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-FORCING-WHIPS" ?*Directory-symbol* "OR4-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-WHIPS" ?*Directory-symbol* "OR4-Whips[1].clp")
        )
    )
)
(if ?*OR5-Whips[1]* then
    (if (and ?*OR5-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-FORCING-WHIPS" ?*Directory-symbol* "OR5-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-WHIPS" ?*Directory-symbol* "OR5-Whips[1].clp")
        )
    )
)
(if ?*OR6-Whips[1]* then
    (if (and ?*OR6-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-FORCING-WHIPS" ?*Directory-symbol* "OR6-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-WHIPS" ?*Directory-symbol* "OR6-Whips[1].clp")
        )
    )
)
(if ?*OR7-Whips[1]* then
    (if (and ?*OR7-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-FORCING-WHIPS" ?*Directory-symbol* "OR7-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-WHIPS" ?*Directory-symbol* "OR7-Whips[1].clp")
        )
    )
)
(if ?*OR8-Whips[1]* then
    (if (and ?*OR8-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-FORCING-WHIPS" ?*Directory-symbol* "OR8-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-WHIPS" ?*Directory-symbol* "OR8-Whips[1].clp")
        )
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Generic Chain Rules at level 1+
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Bivalue and k-value
(if (or ?*Subsets[2]* ?*Bivalue-Chains* ?*Typed-Bivalue-Chains* ?*Oddagons* ?*Forcing-Whips* ?*special-TE* ?*Forcing{2}-TE* ?*special-DFS*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Bivalue.clp"))
)

(if ?*Forcing2-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "2-value.clp"))
)
(if ?*Forcing3-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "3-value.clp"))
)
(if ?*Forcing4-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "4-value.clp") )
)
(if ?*Forcing5-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "5-value.clp"))
)

(load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "update-ORk-relations.clp"))
(if (or ?*Forcing2-Whips* ?*OR2-Forcing-Whips* ?*OR2-Contrad-Whips* ?*OR2-Whips*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
        ?*Directory-symbol* "SYMMETRIFY-ORk"
        ?*Directory-symbol* "symmetrify-OR2-relations.clp"))
)
(if (or ?*Forcing3-Whips* ?*OR3-Forcing-Whips* ?*OR3-Contrad-Whips* ?*OR3-Whips*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
        ?*Directory-symbol* "SYMMETRIFY-ORk"
        ?*Directory-symbol* "symmetrify-OR3-relations.clp"))
)
(if (or ?*Forcing4-Whips* ?*OR4-Forcing-Whips* ?*OR4-Contrad-Whips* ?*OR4-Whips*) then
    (if (or ?*Forcing4-Whips* ?*OR4-Forcing-Whips*)
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR4-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR4-relations.clp"))
    )
)
(if (or ?*Forcing5-Whips* ?*OR5-Forcing-Whips* ?*OR5-Contrad-Whips* ?*OR5-Whips*) then
    (if (or ?*Forcing5-Whips* ?*OR5-Forcing-Whips*)
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR5-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR5-relations.clp"))
    )
)
(if (or ?*OR6-Forcing-Whips* ?*OR6-Contrad-Whips* ?*OR6-Whips*) then
    (if ?*OR6-Forcing-Whips*
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR6-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR6-relations.clp"))
    )
)
(if (or ?*OR7-Forcing-Whips* ?*OR7-Contrad-Whips* ?*OR7-Whips*) then
    (if ?*OR7-Forcing-Whips*
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR7-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR7-relations.clp"))
    )
)
(if (or ?*OR8-Forcing-Whips* ?*OR8-Contrad-Whips* ?*OR8-Whips*) then
    (if ?*OR8-Forcing-Whips*
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR8-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR8-relations.clp"))
    )
)

;;; g-labels and g-links
(if ?*G-Labels* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "glabels.clp"))
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "init-glinks.clp"))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Generic Chain Rules at levels ?i > 1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; for JESS compatibility "loop-for-count" is avoided

;;; General tracking rules
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "track-levels.clp"))


;;; load the rules explicitly chosen at level 1 plus the rules they require

(if ?*Quick-B-Rating* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-SPEED"
            ?*Directory-symbol* "QUICK-BRAIDS"
            ?*Directory-symbol* "Quick-Braids-Functions.clp")
    )
)
 


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
;(if (or
;        (and ?*z-Chains* (<= 2 ?*z-chains-max-length*))
;        (and ?*t-Whips* (<= 2 ?*t-whips-max-length*))
;        (and ?*Whips* (<= 2 ?*whips-max-length*))
;        ;;; partial-whips in ORk-Forcing-Whips are deliberately restricted by ?*all-chains-max-length*
;        ;;; and there is no reason to add the following condition:
;        ; (and ?*OR2-Forcing-Whips* (<= 2 ?*OR2-forcing-whips-max-length*))
;        (and ?*Quick-B-Rating* (<= 1 ?*braids-max-length*))
;    ) then
;    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
;            ?*Directory-symbol* "PARTIAL-WHIPS"
;            ?*Directory-symbol* "Partial-Whips[1].clp")
;    )
;)



(bind ?i 2)
(while (<= ?i 36)
    (if (>= ?*max-level* ?i) then
        (printout t crlf crlf "LOADING GENERIC RULES AT LEVEL " ?i ":" crlf)
    )

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

    
    ;;; typed-partial-whips ≥ 2, used only by typed-t-whips, typed-whips and typed-z-chains[<= 3]
    (if (or (and ?*Typed-t-Whips* (<= (- ?i 1) ?*typed-t-whips-max-length*))
            (and ?*Typed-Whips* (<= (- ?i 1) ?*typed-whips-max-length*))
            (and ?*Typed-z-Chains* (<= ?i 3))
        ) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "TYPED-PARTIAL-WHIPS"
                    ?*Directory-symbol* "Typed-Partial-Whips[" (- ?i 1) "].clp")
        )
    )
    ;;; typed-t-whips ≥ 2
    (if (and ?*Typed-t-Whips* (<= ?i ?*typed-t-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "TYPED-T-WHIPS"
                    ?*Directory-symbol* "Typed-t-Whips[" ?i "].clp")
        )
    )
    ;;; typed-whips ≥ 2
    (if (and ?*Typed-Whips* (<= ?i ?*typed-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-WHIPS"
                ?*Directory-symbol* "Typed-Whips[" ?i "].clp")
        )
    )
    
    
    ;;; partial-whips[?i - 1]
    ;;; rememebr that z-chains[2] require partial-whips[1]
    (if (or (<= (- ?i 1) ?*partial-whips-max-length*) (and (eq ?i 1) ?*z-Chains*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "PARTIAL-WHIPS"
                ?*Directory-symbol* "Partial-Whips[" (- ?i 1) "].clp")
        )
    )
    ;;; t-whips ≥ 2
    (if (and ?*t-Whips* (<= ?i ?*t-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "T-WHIPS"
                    ?*Directory-symbol* "T-Whips[" ?i "].clp")
        )
    )
    ;;; whips ≥ 2
    (if (and ?*Whips* (<= ?i ?*whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "WHIPS"
                ?*Directory-symbol* "Whips[" ?i "].clp")
        )
    )
    
    
    ;;; ORk-splitting rules
    (if (and ?*allow-ORk-splitting* (or ?*OR2-Forcing-Whips* ?*OR2-Contrad-Whips*) (evenp ?i) (<= ?i 10)) then
        (bind ?k 2)
        (while (<= ?k 16)
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SPLIT-ORk"
                ?*Directory-symbol* "split-OR" ?k "-ch[" ?i "].clp")
            )
            (bind ?k (+ ?k 1))
        )
    )
    
    
    ;;; OR2-forcing-whips, OR2-contrad-whips, OR2-whips
    (if (and ?*OR2-Forcing-Whips* (<= ?i ?*OR2-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-FORCING-WHIPS"
            ?*Directory-symbol* "OR2-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR2-Contrad-Whips* (<= ?i ?*OR2-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR2-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR2-Whips* (>= ?i 2) (<= ?i ?*OR2-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-WHIPS"
            ?*Directory-symbol* "OR2-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR2-WHIPS"
            ?*Directory-symbol* "Partial-OR2-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR3-forcing-whips, OR3-contrad-whips, OR3-whips
    (if (and ?*OR3-Forcing-Whips* (<= ?i ?*OR3-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-FORCING-WHIPS"
            ?*Directory-symbol* "OR3-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-Contrad-Whips* (<= ?i ?*OR3-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR3-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-Whips* (>= ?i 2) (<= ?i ?*OR3-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-WHIPS"
            ?*Directory-symbol* "OR3-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR3-WHIPS"
            ?*Directory-symbol* "Partial-OR3-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR4-forcing-whips, OR4-contrad-whips, OR4-whips
    (if (and ?*OR4-Forcing-Whips* (<= ?i ?*OR4-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-FORCING-WHIPS"
            ?*Directory-symbol* "OR4-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-Contrad-Whips* (<= ?i ?*OR4-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR4-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-Whips* (>= ?i 2) (<= ?i ?*OR4-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-WHIPS"
            ?*Directory-symbol* "OR4-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR4-WHIPS"
            ?*Directory-symbol* "Partial-OR4-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR5-forcing-whips, OR5-contrad-whips, OR5-whips
    (if (and ?*OR5-Forcing-Whips* (<= ?i ?*OR5-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-FORCING-WHIPS"
            ?*Directory-symbol* "OR5-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-Contrad-Whips* (<= ?i ?*OR5-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR5-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-Whips* (>= ?i 2) (<= ?i ?*OR5-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-WHIPS"
            ?*Directory-symbol* "OR5-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR5-WHIPS"
            ?*Directory-symbol* "Partial-OR5-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR6-forcing-whips, OR6-contrad-whips and OR6-whips
    (if (and ?*OR6-Forcing-Whips* (<= ?i ?*OR6-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-FORCING-WHIPS"
            ?*Directory-symbol* "OR6-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-Contrad-Whips* (<= ?i ?*OR6-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR6-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-Whips* (>= ?i 2) (<= ?i ?*OR6-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-WHIPS"
            ?*Directory-symbol* "OR6-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR6-WHIPS"
            ?*Directory-symbol* "Partial-OR6-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR7-forcing-whips, OR7-contrad-whips and OR7-whips
    (if (and ?*OR7-Forcing-Whips* (<= ?i ?*OR7-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-FORCING-WHIPS"
            ?*Directory-symbol* "OR7-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR7-Contrad-Whips* (<= ?i ?*OR7-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR7-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR7-Whips* (>= ?i 2) (<= ?i ?*OR7-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-WHIPS"
            ?*Directory-symbol* "OR7-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR7-WHIPS"
            ?*Directory-symbol* "Partial-OR7-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR8-forcing-whips, OR8-contrad-whips and OR8-whips
    (if (and ?*OR8-Forcing-Whips* (<= ?i ?*OR8-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-FORCING-WHIPS"
            ?*Directory-symbol* "OR8-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR8-Contrad-Whips* (<= ?i ?*OR8-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR8-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR8-Whips* (>= ?i 2) (<= ?i ?*OR8-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-WHIPS"
            ?*Directory-symbol* "OR8-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR8-WHIPS"
            ?*Directory-symbol* "Partial-OR8-Whips[" (- ?i 1) "].clp")
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
    ;(if (and ?*Typed-G-Whips* (<= ?i ?*typed-gwhips-max-length*)) then
    ;    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
    ;         ?*Directory-symbol* "TYPED-G-WHIPS" ?*Directory-symbol* "Typed-gWhips[" ?i "].clp")
    ;    )
    ;)

    ;;; partial-g-whips (their loading is decided by ?*partial-gwhips-max-length*)
    (if (<= (- ?i 1) ?*partial-gwhips-max-length*) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "PARTIAL-G-WHIPS" ?*Directory-symbol* "Partial-gWhips[" (- ?i 1) "].clp")
        )
    )
    ;;; g-whips
    (if (and ?*G-Whips* (<= ?i ?*gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "G-WHIPS" ?*Directory-symbol* "gWhips[" ?i "].clp")
        )
    )
    
    
    ;;; OR2-forcing-g-whips, OR2-contrad-g-whips and OR2-gwhips
    (if (and ?*OR2-Forcing-G-Whips* (<= ?i ?*OR2-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR2-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR2-Contrad-G-Whips* (<= ?i ?*OR2-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR2-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR2-G-Whips* (>= ?i 2) (<= ?i ?*OR2-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-G-WHIPS"
            ?*Directory-symbol* "OR2-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR2-G-WHIPS"
                ?*Directory-symbol* "Partial-OR2-gWhips[" (- ?i 1) "].clp")
            )
        )
    )
    
    ;;; OR3-forcing-g-whips, OR3-contrad-g-whips and OR3-gwhips
    (if (and ?*OR3-Forcing-G-Whips* (<= ?i ?*OR3-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR3-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-Contrad-G-Whips* (<= ?i ?*OR3-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR3-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-G-Whips* (>= ?i 2) (<= ?i ?*OR3-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-G-WHIPS"
            ?*Directory-symbol* "OR3-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR3-G-WHIPS"
                ?*Directory-symbol* "Partial-OR3-gWhips[" (- ?i 1) "].clp")
            )
        )
    )
    
    ;;; OR4-forcing-g-whips, OR4-contrad-g-whips and OR4-gwhips
    (if (and ?*OR4-Forcing-G-Whips* (<= ?i ?*OR4-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR4-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-Contrad-G-Whips* (<= ?i ?*OR4-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR4-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-G-Whips* (>= ?i 2) (<= ?i ?*OR4-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-G-WHIPS"
            ?*Directory-symbol* "OR4-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR4-G-WHIPS"
                ?*Directory-symbol* "Partial-OR4-gWhips[" (- ?i 1) "].clp")
            )
        )
    )
    
    ;;; OR5-forcing-g-whips, OR5-contrad-g-whips and OR5-gwhips
    (if (and ?*OR5-Forcing-G-Whips* (<= ?i ?*OR5-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR5-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-Contrad-G-Whips* (<= ?i ?*OR5-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR5-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-G-Whips* (>= ?i 2) (<= ?i ?*OR5-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-G-WHIPS"
            ?*Directory-symbol* "OR5-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR5-G-WHIPS"
                ?*Directory-symbol* "Partial-OR5-gWhips[" (- ?i 1) "].clp")
            )
        )
    )
    
    ;;; OR6-forcing-g-whips, OR6-contrad-g-whips and OR6-gwhips
    (if (and ?*OR6-Forcing-G-Whips* (<= ?i ?*OR6-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR6-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-Contrad-G-Whips* (<= ?i ?*OR6-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR6-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-G-Whips* (>= ?i 2) (<= ?i ?*OR6-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-G-WHIPS"
            ?*Directory-symbol* "OR6-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR6-G-WHIPS"
                ?*Directory-symbol* "Partial-OR6-gWhips[" (- ?i 1) "].clp")
            )
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
;;; Bi-Whips, Bi-Braids, Bi-T&E (NOT AVAILABLE IN THE PUBLIC RELEASES)
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


(if ?*simple-bi-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "BiT&E-and-T&E*" ?*Directory-symbol* "Bi-T&E.clp" ))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Forcing-Bi-Whips and Forcing-Bi-Braids (NOT AVAILABLE IN THE PUBLIC RELEASES)
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
;;; W*-Whips and B*-Braids (NOT AVAILABLE IN THE PUBLIC RELEASES)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; There's only one version, in the "CHAIN-RULES-SPEED" directory

(if ?*W*-Whips* then ;;; start at 1
    (bind ?i 1)
    (while (<= ?i ?*w*-whips-max-length*)
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" "SPEED" ?*Directory-symbol* "W*-WHIPS" ?*Directory-symbol* "W*-Whips[[" ?i "]].clp"))
        (bind ?i (+ ?i 1))
    )
)


(if ?*B*-Braids* then ;;; start at 1 (there may be b*-braids[1] that are not w*-whips[1])
    (bind ?i 1)
    (while (<= ?i ?*b*-braids-max-length*)
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" "SPEED" ?*Directory-symbol* "B*-BRAIDS" ?*Directory-symbol* "B*-Braids[[" ?i "]].clp"))
        (bind ?i (+ ?i 1))
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; LOAD APPLICATION-SPECIFIC FUNCTIONS AND RULES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; CSP-Rules cannot work without any application specific entries
;;; load them now:
(batch ?*Application-Loader*)



(print-start-banner)




