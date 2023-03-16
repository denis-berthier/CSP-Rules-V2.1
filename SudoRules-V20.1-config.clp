
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SUDORULES CONFIGURATION FILE
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INSTALLATION ONLY:
;;; Define environment variables: OS and installation directory
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(clear) ; clean CLIPS of anything it may have had before.
;;; Default setting is for Unix and MacOS,
;;; but it should also work for recent versions of Windows:
(defglobal ?*Directory-symbol* = "/")


;;; Define your general CSP-Rules installation directory (including the ending directory symbol /).
;;; This is the directory in which the CSP-Rules-V2.1 version is installed, not the CSP-Rules-V2.1 directory.
;;; By defining the path in an absolute way, you will be able to launch CSP-Rules-V2.1 from anywhere.
;;; You need to write something as follows.
;;; For Unix (including MacOS):
 (defglobal ?*CSP-Rules* = "/Users/berthier/Documents/Projets/CSP-Rules/")   ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;;; For Windows:
; (defglobal ?*CSP-Rules* = "c:/Users/berthier/Documents/Projets/CSP-Rules/") ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; CLIPS is the underlying inference engine.
;;; The version of CLIPS used may be defined here (used only for displaying it in the banner)
(defglobal ?*Clips-version* = "6.32-r823");                                     <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; Description of the computer used to run CSP-Rules
(defglobal ?*Computer-description* =
    "MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 13.2.1"
)                                                                               <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Define the application
;;; Define useful directories and load all the globals
;;; (they must be available before choosing the configuration of rules)
;;;
;;; Do NOT change any of the following
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; An ?*Application* must be defined as the name of the application (here, SudoRules), not as the name of the puzzle (Sudoku).
;;; This name must coincide with the leading part of the name of the directory for the application inside the CSP-Rules-V2.1 directory.
;;; The version number of the ?*Application* must also be defined.
;;; This allows to have several versions of the same application based on the same version of CSP-Rules.
;;; For historical reasons, SudoRules version number inside CSP-Rules-V2.1 is not 2.1 but 20.1
;;; (there were many versions of SudoRules before the development of a generic CSP-Rules core).
(defglobal ?*Application* = "SudoRules")
(defglobal ?*Application-VersionNumber* = 20.1)

(defglobal ?*CSP-Rules-current-version* = (str-cat ?*CSP-Rules* "CSP-Rules-V2.1" ?*Directory-symbol*))
(defglobal ?*CSP-Rules-Generic-Dir* = (str-cat ?*CSP-Rules-current-version* "CSP-Rules-Generic" ?*Directory-symbol*))
(defglobal ?*CSP-Rules-Generic-Loader* = (str-cat ?*CSP-Rules-Generic-Dir* "CSP-Rules-Generic-Loader.clp"))

(defglobal ?*Application-Dir* = (str-cat ?*CSP-Rules-current-version* ?*Application* "-V" ?*Application-VersionNumber* ?*Directory-symbol*))
(defglobal ?*Application-Loader* = (str-cat ?*Application-Dir* ?*Application* "-Loader.clp"))

(defglobal ?*CSP-Rules-Examples-Dir* = (str-cat ?*CSP-Rules* "CSP-Rules-Examples" ?*Directory-symbol*))

;;; load definitions for the global variables necessary for the upcoming choices
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "globals.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "globals.clp"))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General application-specific choices
;;; Define grid size and related parameters
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Because ordinary Sudoku puzzles are 9x9 (i.e. segment-size = 3),
;;; SudoRules has its own way of dealing with the size of puzzles
;;; and this can only be done here; maximum segment size is 9
;;; you don't need do change anything for the standard 9x9 puzzles
 (bind ?*segment-size* 3) ;                                                  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                                      ;;;
;;;                                      DEFINE YOUR CONFIGURATION HERE:                                 ;;;
;;;                                         Choose general settings                                      ;;;
;;;                     Define your resolution theory (i.e. your set of resolution rules)                ;;;
;;;                         Simply delete the leading semicolon of the proper line(s)                    ;;;
;;;                                                                                                      ;;;
;;;                                        IN ORDER TO AVOID ERRORS,                                     ;;;
;;;                       DELETE SEMI-COLONS IN ONLY ONE SECTION OF RULES AT A TIME                      ;;;
;;;                                                                                                      ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                                      ;;;
;;;                                                                                                      ;;;
;;;                                                                                                      ;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 0) Choose general settings
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; DON'T CHANGE ANYTHING IN THIS SECTION UNLESS YOU HAVE SOME REASON

