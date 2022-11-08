
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TRID-ORk-CW MODULE
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








(defmodule TRID-ORk-CW (import MAIN ?ALL))

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




;;; Tridagons and anti-tridagons
(load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "Tridagon[12].clp"))
(load* (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "ORk-anti-Tridagon[12].clp"))

(load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "update-ORk-relations.clp"))
(if ?*OR2-Contrad-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "symmetrify-OR2-relations.clp"))
)
(if ?*OR3-Contrad-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "symmetrify-OR3-relations.clp"))
)
(if ?*OR4-Contrad-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "symmetrify-OR4-relations.clp"))
)
(if ?*OR5-Contrad-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "symmetrify-OR5-relations.clp"))
)
(if ?*OR6-Contrad-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "symmetrify-OR6-relations.clp"))
)
(if ?*OR7-Contrad-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "symmetrify-OR7-relations.clp"))
)
(if ?*OR8-Contrad-Whips* then
    (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "symmetrify-OR8-relations.clp"))
)



;;; ORk-Contrad-Whips[1]
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
(if (and ?*OR4-Contrad-Whips* (<= 1 ?*OR4-contrad-whips-max-length*)) then
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



;;; ORk-Contrad-Whips, i ≥ 2
(loop-for-count (?i 2 36)
    (if (and ?*OR2-Contrad-Whips* (<= ?i ?*OR2-contrad-whips-max-length*)) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-SPEED"
            ?*Directory-symbol* "PARTIAL-WHIPS"
            ?*Directory-symbol* "Partial-Whips[" (- ?i 1) "].clp")
        )
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR2-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-Contrad-Whips* (<= ?i ?*OR3-contrad-whips-max-length*)) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-Contrad-WHIPS"
            ?*Directory-symbol* "OR3-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-Contrad-Whips* (<= ?i ?*OR4-contrad-whips-max-length*)) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR4-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-Contrad-Whips* (<= ?i ?*OR5-contrad-whips-max-length*)) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR5-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-Contrad-Whips* (<= ?i ?*OR6-contrad-whips-max-length*)) then
        (load* (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR6-Contrad-Whips[" ?i "].clp")
        )
    )
)

        

