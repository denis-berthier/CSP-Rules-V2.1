
GENERAL WARNINGS AND REMINDERS:
- apart from the Subset and the CLIPS examples, the examples in this folder are much harder in the mean than random puzzles - which are much harder in the mean than puzzles proposed in newspapers or magazines.
- more precisely, more than 99.9% of the Sudoku puzzles (taken randomly) are solvable by whips of length <= 7
- more than 99.8% of the Sudoku puzzles (taken randomly) are solvable by typed-whips

As a result, the examples in this folder will generally take more time and memory for finding a solution.
More typical results can be obtained with the recently added examples in folder cbg-000.



<> The Subset-Examples come from various sources, most of which I have forgotten. Those marked SE come from SudokuExplainer.
I've put a large variety of Subset examples, so as to cover almost all the possible classical cases.
To re-run these examples, activate only the following rules:
;;; Sudoku-specific:
 (bind ?*Subsets* TRUE)
;;; and optionally
 (bind ?*FinnedFish* TRUE)


<> The Mith puzzles are exceptional in the sense that they have lots of Subsets and Finned-Fish



<>The HLS2-Examples contain a few examples from my book [HLS2], illustrating how the 2D chain-rules defined in [HLS2] can be reproduced in the current version of SudoRules, using typed-chains.




<> The Oddagons folder gives six examples of Oddagons, only one of which is useful to lower the W rating, some of which merely disappear when whips are active. 
Some exercises are left to the reader in the latter case: find if there is a combination of rules (not including whips) enough to solve the puzzle without destroying all the oddagons.
"Usefulness" of an Oddagon is not related to its size: the only "useful" one has length 5.



<> Magictour-top1465 is  one of the most famous collections of puzzles that were, in the early 2000s, among the hardest known ones. As such, they are obviously exceptional and unlikely to be found in any newspaper or magasine. My selection here is a few of the hardest ones in this collection. Don' try to re-run them if you don't have at least 16GB of RAM or, for some of them, if you're in a hurry.
Obviously, solutions with g-whips and braids will take more time and memory than solutions obtainable with whips.




<> The CLIPS inference engine is delivered with a toy Sudoku solver and a few examples.
The CLIPS-puzzles folder contains a subset of the 9x9 Sudoku examples provided with CLIPS. Each example comes with both the CLIPS solution and the SudoRules solution.
As puzzles, they are very easy and of no particular interest for Sudoku.
As the CLIPS Sudoku application doesn't output any resolution path, it's not very interesting as a Sudoku solver either. (Notice that this was not the goal: these rules were originally developed only as a test bench for JRules.)

The comparison of computation times between CLIPS and SudoRules is largely in favour of SudoRules (discarding the initialisation times that are not counted in CLIPS) when the puzzles are not too easy or when grid size is larger than 9x9 (i.e. larger than 3x3 in the CLIPS notation).
Memory requirements seem to be similar.

Unfortunately, the resolution rules for Sudoku encoded in CLIPS are too elementary to be able to solve complex puzzles.
As a more serious comparison requires to compare harder puzzles than those provided with CLIPS, I  have added a function CLIPS-solve-string allowing to do this without having to assert manually all the initial facts as in the original CLIPS solver.  It is available in file "string-input.clp". See the README file of the CLIPS-puzzles folder for details. Quick tests with not  too easy puzzles taken from the cbg-000 collection show that the resolution power of CLIPS-sudoku is very weak.




<> The new cbg-000 folder contains the 21375 first series of puzzles in the controlled-bias collection (the full collection can be found here: https://github.com/denis-berthier/Controlled-bias_Sudoku_generator_and_collection).
It explains how to compute the various ratings (in file "launch.txt")
It has the detailed results for all of these possible ratings.
It has a detailed comparison of them (in file "comparisons.txt"), showing that they differ only in rare cases. It is the most precise comparison ever made of the different ratings (more precise than what I previously published in [PBCS]).




<> Puzzle "cbg-000/#2862-W7-S+W3-gW2.clp" is one of the very rare examples in the cbg-000 collection where the various ratings are significantly different. It is also an excellent examples of g-whips[2].



<> The lightning-8.2 puzzle is a good example of using bivalue-chains and z-chains.
It is also an illustration of computing 2-step solutions.
It is also an example of using Forcing-T&E or Forcing{3}-T&E.




<> Metcalf-B7B is an example where T&E is used in oder to determine the B?B classification. It's one of the 3 hardest known puzzles; it is in B7B.
You can see that 89 hypotheses are tried (which is a relatively small number for T&E) and that only one phase is necessary (also rare for T&E: in general some candidates must be tried several times).
To re-run this example, activate only the following rules:
 (bind ?*TE1* TRUE) ;;; for T&E at level 1
 (bind ?*Whips* TRUE)
 (bind ?*Braids* TRUE)
 (bind ?*whips-max-length* 7)
 (bind ?*braids-max-length* 7)
Notice that, due to its very special symmetry, it has an sk-loop, which brings it to only B4B.
To re-run this example with sk-loops, activate only the following rules:
;;; Exotic patterns:
 (bind ?*Belt4* TRUE)
 (bind ?*TE1* TRUE) ;;; for T&E at level 1
 (bind ?*Whips* TRUE)
 (bind ?*Braids* TRUE)
 (bind ?*whips-max-length* 4)
 (bind ?*braids-max-length* 4)




<> Contrary to 9x9 Sudoku, larger grids are very likely to require T&E. The few examples given here are on the easy side:
<> 16x16 is a small set of 16x16 grids. Don't forget to change grid-size in the configuration file.
<> 25x25+ is a small set of still larger grids. Don't forget to change grid-size in the configuration file.

