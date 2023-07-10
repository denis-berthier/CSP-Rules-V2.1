
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              IMP630-ORk-W MODULE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - April 2023              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-








(defmodule IMP630-ORk-W (import MAIN ?ALL))

(load* (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "enter-module.clp"))

(load* (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "SimulatedElim.clp"))
(load* (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "manage.clp"))
(load* (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "ECP.clp"))
(load* (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Single.clp"))
(load* (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "blocked-rules.clp"))
(load* (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
(load* (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "play.clp"))
(load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
        ?*Directory-symbol* "WHIPS" ?*Directory-symbol* "Whips[1].clp"
    )
)
(load* (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Bivalue.clp"))

(load* (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "manage.clp"))
(load* (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "NS.clp"))
(load* (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "HS.clp"))
(load* (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))

(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "N2-naked-pairs.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "H2-hidden-pairs.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SH2-x-wing.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "N3-naked-triplets.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "H3-hidden-triplets.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SH3-swordfish.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "N4-naked-quads.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "H4-hidden-quads.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SH4-jellyfish.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SpN4-special-naked-quads.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SpH4-special-hidden-quads.clp"))
(load* (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SpSH4-special-jellyfish.clp"))



;;; reversible chains
(loop-for-count (?i 2 36)
    ;;; bivalue-chains ≥ 2
    (if (<= ?i ?*bivalue-chains-max-length*) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "BIVALUE-CHAINS"
            ?*Directory-symbol* "Bivalue-Chains[" ?i "].clp")
        )
    )
    
    ;;; z-chains ≥ 2
    (if (<= ?i ?*z-chains-max-length*) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "Z-CHAINS"
                ?*Directory-symbol* "z-chains[" ?i "].clp")
        )
    )
)

;;; Symmetrify-ORk rules
(if ?*OR2-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "SYMMETRIFY-ORk" ?*Directory-symbol* "symmetrify-OR2-relations.clp"))
)
(if ?*OR3-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "SYMMETRIFY-ORk" ?*Directory-symbol* "symmetrify-OR3-relations.clp"))
)
(if ?*OR4-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "SYMMETRIFY-ORk" ?*Directory-symbol* "partial-symmetrify-OR4-relations.clp"))
)
(if ?*OR5-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "SYMMETRIFY-ORk" ?*Directory-symbol* "partial-symmetrify-OR5-relations.clp"))
)
(if ?*OR6-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "SYMMETRIFY-ORk" ?*Directory-symbol* "partial-symmetrify-OR6-relations.clp"))
)
(if ?*OR7-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "SYMMETRIFY-ORk" ?*Directory-symbol* "partial-symmetrify-OR7-relations.clp"))
)
(if ?*OR8-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "SYMMETRIFY-ORk" ?*Directory-symbol* "partial-symmetrify-OR8-relations.clp"))
)


;;; Ultra-persistency rules: update ORk-relations and ORk-splitting rules
(load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "update-ORk-relations.clp"))
(loop-for-count (?i 2 36)
    (if (and ?*allow-ORk-splitting* (<= ?i ?*max-level*) (evenp ?i) (<= ?i 10)) then
        (bind ?k 2)
        (while (<= ?k 12)
            (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SPLIT-ORk"
                ?*Directory-symbol* "split-OR" ?k "-ch[" ?i "].clp")
            )
            (bind ?k (+ ?k 1))
        )
    )
)



;;; Tridagons and anti-tridagons
(load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "Tridagon[12].clp"))
(load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "ORk-anti-Tridagon[12].clp"))