;;; Possibly change the type of optimisation for the chain rules.
;;; Default is pre-defined as SPEED.
;;; Don't change this unless you meet a memory overflow problem.
; (bind ?*chain-rules-optimisation-type* MEMORY)


;;; In the previous standard behaviour of CSP-Rules, when a pattern could have produced more than one elimination,
;;; the activation of a simpler rule by the first elimination could prevent further potential eliminations.
;;; This default behaviour is now changed:
;;; - for Whips[1],
;;; - for Subsets,
;;; - for bivalue-chains (typed or not), z-chains (typed or not) and t-Whips (typed or not),
;;; - for Oddagons.
;;; However, CSP-Rules allows to revert to the previous behaviour,
;;; independently for each of the above four groups of rules.
;;; Un-comment the relevant line(s) below if you want these rules to be "interrupted" as all the other rules.
;;; Notice that ?*blocked-Subsets* = TRUE, ?*blocked-chains* = TRUE or ?*blocked-oddagons* = TRUE
;;; will imply ?*blocked-Whips[1]* = TRUE
; (bind ?*blocked-Whips[1]* FALSE)
; (bind ?*blocked-Subsets* FALSE)
; (bind ?*blocked-chains* FALSE) ; i.e. bivalue-chains, z-chains and t-Whips (typed or not)
; (bind ?*blocked-oddagons* FALSE)
;;; The old interrupted behaviour can be globally selected by ?*unblocked-behaviour* to TRUE;
;;; (equivalent to setting the above four values to FALSE):
; (bind ?*unblocked-behaviour* TRUE)


;;; Choose what's printed as the output.
;;; The default combination is what has been used in PBCS.
;;; Changes below will print more or less details.
; (bind ?*print-init-details* TRUE)
; (bind ?*print-ECP-details* TRUE)
; (bind ?*print-actions* FALSE)
; (bind ?*print-levels* TRUE)
; (bind ?*print-main-levels* TRUE)
; (bind ?*print-solution* FALSE)

;;; Note that the following print options are time consuming.
;;; De-activate them for a faster solution.
;;; The resolution state after BRT is printed by default.
;;; Un-comment this if you do not want to print it:
; (bind ?*print-RS-after-Singles* FALSE)

;;; The resolution state after Singles and whips[1] is printed by default.
;;; Un-comment this if you do not want to print it:
; (bind ?*print-RS-after-whips[1]* FALSE)

;;; The resolution state is printed by default at the end of resolution
;;; if the solution has not been found.
;;; Un-comment this if you do not want to print it:
; (bind ?*print-final-RS* FALSE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) Choose ordinary generic or quasi-generic resolution rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; My standard config and its usual variants
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; My most usual rules (config = W+S+Fin, with unrestricted lengths):
;;; Sudoku-specific:
 (bind ?*Subsets* TRUE)
 (bind ?*FinnedFish* TRUE)
;;; Generic:
; (bind ?*Whips[1]* TRUE) ; allows to more easily activate only whips[1]
 (bind ?*Bivalue-Chains* TRUE)
 (bind ?*Whips* TRUE)
 (bind ?*z-Chains* TRUE)
 (bind ?*t-Whips* TRUE)


;;; Some additional rules I use frequently:
; (bind ?*G-Whips* TRUE)

;;; Some additional rules I use occasionally:
; (bind ?*Oddagons* TRUE)


;;; Some optional intermediary Typed Chains, allowing more varied resolution paths:
;;; (remember that whips[1] cannot be type-restricted)
; (bind ?*Typed-Bivalue-Chains* TRUE)
; (bind ?*Typed-z-Chains* TRUE)
; (bind ?*Typed-t-Whips* TRUE)
; (bind ?*Typed-Whips* TRUE)

