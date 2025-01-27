
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



;;; Because grid size may be changed in this file, use this function to redefine the associated internal factors
;;; As most Sudoku puzzles are 9x9, we consider it simpler to take them as the default case
;;; (the alternative would be to add an optional variable ?segment-size with default value 3
;;;  to function "solve" and to all the similar functions in file "GENERAL/solve.clp"
;;; ?segment-size could even be computed automatically from the length of the string of givens
;;; but this seems quite useless in most cases
;;; The G conditions below should be summarised by ?*G-Labels* = TRUE,
;;; but G-Labels is not yet available when this fucntion is called

(deffunction redefine-internal-factors ()
    (bind ?*internal-factor-0*  (if (or (eq ?*segment-size* 2) (eq ?*segment-size* 3))then 10 else 100))
    (bind ?*internal-factor* ?*internal-factor-0*)
    ;;; ?*G-Labels* = TRUE is not yet setup when this is used
    (if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*
            ?*Typed-G-Whips*
            ?*Forcing-G-Whips* ?*Forcing-G-Braids*
            ?*All-generic-chain-rules*
            ?*OR2-Forcing-G-Whips* ?*OR2-Contrad-G-Whips* ?*OR2-G-Whips*
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

;;; Elementary uniqueness
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Rules producing ORk relations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This utility is in GENERIC/utils.clp, but it is not available at this point:
(deffunction set-difference (?l1 ?l2)
    ;;; Sets are represented as lists
    ;;; No check is made for non repetition of elements in the given lists
    ;;; ?l1 minus ?l2
    (bind ?diff (create$))
    (foreach ?x ?l1
        (if (not (member$ ?x ?l2)) then (bind ?diff (create$ ?diff ?x)))
    )
    ?diff
)


;;; Variables and lists of rules based on the assumption of uniquness and on deadly patterns
(defglobal ?*Deadly-Patterns* = FALSE)
(defglobal ?*max-deadly-cells* = 9)
(defglobal ?*max-deadly-guardians* = 8)

(defglobal ?*Select-DP-list* = FALSE)
(defglobal ?*Selected-DP-list* = (create$))

;;; Lists of rules leading to deadly  patterns
(defglobal ?*deadly-patterns-rules-list-0* = (create$))
(defglobal ?*deadly-patterns-rules-list-4* = (create$ "4c/DP4-2-1"))
(defglobal ?*deadly-patterns-rules-list-5* = ?*deadly-patterns-rules-list-4*))
(defglobal ?*deadly-patterns-rules-list-6* = (create$
    ?*deadly-patterns-rules-list-4*
    "6c/DP6-3-1" "6c/DP6-3-2" "6c/DP6-2-3" "6c/DP6-2-4"
))
(defglobal ?*deadly-patterns-rules-list-7* = ?*deadly-patterns-rules-list-6*))
(defglobal ?*deadly-patterns-rules-list-8* = (create$
    ?*deadly-patterns-rules-list-7*
    "8c/DP8-4-1" "8c/DP8-4-2" "8c/DP8-4-3" "8c/DP8-3-4" "8c/DP8-3-5"
    "8c/DP8-2-6" "8c/DP8-2-7" "8c/DP8-2-8" "8c/DP8-2-9"
))
(defglobal ?*deadly-patterns-rules-list-9* = (create$
    ?*deadly-patterns-rules-list-8*
    "9c/DP9-4-1" "9c/DP9-3-2" "9c/DP9-3-3"
))
(defglobal ?*deadly-patterns-rules-list-10* = (create$
    ?*deadly-patterns-rules-list-9*
    "10c/DP10-5-1" "10c/DP10-5-2" "10c/DP10-5-3" "10c/DP10-4-4" "10c/DP10-4-5"
    "10c/DP10-5-6" "10c/DP10-4-7" "10c/DP10-5-8" "10c/DP10-4-9" "10c/DP10-4-10"
    "10c/DP10-4-11" "10c/DP10-4-12" "10c/DP10-5-13" "10c/DP10-4-14" "10c/DP10-4-15"
    "10c/DP10-4-16" "10c/DP10-4-17" "10c/DP10-3-18" "10c/DP10-4-19" "10c/DP10-3-20"
    "10c/DP10-4-21" "10c/DP10-3-22" "10c/DP10-2-23" "10c/DP10-3-24" "10c/DP10-3-25"
    "10c/DP10-4-26" "10c/DP10-3-27" "10c/DP10-3-28" "10c/DP10-4-29" "10c/DP10-2-30"
    "10c/DP10-3-31" "10c/DP10-3-32" "10c/DP10-3-33" "10c/DP10-2-34" "10c/DP10-3-35"
    "10c/DP10-2-36" "10c/DP10-3-37" "10c/DP10-3-38" "10c/DP10-4-39" "10c/DP10-3-40"
    "10c/DP10-2-41" "10c/DP10-2-42" "10c/DP10-3-43")

))
(defglobal ?*deadly-patterns-rules-list-11* = (create$
    ?*deadly-patterns-rules-list-10*
    "11c/DP11-5-1" "11c/DP11-4-2" "11c/DP11-5-3" "11c/DP11-5-4" "11c/DP11-5-5"
    "11c/DP11-5-6" "11c/DP11-4-7" "11c/DP11-4-8" "11c/DP11-5-9" "11c/DP11-5-10"
    "11c/DP11-4-11" "11c/DP11-4-12" "11c/DP11-4-13" "11c/DP11-4-14" "11c/DP11-4-15"
    "11c/DP11-3-16" "11c/DP11-4-17" "11c/DP11-3-18" "11c/DP11-4-19" "11c/DP11-3-20"
    "11c/DP11-4-21" "11c/DP11-4-22" "11c/DP11-4-23" "11c/DP11-3-24" "11c/DP11-4-25"
    "11c/DP11-3-26" "11c/DP11-3-27" "11c/DP11-3-28" "11c/DP11-4-29" "11c/DP11-3-30"
    "11c/DP11-3-31" "11c/DP11-3-32")

))
(defglobal ?*deadly-patterns-rules-list-12* = (create$
    ?*deadly-patterns-rules-list-11*
    "12c/DP12-6-1" "12c/DP12-6-2" "12c/DP12-6-3" "12c/DP12-6-4" "12c/DP12-5-5"
    "12c/DP12-6-6" "12c/DP12-4-7" "12c/DP12-4-8" "12c/DP12-6-9" "12c/DP12-5-10"
    "12c/DP12-5-11" "12c/DP12-6-12" "12c/DP12-5-13" "12c/DP12-6-14" "12c/DP12-6-15"
    "12c/DP12-5-16" "12c/DP12-5-17" "12c/DP12-6-18" "12c/DP12-5-19" "12c/DP12-6-20"
    "12c/DP12-5-21" "12c/DP12-5-22" "12c/DP12-5-23" "12c/DP12-5-24" "12c/DP12-5-25"
    "12c/DP12-5-26" "12c/DP12-4-27" "12c/DP12-4-28" "12c/DP12-4-29" "12c/DP12-5-30"
    "12c/DP12-5-31" "12c/DP12-5-32" "12c/DP12-5-33" "12c/DP12-6-34" "12c/DP12-6-35"
    "12c/DP12-4-36" "12c/DP12-5-37" "12c/DP12-5-38" "12c/DP12-6-39" "12c/DP12-6-40"
    "12c/DP12-5-41" "12c/DP12-5-42" "12c/DP12-4-43" "12c/DP12-4-44" "12c/DP12-4-45"
    "12c/DP12-5-46" "12c/DP12-5-47" "12c/DP12-5-48" "12c/DP12-5-49" "12c/DP12-4-50"
    "12c/DP12-5-51" "12c/DP12-6-52" "12c/DP12-5-53" "12c/DP12-5-54" "12c/DP12-6-55"
    "12c/DP12-5-56" "12c/DP12-4-57" "12c/DP12-5-58" "12c/DP12-5-59" "12c/DP12-4-60"
    "12c/DP12-4-61" "12c/DP12-5-62" "12c/DP12-5-63" "12c/DP12-5-64" "12c/DP12-5-65"
    "12c/DP12-5-66" "12c/DP12-4-67" "12c/DP12-5-68" "12c/DP12-5-69" "12c/DP12-5-70"
    "12c/DP12-5-71" "12c/DP12-6-72" "12c/DP12-6-73" "12c/DP12-5-74" "12c/DP12-4-75"
    "12c/DP12-5-76" "12c/DP12-6-77" "12c/DP12-5-78" "12c/DP12-4-79" "12c/DP12-5-80"
    "12c/DP12-5-81" "12c/DP12-4-82" "12c/DP12-4-83" "12c/DP12-5-84" "12c/DP12-4-85"
    "12c/DP12-4-86" "12c/DP12-5-87" "12c/DP12-5-88" "12c/DP12-4-89" "12c/DP12-4-90"
    "12c/DP12-4-91" "12c/DP12-4-92" "12c/DP12-4-93" "12c/DP12-4-94" "12c/DP12-4-95"
    "12c/DP12-5-96" "12c/DP12-4-97" "12c/DP12-4-98" "12c/DP12-6-99" "12c/DP12-5-100"
    "12c/DP12-4-101" "12c/DP12-5-102" "12c/DP12-5-103" "12c/DP12-4-104" "12c/DP12-5-105"
    "12c/DP12-4-106" "12c/DP12-4-107" "12c/DP12-4-108" "12c/DP12-4-109" "12c/DP12-4-110"
    "12c/DP12-3-111" "12c/DP12-3-112" "12c/DP12-3-113" "12c/DP12-4-114" "12c/DP12-4-115"
    "12c/DP12-4-116" "12c/DP12-4-117" "12c/DP12-4-118" "12c/DP12-4-119" "12c/DP12-5-120"
    "12c/DP12-5-121" "12c/DP12-3-122" "12c/DP12-3-123" "12c/DP12-4-124" "12c/DP12-4-125"
    "12c/DP12-4-126" "12c/DP12-5-127" "12c/DP12-5-128" "12c/DP12-4-129" "12c/DP12-4-130"
    "12c/DP12-4-131" "12c/DP12-4-132" "12c/DP12-4-133" "12c/DP12-4-134" "12c/DP12-4-135"
    "12c/DP12-4-136" "12c/DP12-4-137" "12c/DP12-4-138" "12c/DP12-4-139" "12c/DP12-4-140"
    "12c/DP12-4-141" "12c/DP12-4-142" "12c/DP12-5-143" "12c/DP12-4-144" "12c/DP12-4-145"
    "12c/DP12-4-146" "12c/DP12-4-147" "12c/DP12-5-148" "12c/DP12-5-149" "12c/DP12-3-150"
    "12c/DP12-3-151" "12c/DP12-3-152" "12c/DP12-3-153" "12c/DP12-3-154" "12c/DP12-3-155"
    "12c/DP12-3-156" "12c/DP12-4-157" "12c/DP12-4-158" "12c/DP12-4-159" "12c/DP12-4-160"
    "12c/DP12-4-161" "12c/DP12-4-162" "12c/DP12-4-163" "12c/DP12-4-164" "12c/DP12-4-165"
    "12c/DP12-4-166" "12c/DP12-4-167" "12c/DP12-3-168" "12c/DP12-4-169" "12c/DP12-4-170"
    "12c/DP12-4-171" "12c/DP12-4-172" "12c/DP12-3-173" "12c/DP12-3-174" "12c/DP12-3-175"
    "12c/DP12-4-176" "12c/DP12-4-177" "12c/DP12-3-178" "12c/DP12-3-179" "12c/DP12-3-180"
    "12c/DP12-3-181" "12c/DP12-4-182" "12c/DP12-3-183" "12c/DP12-3-184" "12c/DP12-4-185"
    "12c/DP12-3-186" "12c/DP12-3-187" "12c/DP12-3-188" "12c/DP12-4-189" "12c/DP12-5-190"
    "12c/DP12-4-191" "12c/DP12-4-192" "12c/DP12-4-193" "12c/DP12-4-194" "12c/DP12-4-195"
    "12c/DP12-4-196" "12c/DP12-5-197" "12c/DP12-5-198" "12c/DP12-6-199" "12c/DP12-4-200"
    "12c/DP12-4-201" "12c/DP12-4-202" "12c/DP12-5-203" "12c/DP12-5-204" "12c/DP12-5-205"
    "12c/DP12-4-206" "12c/DP12-4-207" "12c/DP12-4-208" "12c/DP12-4-209" "12c/DP12-3-210"
    "12c/DP12-3-211" "12c/DP12-4-212" "12c/DP12-3-213" "12c/DP12-3-214" "12c/DP12-4-215"
    "12c/DP12-4-216" "12c/DP12-4-217" "12c/DP12-3-218" "12c/DP12-3-219" "12c/DP12-4-220"
    "12c/DP12-4-221" "12c/DP12-3-222" "12c/DP12-4-223" "12c/DP12-3-224" "12c/DP12-3-225"
    "12c/DP12-3-226" "12c/DP12-3-227" "12c/DP12-3-228" "12c/DP12-3-229" "12c/DP12-2-230"
    "12c/DP12-3-231" "12c/DP12-2-232" "12c/DP12-2-233" "12c/DP12-2-234" "12c/DP12-3-235"
    "12c/DP12-3-236" "12c/DP12-3-237" "12c/DP12-3-238" "12c/DP12-4-239" "12c/DP12-4-240"
    "12c/DP12-3-241" "12c/DP12-3-242" "12c/DP12-3-243" "12c/DP12-3-244" "12c/DP12-2-245"
    "12c/DP12-2-246" "12c/DP12-2-247" "12c/DP12-2-248" "12c/DP12-2-249" "12c/DP12-2-250"
    "12c/DP12-4-251" "12c/DP12-5-252" "12c/DP12-4-253" "12c/DP12-5-254" "12c/DP12-6-255"
    "12c/DP12-5-256" "12c/DP12-4-257" "12c/DP12-5-258" "12c/DP12-4-259" "12c/DP12-5-260"
    "12c/DP12-5-261" "12c/DP12-5-262" "12c/DP12-4-263" "12c/DP12-5-264" "12c/DP12-4-265"
    "12c/DP12-4-266" "12c/DP12-4-267" "12c/DP12-4-268" "12c/DP12-4-269" "12c/DP12-4-270"
    "12c/DP12-4-271" "12c/DP12-4-272" "12c/DP12-4-273" "12c/DP12-4-274" "12c/DP12-4-275"
    "12c/DP12-4-276" "12c/DP12-4-277" "12c/DP12-4-278" "12c/DP12-4-279" "12c/DP12-4-280"
    "12c/DP12-4-281" "12c/DP12-4-282" "12c/DP12-4-283" "12c/DP12-4-284" "12c/DP12-4-285"
    "12c/DP12-5-286" "12c/DP12-4-287" "12c/DP12-4-288" "12c/DP12-4-289" "12c/DP12-4-290"
    "12c/DP12-4-291" "12c/DP12-3-292" "12c/DP12-3-293" "12c/DP12-3-294" "12c/DP12-4-295"
    "12c/DP12-3-296" "12c/DP12-3-297" "12c/DP12-3-298" "12c/DP12-4-299" "12c/DP12-4-300"
    "12c/DP12-2-301" "12c/DP12-2-302" "12c/DP12-3-303" "12c/DP12-3-304" "12c/DP12-4-305"
    "12c/DP12-2-306" "12c/DP12-3-307" "12c/DP12-2-308" "12c/DP12-2-309" "12c/DP12-2-310"
    "12c/DP12-3-311" "12c/DP12-3-312" "12c/DP12-3-313" "12c/DP12-3-314" "12c/DP12-4-315"
    "12c/DP12-3-316")
))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; For all the other rules that produce ORk-relations between "guardians",
;;; except for deadly patterns
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*max-guardians* = 8) ; not applied to Tridagons

