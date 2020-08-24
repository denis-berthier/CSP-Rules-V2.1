
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              SLITHERRULES LOADER
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; SET THE DEPENDENCIES BETWEEN RULES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*dummy-variable-for-setting-specific-rules-dependencies* = (progn
    (if ?*xtd-Loops* then (bind ?*Loops* TRUE))
    TRUE
))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; LOAD SLITHERLINK-SPECIFIC FUNCTIONS AND RULES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "parameters.clp"))

(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "background.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "solve.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "nrc-output.clp"))

(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "manage.clp")))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "S.clp"))
;(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "special-singles.clp"))

;;; now loaded only if W1 is active:
(if (or ?*Whips[1]* ?*Bi-Whips* ?*Bi-Braids*) then
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
)

(if ?*Final-fill* then 
    (if (and ?*Colours* ?*print-IO-solution*) then (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "complete-partial-sol-IO.clp")))
    (if ?*print-HV-solution* then (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "complete-partial-sol-HV.clp")))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SPECIFIC RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Rules reducible to W
(if ?*W1-equiv-patterns* then
    ;;; Most basic patterns
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "zero.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-3-0.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-3-nolines.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "grid-corners.clp"))

    ;;; General patterns for cell corners
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "closed-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "symmetric-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "asymmetric-corner.clp"))

    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "3-closed-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "3-isolated-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "3-non-isolated-corner.clp"))

    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "2-open-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "2-isolated-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "2-non-closed-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "2-symmetric-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "Cell-corner-patterns" ?*Directory-symbol* "2-asymmetric-corner.clp"))


    ;;; Partial patterns with diagonals of 2s
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "detect-diagonal-2s.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "detect-diagonal-3-2s.clp"))

    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "diagonal-3-0.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "3-symmetric-corner.clp"))

    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "diagonal-3-2s-3.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "3-asymmetric-corner.clp"))

    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "diagonal-3-2s+0.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "diagonal-3-2s-non-closed-end.clp"))

    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "3+diagonal-2s-0.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "3+diagonal-2s-isolated-end.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "3+diagonal-2s-symmetric-end.clp"))


    ;;; more elaborate patterns
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "diagonal-3-1+0s.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "diagonal-1-1.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "1+diagonal-2s-3+1.clp"))


    ;;; Edge patterns extendable by diagonals of 2s
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-1-1-on-edge.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-1-1-on-pseudo-edge.clp"))
    
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-1-3-on-edge.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-1-3-on-pseudo-edge.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-1-2-on-edge-forward-diagonal-2s-3.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3.clp"))

    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-1-2-on-edge-bkw-diag.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "adjacent-1-2-on-pseudo-edge-bkw-diag.clp"))

    ;;; diagonal (a)symmetry of 1s
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "1-symmetric-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "W1-equiv" ?*Directory-symbol* "1-asymmetric-corner.clp"))

)



;;; Rules not reducible to W
(if ?*non-W1-equiv-patterns* then
    ;;; Patterns for grid corners
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Grid-corners" ?*Directory-symbol* "diagonal-1-1-in-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Grid-corners" ?*Directory-symbol* "diagonal-1-3-in-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Grid-corners" ?*Directory-symbol* "diagonal-2-3-in-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Grid-corners" ?*Directory-symbol* "diagonal-of-three-2s-in-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Grid-corners" ?*Directory-symbol* "diagonal-of-five-2s-in-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Grid-corners" ?*Directory-symbol* "diagonal-2-3+1-in-corner.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Grid-corners" ?*Directory-symbol* "diagonal-2-2+3-in-corner.clp"))

    ;;; Patterns for other cells
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Anywhere" ?*Directory-symbol* "adjacent-3-3.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Anywhere" ?*Directory-symbol* "adjacent-3-2-0.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Anywhere" ?*Directory-symbol* "adjacent-3-2-noline.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Anywhere" ?*Directory-symbol* "square-of-2s.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Anywhere" ?*Directory-symbol* "3+1+1+3.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Anywhere" ?*Directory-symbol* "diagonal-3-2s+1+1+diag-2s-3.clp"))
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Anywhere" ?*Directory-symbol* "3-no-U-turn.clp"))
;    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "Non-W1-Anywhere" ?*Directory-symbol* "adjacent-3-x-symmetric-corners.clp"))
)


;(if ?*non-W1-equiv-patterns* then
    ;(load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "TO-CLASSIFY-patterns" ?*Directory-symbol* "1-non-isolated-corner.clp"))
;)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LOOPS AND COLOURS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(if ?*Loops* then
    (load (str-cat ?*Application-Dir* "LOOPS" ?*Directory-symbol* "loop-functions.clp"))
    (bind ?i 6)
    (while (<= ?i 80)
        (if (<= ?i ?*loops-max-length*) then
            (load (str-cat ?*Application-Dir* "LOOPS" ?*Directory-symbol* "Loops[" ?i "].clp"))
        )
        (bind ?i (+ ?i 2))
    )
    (if (> ?*loops-max-length* 80) then
        (load (str-cat ?*Application-Dir* "LOOPS" ?*Directory-symbol* "Loops[GT80].clp"))
    )
)