;;; Choose stricter type restrictions in the above Typed Chains.
;;; The same type restrictions will apply to all the typed-chains.
;;; Type restrictions correspond to working in only some of the four 2D-spaces,
;;; i.e. using only part of the Extended Sudoku Board.
;;; BEWARE: type restrictions defined by global variable ?*allowed-csp-types*
;;; will apply only if ?*restrict-csp-types-in-typed-chains* is set to TRUE.
; (bind ?*restrict-csp-types-in-typed-chains* TRUE)
; (bind ?*allowed-csp-types* (create$ rc))


;;; Some additional rules I almost never use:
; (bind ?*G2-Whips* TRUE)
; (bind ?*Braids* TRUE)
; (bind ?*G-Bivalue-Chains* TRUE)
; (bind ?*G-Braids* TRUE)
;;; The following is incompatible with any other chain type:
; (bind ?*Quick-B-Rating* TRUE)


;;; Forcingk-whips are based on k-value cells in any of the 2D-spaces.
;;; Their maximal length is determined by ?*forcing-whips-max-length*.
; (bind ?*Forcing2-Whips* TRUE)
; (bind ?*Forcing3-Whips* TRUE)
; (bind ?*Forcing4-Whips* TRUE)
; (bind ?*Forcing5-Whips* TRUE)

;;; Forcing-Whips are older and simpler than Forcing2-Whips, but they  are the same thing
; (bind ?*Forcing-Whips* TRUE)
; (bind ?*Forcing-G-Whips* TRUE)
; (bind ?*Forcing-Braids* TRUE)
; (bind ?*Forcing-G-Braids* TRUE)


;;; Setting ?*All-generic-chain-rules* to TRUE will activate all the generic chain rules listed above,
;;; (which doesn't include the Subset rules),
;;; with the max-lengths as specified below (but automatically modified for consistency).
;;; It is NOT RECOMMENDED to use this possibility, unless you know what you are doing
;;; Many complex rules are loaded and memory overflow problems may appear.
; (bind ?*All-generic-chain-rules* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Change the default maximal lengths of the chain patterns
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Don't change these lengths unless you have some reason.

;;; The maximum length of all the generic chains can be lowered at once.
;;; 36 is the absolute maximum, never reached in practice.
;;; Notice that this global restriction will prevail on any of the individual restrictions below.
; (bind ?*all-chains-max-length* 36)

;;; Maximum lengths can also be lowered individually:
; (bind ?*bivalue-chains-max-length* 20)
; (bind ?*z-chains-max-length* 20)
; (bind ?*t-whips-max-length* 36)
; (bind ?*whips-max-length* 36)
; (bind ?*g2whips-max-length* 36)
; (bind ?*g-bivalue-chains-max-length* 20)
; (bind ?*gwhips-max-length* 36)
; (bind ?*braids-max-length* 36)
; (bind ?*gbraids-max-length* 36)
; (bind ?*oddagons-max-length* 15)

; (bind ?*typed-bivalue-chains-max-length* 20)
; (bind ?*typed-z-chains-max-length* 20)
; (bind ?*typed-t-whips-max-length* 36)
; (bind ?*typed-whips-max-length* 36)

; (bind ?*forcing-whips-max-length* 36)
; (bind ?*forcing-gwhips-max-length* 36)
; (bind ?*forcing-braids-max-length* 36)
; (bind ?*forcing-gbraids-max-length* 36)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) Choose application-specific resolution rules (besides Subsets)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2.1 Sudoku-specific rules : U-resolution rules for uniqueness
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; BEWARE: don't activate the following uniqueness rules,
;;; if you are not sure that the puzzle has a unique solution.
;;; The result would be undefined.
; (bind ?*Unique-Rectangles* TRUE)
; (bind ?*BUG* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2.2 Sudoku-specific rules (besides Subsets): sk-loops and J-Exocets
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Belt (sk-loop), J-Exocet and Tridagon rules fall under the category of what I called exotic patterns,
;;; because they are very specialised and very rarely present in a puzzle -
;;; a name that has immediately been adopted on the Sudoku forums.
;;; When present in a puzzle, they are generally very powerful to reduce its difficulty.

;;; 2.2.1) sk-loops:
; (bind ?*Belt4* TRUE)
; (bind ?*Belt6* TRUE)

;;; 2.2.2) J-Exocets:
; (bind ?*J-Exocet* TRUE)
; (bind ?*J2-Exocet* TRUE)
; (bind ?*J3-Exocet* TRUE)
; (bind ?*J4-Exocet* TRUE)
; (bind ?*J5-Exocet* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                                      ;;;
;;;                  ALL THAT FOLLOWS IS FOR EXPERTS AND CAN BE COMPLETELY FORGOTTEN                     ;;;
;;;                           IF YOU ARE SOLVING ORDINARY PUZZLES                                        ;;;
;;;                                                                                                      ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2.3 9x9 Sudoku-specific rules based on impossible patterns:
;;;     Tridagons and Eleven's set of 630 impossible patterns
;;;     These rules produce ORk-relations that can be used with ORk-chains
;;;     (for 9x9 puzzles only).
;;; This is highly specific to puzzles in T&E(3)
;;; Read section 3.5 and chapters 14 and 15 of the Augmented User Manual
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; BEWARE: in this section 2.3 and in sections 2.4 and 2.5,
;;; general rules (Subsets, whips, ...) are supposed to be activated in sections 2.1 and 2.2.

;;; 2.3.1) Tridagons
;;; Use the simplest Tridagon elimination rule:
; (bind ?*Tridagons* TRUE)