;;; Tridagons:
(defglobal ?*Tridagons* = FALSE)
(defglobal ?*Tridagon-Forcing-Whips* = FALSE)
(defglobal ?*tridagon-forcing-whips-max-length* = 36)
(defglobal ?*Anti-Tridagons* = FALSE)
(defglobal ?*Anti-Tridagons* = FALSE)
(defglobal ?*Degen-Cyclic-Anti-Tridagons* = FALSE)
(defglobal ?*Eleven-Replacement-in-Tridagon-block* = FALSE)
(defglobal ?*Eleven-Replacement-in-Degen-Cyclic-Tridagon-block* = FALSE)

;;; This is now set to TRUE by default in order to allow the early detection of Tridagons and anti-tridagons;
;;; it can be changed in the configuration file:
(defglobal ?*use-high-Tridagon-salience* = TRUE)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Other impossible patterns in two bands or two stacks:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

;;; For allowing your own selection of impossible patterns:
(defglobal ?*Imp630-10c-list* = (create$))
(defglobal ?*Imp630-12c-list* = (create$))
(defglobal ?*Imp630-13c-list* = (create$))
(defglobal ?*Imp630-14c-list* = (create$))
(defglobal ?*Imp630-15c-list* = (create$))
(defglobal ?*Imp630-16c-list* = (create$))
(defglobal ?*Imp630-full-list* = (create$))
(defglobal ?*Dummy-Imp630-full-list* = (progn
        ;;; 10 cells
        (loop-for-count (?i 1 31)
            (if (neq ?i 11) then ; #11 has 4 cells in block 6
                (bind ?*Imp630-10c-list* (create$ ?*Imp630-10c-list* (sym-cat EL10c ?i)))
            )
        )
        ;;; 12 cells
        (loop-for-count (?i 1 38)
            (if (neq ?i 38) ; #38 is Tridagon, it must be loaded separately
                then (bind ?*Imp630-12c-list* (create$ ?*Imp630-12c-list* (sym-cat EL12c ?i)))
            )
        )
        ;;; 13 cells
        (loop-for-count (?i 1 290)
            (if (not (member$ ?i (create$ 207 211 217 218 219))) then ; #i has enough free cells
                (bind ?*Imp630-13c-list* (create$ ?*Imp630-13c-list* (sym-cat EL13c ?i)))
            )
        )
        ;;; 14 cells
        (loop-for-count (?i 1 159)
            (if (not (member$ ?i (create$ 23 33 36 73 92 112 113))) then ; #i has enough free cells
                (bind ?*Imp630-14c-list* (create$ ?*Imp630-14c-list* (sym-cat EL14c ?i)))
            )
        )
        ;;; 15 cells
        (loop-for-count (?i 1 102)
            (if (not (member$ ?i (create$ 11 16 18 30 32 36 38 40 42 45 47 49 51 53 56 57 66 68 69 80 83 85 100 101)))  then ; #i has enough free cells
                (bind ?*Imp630-15c-list* (create$ ?*Imp630-15c-list* (sym-cat EL15c ?i)))
            )
        )
        ;;; 16 cells
        (loop-for-count (?i 1 10)
            (if (not (member$ ?i (create$ 9 10))) then ; #i has enough free cells
                (bind ?*Imp630-16c-list* (create$ ?*Imp630-16c-list* (sym-cat EL16c ?i)))
            )
        )
        (bind ?*Imp630-full-list*
            (create$ ?*Imp630-10c-list* ?*Imp630-12c-list* ?*Imp630-13c-list*
                ?*Imp630-14c-list* ?*Imp630-15c-list* ?*Imp630-16c-list*)
        )
        ?*Imp630-full-list*
    )
)

