
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
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - June 2024                ;;;
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
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "record-results.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "data-filters.clp"))

;;; now loaded only if W1 is active (or in rarely used calculations):
(if (or ?*Whips[1]* ?*Bi-Whips* ?*Bi-Braids* ?*Templates*) then
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
)

(if ?*G-Labels* then 
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "glabels.clp"))
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-glinks.clp"))
)


;;; GOODIES
(load (str-cat ?*Application-Dir* "GOODIES" ?*Directory-symbol* "goodies.clp"))
(load (str-cat ?*Application-Dir* "GOODIES" ?*Directory-symbol* "shuffle.clp"))
(load (str-cat ?*Application-Dir* "GOODIES" ?*Directory-symbol* "pretty-print.clp"))
(load (str-cat ?*Application-Dir* "GOODIES" ?*Directory-symbol* "deadly.clp"))


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



;;; MODULES

(load (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "modules.clp"))
(load (str-cat ?*Application-Dir* "MODULES" ?*Directory-symbol* "solve-w-preferences.clp"))



;;; STATISTICS
;;; most of this could be extended to the general CSP

(load (str-cat ?*Application-Dir* "STATS" ?*Directory-symbol* "stats.clp"))
(load (str-cat ?*Application-Dir* "STATS" ?*Directory-symbol* "unbiased-stats.clp"))
(load (str-cat ?*Application-Dir* "STATS" ?*Directory-symbol* "comparisons.clp"))



;;; EXTERNAL PROGRAMS
(load (str-cat ?*XTERNS* "xterns-Sudoku.clp"))



;;; EXPANSIONS

(if ?*Expansions* then
    (load (str-cat ?*Application-Dir* "EXPANSION/sample-defs.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/sample-file-utils.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/compare-puzzles.clp"))
    
    (load (str-cat ?*Application-Dir* "EXPANSION/sample-creation.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/sample-functions.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/sample-stats.clp"))
    
    (load (str-cat ?*Application-Dir* "EXPANSION/TE3-expansion-globals.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE2-expansion-globals.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE1-expansion-globals.clp"))
    
    (load (str-cat ?*Application-Dir* "EXPANSION/TE3-expansion-scripts.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE2-expansion-scripts.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE1-expansion-scripts.clp"))
    
    (load (str-cat ?*Application-Dir* "EXPANSION/TE3-expansion-paths.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE2-expansion-paths.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE1-expansion-paths.clp"))
    
    (load (str-cat ?*Application-Dir* "EXPANSION/TE3-distances.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE2-distances.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE1-distances.clp"))
    
    (load (str-cat ?*Application-Dir* "EXPANSION/TEd-to-high-B-scripts.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TEd-to-insol-high-BxB-scripts.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE3-to-outsol-high-BxB-scripts.clp"))

    (load (str-cat ?*Application-Dir* "EXPANSION/TE3exp-p1-expands.clp"))
    (load (str-cat ?*Application-Dir* "EXPANSION/TE2exp-p1-expands.clp"))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; UNIQUENESS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Elementary uniqueness rules
(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR1.clp")))
(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR2.clp")))
(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR2b.clp")))
(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR3.clp")))
(if ?*Unique-Rectangles* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "UR4.clp")))
(if ?*BUG* then (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "BUG.clp")))


(defglobal ?*deadly-patterns-rules-list* =
    (if ?*Select-DP-list*
        then ?*Selected-DP-list*
        else
        (progn
            (bind ?*max-deadly-cells* (min ?*max-deadly-cells* 12))
            (switch ?*max-deadly-cells*
                (case 4 then ?*deadly-patterns-rules-list-4*)
                (case 5 then ?*deadly-patterns-rules-list-5*)
                (case 6 then ?*deadly-patterns-rules-list-6*)
                (case 7 then ?*deadly-patterns-rules-list-7*)
                (case 8 then ?*deadly-patterns-rules-list-8*)
                (case 9 then ?*deadly-patterns-rules-list-9*)
                (case 10 then ?*deadly-patterns-rules-list-10*)
                (case 11 then ?*deadly-patterns-rules-list-11*)
                (case 12 then ?*deadly-patterns-rules-list-12*)
                (default ?*deadly-patterns-rules-list-0*)
            )
        )
    )
)

(if ?*Deadly-Patterns* then
    (foreach ?file ?*deadly-patterns-rules-list*
        (load (str-cat ?*Application-Dir* "UNIQUENESS" ?*Directory-symbol* "Deadly-Patterns" ?*Directory-symbol* ?file ".clp"))
    )
)





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
(if ?*Degen-Cyclic-Anti-Tridagons* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "ORk-degen-cyclic-anti-Tridagon[12].clp"))
)