;;; Allow the use of ORk-chains based on Tridagons
; (bind ?*Anti-Tridagons* TRUE)

;;; By default, the Tridagon elimination rule and the anti-tridagon detection rule have high priority,
;;; allowing their early use (i.e. they will be available immediately after Subsets[3]).
;;; Give them lower priority here (not recommended):
; (bind ?*use-high-Tridagon-salience* FALSE)

;;; 2.3.1a - (deprecated) Use Tridagon-Forcing-Whips (based on Tridagon-links):
;;; (Remember that Tridagon-Forcing-Whips => Tridagons)
;;; If you use Tridagon-Forcing-Whips,
;;; it is highly recommended to put a strict upper bound also on the lengths of all the forcing-chains;
;;; 15 is a good starting points;
;;; try to increase these lengths progressively.
; (bind ?*Tridagon-Forcing-Whips* TRUE)
; (bind ?*tridagon-forcing-whips-max-length* 15)


;;; 2.3.2) Use eleven's 630-38 impossible patterns
;;; Note that ?*Tridagons* and ?*Anti-Tridagons* must still be independently set to TRUE:
;;; they are given higher salience and they are not included in the following lists.

;;; Restrict all the rules that produce ORk relations between "guardians" to a maximum number of guardians:
; (bind ?*max-guardians* 6) ; default is 8

;;; 2.3.2a) Allow the use of the most frequently found impossible patterns,
;;; by order of decreasing priorities:
;;; - either a small set of them (4 possibilities, in increasing order):
; (bind ?*Imp630-Select1* TRUE)
; (bind ?*Imp630-Select2* TRUE)
; (bind ?*Imp630-Select3* TRUE)
; (bind ?*Imp630-Select4* TRUE)


;;; - or members of each of the above subsets, one by one:
;;; members of ?*Imp630-Select1*
; (bind ?*EL13c290* TRUE)
; (bind ?*EL14c30* TRUE)
; (bind ?*EL14c159* TRUE)
; (bind ?*EL14c13* TRUE)
; (bind ?*EL14c1* TRUE)

;;; members of ?*Imp630-Select2* = ?*Imp630-Select1* + the following:
; (bind ?*EL13c176* TRUE)
; (bind ?*EL10c28* TRUE)
; (bind ?*EL13c30* TRUE)
; (bind ?*EL13c179* TRUE)
; (bind ?*EL13c234* TRUE)
; (bind ?*EL13c171* TRUE)

;;; members of ?*Imp630-Select3* = ?*Imp630-Select2* + the following:
; (bind ?*EL10c6* TRUE)
; (bind ?*EL10c8* TRUE)
; (bind ?*EL13c175* TRUE)
; (bind ?*EL13c259* TRUE)
; (bind ?*EL10c4* TRUE)
; (bind ?*EL14c19* TRUE)
; (bind ?*EL13c187* TRUE)
; (bind ?*EL13c172* TRUE)

;;; members of ?*Imp630-Select4* = ?*Imp630-Select3* + the following:
; (bind ?*EL15c97* TRUE)
; (bind ?*EL13c168* TRUE)
; (bind ?*EL14c93* TRUE)
; (bind ?*EL13c19* TRUE)
; (bind ?*EL14c154* TRUE)