(defglobal ?*Select-Imp630-list* = FALSE)
(defglobal ?*Selected-Imp630-list* = (create$))


(deffunction check-Imp630-selection ()
    (if (or
            (and ?*Select-Imp630-list* (subsetp ?*Selected-Imp630-list* ?*Imp630-full-list*))
            (eq 0 (length$ ?*Selected-Imp630-list*))
        )
        then TRUE
        else (if (not ?*Select-Imp630-list*) then
                (printout t "INVALID SELECTION: in order to use a personalised list of impossible patterns," crlf
                    "?*Select-Imp630-list* must first be set to TRUE" crlf)
            )
            (bind ?dif (set-difference ?*Selected-Imp630-list* ?*Imp630-full-list*))
            (if (> (length$ ?dif) 0) then
                (printout t "INVALID SELECTION; the full allowed list is: " crlf
                    ?*Imp630-10c-list* crlf
                    ?*Imp630-12c-list* crlf
                    ?*Imp630-13c-list* crlf
                    ?*Imp630-14c-list* crlf
                    ?*Imp630-15c-list* crlf
                    ?*Imp630-16c-list* crlf
                )
                (printout t "INVALID SELECTION: " crlf
                    ?dif " is/are not in the existing list of impossible patterns" crlf
                )
            )
            FALSE
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Check selection before loading
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction check-application-specific-config-selection ()
    ;;; This function is only intended for being called within generic check-config-selection
    ;;; after the generic checks have been done (e.g. ?*G-Labels* updated)
    (if (and ?*G-Labels* (> ?*segment-size* 4))
        then (printout t
                "BEWARE: g-labels, g-bivalue-chains, g-whips and g-braids are not managed” crlf
                “for segment size larger than 4, i.e. grid size larger than 16" crlf)
            (return FALSE)
        else (check-Imp630-selection)
    )
)
        




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
    ?*has-deadly-pattern* = FALSE
)

(defglobal
    ?*belt-list* = (create$)
    ?*belt6-list* = (create$)
    ?*J-exocet-list* = (create$)
    ?*tridagon-list* = (create$)
    ?*degenerate-cyclic-tridagon-list* = (create$)
    ?*Imp630-list* = (create$)
    ?*deadly-pattern-list* = (create$)
    ?*eleven-tried-blocks* = (create$)
)


(deffunction init-specific-globals ()
    (bind ?*has-belt* FALSE)
    (bind ?*has-belt6* FALSE)
    (bind ?*has-J-exocet* FALSE)
    (bind ?*has-tridagon* FALSE)
    (bind ?*has-degenerate-cyclic-tridagon* FALSE)
    (bind ?*has-Imp630* FALSE)
    (bind ?*has-deadly-pattern* FALSE)
    (bind ?*eleven-tried-blocks* (create$))
)

(deffunction init-specific-lists-for-files ()
    (bind ?*belt-list* (create$))
    (bind ?*belt6-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*degenerate-cyclic-tridagon-list* (create$))
    (bind ?*Imp630-list* (create$))
    (bind ?*deadly-pattern-list* (create$))
)

(deffunction add-i-to-specific-lists-for-files (?i)
    (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* ?i)))
    (if ?*has-belt6* then (bind ?*belt6-list* (create$ ?*belt6-list* ?i)))
    (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* ?i)))
    (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* ?i)))
    ;(if ?*has-degenerate-cyclic-tridagon* then (bind ?*degenerate-cyclic-tridagon-list* (create$ ?*degenerate-cyclic-tridagon-list* ?i)))
    ;;; 2024 May 17, changed to
    (if (or ?*has-tridagon* ?*has-degenerate-cyclic-tridagon*) then
        (bind ?*degenerate-cyclic-tridagon-list* (create$ ?*degenerate-cyclic-tridagon-list* ?i)))
    (if ?*has-Imp630* then (bind ?*Imp630-list* (create$ ?*Imp630-list* ?i)))
    (if ?*has-Imp630* then (bind ?*Imp630-list* (create$ ?*Imp630-list* ?i)))
    (if ?*has-deadly-pattern* then (bind ?*deadly-pattern-list* (create$ ?*deadly-pattern-list* ?i)))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; VARIABLES USED FOR KEEPING TRACK OF ONE-STEP CANDIDATES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*one-step-candidates* = (create$))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; VARIABLES USED FOR GOOD-LOOKING FORMATTING OF SUDOKU OR SUKAKU GRIDS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*cosmetic-signs-in-grid* = (create$ "*" ":" "+" "-" "!"))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; VARIABLES USED FOR ACCESSING VARIOUS COMPANION REPOSITORIES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*CBGC* = (str-cat ?*CSP-Rules* "CBGC" ?*Directory-symbol*))
