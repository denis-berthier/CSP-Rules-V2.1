# CSP-Rules-V2.1 updates
#### Notes: 
1) Only the main updates to the  original publication (in reverse time order) are listed below. <br>
2) Cosmetic changes (such as minor changes in the way things are printed) are not mentioned. <br>
3) Trivial additions to the globals, saliences or print functions (which may be necessary when new resolution rules are added) are not mentioned. <br>
4) All the changes from the  first publication are indeed additions to the original functionalities; in particular:<br>
-- no basic data structure has been changed ;<br>
-- no fundamental generic resolution rule (i.e. bivalue-chains, z-chains, t-whips, whips, g-bivalue-chains, g-whips, braids, g-braids), as defined in [CRT] or [PBCS], has been changed (though the files that contain them may have been split into partial-chain extension rules and chain elimination rules);<br>
-- no application-specific resolution rule, as defined in [CRT] or [PBCS]  - such as Subsets in Sudoku or any application that has them, ascending-chains in Futoshiki, loops in Slitherlink... - has been changed (though their "blocked" and "unblocked" versions may may have been fused);<br>
-- no bug has been found since the first publication (note that this software had been largely tested (on millions of instances) before the first publication). <br>
5) Because they reflect changes to the software (almost) as soon as such changes are published, updates of the User Manual are not mentioned _per se_, except in case of a major update. <br><br>



#### 2024 Oct 26 (SudoRules):
* Add (extended) resolution rules seeing templates as patterns, usable as and combinable with any other resolution rules; templates have the lowest priorities.

#### 2024 Jul 01 (SudoRules):
* Add functions for recording some types of calculations in appropriate files, functions for filtering the contents of resulting files according to various criteria;  clean and expand the set of statistical functions.

#### 2024 Jan 26 (SudoRules):
* Add functions for recording the expansions of puzzles (e.g. the BRT-expansions)

#### 2024 Jan 05 (SudoRules):
* Add statistical functions and functions for comparing files (e.g. of ratings).

#### 2023 December 4 (SudoRules):
* add functions for extracting puzzles that have some fixed rating or have their rating above some fixed rating. This may be useful e.g. for extracting T&E(2) or T&E(3) puzzles from a mixed list of hard puzzles, or for extracting T&E(2) puzzles with a high value of their BxB rating.

#### 2023 November 11 (Generic):
* Extend ORk splitting rules upto length 16 (instead of 12).
* Allow focusing in ORk-whips.

#### 2023 November 11 (SudoRules):
* Add pretty-print RS after each phase.
* Add ORk-degenerate-cyclic-anti-tridagon.
* Add function solve-knowing-solution-sukaku-grid.

#### 2023 August 25 (Generic):
* Update of the generic T&E(n) procedures, addition of extra conditions in whips[1] and partial-whips[1] so as to allow compatibility with function solve-knowing-solution.
Computation times are decreased in various porportions for BpB and T&E(2).

#### 2023 August 25 (SudoRules):
* Addition of corresponding functions for solving files of puzzles knowing solutions.

#### 2023 July 14 (SudoRules):
* Update of the four subsets of selected impossible patterns, taking into account the latest classification of all the known T&E(3) puzzles.

#### 2023 July 10 (Generic):
* ORk-whips[1] now have a blocked version. It is selected by the same global variable ?\*blocked-Whips[1]\* as ordinary whips[1].<br>

#### 2023 Apr 25 (SudoRules):
* Add the IMP630-ORk-W module for the impossible patterns in two bands or two stacks. Note that impossible patterns and ORk-whips effectively loaded in this module are those defined in the configuration file. This module also contains Tridagons and the reversible patterns: Subsets, bivalue-chains and z-chains. It allows to try a solution with mainly impossible patterns before allowing more advanced "regular" chains (t-whips, whips, g-whips, braids...).<br>
* Add ORk-persistency rules to all the ORk-modules.<br>

#### 2023 Apr 1 (SudoRules):
* Fine tune the four pre-selections of impossible patterns, based on their “usefulness” (see details in release 5 of the Augmented User Manual), a major step in finding the really useful patterns.<br>