;;; IMP630 (what's loaded is defined by the choices in the config file)
;;; Load selected lists of impossible patterns:
;;; ?*Imp630-Select1*
(if ?*EL13c290* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c290.clp"))
)
(if ?*EL14c30* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c30.clp"))
)
(if ?*EL14c159* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c159.clp"))
)
(if ?*EL14c13* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c13.clp"))
)
(if ?*EL14c1* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c1.clp"))
)

;;; ?*Imp630-Select2*
(if ?*EL13c30* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c30.clp"))
)
(if ?*EL10c28* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c28.clp"))
)
(if ?*EL13c179* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c179.clp"))
)
(if ?*EL13c176* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c176.clp"))
)
(if ?*EL13c234* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c234.clp"))
)
(if ?*EL13c171* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c171.clp"))
)
(if ?*EL10c6* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c6.clp"))
)

;;; ?*Imp630-Select3*
(if ?*EL13c259* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c259.clp"))
)
(if ?*EL10c8* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c8.clp"))
)
(if ?*EL13c172* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c172.clp"))
)
(if ?*EL13c187* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c187.clp"))
)
(if ?*EL10c4* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c4.clp"))
)
(if ?*EL13c175* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c175.clp"))
)
(if ?*EL14c19* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c19.clp"))
)

;;; ?*Imp630-Select4*
(if ?*EL14c93* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c93.clp"))
)
(if ?*EL15c97* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/15c" ?*Directory-symbol* "EL15c97.clp"))
)
(if ?*EL14c154* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c154.clp"))
)
(if ?*EL10c10* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c10.clp"))
)
(if ?*EL13c170* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c170.clp"))
)
(if ?*EL13c168* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c168.clp"))
)
(if ?*EL13c19* then
    (load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c19.clp"))
)


;;; Impossible patterns in two bands or two stacks;
;;; impossible patterns that have no free cells have no associated rules
(if (or ?*Imp630-all* ?*Imp630-10c*) then
    (loop-for-count (?i 1 31)
        (if (neq ?i 11) then ; #11 has 4 cells in block 6
            (if (and
                (not (and (eq ?i 4) ?*EL10c4*))
                (not (and (eq ?i 6) ?*EL10c6*))
                (not (and (eq ?i 8) ?*EL10c8*))
                (not (and (eq ?i 8) ?*EL10c10*))
                (not (and (eq ?i 28) ?*EL10c28*))
                )then ; already loaded as a special case
                (load* (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imp630-all* ?*Imp630-12c*) then
    (loop-for-count (?i 1 38)
        (if (neq ?i 38) then ; #38 is Tridagon, it must be loaded separately
            (load* (str-cat
                ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/12c" ?*Directory-symbol* "EL12c" ?i ".clp"))
        )
    )
)
(if (or ?*Imp630-all* ?*Imp630-13c*) then
    (loop-for-count (?i 1 290)
        (if (not (member$ ?i (create$ 207 211 217 218 219))) then ; #i has enough free cells
            (if (and
                    (not (and (eq ?i 19) ?*EL13c19*))
                    (not (and (eq ?i 30) ?*EL13c30*))
                    (not (and (eq ?i 168) ?*EL13c168*))
                    (not (and (eq ?i 170) ?*EL13c170*))
                    (not (and (eq ?i 171) ?*EL13c171*))
                    (not (and (eq ?i 172) ?*EL13c172*))
                    (not (and (eq ?i 175) ?*EL13c175*))
                    (not (and (eq ?i 176) ?*EL13c176*))
                    (not (and (eq ?i 179) ?*EL13c179*))
                    (not (and (eq ?i 187) ?*EL13c187*))
                    (not (and (eq ?i 234) ?*EL13c234*))
                    (not (and (eq ?i 259) ?*EL13c259*))
                    (not (and (eq ?i 290) ?*EL13c290*))
                ) then ; already loaded as special cases
                (load* (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imp630-all* ?*Imp630-14c*) then
    (loop-for-count (?i 1 159)
        (if (not (member$ ?i (create$ 23 33 36 73 92 112 113))) then ; #i has enough free cells
            (if (and
                    (not (and (eq ?i 1) ?*EL14c1*))
                    (not (and (eq ?i 13) ?*EL14c13*))
                    (not (and (eq ?i 19) ?*EL14c19*))
                    (not (and (eq ?i 30) ?*EL14c30*))
                    (not (and (eq ?i 93) ?*EL14c93*))
                    (not (and (eq ?i 154) ?*EL14c154*))
                    (not (and (eq ?i 159) ?*EL14c159*))
                ) then ; already loaded as a special case
                (load* (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imp630-all* ?*Imp630-15c*) then
    (loop-for-count (?i 1 102)
        (if (not (member$ ?i (create$ 11 16 18 30 32 36 38 40 42 45 47 49 51 53 56 57 66 68 69 80 83 85 100 101)))  then ; #i has enough free cells
            (if (not (and (eq ?i 97) ?*EL15c97*)) then ; already loaded as a special case
                (load* (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/15c" ?*Directory-symbol* "EL15c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imp630-all* ?*Imp630-16c*) then
    (loop-for-count (?i 1 10)
        (if (not (member$ ?i (create$ 9 10))) then
            (load* (str-cat
                ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/16c" ?*Directory-symbol* "EL16c" ?i ".clp"))
        )
    )
)



;;; ORk-Whips[1]
(if (and ?*OR2-Contrad-Whips* (<= 1 ?*OR2-contrad-whips-max-length*)) then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
        ?*Directory-symbol* "OR2-WHIPS"
        ?*Directory-symbol* "OR2-Whips[1].clp")
    )
)
(if (and ?*OR3-Contrad-Whips* (<= 1 ?*OR3-contrad-whips-max-length*)) then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
        ?*Directory-symbol* "OR3-WHIPS"
        ?*Directory-symbol* "OR3-Whips[1].clp")
    )
)
(if (and ?*OR5-Contrad-Whips* (<= 1 ?*OR5-contrad-whips-max-length*)) then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
        ?*Directory-symbol* "OR4-WHIPS"
        ?*Directory-symbol* "OR4-Whips[1].clp")
    )
)
(if (and ?*OR5-Contrad-Whips* (<= 1 ?*OR5-contrad-whips-max-length*)) then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
        ?*Directory-symbol* "OR5-WHIPS"
        ?*Directory-symbol* "OR5-Whips[1].clp")
    )
)
(if (and ?*OR6-Contrad-Whips* (<= 1 ?*OR6-contrad-whips-max-length*)) then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
        ?*Directory-symbol* "OR6-WHIPS"
        ?*Directory-symbol* "OR6-Whips[1].clp")
    )
)

;;; ORk-Whips, i ≥ 2
(loop-for-count (?i 2 36)
    (if (and ?*OR2-Whips* (<= ?i ?*OR2-whips-max-length*)) then
        ;;; Partial-whips are required:
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-SPEED"
            ?*Directory-symbol* "PARTIAL-WHIPS"
            ?*Directory-symbol* "Partial-Whips[" (- ?i 1) "].clp")
        )
        
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR2-Contrad-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-WHIPS"
            ?*Directory-symbol* "OR2-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR2-WHIPS"
            ?*Directory-symbol* "Partial-OR2-Whips[" (- ?i 1) "].clp")
        )
    )
    (if (and ?*OR3-Whips* (<= ?i ?*OR3-whips-max-length*)) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR3-Contrad-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-WHIPS"
            ?*Directory-symbol* "OR3-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR3-WHIPS"
            ?*Directory-symbol* "Partial-OR3-Whips[" (- ?i 1) "].clp")
        )
    )
    (if (and ?*OR4-Whips* (<= ?i ?*OR4-whips-max-length*)) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR4-Contrad-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-WHIPS"
            ?*Directory-symbol* "OR4-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR4-WHIPS"
            ?*Directory-symbol* "Partial-OR4-Whips[" (- ?i 1) "].clp")
        )
    )
    (if (and ?*OR5-Whips* (<= ?i ?*OR5-whips-max-length*)) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR5-Contrad-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-WHIPS"
            ?*Directory-symbol* "OR5-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR5-WHIPS"
            ?*Directory-symbol* "Partial-OR5-Whips[" (- ?i 1) "].clp")
        )
   )
    (if (and ?*OR6-Whips* (<= ?i ?*OR6-whips-max-length*)) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR6-Contrad-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-WHIPS"
            ?*Directory-symbol* "OR6-Whips[" ?i "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR6-WHIPS"
            ?*Directory-symbol* "Partial-OR6-Whips[" (- ?i 1) "].clp")
        )
    )
)