;;; because it holds a special place in shorter computations:
(defglobal ?*cbg-000* = (str-cat ?*CBGC* "SMALL-CB-COLLECTIONS/000/"))

(defglobal ?*SUDCL* = (str-cat ?*CSP-Rules* "SUDCL" ?*Directory-symbol*))
(defglobal ?*TE2-EL* = (str-cat ?*SUDCL* "eleven-26370-TE2" ?*Directory-symbol*))
(defglobal ?*TE2-PH* = (str-cat ?*SUDCL* "ph2010-3103972-TE2" ?*Directory-symbol*))

(defglobal ?*TE3-Mi* = (str-cat ?*SUDCL* "mith-158276-TE3" ?*Directory-symbol*))
(defglobal ?*TE23-Mon* = (str-cat ?*SUDCL* "Monhard-until-2023-08-15-TE23" ?*Directory-symbol*))
(defglobal ?*TE2-Paq* = (str-cat ?*SUDCL* "Paquita-2023-sept-dec-TE2" ?*Directory-symbol*))
(defglobal ?*TE2-Col* = (str-cat ?*SUDCL* "Coloin-2024-09-03-B7B+" ?*Directory-symbol*))

(defglobal ?*17c* = (str-cat ?*SUDCL* "Royle-49158-17c" ?*Directory-symbol*))
(defglobal ?*18c* = (str-cat ?*SUDCL* "Mat-2000000-18c" ?*Directory-symbol*))
(defglobal ?*38c* = (str-cat ?*SUDCL* "dob-2014078-38c" ?*Directory-symbol*))
(defglobal ?*39c* = (str-cat ?*SUDCL* "dob-2650-39c" ?*Directory-symbol*))