;;; modified eleven digit replacement method
(if ?*Eleven-Replacement-in-Tridagon-block* then
    (if ?*Tridagon-Forcing-Whips* then
        (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol* "Replacement-based-on-Tridagon-links.clp"))
    )
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol*
        "replacement-in-Tridagon-block.clp"))
)
(if ?*Eleven-Replacement-in-Degen-Cyclic-Tridagon-block* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Tridagons" ?*Directory-symbol*
        "replacement-in-dct-block.clp"))
)



;;; Load selected lists of impossible patterns:
;;; ?*Imp630-Select1*
(if ?*EL13c290* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c290.clp"))
)
(if ?*EL14c30* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c30.clp"))
)
(if ?*EL14c159* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c159.clp"))
)
(if ?*EL14c1* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c1.clp"))
)
(if ?*EL14c13* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c13.clp"))
)

;;; ?*Imp630-Select2*
(if ?*EL10c28* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c28.clp"))
)
(if ?*EL13c179* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c179.clp"))
)
(if ?*EL13c30* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c30.clp"))
)
(if ?*EL13c171* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c171.clp"))
)
(if ?*EL13c234* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c234.clp"))
)
(if ?*EL13c176* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c176.clp"))
)
(if ?*EL10c6* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c6.clp"))
)

;;; ?*Imp630-Select3*
(if ?*EL13c259* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c259.clp"))
)
(if ?*EL10c8* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c8.clp"))
)
(if ?*EL13c172* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c172.clp"))
)
(if ?*EL14c19* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c19.clp"))
)
(if ?*EL10c4* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c4.clp"))
)

