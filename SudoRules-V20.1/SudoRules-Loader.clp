
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SUDORULES LOADER
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; For reasons of efficiency and/or compatibility with SudoRules 15b.1.12,
;;; gBRT and Subset rules are Sudoku specific
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; GENERAL
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "background.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "nrc-output.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "solve.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "compute-RS.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "manage.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "NS.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "HS.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "solve-files.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "record-levels.clp"))

;;; now loaded only if W1 is active:
(if (or ?*Whips[1]* ?*Bi-Whips* ?*Bi-Braids*) then
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
)

(if (or ?*G-Bivalue-Chains* ?*G-Whips*  ?*G-Braids*) then 
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "glabels.clp"))
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-glinks.clp"))
)


;;; GOODIES
(load (str-cat ?*Application-Dir* "GOODIES" ?*Directory-symbol* "goodies.clp"))
(load (str-cat ?*Application-Dir* "GOODIES" ?*Directory-symbol* "shuffle.clp"))
(load (str-cat ?*Application-Dir* "GOODIES" ?*Directory-symbol* "pretty-print.clp"))


;;; ADVANCED
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "disable-re-enable-rules.clp"))
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "erasable-cands.clp"))
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "1or2-step-solutions.clp"))
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "one-step-solutions.clp"))
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "two-step-solutions.clp"))
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "eval-erasable-cands.clp"))
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "fewer-step-solutions.clp"))
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "eleven-replacement.clp"))
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "mark-k-digit-patterns.clp"))
(load (str-cat ?*Application-Dir* "ADVANCED" ?*Directory-symbol* "analyse-k-digit-patterns.clp"))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; MODULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "modules.clp"))
(load (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "solve-w-preferences.clp"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; UNIQUENESS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR1.clp")))
(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR2.clp")))
(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR2b.clp")))
(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR3.clp")))
(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR4.clp")))
(if ?*BUG* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "BUG.clp")))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SUBSETS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; In the original behaviour of CSP-Rules, when a Subset was detected,
;;; its application could be interrupted if a simpler rule became applicable after some of its elimination(s).
;;; CSP-Rules now has a new default behaviour (blocked Subsets) - which can be reverted to the old one.
;;; There is now a single version of the Subset rules, encompassing both behaviours.

(if (or ?*Subsets* ?*Subsets[4]* ?*Subsets[3]* ?*Subsets[2]*) then
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "N2-naked-pairs.clp"))
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "H2-hidden-pairs.clp"))
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SH2-x-wing.clp"))
)
(if (or ?*FinnedFish* ?*FinnedFish[4]* ?*FinnedFish[3]* ?*FinnedFish[2]*) then
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "FSH2-finned-x-wing.clp"))
)


(if (or ?*Subsets* ?*Subsets[4]* ?*Subsets[3]*) then
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "N3-naked-triplets.clp"))
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "H3-hidden-triplets.clp"))
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SH3-swordfish.clp"))
)
(if (or ?*FinnedFish* ?*FinnedFish[4]* ?*FinnedFish[3]*) then
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "FSH3-finned-swordfish.clp"))
)


(if (or ?*Subsets* ?*Subsets[4]*) then
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "N4-naked-quads.clp"))
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "H4-hidden-quads.clp"))
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SH4-jellyfish.clp"))
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SpN4-special-naked-quads.clp"))
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SpH4-special-hidden-quads.clp"))
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "SpSH4-special-jellyfish.clp"))
)
(if (or ?*FinnedFish* ?*FinnedFish[4]*) then
    (load (str-cat ?*Application-Dir* "SUBSETS" ?*Directory-symbol* "FSH4-finned-jellyfish.clp"))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; EXOTIC PATTERNS AND RELATED TECHNIQUES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; sk-loops:
(if ?*Belt4* then (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "sk-loops" ?*Directory-symbol* "Belt4-of-crosses.clp")))
(if ?*Belt6* then (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "sk-loops" ?*Directory-symbol* "Belt6-of-crosses.clp")))



;;; J-Exocets:
(defglobal ?*J-Exocet-variant* = (if ?*Blue-J-Exocets* then (str-cat "Blue" ?*Directory-symbol*) else ""))

