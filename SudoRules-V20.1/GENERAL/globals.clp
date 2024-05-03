
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              GLOBAL VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;             January 2006 - April 2024              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES AND FUNCTIONS RELATED TO GRID SIZE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; because ordinary Sudoku puzzles are 9x9 (i.e. segment-size = 3),
;;; SudoRules has its own way of dealing with the size of Sudoku puzzles
;;; segment size is 3 by default, but it can be redefined in the configuration file; maximum segment size is 9
(defglobal ?*segment-size* = 3)

(defglobal ?*internal-factor-0* =
    (if (or (eq ?*segment-size* 2) (eq ?*segment-size* 3)) then 10 else 100)
)
(defglobal ?*internal-factor* = ?*internal-factor-0*)
(defglobal ?*internal-factor-1* = ?*internal-factor-0*)
(defglobal ?*internal-factor-2* = (* ?*internal-factor* ?*internal-factor*))
(defglobal ?*internal-factor-3* = (* ?*internal-factor-2* ?*internal-factor*))
;;; grid size:
(defglobal ?*grid-size* = (* ?*segment-size* ?*segment-size*))
(defglobal ?*nb-of-cells* = (* ?*grid-size* ?*grid-size*))
(defglobal ?*nb-csp-variables* = ?*nb-of-cells*)