;;; Notice that selecting any of the above patterns will not only load the corresponding rules;
;;; it will also set their priorities higher than those of all the other Imposs630 rules
;;; (only useful when the following sets of patterns are simultaneously activated).


;;; 2.3.2b) Allow all the rules for impossible patterns in two bands or two stacks.
; (bind ?*Imp630-all* TRUE)

;;; Or allow independently all the rules for each sub-family with n cells.
; (bind ?*Imp630-10c* TRUE)
; (bind ?*Imp630-12c* TRUE)
; (bind ?*Imp630-13c* TRUE)
; (bind ?*Imp630-14c* TRUE)
; (bind ?*Imp630-15c* TRUE)
; (bind ?*Imp630-16c* TRUE)



;;; 2.3.3) Use eleven's impossible pattern #38 in 12 cells
;;; Allow the use of eleven impossible pattern #38 in 12 cells
; (bind ?*Eleven#38-12cells* TRUE)

;;; By default, the eleven#38 detection rule has high priority,
;;; alowing its early use (i.e. it will be available after Subsets[3] and Tridagons).
;;; Give it lower priority here:
; (bind ?*use-high-eleven#38-12cells-salience* FALSE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2.4 Combine Sudoku-specific rules producing ORk-relations
;;;     with generic ORk-chains
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; IN ALL THE CASES BELOW (ORk-chains and eleven replacement: 2.4.2, 2.4.3, 2.4.4, 2.4.5, 2.4.6, 2.4.7, 2.5):
;;; - the impossible patterns detection rule must be selected explicitly in section  2.3.1;
;;; - it is highly recommended to restrict the max length of the basic chains rules,
;;; - and that must be done explicitly (it is NOT a consequence of restricting the ORk chain rules);
;;;   see 2.4.1.

;;; BEWARE: It is strongly recommended not to choose any ORk-chains for k > 8.


;;; 2.4.1) General settings:

;;; Choose if you want ORk-forcing-whips to be applied before or after ORk-whips
;;; (and simultaneously ORk-forcing-g-whips before or after ORk-g-whips).
;;; Default is before (i.e. ?*ORk-Forcing-Whips-before-ORk-Whips* = TRUE); change it here:
; (bind ?*ORk-Forcing-Whips-before-ORk-Whips* FALSE)

;;; Allow the splitting of ORk relations via conjugacy-chains (now TRUE by default):
; (bind ?*allow-ORk-splitting* FALSE)

;;; Use any of the rules in this section, possibly with chains defined in the generic part,
;;; with restricted lengths:
; (bind ?*all-chains-max-length* 8)


;;; 2.4.2) Use ORk-Forcing-Whips in combination with the selected ORk-relations:
; (bind ?*OR2-Forcing-Whips* True)
; (bind ?*OR3-Forcing-Whips* True)
; (bind ?*OR4-Forcing-Whips* True)
; (bind ?*OR5-Forcing-Whips* True)
; (bind ?*OR6-Forcing-Whips* True)
; (bind ?*OR7-Forcing-Whips* True)
; (bind ?*OR8-Forcing-Whips* True)

;;; 2.4.3) Use ORk-Contrad-Whips in combination with the selected ORk-relations:
; (bind ?*OR2-Contrad-Whips* True)
; (bind ?*OR3-Contrad-Whips* True)
; (bind ?*OR4-Contrad-Whips* True)
; (bind ?*OR5-Contrad-Whips* True)
; (bind ?*OR6-Contrad-Whips* True)
; (bind ?*OR7-Contrad-Whips* True)
; (bind ?*OR8-Contrad-Whips* True)

;;; 2.4.4) Use ORk-Whips in combination with the selected ORk-relations:
;;; (Remember that ORk-Whips[n] => ORk-Contrad-Whips[n] => Tridagons)
; (bind ?*OR2-Whips* True)
; (bind ?*OR3-Whips* True)
; (bind ?*OR4-Whips* True)
; (bind ?*OR5-Whips* True)
; (bind ?*OR6-Whips* True)
; (bind ?*OR7-Whips* True)
; (bind ?*OR8-Whips* True)


