# CSP-Rules-V2.1 updates
Only the main updates (in reverse time order) are listed below. <br>
Cosmetic changes (such as changes in the way things are printed) are not mentioned. <br>
All the changes are indeed additions to the original functionalities; in particular:<br>
-- no basic structure or resolution rule has been changed;<br>
-- no bug has been found since first publication. <br>

#### 2022 Nov 08 (Generic):  
* New, extended and largely restructured version of the user manual: "Augmented User Manual". 

#### 2022 Nov 08 (SudoRules):  
* addition of the TRIDAGON-ORk-W and TRIDAGON-ORk-CHAINS sets of preferences;
* addition of control variables related to Tridagons in the configuration file, in particular to choose the priority of Tridagon elimination and anti-tridagon detection rules. 

#### 2022 Nov 08 (Generic):  
* addition of ORk-whips, k≤6. 

#### 2022 Nov 05:  
* addition of this UPDATES.md file. 

#### 2022 Sept 11 (SudoRules): 
* addition of the TRIDAGON-ORk-FW and TRIDAGON-ORk-CW sets of preferences. 

#### 2022 Sept 07 (Generic): 
* addition of ORk-Contrad-Whips, k=2,...6;
* addition of OR6-Forcing-Whips (ORk-Forcing-Whips, k=1,...5, were already available). 

#### 2022 Aug 28 (SudoRules): 
* functions "solve-k-digit-pattern-string", "solve-n-grids-after-first-p-from-k-digit-pattern-string-file" and "solve-n-grids-after-first-p-from-k-digit-pattern-string-file-excluding" now also work in combination with DFS.

#### 2022 Aug 28 (Generic): 
* focusing now also works with DFS. 

#### 2022 Aug 19 (SudoRules): 
* addition of Forcing2-Whips (equivalent to Forcing-Whips) and Forcing3-Whips, based on the general ORk-Forcing-Whips and with (3D) bivalue or trivalue cells as starting points;
* addition of rules for automatically applying eleven's replacement method in the context of an anti-tridagon pattern. 

#### 2022 Aug 07 (Generic): 
* addition of ORk-forcing-whips (k≤5).

#### 2022 May 07 (SudoRules): 
* addition of functions related to k-digit patterns: "solve-k-digit-pattern-string", "solve-n-grids-after-first-p-from-k-digit-pattern-string-file" and "solve-n-grids-after-first-p-from-k-digit-pattern-string-file-excluding".<br>

Given a k-digit pattern (in string format) or a file containing a sequence of such patterns, these functions allow to solve them (e.g. to prove that they are contradictory). <br>
When T&E is involved, they restrict the candidates that may be tried at each level to those in the pattern, thus taking advantage of the new generic feature of T&E. By avoiding to try unproductive candidates, this makes these procedures thousands to millions of times faster than standard T&E (depending on T&E-depth).

#### 2022 May 07 (Generic): 
* all the generic T&E procedures (at depths 1, 2 and 3) are now sensitive to restrictions on the candidates they may try (at each level). They are totally unchanged in the default case. In and of itself, this only allows new possibilities, but doesn't offer them readily.

#### 2022 Apr 25 (SudoRules): 
* addition of two separate sets of preferences: TRIDAGONS and TRIDAGON-FW;
* addition of functions for solving with preferences whole files of puzzles;
* addition of functions for applying manually the eleven replacement technique;
* in the SudoRules configuration file, addition of global variables related to the above additions;
* addition of rules for automatically applying eleven replacement techniques in cases "not too far" from to the trivalue oddagon impossible pattern.

#### 2022 Apr 16 (Examples): 
* replacement of the CSP-Rules EXAMPLES folder by an independent "CSP-Rules-Examples" repository: https://github.com/denis-berthier/CSP-Rules-Examples. 

#### 2022 Apr 07 (SudoRules): 
* addition of the tridagon-forcing-whips and of the TRIDAGONS set of preferences. 

#### 2022 Mar 14 (SudoRules): 
* addition of the Tridagon elimination rule. 

#### 2022 Feb 09 (Publications): 
* addition of my book "Pattern-Based Constraint Satisfaction and Logic Puzzles (Third Edition)" in the Publications folder. 

#### 2021 Nov 21 (Publications/Docs): 
* addition of the "Basic User Manual for CSP-Rules-V2.1 (Second Edition)". 

#### 2021 Nov 21 (Generic): 
* introduction of sets of preferences and of function "solve-with-preferences" (also "solve-w-prefs"). Original sets of preferences are:<br>
-- generic: BIVALUE-CHAINS, REVERSIBLE-CHAINS, REVERSIBLE-PATTERNS<br>
-- Sudoku-specific: S4Fin. 