(defglobal ?*TEMP* = (str-cat ?*SUDCL* "Templates" ?*Directory-symbol*))
(defglobal ?*DP* = (str-cat ?*SUDCL* "Deadly-Patterns" ?*Directory-symbol*))


(deffunction relocate-companion-folders ()
    (bind ?*cbg-000* (str-cat ?*CBGC* "SMALL-CB-COLLECTIONS/000/"))
    
    (bind ?*TE2-EL* (str-cat ?*SUDCL* "eleven-26370-TE2" ?*Directory-symbol*))
    (bind ?*TE2-PH* (str-cat ?*SUDCL* "ph2010-3103972-TE2" ?*Directory-symbol*))
    
    (bind ?*TE3-Mi* (str-cat ?*SUDCL* "mith-158276-TE3" ?*Directory-symbol*))
    (bind ?*TE23-Mon* (str-cat ?*SUDCL* "Monhard-until-2023-08-15-TE23" ?*Directory-symbol*))
    (bind ?*TE2-Paq* (str-cat ?*SUDCL* "Paquita-2023-sept-dec-TE2" ?*Directory-symbol*))
    (bind ?*TE2-Col* (str-cat ?*SUDCL* "Coloin-2024-09-03-B7B+" ?*Directory-symbol*))

    (bind ?*17c* (str-cat ?*SUDCL* "Royle-49158-17c" ?*Directory-symbol*))
    (bind ?*18c* (str-cat ?*SUDCL* "JPF-2000000-18c" ?*Directory-symbol*))
    (bind ?*38c* (str-cat ?*SUDCL* "dob-2014078-38c" ?*Directory-symbol*))
    (bind ?*39c* (str-cat ?*SUDCL* "dob-2650-39c" ?*Directory-symbol*))
    
    (bind ?*TEMP* (str-cat ?*SUDCL* "Templates" ?*Directory-symbol*))
    (bind ?*DP* (str-cat ?*SUDCL* "Deadly-Patterns" ?*Directory-symbol*))
    TRUE
)