(if ?*xtd-Loops* then
    ;;; isolated-HV-chains
    (load (str-cat ?*Application-Dir* "ISOLATED-HV-CHAINS" ?*Directory-symbol* "isolated-HV-junction.clp"))
    (bind ?i 2)
    (while (<= ?i 20)
        (if (<= ?i ?*loops-max-length*) then
            (load (str-cat ?*Application-Dir* "ISOLATED-HV-CHAINS" ?*Directory-symbol* "isolated-HV-chains[" ?i "].clp"))
        )
        (bind ?i (+ ?i 1))
    )
    ;;; even-partial-loops
    (load (str-cat ?*Application-Dir* "EVEN-PARTIAL-LOOPS" ?*Directory-symbol* "Even-Partial-Loops[2].clp"))
    (load (str-cat ?*Application-Dir* "EVEN-PARTIAL-LOOPS" ?*Directory-symbol* "Even-Partial-Loops[3].clp"))
    (load (str-cat ?*Application-Dir* "EVEN-PARTIAL-LOOPS" ?*Directory-symbol* "Even-Partial-Loops[4].clp"))
    (bind ?i 6)
    (while (<= ?i 80)
        (if (and (<= ?i ?*loops-max-length*) (evenp ?i)) then
            (load (str-cat ?*Application-Dir* "EVEN-PARTIAL-LOOPS" ?*Directory-symbol* "Even-Partial-Loops[" ?i "].clp"))
        )
        (bind ?i (+ ?i 1))
    )
    (if (< 80 ?*loops-max-length*) then
        (load (str-cat ?*Application-Dir* "EVEN-PARTIAL-LOOPS" ?*Directory-symbol* "Even-Partial-Loops[GT80].clp"))
    )

    ;;; extended-loops
    (bind ?i 6)
    (while (<= ?i 80)
        (if (<= ?i ?*loops-max-length*) then
            (load (str-cat ?*Application-Dir* "XTD-LOOPS" ?*Directory-symbol* "xtd-loops[" ?i "].clp"))
        )
        (bind ?i (+ ?i 1))
    )
    (if (< 80 ?*loops-max-length*) then
        (load (str-cat ?*Application-Dir* "XTD-LOOPS" ?*Directory-symbol* "xtd-loops[GT80].clp"))
    )
)


(if ?*Colours* then
    (load (str-cat ?*Application-Dir* "SPECIFIC" ?*Directory-symbol* "lines-vs-colours.clp"))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; HIGHER LEVEL RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; LEVEL 1

(if ?*special-Whips[1]* then
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "special-Whips[1].clp"))
)

(if (or ?*G-Bivalue-Chains* ?*G-Whips*  ?*G-Braids*) then
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "glabels.clp"))
;   (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-glinks.clp"))
)


(if (and ?*Bivalue-Chains* (>= ?*bivalue-chains-max-length* 2)) then
    (if ?*only-HV-whips* then (load (str-cat ?*Application-Dir* "HV-CHAINS" ?*Directory-symbol* "HV-Bivalue-Chains[2].clp")))
)


(if (and ?*Whips* (>= ?*whips-max-length* 2)) then
    (if ?*only-HV-whips* then (load (str-cat ?*Application-Dir* "HV-CHAINS" ?*Directory-symbol* "HV-Whips[2].clp")))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; T&E and DFS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This may make T&E less powerful

(if (and ?*TE1* (not ?*TE2*) (not ?*TE3*)) then
    (load (str-cat ?*Application-Dir* "T&E+DFS" ?*Directory-symbol* "T&E1.clp"))
)

(if (and ?*TE2* (not ?*TE1*) (not ?*TE3*)) then
    (load (str-cat ?*Application-Dir* "T&E+DFS" ?*Directory-symbol* "T&E2.clp"))
)

(if (and ?*TE3* (not ?*TE1*) (not ?*TE2*)) then
    (load (str-cat ?*Application-Dir* "T&E+DFS" ?*Directory-symbol* "T&E3.clp"))
)

(if ?*DFS* then
    (load (str-cat ?*Application-Dir* "T&E+DFS" ?*Directory-symbol* "DFS.clp"))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; REDEFINE APPLICATION-SPECIFIC RATING-TYPE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction define-application-specific-rating-type ()
    (bind ?*application-specific-rating-type* "")
    (if ?*non-W1-equiv-patterns* then (bind ?*application-specific-rating-type* "nW1eq"))
    (if ?*Colours* then
        (bind ?*application-specific-rating-type*
            (if (eq ?*application-specific-rating-type* "")
                then "Col"
                else (str-cat ?*application-specific-rating-type* "+Col")
            )
        )
    )
    (if ?*Loops* then
        (bind ?*application-specific-rating-type*
            (if (eq ?*application-specific-rating-type* "")
                then (if ?*xtd-Loops* then "xtd-Loop" else "Loop")
                else (str-cat ?*application-specific-rating-type* (if ?*xtd-Loops* then "+xtd-Loop" else "+Loop"))
            )
        )
    )
    ?*application-specific-rating-type*
)