(if (or ?*J-Exocet* ?*J2-Exocet*) then (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "J-Exocets" ?*Directory-symbol* ?*J-Exocet-variant* "J2-Exocet.clp")))
(if (or ?*J-Exocet* ?*J3-Exocet*) then (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "J-Exocets" ?*Directory-symbol* ?*J-Exocet-variant* "J3-Exocet.clp")))
(if (or ?*J-Exocet* ?*J4-Exocet*) then (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "J-Exocets" ?*Directory-symbol* ?*J-Exocet-variant* "J4-Exocet.clp")))
(if (or ?*J-Exocet* ?*J5-Exocet*) then (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "J-Exocets" ?*Directory-symbol* ?*J-Exocet-variant* "J5-Exocet.clp")))



;;; Tridagons
(if (or ?*Tridagon-Forcing-Whips* (and ?*Anti-Tridagons* ?*OR2-Forcing-Whips*) (and ?*Anti-Tridagons* ?*OR2-Contrad-Whips*))
    then (bind ?*Tridagons* TRUE)
)

(if ?*Tridagons* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "Tridagon[12].clp"))
)

(if ?*Tridagon-Forcing-Whips* then
    (if (and (not ?*t-Whips*) (not ?*Whips*)) then
        (loop-for-count (?i 1 (- ?*tridagon-forcing-whips-max-length* 12))
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "PARTIAL-WHIPS" ?*Directory-symbol* "Partial-Whips[" ?i "].clp"))
        )
    )
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "TRIDAGON-FORCING-WHIPS" ?*Directory-symbol* "Print-functions.clp"))
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "Tridagon-links[12].clp"))
    (loop-for-count (?i 13 ?*tridagon-forcing-whips-max-length*)
        (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "TRIDAGON-FORCING-WHIPS" ?*Directory-symbol* "Tridagon-Forcing-Whips[" ?i "].clp"))
    )
)

(if ?*Anti-Tridagons* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "ORk-anti-Tridagon[12].clp"))
)


;;; modified eleven digit replacement method
(if ?*Eleven-Replacement-in-Tridagons* then
    (if ?*Tridagon-Forcing-Whips* then
        (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "Replacement-based-on-Tridagon-links.clp"))
    )
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol*
        "Replacement-based-on-general-Tridagon.clp"))
)

(defglobal ?*dummy-Imp630* = (progn
    (if ?*Selected-Imp630* then
        (bind ?*EL13c290* TRUE)
        (bind ?*EL14c30* TRUE)
        (bind ?*EL14c159* TRUE)
        (bind ?*EL14c13* TRUE)
        (bind ?*EL14c1* TRUE)
        (bind ?*EL10c28* TRUE)
        (bind ?*EL13c30* TRUE)
        (bind ?*EL13c176* TRUE)
        (bind ?*EL13c234* TRUE)
        (bind ?*EL13c179* TRUE)
        (bind ?*EL10c6* TRUE)
        (bind ?*EL13c259* TRUE)
        (bind ?*EL13c172* TRUE)
        (bind ?*EL13c171* TRUE)
        (bind ?*EL13c187* TRUE)
        (bind ?*EL13c175* TRUE)
        (bind ?*EL13c168* TRUE)
        (bind ?*EL10c8* TRUE)
        (bind ?*EL14c93* TRUE)
        (bind ?*EL14c154* TRUE)
        (bind ?*EL15c97* TRUE)
    )
    TRUE
))
;;; Special impossible patterns
(if ?*EL13c290* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c290.clp"))
)
(if ?*EL14c30* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/14c" ?*Directory-symbol* "EL14c30.clp"))
)
(if ?*EL14c159* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/14c" ?*Directory-symbol* "EL14c159.clp"))
)
(if ?*EL14c13* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/14c" ?*Directory-symbol* "EL14c13.clp"))
)
(if ?*EL14c1* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/14c" ?*Directory-symbol* "EL14c1.clp"))
)
(if ?*EL10c28* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/10c" ?*Directory-symbol* "EL10c28.clp"))
)
(if ?*EL13c30* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c30.clp"))
)
(if ?*EL13c176* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c176.clp"))
)
(if ?*EL13c234* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c234.clp"))
)
(if ?*EL13c179* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c179.clp"))
)
(if ?*EL10c6* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/10c" ?*Directory-symbol* "EL10c6.clp"))
)
(if ?*EL13c259* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c259.clp"))
)
(if ?*EL13c172* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c172.clp"))
)
(if ?*EL13c171* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c171.clp"))
)
(if ?*EL13c187* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c187.clp"))
)
(if ?*EL13c175* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c175.clp"))
)
(if ?*EL13c168* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c168.clp"))
)
(if ?*EL10c8* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/10c" ?*Directory-symbol* "EL10c8.clp"))
)
(if ?*EL14c93* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/14c" ?*Directory-symbol* "EL14c93.clp"))
)
(if ?*EL14c154* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/14c" ?*Directory-symbol* "EL14c154.clp"))
)
(if ?*EL15c97* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/15c" ?*Directory-symbol* "EL15c97.clp"))
)


