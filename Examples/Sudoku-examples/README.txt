
GENERAL WARNINGS AND REMINDERS:
- apart maybe from the Subset examples, the examples in this folder are much harder in the mean than random puzzles - which are much harder in the mean than puzzles proposed in newspapers or magasines
- more precisely, more than 99.9% of the Sudoku puzzles (taken randomly) are solvable by whips of length <= 7
- more than 99.8% of the Sudoku puzzles (taken randomly) are solvable by typed-whips



<> The Subset-Examples come from various sources, most of which I have forgotten. Those marked SE come from SudokuExplainer.
I've put a large variety of Subset examples, so as to cover almost all the possible classical cases.
To re-run these examples, activate only the following rules:
;;; Sudoku-specific:
 (bind ?*Subsets* TRUE)
;;; and optionally
 (bind ?*FinnedFish* TRUE)


<> The Mith puzzles are exceptional in the sense that they have lots of Subsets and Finned-Fish


<>The HLS2-Examples contain a few examples from HLS2, illustrating how the 2D chain-rules defined in HLS2 can be reproduced in SudoRules using typed-chains.



<> CLIPS-puzzles contains a small subset of the 9x9 Sudoku examples provided with the CLIPS inference engine.
As puzzles, they are easy and of no particular interest for Sudoku.
The Rules for Sudoku encoded in CLIPS are too elementary to be able to solve complex puzzles.
The comparison of computation times between CLIPS and SudoRules is largely in favour of CLIPS as soon as the solution is not totally trivial (i.e. beyond Pairs).
Memory requirements are similar.
A serious comparison would require to define harder puzzles solvable by CLIPS and in the proper form.
As the CLIPS Sudoku application doesn't output any resolution path, it's not very interesting as a Sudoku solver. (This was not the goal: these rules were originally developed only as a test bench for JRules.)



<> The Oddagons folder gives six examples of Oddagons, only one of which is useful to lower the W rating, some of which merely disappear when whips are active. 
Some exercises are left to the reader in the latter case: find if there is a combination of rules (not including whips) enough to solve the puzzle without destroying all the oddagons.
"Usefulness" of an Oddagon is not related to its size: the only "useful" one has length 5.


<> The lightning-8.2 puzzle is a good example go using z-chains.
It is also an illustration of computing 2-step solutions



<> Magictour-top1465 is  one of the most famous collection of puzzles that were, in the early 2000s, among the hardest known ones. As such, they are obviously exceptional and unlikely to be found in any newspaper or magasine. My selection is a few the hardest ones in this collection. Don' try to re-run them if you don't have at least 16GB of RAM or, for some of them, if you're in a hurry.
Obviously, g-whips and braids will take more time and memory.



<> Metcalf-B7B is an example where T&E is used in oder to determine the B?B classification. It's one of the 3 hardest known puzzles; it is in B7B.
You can see that 89 hypotheses are tried (which is a relatively small number for T&E) and that only one phase is necessary (also rare for T&E: in general some candidates must be tried several times).
To re-run this example, activate only the following rules:
;;; choose p (here p = 7):
 (bind ?*Whips* TRUE)
 (bind ?*Braids* TRUE)
 (bind ?*whips-max-length* 7)
 (bind ?*braids-max-length* 7)
Notice that, due to its very special symmetry, it has an sk-loop, which brings it to only B4B.
To re-run this example with sk-loops, activate only the following rules:
;;; Exotic patterns:
 (bind ?*Belt4* TRUE)
;;; choose p (here p = 4):
 (bind ?*Whips* TRUE)
 (bind ?*Braids* TRUE)
 (bind ?*whips-max-length* 4)
 (bind ?*braids-max-length* 4)


Contrary to 9x9 Sudoku, larger grids are very likely to require T&E. The few examples here are on the easy side:
<> 16x16 is a small set of 16x16 grids. Don't forget to change grid-size in the configuration file
<> 25x25+ is a small set of still larger grids. Don't forget to change grid-size in the configuration file