;;; because grid size may be changed in this file, use this function to redefine the associated internal factors
;;; As most Sudoku puzzles are 9x9, we consider it simpler to take them as the default case
;;; (the alternative would be to add an optional variable ?segment-size with default value 3
;;;  to function "solve" and to all the similar functions in file "GENERAL/solve.clp"
;;; ?segment-size could even be computed automatically from the length of the string of givens
;;; but this seems quite useless in most cases

(deffunction redefine-internal-factors ()
    (bind ?*internal-factor-0*  (if (or (eq ?*segment-size* 2) (eq ?*segment-size* 3))then 10 else 100))
    (bind ?*internal-factor* ?*internal-factor-0*)
    (if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*
            ?*Typed-G-Whips*
            ?*Forcing-G-Whips* ?*Forcing-G-Braids*
            ?*All-generic-chain-rules*
        ) then
        (bind ?*internal-factor* ?*internal-factor-0*)
        (bind ?i 1)
        (while (< ?i ?*segment-size*)
            (bind ?*internal-factor* (* ?*internal-factor* ?*internal-factor-0*))
            (bind ?i (+ ?i 1))
        )
    )
    (bind ?*internal-factor-0* ?*internal-factor*)
    (bind ?*internal-factor-1* ?*internal-factor*)
    (bind ?*internal-factor-2* (* ?*internal-factor* ?*internal-factor*))
    (bind ?*internal-factor-3* (* ?*internal-factor-2* ?*internal-factor*))
    (bind ?*grid-size* (* ?*segment-size* ?*segment-size*))
    (bind ?*nb-of-cells* (* ?*grid-size* ?*grid-size*))
    (bind ?*nb-csp-variables* ?*nb-of-cells*)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES FOR SELECTING:
;;; - THE ALLOWED CSP-TYPES IN TYPED-CHAINS
;;; - THE SUDOKU-SPECIFIC RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; define the allowed csp-types in Typed-Chains
(defglobal ?*dummy-for-allowed-csp-types* = (progn (bind ?*allowed-csp-types* (create$ rc rn cn bn)) TRUE))


(defglobal ?*FinnedFish* = FALSE)
(defglobal ?*FinnedFish[2]* = FALSE)
(defglobal ?*FinnedFish[3]* = FALSE)
(defglobal ?*FinnedFish[4]* = FALSE)

;;; Uniqueness
(defglobal ?*Unique-Rectangles* = FALSE)
(defglobal ?*BUG* = FALSE)

;;; Exotic patterns
(defglobal ?*Belt4* = FALSE)
(defglobal ?*Belt6* = FALSE)

(defglobal ?*J-Exocet* = FALSE)
(defglobal ?*Blue-J-Exocets* = FALSE)
(defglobal ?*J2-Exocet* = FALSE)
(defglobal ?*J3-Exocet* = FALSE)
(defglobal ?*J4-Exocet* = FALSE)
(defglobal ?*J5-Exocet* = FALSE)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Rules producing ORk relations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For all the rules that produce ORk-relations between "guardians", except for tridagons:
(defglobal ?*max-guardians* = 8)

;;; Tridagons:
(defglobal ?*Tridagons* = FALSE)
(defglobal ?*Tridagon-Forcing-Whips* = FALSE)
(defglobal ?*tridagon-forcing-whips-max-length* = 36)
(defglobal ?*Anti-Tridagons* = FALSE)
(defglobal ?*Anti-Tridagons* = FALSE)
(defglobal ?*Degen-Cyclic-Anti-Tridagons* = FALSE)
(defglobal ?*Eleven-Replacement-in-Tridagons* = FALSE)

;;; This is now set to TRUE by default in order to allow the early detection of Tridagons and anti-tridagons;
;;; it can be changed in the configuration file:
(defglobal ?*use-high-Tridagon-salience* = TRUE)


;;; Other impossible patterns in two bands or two stacks:

(defglobal ?*raise-selected-Imp630-saliences* = TRUE)

(defglobal ?*Imp630-Select1* = FALSE)
(defglobal ?*Imp630-Select2* = FALSE)
(defglobal ?*Imp630-Select3* = FALSE)
(defglobal ?*Imp630-Select4* = FALSE)

;;; ?*Imp630-Select1*
(defglobal ?*EL13c290* = FALSE)
(defglobal ?*EL14c30* = FALSE)
(defglobal ?*EL14c159* = FALSE)
(defglobal ?*EL14c1* = FALSE)
(defglobal ?*EL14c13* = FALSE)

;;; ?*Imp630-Select2*
(defglobal ?*EL10c28* = FALSE)
(defglobal ?*EL13c179* = FALSE)
(defglobal ?*EL13c30* = FALSE)
(defglobal ?*EL13c171* = FALSE)
(defglobal ?*EL13c234* = FALSE)
(defglobal ?*EL13c176* = FALSE)
(defglobal ?*EL10c6* = FALSE)

;;; ?*Imp630-Select3*
(defglobal ?*EL13c259* = FALSE)
(defglobal ?*EL10c8* = FALSE)
(defglobal ?*EL13c172* = FALSE)
(defglobal ?*EL14c19* = FALSE)
(defglobal ?*EL10c4* = FALSE)

;;; ?*Imp630-Select4*
(defglobal ?*EL13c175* = FALSE)
(defglobal ?*EL13c136* = FALSE)
(defglobal ?*EL15c97* = FALSE)
(defglobal ?*EL13c187* = FALSE)
(defglobal ?*EL14c93* = FALSE)
(defglobal ?*EL12c2* = FALSE)
(defglobal ?*EL14c154* = FALSE)
(defglobal ?*EL13c19* = FALSE)
(defglobal ?*EL13c170* = FALSE)
(defglobal ?*EL13c168* = FALSE)
(defglobal ?*EL10c10* = FALSE)


;;; For allowing sets of rules for impossible patterns in two bands or two stacks:
;;; - either independently all the rules for each sub-family with n cells:
(defglobal ?*Imp630-10c* = FALSE)
(defglobal ?*Imp630-12c* = FALSE)
(defglobal ?*Imp630-13c* = FALSE)
(defglobal ?*Imp630-14c* = FALSE)
(defglobal ?*Imp630-15c* = FALSE)
(defglobal ?*Imp630-16c* = FALSE)
;;; - or all the rules at once:
(defglobal ?*Imp630-all* = FALSE)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES USED FOR CONTROLLING WHAT IS PRINTED DURING THE RESOLUTION PROCESS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*print-uniqueness* = FALSE)
(defglobal ?*print-ur1* = FALSE)
(defglobal ?*print-ur2* = FALSE)
(defglobal ?*print-ur2b* = FALSE)
(defglobal ?*print-ur3* = FALSE)
(defglobal ?*print-ur3b* = FALSE)
(defglobal ?*print-ur4* = FALSE)
(defglobal ?*print-ur4b* = FALSE)
(defglobal ?*print-hur* = FALSE)
(defglobal ?*print-bug* = FALSE)


(defglobal ?*print-belts* = FALSE)
(defglobal ?*print-JExocet* = FALSE)



(defglobal ?*print-naked-single* = FALSE)
(defglobal ?*print-hidden-single* = FALSE)


(defglobal ?*print-naked-pairs* = FALSE)
(defglobal ?*print-hidden-pairs* = FALSE)
(defglobal ?*print-x-wing* = FALSE)
(defglobal ?*print-finned-x-wing* = FALSE)

(defglobal ?*print-naked-triplets* = FALSE)
(defglobal ?*print-hidden-triplets* = FALSE)
(defglobal ?*print-swordfish* = FALSE)
(defglobal ?*print-finned-swordfish* = FALSE)