#### 2021 Oct 27 (Generic): 
* addition of "blocked" versions for z-chains (typed or not) and oddagons. 

#### 2021 Aug 17 (SudoRules): 
* update of the fewer-steps solving function, allowing to find shorter resolution paths; it can now take into account all the generic chain rules (except t-whips) and all the Subsets and Finned Fish. 

#### 2021 Aug 06 (all applications with Subsets and/or Finned Fish): 
* "blocked" and "non-blocked" versions of Subsets are merged,
* Subset rules become compatible with focusing (i.e. with function "try-to-eliminate").
(This is a major boost for focused eliminations and for reducing the number of steps). 

#### 2021 Jul 29 (SudoRules): 
* add functions for reducing the number of steps in a resolution path.

#### 2021 June 25 (LatinRules): 
* add the Pandiagonal variant.

#### 2021 June 01 (SudoRules): 
* add functions "find-1-steppers" and "find-2-steppers" for the fully automated search for 1- or 2- step solutions.

#### 2021 Apr 06 (SudoRules): 
* add all the rules and functions necessary for looking for 1- or 2- step solutions.

#### 2021 Apr 06 (SudoRules/Goodies): 
* add functions: "pretty-print-sudoku-string" (also "pretty-print"), "pretty-print-sukaku-list" and "random-shuffle-9x9-puzzle" .


#### 2021 Mar 11 (SudoRules): 
* add functions for printing the rc, rn, cn and bn views first introduced in [HLS 2007]: <br>
-- "print-current-resolution-state" (also "print-RS"),<br>
-- "print-current-resolution-state-rn-view" (also "print-RS-rn"), <br>
-- "print-current-resolution-state-cn-view" (also "print-RS-cn"), <br>
-- "print-current-resolution-state-bn-view" (also "print-RS-bn"),<br>
-- "print-current-resolution-state-all-views"  (also "print-RS-all"). 

#### 2021 Mar 11 (SudoRules): 
* add function "find-sudoku-anti-backdoor-pairs" and first application to find a 2-step solution in Sudoku. 

#### 2021 Mar 11 (Generic): 
* add function "find-anti-backdoor-pairs". 

#### 2021 Feb 11 (SudoRules): 
* add function "find-sudoku-anti-backdoors" and first application of focused eliminations to find a 1-step solution in Sudoku. 

#### 2021 Feb 11 (Generic): 
* add functions "find-backdoors" and "find-anti-backdoors". 

#### 2021 Feb 09 (Generic):  
* focused eliminations now also work for z-chains (typed or not). 

#### 2021 Feb 08 (Generic): 
* focused eliminations now also work for bivalue-chains (typed or not). 

#### 2020 Dec 24 (SudoRules): 
* addition of the full set of functions:<br>
-- "init-sudoku-string" (also "init"), <br>
-- "init-sudoku-list", <br>
-- "init-sudoku-grid", <br>
-- "solve-sudoku-string" (also "solve"), <br>
-- "solve-sudoku-list", <br>
-- "solve-sudoku-grid" <br>
-- and similar functions for sukakus. 

#### 2020 Dec 18 (SudoRules): 
* the resolution state is now printed at the end of the resolution path when a full solution is not found; combined with "solve-sukaku-list" or "solve-sukaku-grid", this allows resolution in stages. 

#### 2020 Dec 12 (Generic): 
* add function "try-to-eliminate-candidates" (focused eliminations); works for: <br>
-- oddagons, whips (untyped), braids (untyped), g-whips (untyped) and g-braids (untyped),  <br>
-- forcing-whips, forcing-braids, forcing-g-whips and forcing-g-braids (where the focus is not applied to eliminated or asserted candidates but to the bivalue starting points). 

#### 2020 Sept 03 (SudoRules): 
* add functions "solve-sukaku-list" and "solve-sukaku-grid". 

#### 2020 Aug 26 (SlitherRules): 
* add pre-computed backgrounds. 

#### 2020 Aug 24 (SlitherRules): 
* add isolated chains and extended-loops. 

#### 2020 Aug 19: 
* first public release of CSP-Rules-V2.1, including all the currently existing applications and the first edition of the "Basic User Manual for CSP-Rules-V2.1". <br>
Notice that, apart from minor details, this core of CSP-Rules has remained unchanged in all the updates (indeed additions of functionalities) described in this file. This is why the version number (V2.1) has not changed.<br><br><br>