;;; Impossible patterns in two bands or two stacks;
;;; impossible patterns that have no free cells have no associated rules
(if (or ?*Imposs630-all* ?*Imposs630-10c*) then
    (loop-for-count (?i 1 31)
        (if (neq ?i 11) then ; #11 has 4 cells in block 6
            (if (and
                (not (and (eq ?i 6) ?*EL10c6*))
                (not (and (eq ?i 8) ?*EL10c8*))
                (not (and (eq ?i 28) ?*EL10c28*))
                )then ; already loaded as a special case
                (load (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/10c" ?*Directory-symbol* "EL10c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imposs630-all* ?*Imposs630-12c*) then
    (loop-for-count (?i 1 38)
        (if (neq ?i 38) then ; #38 is Tridagon, it must be loaded separately
            (load (str-cat
                ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/12c" ?*Directory-symbol* "EL12c" ?i ".clp"))
        )
    )
)
(if (or ?*Imposs630-all* ?*Imposs630-13c*) then
    (loop-for-count (?i 1 290)
        (if (not (member$ ?i (create$ 207 211 217 218 219))) then
            (if (and
                    (not (and (eq ?i 30) ?*EL13c30*))
                    (not (and (eq ?i 168) ?*EL13c168*))
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
                (load (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/13c" ?*Directory-symbol* "EL13c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imposs630-all* ?*Imposs630-14c*) then
    (loop-for-count (?i 1 159)
        (if (not (member$ ?i (create$ 23 33 36 73 92 112 113))) then
            (if (and
                    (not (and (eq ?i 1) ?*EL14c1*))
                    (not (and (eq ?i 13) ?*EL14c13*))
                    (not (and (eq ?i 30) ?*EL14c30*))
                    (not (and (eq ?i 159) ?*EL14c159*))
                ) then ; already loaded as a special case
                (load (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/14c" ?*Directory-symbol* "EL14c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imposs630-all* ?*Imposs630-15c*) then
    (loop-for-count (?i 1 102)
        (if (not (member$ ?i (create$ 11 16 18 30 32 36 38 40 42 45 47 49 51 53 56 57 66 68 69 80 83 85 100 101))) then
            (if (not (and (eq ?i 97) ?*EL15c97*)) then ; already loaded as a special case
                (load (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/15c" ?*Directory-symbol* "EL15c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imposs630-all* ?*Imposs630-16c*) then
    (loop-for-count (?i 1 10)
        (if (not (member$ ?i (create$ 9 10))) then
            (load (str-cat
                ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imposs630/16c" ?*Directory-symbol* "EL16c" ?i ".clp"))
        )
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; BACKDOORS, ANTI-BACKDOORS AND ANTI-BACKDOOR PAIRS
;;; Additional, Sudoku-specific functions for backdoors, anti-backdoors and anti-backdoor-pairs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if ?*Backdoors* then
    (load (str-cat ?*Application-Dir* "T&E" ?*Directory-symbol* "backdoors.clp"))
)

(if ?*Anti-backdoors* then
    (load (str-cat ?*Application-Dir* "T&E" ?*Directory-symbol* "anti-backdoors.clp"))
)

(if ?*Anti-backdoor-pairs* then
    (load (str-cat ?*Application-Dir* "T&E" ?*Directory-symbol* "anti-backdoor-pairs.clp"))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; TEMPLATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if (and ?*Templates* (<= 1 ?*Templates-max-length*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[1].clp")))
(if (and ?*Templates* (<= 2 ?*Templates-max-length*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[2].clp")))
(if (and ?*Templates* (<= 3 ?*Templates-max-length*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[3].clp")))
(if (and ?*Templates* (<= 4 ?*Templates-max-length*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[4].clp")))
(if (and ?*Templates* (<= 5 ?*Templates-max-length*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[5].clp")))
(if (and ?*Templates* (<= 6 ?*Templates-max-length*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[6].clp")))
(if (and ?*Templates* (<= 7 ?*Templates-max-length*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[7].clp")))
(if (and ?*Templates* (<= 8 ?*Templates-max-length*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[8].clp")))
(if (and ?*Templates* (<= 9 ?*Templates-max-length*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[9].clp")))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; STATISTICS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; most of this could be extended to the general CSP

(load (str-cat ?*Application-Dir* "STATS" ?*Directory-symbol* "stats.clp"))
(load (str-cat ?*Application-Dir* "STATS" ?*Directory-symbol* "unbiased-stats.clp"))
(load (str-cat ?*Application-Dir* "STATS" ?*Directory-symbol* "comparisons.clp"))






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; REDEFINE APPLICATION-SPECIFIC RATING-TYPE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction define-application-specific-rating-type ()
    (bind ?*application-specific-rating-type*
        (if ?*FinnedFish*
            then "SFin"
            else (if ?*Subsets* then "S" else "")
        )
    )
    
    (if ?*Belt4* then
        (bind ?*application-specific-rating-type*
            (if (neq ?*application-specific-rating-type* "") then (str-cat ?*application-specific-rating-type* "+sk") else "sk")
        )
    )

    (if ?*J-Exocet* then
        (bind ?*J2-Exocet* TRUE)
        (bind ?*J3-Exocet* TRUE)
        (bind ?*J4-Exocet* TRUE)
        (bind ?*J5-Exocet* TRUE)
    )
    
    (if ?*J-Exocet* then
        (bind ?*application-specific-rating-type*
            (if (neq ?*application-specific-rating-type* "") then (str-cat ?*application-specific-rating-type* "+" "JE") else "JE")
        )
    )
    
    (if (and ?*Tridagons* (not ?*Tridagon-Forcing-Whips*)) then
        (bind ?*application-specific-rating-type*
            (if (neq ?*application-specific-rating-type* "") then (str-cat ?*application-specific-rating-type* "+" "Trid") else "Trid")
        )
    )
    
    (if ?*Tridagon-Forcing-Whips* then
        (bind ?*application-specific-rating-type*
            (if (neq ?*application-specific-rating-type* "") then (str-cat ?*application-specific-rating-type* "+" "TridFW") else "TridFW")
        )
    )
    (if (or ?*Imposs630-all* (and ?*Imposs630-10c* ?*Imposs630-12c* ?*Imposs630-13c* ?*Imposs630-14c* ?*Imposs630-15c* ?*Imposs630-16c*)) then
        (bind ?*application-specific-rating-type*
            (if (neq ?*application-specific-rating-type* "") then (str-cat ?*application-specific-rating-type* "+" "Imp630") else "Imp630")
        )
    )
    (if (and (or ?*Imposs630-10c* ?*Imposs630-12c* ?*Imposs630-13c* ?*Imposs630-14c* ?*Imposs630-15c* ?*Imposs630-16c*)
            (not (or ?*Imposs630-all* (and ?*Imposs630-10c* ?*Imposs630-12c* ?*Imposs630-13c* ?*Imposs630-14c* ?*Imposs630-15c* ?*Imposs630-16c*)))
            
        ) then
        (bind ?*application-specific-rating-type*
            (if (neq ?*application-specific-rating-type* "") then (str-cat ?*application-specific-rating-type* "+" "pImp630") else "pImp630")
        )
    )
    ?*application-specific-rating-type*
)