;;; ?*Imp630-Select4*
(if ?*EL13c175* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c175.clp"))
)
(if ?*EL13c136* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c136.clp"))
)
(if ?*EL15c97* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/15c" ?*Directory-symbol* "EL15c97.clp"))
)
(if ?*EL13c187* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c187.clp"))
)
(if ?*EL14c93* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c93.clp"))
)
(if ?*EL12c2* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/12c" ?*Directory-symbol* "EL12c2.clp"))
)
(if ?*EL14c154* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c154.clp"))
)
(if ?*EL13c19* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c19.clp"))
)
(if ?*EL13c170* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c170.clp"))
)
(if ?*EL13c168* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c168.clp"))
)
(if ?*EL10c10* then
    (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c10.clp"))
)


;;; Impossible patterns in two bands or two stacks;
;;; impossible patterns that have no free cells have no associated rules
;;; patterns already loaded individually must not be re-loaded
(if (or ?*Imp630-all* ?*Imp630-10c*) then
    (loop-for-count (?i 1 31)
        (if (neq ?i 11) then ; #11 has 4 cells in block 6
            (if (and
                (not (and (eq ?i 4) ?*EL10c4*))
                (not (and (eq ?i 6) ?*EL10c6*))
                (not (and (eq ?i 8) ?*EL10c8*))
                (not (and (eq ?i 10) ?*EL10c10*))
                (not (and (eq ?i 28) ?*EL10c28*))
                )then ; already loaded as a special case
                (load (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imp630-all* ?*Imp630-12c*) then
    (loop-for-count (?i 1 38)
        (if (and
                (neq ?i 38) ; #38 is Tridagon, it must be loaded separately
                (not (and (eq ?i 2) ?*EL12c2*))
            ) then
            (load (str-cat
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
                    (not (and (eq ?i 136) ?*EL13c136*))
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
                (load (str-cat
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
                (load (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imp630-all* ?*Imp630-15c*) then
    (loop-for-count (?i 1 102)
        (if (not (member$ ?i (create$ 11 16 18 30 32 36 38 40 42 45 47 49 51 53 56 57 66 68 69 80 83 85 100 101)))  then ; #i has enough free cells
            (if (not (and (eq ?i 97) ?*EL15c97*)) then ; already loaded as a special case
                (load (str-cat
                    ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/15c" ?*Directory-symbol* "EL15c" ?i ".clp"))
            )
        )
    )
)
(if (or ?*Imp630-all* ?*Imp630-16c*) then
    (loop-for-count (?i 1 10)
        (if (not (member$ ?i (create$ 9 10))) then
            (load (str-cat
                ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/16c" ?*Directory-symbol* "EL16c" ?i ".clp"))
        )
    )
)



;;; load selected list

(if ?*Select-Imp630-list* then ; validity has been checked before loading
    ;;; 10 cells
    (loop-for-count (?i 1 31)
        (if (member$ (sym-cat EL10c ?i) ?*Selected-Imp630-list*) then
            (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/10c" ?*Directory-symbol* "EL10c" ?i ".clp"))
        )
    )
    ;;; 12 cells
    (loop-for-count (?i 1 38)
        (if (member$ (sym-cat EL12c ?i) ?*Selected-Imp630-list*) then
            (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/12c" ?*Directory-symbol* "EL12c" ?i ".clp"))
        )
    )
    ;;; 13 cells
    (loop-for-count (?i 1 290)
        (if (member$ (sym-cat EL13c ?i) ?*Selected-Imp630-list*) then
            (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/13c" ?*Directory-symbol* "EL13c" ?i ".clp"))
        )
    )
    ;;; 14 cells
    (loop-for-count (?i 1 159)
        (if (member$ (sym-cat EL14c ?i) ?*Selected-Imp630-list*) then
            (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/14c" ?*Directory-symbol* "EL14c" ?i ".clp"))
        )
    )
    ;;; 15 cells
    (loop-for-count (?i 1 102)
        (if (member$ (sym-cat EL15c ?i) ?*Selected-Imp630-list*) then
            (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/15c" ?*Directory-symbol* "EL15c" ?i ".clp"))
        )
    )
    ;;; 16 cells
    (loop-for-count (?i 1 16)
        (if (member$ (sym-cat EL16c ?i) ?*Selected-Imp630-list*) then
            (load (str-cat ?*Application-Dir* "EXOTIC" ?*Directory-symbol* "Imp630/16c" ?*Directory-symbol* "EL16c" ?i ".clp"))
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

(if (and ?*Templates* (<= 1 ?*templates-max-combinations*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[1].clp")))
(if (and ?*Templates* (<= 2 ?*templates-max-combinations*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[2].clp")))
(if (and ?*Templates* (<= 3 ?*templates-max-combinations*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[3].clp")))
(if (and ?*Templates* (<= 4 ?*templates-max-combinations*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[4].clp")))
(if (and ?*Templates* (<= 5 ?*templates-max-combinations*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[5].clp")))
(if (and ?*Templates* (<= 6 ?*templates-max-combinations*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[6].clp")))
(if (and ?*Templates* (<= 7 ?*templates-max-combinations*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[7].clp")))
(if (and ?*Templates* (<= 8 ?*templates-max-combinations*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[8].clp")))
(if (and ?*Templates* (<= 9 ?*templates-max-combinations*)) then (load (str-cat ?*Application-Dir* "TEMPLATES" ?*Directory-symbol* "Templates[9].clp")))