;;; 2.4.5) Use ORk-Forcing-G-Whips in combination with the selected ORk-relations:
; (bind ?*OR2-Forcing-G-Whips* True)
; (bind ?*OR3-Forcing-G-Whips* True)
; (bind ?*OR4-Forcing-G-Whips* True)
; (bind ?*OR5-Forcing-G-Whips* True)
; (bind ?*OR6-Forcing-G-Whips* True)

;;; 2.4.6) Use ORk-Contrad-G-Whips in combination with the selected ORk-relations:
; (bind ?*OR2-Contrad-G-Whips* True)
; (bind ?*OR3-Contrad-G-Whips* True)
; (bind ?*OR4-Contrad-G-Whips* True)
; (bind ?*OR5-Contrad-G-Whips* True)
; (bind ?*OR6-Contrad-G-Whips* True)
; (bind ?*OR7-Contrad-G-Whips* True)
; (bind ?*OR8-Contrad-G-Whips* True)

;;; 2.4.7) Use ORk-G-Whips in combination with the selected ORk-relations:
; (bind ?*OR2-G-Whips* True)
; (bind ?*OR3-G-Whips* True)
; (bind ?*OR4-G-Whips* True)
; (bind ?*OR5-G-Whips* True)
; (bind ?*OR6-G-Whips* True)
; (bind ?*OR7-G-Whips* True)
; (bind ?*OR8-G-Whips* True)


;;; 2.4.8) If you use ORk chains or g-chains,
;;; it is highly recommended to put a strict upper bound on their lengths;
;;; 5 is a good starting point ; try to increase these lengths progressively.

;;; 2.4.8.a) restrict all the ORk-chains and ORk-g-chains at once;
;;; Notice that this global restriction will prevail on any of the individual restrictions further below.
; (bind ?*all-ORk-chains-max-length* 8)

;;; 2.4.8.b) restrict all the ORk-chains and ORk-g-chains of each type;
;;; Notice that these semi-global restrictions will prevail on any of the individual restrictions further below.
; (bind ?*all-ORk-forcing-whips-max-length* 8)
; (bind ?*all-ORk-contrad-whips-max-length* 8)
; (bind ?*all-ORk-whips-max-length* 8)

; (bind ?*all-ORk-forcing-gwhips-max-length* 8)
; (bind ?*all-ORk-contrad-gwhips-max-length* 8)
; (bind ?*all-ORk-gwhips-max-length* 8)


;;; 2.4.8.c) restrict each ORk-chain and ORk-g-chain max lengths individually;
;;; notice that consistency preserving rules will be applied.
; (bind ?*OR2-forcing-whips-max-length* 5)
; (bind ?*OR3-forcing-whips-max-length* 5)
; (bind ?*OR4-forcing-whips-max-length* 5)
; (bind ?*OR5-forcing-whips-max-length* 5)
; (bind ?*OR6-forcing-whips-max-length* 5)
; (bind ?*OR7-forcing-whips-max-length* 5)
; (bind ?*OR8-forcing-whips-max-length* 5)

; (bind ?*OR2-contrad-whips-max-length* 5)
; (bind ?*OR3-contrad-whips-max-length* 5)
; (bind ?*OR4-contrad-whips-max-length* 5)
; (bind ?*OR5-contrad-whips-max-length* 5)
; (bind ?*OR6-contrad-whips-max-length* 5)
; (bind ?*OR7-contrad-whips-max-length* 5)
; (bind ?*OR8-contrad-whips-max-length* 5)

; (bind ?*OR2-whips-max-length* 5)
; (bind ?*OR3-whips-max-length* 5)
; (bind ?*OR4-whips-max-length* 5)
; (bind ?*OR5-whips-max-length* 5)
; (bind ?*OR6-whips-max-length* 5)
; (bind ?*OR7-whips-max-length* 5)
; (bind ?*OR8-whips-max-length* 5)

; (bind ?*OR2-contrad-gwhips-max-length* 5)
; (bind ?*OR3-contrad-gwhips-max-length* 5)
; (bind ?*OR4-contrad-gwhips-max-length* 5)
; (bind ?*OR5-contrad-gwhips-max-length* 5)
; (bind ?*OR6-contrad-gwhips-max-length* 5)
; (bind ?*OR7-contrad-gwhips-max-length* 5)
; (bind ?*OR8-contrad-gwhips-max-length* 5)