(defglobal ?*print-xy-wing* = FALSE)
(defglobal ?*print-xy3-chain* = FALSE)
(defglobal ?*print-hxy3-chain* = FALSE)
(defglobal ?*print-xyz-wing* = FALSE)
(defglobal ?*print-xyt3-chain* = FALSE)
(defglobal ?*print-xyzt3-chain* = FALSE)

(defglobal ?*print-naked-quads* = FALSE)
(defglobal ?*print-hidden-quads* = FALSE)
(defglobal ?*print-jellyfish* = FALSE)
(defglobal ?*print-finned-jellyfish* = FALSE)


;;;; print chain rule firings according to specific categories of chains
(defglobal ?*print-xy-chain* = FALSE)
(defglobal ?*print-xy4-chain* = FALSE)
(defglobal ?*print-xy5-chain* = FALSE)
(defglobal ?*print-xy6-chain* = FALSE)
(defglobal ?*print-xy7-chain* = FALSE)
(defglobal ?*print-xy8-chain* = FALSE)
(defglobal ?*print-xy9-chain* = FALSE)
(defglobal ?*print-xy10-chain* = FALSE)
(defglobal ?*print-xy11-chain* = FALSE)
(defglobal ?*print-xy12-chain* = FALSE)
(defglobal ?*print-xy13-chain* = FALSE)
(defglobal ?*print-xy14-chain* = FALSE)
(defglobal ?*print-xy15-chain* = FALSE)
(defglobal ?*print-xy16-chain* = FALSE)

(defglobal ?*print-hxy-chain* = FALSE)
(defglobal ?*print-hxy4-chain* = FALSE)
(defglobal ?*print-hxy5-chain* = FALSE)
(defglobal ?*print-hxy6-chain* = FALSE)
(defglobal ?*print-hxy7-chain* = FALSE)
(defglobal ?*print-hxy8-chain* = FALSE)
(defglobal ?*print-hxy9-chain* = FALSE)
(defglobal ?*print-hxy10-chain* = FALSE)
(defglobal ?*print-hxy11-chain* = FALSE)
(defglobal ?*print-hxy12-chain* = FALSE)
(defglobal ?*print-hxy13-chain* = FALSE)

(defglobal ?*print-conjugacy* = FALSE)

(defglobal ?*print-xyz-chain* = FALSE)
(defglobal ?*print-xyz4-chain* = FALSE)
(defglobal ?*print-xyz5-chain* = FALSE)
(defglobal ?*print-xyz6-chain* = FALSE)
(defglobal ?*print-xyz7-chain* = FALSE)
(defglobal ?*print-xyz8-chain* = FALSE)
(defglobal ?*print-xyz9-chain* = FALSE)
(defglobal ?*print-xyz10-chain* = FALSE)
(defglobal ?*print-xyz11-chain* = FALSE)
(defglobal ?*print-xyz12-chain* = FALSE)
(defglobal ?*print-xyz13-chain* = FALSE)

(defglobal ?*print-hxyz-chain* = FALSE)
(defglobal ?*print-hxyz4-chain* = FALSE)
(defglobal ?*print-hxyz5-chain* = FALSE)
(defglobal ?*print-hxyz6-chain* = FALSE)
(defglobal ?*print-hxyz7-chain* = FALSE)
(defglobal ?*print-hxyz8-chain* = FALSE)
(defglobal ?*print-hxyz9-chain* = FALSE)
(defglobal ?*print-hxyz10-chain* = FALSE)
(defglobal ?*print-hxyz11-chain* = FALSE)
(defglobal ?*print-hxyz12-chain* = FALSE)
(defglobal ?*print-hxyz13-chain* = FALSE)

(defglobal ?*print-xyt-chain* = FALSE)
(defglobal ?*print-xyt4-chain* = FALSE)
(defglobal ?*print-xyt5-chain* = FALSE)
(defglobal ?*print-xyt6-chain* = FALSE)
(defglobal ?*print-xyt7-chain* = FALSE)
(defglobal ?*print-hxyt7-chain* = FALSE)
(defglobal ?*print-xyt8-chain* = FALSE)
(defglobal ?*print-xyt9-chain* = FALSE)
(defglobal ?*print-xyt10-chain* = FALSE)
(defglobal ?*print-xyt11-chain* = FALSE)
(defglobal ?*print-xyt12-chain* = FALSE)
(defglobal ?*print-xyt13-chain* = FALSE)
(defglobal ?*print-xyt14-chain* = FALSE)
(defglobal ?*print-xyt15-chain* = FALSE)
(defglobal ?*print-xyt16-chain* = FALSE)

