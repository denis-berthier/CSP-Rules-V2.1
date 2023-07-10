
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TRID-ORk-W MODULE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;           January 2006 - September 2022            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-








(defmodule TRID-ORk-W (import MAIN ?ALL))

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

        