; (bind ?*OR2-gwhips-max-length* 5)
; (bind ?*OR3-gwhips-max-length* 5)
; (bind ?*OR4-gwhips-max-length* 5)
; (bind ?*OR5-gwhips-max-length* 5)
; (bind ?*OR6-gwhips-max-length* 5)
; (bind ?*OR7-gwhips-max-length* 5)
; (bind ?*OR8-gwhips-max-length* 5)



;;; 2.5) Eleven's replacement technique:
;;; Allow the automatic use of eleven's replacement method based on tridagons.
;;; (Note that the method is much more general;
;;; here, the anti-tridaon structure is only used to define a starting point).
;;; The method will be applied only when no other rule is applicable.
; (bind ?*Anti-Tridagons* TRUE)
; (bind ?*Eleven-Replacement-in-Tridagons* TRUE)

;;; If you use Eleven-Replacement-in-Tridagons,
;;; it is highly recommended to put a strict upper bound on the lengths of all the chains and ORk-chains;
;;; see above



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) Choose typical T&E config options, for various predefined purposes
;;;
;;; DO NOT FORGET TO DISABLE ALL THE RULES IN THE OTHER SECTIONS
;;; BEFORE ACTIVATING T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Un-comment the proper line(s) below to change the level of details you want to be printed.
;;; Less printing can make T&E faster.
; (bind ?*print-actions* FALSE)
; (bind ?*print-levels* TRUE)
; (bind ?*print-ECP-details* TRUE)
; (bind ?*print-solution* FALSE)
; (bind ?*print-hypothesis* FALSE)
; (bind ?*print-phase* TRUE)
; (bind ?*print-RS-after-Singles* FALSE)
; (bind ?*print-RS-after-whips[1]* FALSE)
; (bind ?*print-final-RS* FALSE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3a) for checking membership in T&E(k) or gT&E(k), k = 1,2,3
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Choose one of the following 3 depths of T&E:
;;; - depth 1 is enough for almost all the 9x9 Sudokus
;;; - depth 2 is enough except for extremely rare 9x9 Sudokus
;;; - but deeper T&E is often required for larger Sudokus or for Sukakus

; (bind ?*TE1* TRUE) ;;; for T&E at level 1
; (bind ?*TE2* TRUE) ;;; for T&E at level 2
; (bind ?*TE3* TRUE) ;;; for T&E at level 3

;;; In addition to the previous choice, you can give priority to bivalue candidates:
; (bind ?*special-TE* TRUE)

;;; For gT&E(k) instead of T&E(k), activate the additional next line:
; (bind ?*Whips[1]* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3b) For computing the SpB classification
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Choose one of the following forms of T&E(Sp or SpFin, 1)
; (bind ?*TE1* TRUE) ;;; for T&E at level 1
;;; For T&E at level 1, with priority for bivalue variables, add the following:
; (bind ?*special-TE* TRUE)

;;; Remember that whips[1] are always activated before Subsets,
;;; even if you don’t activate them explicitly here.
;;; But you can choose to activate only them, to get gT&E (as in 2a)
; (bind ?*Whips[1]* TRUE)

;;; Choose which Subsets[p] and FinnedFish[p] are activated:
; (bind ?*Subsets[2]* TRUE)
; (bind ?*Subsets[3]* TRUE)
; (bind ?*Subsets[4]* TRUE)
; (bind ?*Subsets* TRUE) ; same as ?*Subsets[4]*

; (bind ?*FinnedFish[2]* TRUE)
; (bind ?*FinnedFish[3]* TRUE)
; (bind ?*FinnedFish[4]* TRUE)
; (bind ?*FinnedFish* TRUE) ; same as?*FinnedFish[4]*



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3c) for computing the BpB classification
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Choose one of the following forms of T&E(1)
; (bind ?*TE1* TRUE) ;;; for T&E at level 1
;;; For T&E at level 1, with priority for bivalue variables, add the following:
; (bind ?*special-TE* TRUE)

