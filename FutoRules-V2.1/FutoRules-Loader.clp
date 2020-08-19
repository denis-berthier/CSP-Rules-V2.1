
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              FUTORULES LOADER
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





(defglobal ?*dummy-variable-for-setting-application-specific-rules-dependencies* = (progn
    (if ?*str-hills-and-valleys* then (bind ?*hills-and-valleys* TRUE) (bind ?*str-asc-chains* TRUE))
    (if ?*hills-and-valleys* then (bind ?*asc-chains* TRUE))
    (if ?*str-asc-chains* then (bind ?*asc-chains* TRUE))
    TRUE
))

    
    
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "background.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "solve.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "nrc-output.clp"))

(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "manage.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "NS.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "HS.clp"))


(if ?*asc-chains* then (load (str-cat ?*Application-Dir* "ASC-CHAINS" ?*Directory-symbol* "asc-chains.clp")))
(if ?*str-asc-chains* then (load (str-cat ?*Application-Dir* "ASC-CHAINS" ?*Directory-symbol* "strong-asc-chains.clp")))
(if ?*hills-and-valleys* then (load (str-cat ?*Application-Dir* "ASC-CHAINS" ?*Directory-symbol* "hills-and-valleys.clp")))
(if ?*str-hills-and-valleys* then (load (str-cat ?*Application-Dir* "ASC-CHAINS" ?*Directory-symbol* "strong-hills-and-valleys.clp")))


(if (or ?*G-Bivalue-Chains* ?*G-Whips*  ?*G-Braids*) then 
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "glabels.clp"))
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-glinks.clp"))
)


;;; SUBSETS

;;; when a Subset is detected, in the default behaviour of FutoRules,
;;; application of the rule can be interrupted if a simpler rule is applicable
;;; FutoRules now allows to modify this behaviour (blocked Subsets)
;;; as a result, different versions of the Subset rules, will be loaded by the FutoRules loader
(defglobal ?*Subsets-Directory* =
    (if ?*blocked-Subsets*
        then "BLOCKED-SUBSETS"
        else "SUBSETS"
    )
)


(if ?*Subsets[2]* then
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "N2-naked-pairs.clp"))
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "H2-hidden-pairs.clp"))
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "SH2-x-wing.clp"))
)


(if ?*Subsets[3]* then
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "N3-naked-triplets.clp"))
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "H3-hidden-triplets.clp"))
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "SH3-swordfish.clp"))
)


(if ?*Subsets[4]* then
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "N4-naked-quads.clp"))
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "H4-hidden-quads.clp"))
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "SH4-jellyfish.clp"))
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "SpN4-special-naked-quads.clp"))
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "SpH4-special-hidden-quads.clp"))
    (load (str-cat ?*Application-Dir* ?*Subsets-Directory* ?*Directory-symbol* "SpSH4-special-jellyfish.clp"))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; REDEFINE APPLICATION-SPECIFIC RATING-TYPE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction define-application-specific-rating-type ()
    (bind ?*application-specific-rating-type* (if ?*Subsets* then "S" else ""))
    ?*application-specific-rating-type*
)


