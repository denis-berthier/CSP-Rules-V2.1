

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TRIAL AND ERROR CONTRADS LOAD
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





(defglobal ?*SudoRulesVersionNumber* = 15b)
(defglobal ?*SudoRulesSubVersionNumber* = 1.12) ;;; <<<<<<<<<<<<<<<<<< 1.12 is the default subversion
(defglobal ?*rating-type* = TE1)


(defglobal ?*SudoRules* = "/Users/berthier/Documents/INT-Projets/SudoRules/")
(defglobal ?*SudoRules15b* = (str-cat ?*SudoRules* "SudoRules15b/"))
(defglobal ?*RulesDir* = (str-cat ?*SudoRules15b* "Rules/"))
(defglobal ?*TEDir* = (str-cat ?*SudoRules15b* "T&E/"))
(defglobal ?*PuzzlesDir* = (str-cat ?*SudoRules15b* "Puzzles/"))
(defglobal ?*ResultsDir* = (str-cat ?*SudoRules15b* "Results/"))
(defglobal ?*inference-engine* = CLIPS)
; (defglobal ?*inference-engine* = JESS)
(defglobal ?*grids-file* = (str-cat ?*ResultsDir* "xxx.txt"))


(defglobal ?*print-initial-state* = TRUE)
(defglobal ?*print-actions* = TRUE)
(defglobal ?*print-levels* = TRUE) ; <<<<<<<<<<<<<<<<<< default for hard puzzles
(defglobal ?*print-contradictions* = TRUE) ; for biwhip or bibraid contradictions
(defglobal ?*print-ECP-details* = FALSE)
(defglobal ?*print-init-details* = FALSE)

(defglobal ?*print-hypothesis* = TRUE)
(defglobal ?*print-solution* = TRUE)
(defglobal ?*save-solutions* = FALSE)



;;; All global variables will be kept by a reset.
;;; This is important for keeping track of platform initialization from one game 
;;; to the next when Sudoku is embedded in the multi agents JADE environment.
;;; This is also important for keeping track of lists of solved puzzles.

(set-reset-globals FALSE) 

;;; CLIPS/JESS default search strategy is depth-first. We do not change this.
(set-strategy depth)

(if (eq ?*inference-engine* JESS)
	then (batch (str-cat ?*RulesDir* "GENERAL/JESS-utils.clp"))
)



(defglobal ?*segment-size* = 3) ; default size is 3 for standard Sudoku
(defglobal ?*internal-factor-0* = (if (eq ?*segment-size* 3) 
										then 10 
										else (if (< ?*segment-size* 10) 
												then 100
												else 1000
											)
									)
)

(defglobal ?*internal-factor* = ?*internal-factor-0*)
(defglobal ?*internal-factor-2* = (* ?*internal-factor* ?*internal-factor*))
(defglobal ?*internal-factor-3* = (* ?*internal-factor-2* ?*internal-factor*))



(load (str-cat ?*RulesDir* "GENERAL/parameters.clp"))
(load (str-cat ?*RulesDir* "GENERAL/globals.clp"))
(load (str-cat ?*RulesDir* "GENERAL/grid.clp"))
(load (str-cat ?*TEDir* "T&E-templates.clp"))
(deftemplate context
	(slot name (default nil))
	(slot depth (default 0))
	(slot parent (default nil))
	(slot generating-cand1 (default nil))
	(slot generating-cand2 (default nil))
)


(if (eq ?*inference-engine* CLIPS)
	then (load (str-cat ?*RulesDir* "GENERAL/CLIPS-utils.clp"))
)

(load (str-cat ?*RulesDir* "GENERAL/solve.clp"))
(load (str-cat ?*TEDir* "T&E-add2solve.clp")) ;;;;;;;;;;;;;;;;;;
;(load (str-cat ?*RulesDir* "GENERAL/nrc-output.clp"))

(load (str-cat ?*TEDir* "T&E-end.clp"))
(load (str-cat ?*TEDir* "T&E-simple-constraints.clp")) ;;;;;;;;;;;;;



(load (str-cat ?*TEDir* "T&E-NS.clp"))
(load (str-cat ?*TEDir* "T&E-HS.clp"))


(load (str-cat ?*TEDir* "T&E-contrads.clp"))



(solve ".................................................................................")
(solve "1................................................................................")




;;; easy tests from gsf-cb
...456..9..6.......891..45.2.........7..9.....35......397...5.......4.72.....5361 126732 1_0
..34......5...912.7...2.....1.5.7..86...9...7.......34..2.............9.9...61.75 417133 5
.23..6.8......91...8.1..4..2.......7...8.....678.1......7.3.2...3...4.7....5.1.6. 313075 3
..3.........78.1....9.234..2.4..5..83..6...14.6.....7.5....7..66...4...........37 437122 1_0
12...67.9......12..............9....56....9..9.867..1.3..5....1.4..3...2.75..2.4. 452513 2
..34.........8..2.7..12.....145..6.836......1..5......5......76..82....4....7.3.. 485162 1_0
..345..8.4.6.........1...65.1.5.8.7....3...919...........8.....6....7.3...1.3..57 110898 4
.......89..678..2...9...4..2...389..3.52....6.6.....4....8.........1.....32.45..1 293252 2
.2.4..7......891.........65..48.....3..9....1.95..1.7..7.3...1263.........2.1...8 665599 5
.23..67..4...8..2.....2..65......3..3..9....1...3.2874.47.9....86.5............1. 8245   1_0
1...5...9..67...2..8.1......1.....7.5..6..29.9.7..1......9..64.6.2......8..5.7... 106705 3
...4....94.6.8.12.....2.4..2.49..6...98.6....6........5.......7....95..293...1.4. 256733 4




only 79 values but no candidate remaining

(solve "...456..9..6.......891..45.2.........7..9.....35......397...5.......4.72.....5361") ; 1_0
(solve "..3.........78.1....9.234..2.4..5..83..6...14.6.....7.5....7..66...4...........37") ; 1_0
(solve "..34.........8..2.7..12.....145..6.836......1..5......5......76..82....4....7.3..") ; 1_0
(solve "..34......5...912.7...2.....1.5.7..86...9...7.......34..2.............9.9...61.75") ; 5
(solve ".23..6.8......91...8.1..4..2.......7...8.....678.1......7.3.2...3...4.7....5.1.6.") ; 3
(solve "12...67.9......12..............9....56....9..9.867..1.3..5....1.4..3...2.75..2.4.") ; 2
(solve ".2.4..7......891.........65..48.....3..9....1.95..1.7..7.3...1263.........2.1...8") ; 5