(defglobal ?*print-hxyt-chain* = FALSE)
(defglobal ?*print-hxyt4-chain* = FALSE)
(defglobal ?*print-hxyt5-chain* = FALSE)
(defglobal ?*print-hxyt6-chain* = FALSE)
(defglobal ?*print-hxyt8-chain* = FALSE)
(defglobal ?*print-hxyt9-chain* = FALSE)
(defglobal ?*print-hxyt10-chain* = FALSE)
(defglobal ?*print-hxyt11-chain* = FALSE)
(defglobal ?*print-hxyt12-chain* = FALSE)
(defglobal ?*print-hxyt13-chain* = FALSE)

(defglobal ?*print-xyzt-chain* = FALSE)
(defglobal ?*print-xyzt4-chain* = FALSE)
(defglobal ?*print-xyzt5-chain* = FALSE)
(defglobal ?*print-xyzt6-chain* = FALSE)
(defglobal ?*print-xyzt7-chain* = FALSE)
(defglobal ?*print-xyzt8-chain* = FALSE)
(defglobal ?*print-xyzt9-chain* = FALSE)
(defglobal ?*print-xyzt10-chain* = FALSE)
(defglobal ?*print-xyzt11-chain* = FALSE)
(defglobal ?*print-xyzt12-chain* = FALSE)
(defglobal ?*print-xyzt13-chain* = FALSE)

(defglobal ?*print-hxyzt-chain* = FALSE)
(defglobal ?*print-hxyzt4-chain* = FALSE)
(defglobal ?*print-hxyzt5-chain* = FALSE)
(defglobal ?*print-hxyzt6-chain* = FALSE)
(defglobal ?*print-hxyzt7-chain* = FALSE)
(defglobal ?*print-hxyzt8-chain* = FALSE)
(defglobal ?*print-hxyzt9-chain* = FALSE)
(defglobal ?*print-hxyzt10-chain* = FALSE)



(defglobal ?*print-tridagon-link-12* = FALSE)
(defglobal ?*print-tridagon-forcing-whip* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-12* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-13* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-14* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-15* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-16* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-17* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-18* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-19* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-20* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-21* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-22* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-23* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-24* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-25* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-26* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-27* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-28* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-29* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-30* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-31* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-32* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-33* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-34* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-35* = FALSE)
(defglobal ?*print-tridagon-forcing-whip-36* = FALSE)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; OTHER GLOBAL VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; VARIABLES USED FOR KEEPING TRACK OF SETS OF SOLUTIONS WHEN SOLVING SETS OF PUZZLES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; variables used to keep track of special patterns and of puzzles that have them:
(defglobal
    ?*has-belt* = FALSE
    ?*has-belt6* = FALSE
    ?*has-J-exocet* = FALSE
    ;;; the following three variables don't put any restriction on the number of guardians
    ?*has-tridagon* = FALSE
    ?*has-degenerate-cyclic-tridagon* = FALSE
    ?*has-Imp630* = FALSE
)

(defglobal
    ?*belt-list* = (create$)
    ?*belt6-list* = (create$)
    ?*J-exocet-list* = (create$)
    ?*tridagon-list* = (create$)
    ?*degenerate-cyclic-tridagon-list* = (create$)
    ?*Imp630-list* = (create$)
)


(deffunction init-specific-globals ()
    (bind ?*has-belt* FALSE)
    (bind ?*has-belt6* FALSE)
    (bind ?*has-J-exocet* FALSE)
    (bind ?*has-tridagon* FALSE)
    (bind ?*has-degenerate-cyclic-tridagon* FALSE)
    (bind ?*has-Imp630* FALSE)
)

(deffunction init-specific-lists-for-files ()
    (bind ?*belt-list* (create$))
    (bind ?*belt6-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*degenerate-cyclic-tridagon-list* (create$))
    (bind ?*Imp630-list* (create$))
)

(deffunction add-i-to-specific-lists-for-files (?i)
    (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* ?i)))
    (if ?*has-belt6* then (bind ?*belt6-list* (create$ ?*belt6-list* ?i)))
    (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* ?i)))
    (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* ?i)))
    (if ?*has-degenerate-cyclic-tridagon* then (bind ?*degenerate-cyclic-tridagon-list* (create$ ?*degenerate-cyclic-tridagon-list* ?i)))
    (if ?*has-Imp630* then (bind ?*Imp630-list* (create$ ?*Imp630-list* ?i)))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; VARIABLES USED FOR KEEPING TRACK OF ONE-STEP CANDIDATES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*one-step-candidates* = (create$))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; VARIABLES USED FOR GOOD-LOOKING FORMATTING OF SUDOKU OR SUKAKU GRIDS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*cosmetic-signs-in-grid* = (create$ "*" ":" "+" "-" "!"))