;;; Choose p (here p = 3):
; (bind ?*Whips* TRUE)
; (bind ?*Braids* TRUE)
; (bind ?*whips-max-length* 3)
; (bind ?*braids-max-length* 3)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3d) for computing the BpBB classification for puzzles in T&E(3)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Added after the discovery that there are (extremely rare) Sudoku puzzles in T&E(3).
;;; Beware that computation times can be very long for puzzles not in T&E(Bp, 2).
;;; Choose one of the following forms of T&E(2):
; (bind ?*TE2* TRUE) ;;; for T&E at level 2
;;; For T&E at level 2, with priority for bivalue variables, add the following:
; (bind ?*special-TE* TRUE)

;;; Choose p (here p = 2) (larger values of p should not be necessary for 9x9 Sudoku
; (bind ?*Whips* TRUE)
; (bind ?*Braids* TRUE)
; (bind ?*whips-max-length* 2)
; (bind ?*braids-max-length* 2)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3e) for looking for backdoors, anti-backdoors or anti-backdoor pairs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Choose one or several of backdoors, anti-backdoors and anti-backdoor pairs:
; (bind ?*Backdoors* TRUE)
; (bind ?*Anti-backdoors* TRUE)
; (bind ?*Anti-backdoor-pairs* TRUE)

;;; for W1-backdoors, W1-anti-backdoors or W1-anti-backdoor pairs, add the following:
; (bind ?*Whips[1]* TRUE)
;;; for S-backdoors, S-anti-backdoors or S-anti-backdoor pairs, add the following:
; (bind ?*Subsets* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 3f) for solving with Forcing-T&E
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For Forcing-T&E OR Forcing{3}-T&E OR Forcing{4}-T&E, activate any of the following
;;; (Several can be activated at the same time.)
; (bind ?*Forcing{2}-TE* TRUE)
; (bind ?*Forcing{3}-TE* TRUE)
; (bind ?*Forcing{4}-TE* TRUE)

;;; for Forcing-T&E(W1) or Forcing{3}-T&E(W1) or Forcing{4}-T&E(W1), add:
; (bind ?*Whips[1]* TRUE)
;;; for Forcing-T&E(S) or Forcing{3}-T&E(S) or Forcing{4}-T&E(S), add:
; (bind ?*Subsets* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4) Choose DFS (depth-first search) options
;;;
;;; DO NOT FORGET TO DISABLE ALL THE RULES IN THE OTHER SECTIONS BEFORE ACTIVATING DFS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; DFS can be used to provide a relatively fast solution

;;; To block all output:
; (bind ?*print-actions* FALSE)
; (bind ?*print-levels* TRUE)
; (bind ?*print-ECP-details* TRUE)
; (bind ?*print-solution* FALSE)
; (bind ?*print-hypothesis* FALSE)
; (bind ?*print-solution* FALSE)
; (bind ?*print-phase* TRUE)
; (bind ?*print-RS-after-Singles* FALSE)
; (bind ?*print-RS-after-whips[1]* FALSE)
; (bind ?*print-final-RS* FALSE)

;;; To activate DFS:
; (bind ?*DFS* TRUE)
;;; To activate priority for bivalue candidates, also activate this line:
; (bind ?*special-DFS* TRUE)

;;; Activate short whips for combining whips[1] or whips[2] with DFS:
;;; this often gives a faster result (but not with larger whips)
; (bind ?*Whips* TRUE)
; (bind ?*whips-max-length* 1)
; (bind ?*whips-max-length* 2)



;;;                                                                                                      ;;;
;;;                                                                                                      ;;;
;;;                                                                                                      ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                                      ;;;
;;;                                         end of allowed changes                                       ;;;
;;;                                                                                                      ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; AUTOMATIC CONFIGURATION AND LOADING (DO NOT CHANGE ANYTHING BELOW THIS LINE)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Because grid size may have been changed in this file,
;;; redefine the associated internal factors; (this has to be done BEFORE loading):
(redefine-internal-factors)


;;; Now, load all. The generic loader also loads the application-specific files:
(if (and (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*) (> ?*segment-size* 4))
    then (printout t
        "BEWARE: g-labels, g-bivalue-chains, g-whips and g-braids are not managed” crlf
        “for segment size larger than 4, i.e. grid size larger than 16" crlf)
    else (batch ?*CSP-Rules-Generic-Loader*)
)

	


