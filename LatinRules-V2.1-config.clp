
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              LATINRULES CONFIGURATION FILE
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





(clear)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INSTALLATION ONLY:
;;; Define environment variables: OS and installation directory
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Default setting is for Unix and MacOS:
(defglobal ?*Directory-symbol* = "/")
;;; for Windows, un-comment this line:
; (bind ?*Directory-symbol* "\") ;                                           <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; Define your general CSP-Rules installation directory (including the ending directory symbol / or \).
;;; This is the directory in which the CSP-Rules-V2.1 version is installed, not the CSP-Rules-V2.1 directory.
;;; This way, you will be able to launch CSP-Rules-V2.1 from anywhere.
;;; You need to write something as follows.
;;; For Unix (including MacOS):
 (defglobal ?*CSP-Rules* = "/Users/berthier/Documents/Projets/CSP-Rules/")   ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;;; For Windows:
; (defglobal ?*CSP-Rules* = "c:\Users\berthier\Documents\Projets\CSP-Rules\") ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; compatibility with JESS is no longer guaranteed and CLIPS is the default inference engine
;;; the version of CLIPS used may be defined here (used only for displaying it in the banner)
(defglobal ?*Clips-version* = "6.32-r801");                                  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; Description of the computer used for the resolution
(defglobal ?*Computer-description* =
    "MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7"
)                                                                            <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Define the application
;;; Define useful directories and load all the globals
;;; (they must be available before choosing the configuration of rules)
;;;
;;; do NOT change any of the following
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; an ?*Application* must be defined as the name of the application (here, SudoRules), not as the name of the puzzle (Sudoku)
;;; this name must coincide with the leading part of the name of the directory for the application inside the CSP-Rules-V2.1 directory
;;; the version number of the ?*Application* must also be defined
;;; this allows to have several versions of the same application based on the same version of CSP-Rules
;;; for historical reasons, SudoRules version number inside CSP-Rules-V2.1 is not 2.1 but 20.1
;;; (there were many versions of SudoRules before the development of a generic CSP-Rules core)
(defglobal ?*Application* = "LatinRules")
(defglobal ?*Application-VersionNumber* = 2.1)

(defglobal ?*CSP-Rules-current-version* = (str-cat ?*CSP-Rules* "CSP-Rules-V2.1" ?*Directory-symbol*))
(defglobal ?*CSP-Rules-Generic-Dir* = (str-cat ?*CSP-Rules-current-version* "CSP-Rules-Generic" ?*Directory-symbol*))
(defglobal ?*CSP-Rules-Generic-Loader* = (str-cat ?*CSP-Rules-Generic-Dir* "CSP-Rules-Generic-Loader.clp"))

(defglobal ?*Application-Dir* = (str-cat ?*CSP-Rules-current-version* ?*Application* "-V" ?*Application-VersionNumber* ?*Directory-symbol*))
(defglobal ?*Application-Loader* = (str-cat ?*Application-Dir* ?*Application* "-Loader.clp"))

;;; load definitions for the global variables necessary for the upcoming choices
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "globals.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "globals.clp"))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General application-specific choices
;;; Definition of grid size and related parameters
;;; Choice of variants
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; By default, gird size is 9, as in Sudoku.
;;; If needed, change grid size here (grid-size can be any integer)

 (bind ?*grid-size* 13) ;                                               <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

;;; By default, Latin Squares is the classical version. But Pandiagonal constraints can be added.
;;; Notice that, in this case, ?*grid-size* may not be divisible by 2 or 3.
 (bind ?*Pandiagonal* TRUE) ;                                            <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                                      ;;;
;;;                                      DEFINE YOUR CONFIGURATION HERE:                                 ;;;
;;;                                         Choose general settings                                      ;;;
;;;                     Define your resolution theory (i.e. your set of resolution rules)                ;;;
;;;                         Simply delete the leading semicolon of the proper line(s)                    ;;;
;;;                In order to avoid errors, delete semi-colons in only one section at a time            ;;;
;;;                                                                                                      ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                                      ;;;
;;;                                                                                                      ;;;
;;;                                                                                                      ;;;

;;; Remember that there are no g-whips or g-braids in Latin Squares
;;; But there are in the Pandiagonal variant. However, g-labels are not (yet?) coded 


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
;;; This default behaviour is now changed for Whips[1], bivalue-chains (typed or not), t-Whips (typed or not) and Subsets.
;;; But CSP-Rules allows to revert to the previous behaviour,
;;; independently for Whips[1], for bivalue-chains and t-Whips of any length and for Subsets.
;;; Un-comment the relevant line(s) below if you want these rules to be "interrupted" as the other chain rules:
; (bind ?*blocked-Whips[1]* FALSE)
; (bind ?*blocked-bivalue-chains* FALSE)
; (bind ?*blocked-t-Whips* FALSE)
; (bind ?*blocked-Subsets* FALSE)


;;; Choose what's printed as the output.
;;; The default combination is what has been used in PBCS.
;;; Changes below will print more or less details.
; (bind ?*print-init-details* TRUE)
; (bind ?*print-ECP-details* TRUE)
; (bind ?*print-actions* FALSE)
 (bind ?*print-levels* TRUE)
; (bind ?*print-solution* FALSE)

;;; The resolution state after BRT is printed by default.
;;; Un-comment this if you do not want to print it.
; (bind ?*print-RS-after-Singles* FALSE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) Choose ordinary resolution rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; My standard config and its usual variants
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Because there are so many Subsets in the Pandiagonal variant,
;;; it may be useful to allow only Subsets[3] in this case.
; (bind ?*Subsets[2]* TRUE)
 (bind ?*Subsets[3]* TRUE)
 (bind ?*Subsets* TRUE)
 (bind ?*Bivalue-Chains* TRUE)
 (bind ?*Whips* TRUE)

;;; Some additional rules I use frequently:
 (bind ?*z-Chains* TRUE)
 (bind ?*t-Whips* TRUE)


;;; Some additional rules I use occasionally:
; (bind ?*Braids* TRUE)
; (bind ?*Oddagons* TRUE)


;;; Some optional intermediary Typed Chains, allowing more varied resolution paths:
;;; (remember that whips[1] cannot be type-restricted)
; (bind ?*Typed-Bivalue-Chains* TRUE)
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
; (bind ?*Forcing-Whips* TRUE)
; (bind ?*Forcing-Braids* TRUE)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Change the default maximal lengths of the chain patterns
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Don't change these lengths unless you have some reason.

;;; The maximum length of all the generic chains can be lowered at once:
; (defglobal ?*all-chains-max-length* = 36)

;;; Maximum lengths can also be lowered individually:
; (bind ?*bivalue-chains-max-length* 20)
; (bind ?*t-whips-max-length* 36)
; (bind ?*whips-max-length* 36)
; (bind ?*g2whips-max-length* 36)
; (bind ?*braids-max-length* 36)

; (bind ?*typed-bivalue-chains-max-length* 20)
; (bind ?*typed-t-whips-max-length* 36)
; (bind ?*typed-whips-max-length* 36)

; (bind ?*forcing-whips-max-length* 36)
; (bind ?*forcing-braids-max-length* 36)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) Choose typical T&E config options, for various predefined purposes
;;;
;;; DO NOT FORGET TO DISABLE ALL THE RULES IN THE OTHER SECTIONS
;;; BEFORE ACTIVATING T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Un-comment the proper line below to change the level of details you want to be printed:
; (bind ?*print-actions* FALSE)
; (bind ?*print-levels* TRUE)
; (bind ?*print-ECP-details* TRUE)
; (bind ?*print-solution* FALSE)
; (bind ?*print-hypothesis* FALSE)
; (bind ?*print-phase* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2a) for checking membership in T&E(k), k = 1,2,3
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Choose one of the following 3 depths of T&E:
;;; - depth 2 is enough for all the 9x9 Sudokus
;;; - but deeper T&E is often required for larger Sudokus or for Sukakus

; (bind ?*TE1* TRUE) ;;; for T&E at level 1
; (bind ?*TE2* TRUE) ;;; for T&E at level 2
; (bind ?*TE3* TRUE) ;;; for T&E at level 3

;;; In addition to the previous choice, you can give priority to bivalue candidates:
; (bind ?*special-TE* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2b) For computing the SpB classification
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Choose one of the following forms of T&E(1, Sp or SpFin)
; (bind ?*TE1* TRUE) ;;; for T&E at level 1
;;; For T&E at level 1, with priority for bivalue variables, add the following:
; (bind ?*special-TE* TRUE)

;;; Choose which Subsets[p] and FinnedFish[p] are activated:
; (bind ?*Subsets[2]* TRUE)
; (bind ?*Subsets[3]* TRUE)
; (bind ?*Subsets[4]* TRUE)
; (bind ?*Subsets* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2c) for computing the BpB classification
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
;;; 2d) for looking for backdoors, anti-backdoors or anti-backdoor pairs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Choose one or several of backdoors, anti-backdoors and anti-backdoor pairs:
; (bind ?*Backdoors* TRUE)
; (bind ?*Anti-backdoors* TRUE)
; (bind ?*Anti-backdoor-pairs* TRUE)