#### 2023 Mar 16 (Docs):
* Update the Augmented User Manual with a full new chapter about the impossible patterns and the general question of how to deal with large numbers of patterns.<br>

#### 2023 Mar 16 (SudoRules):
* Add the 2488 automatically generated rules that can detect all the patterns in eleven's list of 630-38 impossible patterns in two bands (or two stacks). The output of these rules (ORk relations) can be used by all the generic ORk-chain rules.<br>
* Complete the SudoRules configuration file with many options for activating all or part of the impossible patterns.<br>

#### 2023 Mar 10 (Generic):
* Allow ORk chains and g-chains to track which ORk-relations they have effectively used (introduce global variables ORk-relations-used and all-ORk-relations-used-in-list for respectively a puzzle and a file of puzzles). This was not useful when there was only one ORk relation (tridagon) but it will allow to make statistics about which ORk relations are the most frequently used.<br>

#### 2023 Mar 10 (SudoRules):
* Add functions to normalise patterns, to do some elementary analysis of them and to pretty-print them with additional information (free cells...).<br>
* Note that the Sudoku-specific part of the "candidate" template in SudoRules has been extended with two slots (band and stack) for easier writing of the rules detecting the 630 impossible patterns. This has strictly no impact on anything existing before this change (especially on generic chain rules, which never use any application-specific slot, or on rules such as Subsets that do use Sudoku-specific slots, but continue not to use the two new ones).<br>

#### 2023 Feb 04 (SudoRules):
* Add functions for the analysis of k and kl digit patterns in SudoRules/Advanced; they allow in particular to find which 3-digit patterns are in T&E(2) - both restricted form (already published before) and full form (that's the new part).
*In functions that solve lists of puzzles, add global variables to check in how many puzzles any specified ORk relation has effectively been used and to estimate the resolution power of each impossible pattern.<br>

#### 2023 Jan 23 (Generic):
* Add the ORk-splitting rules, for k ≤ 12, allowing to reduce the number of guardians in an ORk-relation and, possibly, to solve with shorter ORk-chains.<br>

#### 2022 Dec 29 (Generic):
* Add the ORk-contrad-g-whips, for k = 6
* Add the full ORk-g-Whips for k ≤ 6.
* Add the ORk-forcing-g-whips, for k ≤ 6. <br>
This completes the set of ORk chain and g-chain rules, now all defined for 2 ≤ k ≤ 6.

#### 2022 Dec 19 (Generic):
* Add the ORk-contrad-g-whips, for k ≤ 5 (and corresponding global variables allowing to use them in the SudoRules config file).
* Split the G-Whip files into G-Whip and Partial-G-Whip files (for easier use with ORk-Contrad-Whips). This implies no change for the ordinary G-Whips.

#### 2022 Dec 07 (Generic):  
* All the ORk-relations of size ≤ 20 are now ultra-persistent. (Previously, size for applying persistency was limited to 12, but there are rare anti-tridagons with 20 guardians).<br>
* Add Forcing2-T&E and Forcing3-T&E. They have been mentioned in the User Manual for a long time, but I had forgotten to post the code.

#### 2022 Nov 28 (Generic):  
* Faster ORk-Whips for k>3 (irrelevant for k=2 or 3). They are about 30% to 50% faster (depending on many contextual factors) and they also use less memory.<br>
For technical reasons, these improvements work only when ORk-forcing-whips are not active. Which version is used is automatic: the new, faster one if ORk-forcing-whips are not active, the original one otherwise.

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
* add pre-computed backgrounds (making reoslution much faster for pre-computed square grids). 

#### 2020 Aug 24 (SlitherRules): 
* add isolated chains and extended-loops. 

#### 2020 Aug 19: 
* first public release of CSP-Rules-V2.1, including all the currently existing applications and the first edition of the "Basic User Manual for CSP-Rules-V2.1". <br>
Notice that, apart from minor details, this core of CSP-Rules has remained unchanged in all the updates (indeed additions of functionalities) described in this file. This is why the version number (V2.1) has not changed.<br><br><br>


