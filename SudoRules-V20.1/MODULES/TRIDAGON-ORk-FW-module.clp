
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TRIDAGON-ORk-FW MODULE
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








(defmodule TRIDAGON-ORk-FW (import MAIN ?ALL))

(load (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "enter-module.clp"))

(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "SimulatedElim.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "manage.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "ECP.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Single.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "blocked-rules.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "play.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
        ?*Directory-symbol* "WHIPS" ?*Directory-symbol* "Whips[1].clp"
    )
)
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Bivalue.clp"))

(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "manage.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "NS.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "HS.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "N2-naked-pairs.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "H2-hidden-pairs.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SH2-x-wing.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "N3-naked-triplets.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "H3-hidden-triplets.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SH3-swordfish.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "N4-naked-quads.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "H4-hidden-quads.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SH4-jellyfish.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SpN4-special-naked-quads.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SpH4-special-hidden-quads.clp"))
(load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SpSH4-special-jellyfish.clp"))


;;; For Tridagon-Forcing-Whips, partial-whips are required:
(loop-for-count
    (?i 1 (- (max ?*OR2-forcing-whips-max-length* ?*OR3-forcing-whips-max-length* ?*OR4-forcing-whips-max-length* ?*OR5-forcing-whips-max-length* ?*OR6-forcing-whips-max-length*) 1))
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
        ?*Directory-symbol* "PARTIAL-WHIPS" ?*Directory-symbol* "Partial-Whips[" ?i "].clp"))
)



;;; Tridagons and anti-tridagons
(load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "Tridagon[12].clp"))
(load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "OR-k-anti-Tridagon[12].clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Symmetrify-OR-k.clp"))


;;; ORk-Forcing-Whips
(loop-for-count (?i 1 36)
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
)

        