;;; for S-backdoors, S-anti-backdoors or S-anti-backdoor pairs, add the following:
; (bind ?*Subsets* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2e) for solving with Forcing-T&E
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For Forcing T&E OR Forcing{3} T&E, activate only one of the following
;;; The possibility of activating both together is not yet available
; (bind ?*Forcing-TE* TRUE)
; (bind ?*Forcing{3}-TE* TRUE)

;;; For Forcing-T&E(S) or Forcing{3}-T&E(S), add:
; (bind ?*Subsets* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) Choose DFS (depth-first search) options
;;;
;;; DO NOT FORGET TO DISABLE ALL THE RULES IN THE OTHER SECTIONS BEFORE ACTIVATING DFS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; DFS can be used to provide a relatively fast solution

; (bind ?*print-actions* FALSE)
; (bind ?*print-levels* TRUE)
; (bind ?*print-ECP-details* TRUE)
; (bind ?*print-solution* FALSE)
; (bind ?*print-hypothesis* FALSE)
; (bind ?*print-solution* FALSE)
; (bind ?*print-phase* TRUE)

;;; To activate DFS:
; (bind ?*DFS* TRUE)
;;; To activate priority for bivalue cells, activate this line, in addition to the above line:
; (bind ?*special-DFS* TRUE)

;;; Activate short whips for combining whips[2] with DFS:
;;; this often gives a faster result (but not with larger whips)
; (bind ?*Whips* TRUE)
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
;;; because grid size may have been changed in this file, redefine the associated internal factors
(redefine-internal-factors) ; this has to be done BEFORE loading


;;; now, load all
;;; Notice that the generic loader also loads the application-specific files
(if (and ?*Pandiagonal* (or (evenp ?*grid-size*) (eq (mod ?*grid-size* 3) 0)))
    then (printout t "Pandiagonal Latin Squares can only be defined on grids of size not divisible by 2 or 3" crlf crlf)
    else (redefine-all-chains-max-length)
         (batch ?*CSP-Rules-Generic-Loader*)
)
