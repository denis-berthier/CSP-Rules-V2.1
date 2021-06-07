
Puzzle Royle17#211. Example from [HLS2, section XV.3.1]

+-------+-------+-------+
! . . . ! . . . ! . 3 1 !
! . 8 . ! . 4 . ! . . . !
! . 7 . ! . . . ! . . . !
+-------+-------+-------+
! 1 . 6 ! 3 . . ! . 7 . !
! 3 . . ! . . . ! . . . !
! . . . ! . 8 . ! . . . !
+-------+-------+-------+
! 5 4 . ! . . . ! 8 . . !
! . . . ! 6 . . ! 2 . . !
! . . . ! 1 . . ! . . . !
+-------+-------+-------+

.......31.8..4.....7.......1.63...7.3............8....54....8.....6..2.....1.....
SER = 7.1


+-------+-------+-------+
! 4 6 5 ! 8 . . ! . 3 1 !
! 9 8 1 ! . 4 3 ! 6 . . !
! 2 7 3 ! . 1 6 ! . 8 4 !
+-------+-------+-------+
! 1 . 6 ! 3 . 5 ! 4 7 8 !
! 3 . 8 ! 4 6 7 ! 1 . . !
! 7 . 4 ! . 8 1 ! 3 6 . !
+-------+-------+-------+
! 5 4 . ! . 3 . ! 8 1 6 !
! 8 1 . ! 6 . 4 ! 2 . 3 !
! 6 3 . ! 1 . 8 ! . 4 . !
+-------+-------+-------+

Solution from [HLS2, section XV.3.1]:
Resolution path after the first Singles and whips[1]:
"row r1 interaction-with-block b2 ==> r2c4 ≠ 2
block b3 interaction-with-column c7 ==> r9c7 ≠ 9
block b9 interaction-with-row r9 ==> r9c5 ≠ 7, r9c3 ≠ 7
hxy-cn4-chain {r1 r3}c7n9 – {r3 r9}c7n5 – {r9 r8}c5n5 – {r8 r1}c5n7 ==> r1c7 ≠ 7
...(Naked-Singles)"



;;; Load SudoRules with only whips[1] activated to reach the same state as before the hxy-cn4-chain:
(solve ".......31.8..4.....7.......1.63...7.3............8....54....8.....6..2.....1.....")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W1
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
.......31.8..4.....7.......1.63...7.3............8....54....8.....6..2.....1.....
17 givens, 308 candidates
entering BRT
hidden-single-in-a-column ==> r8c2 = 1
hidden-single-in-a-row ==> r7c8 = 1
hidden-single-in-a-row ==> r7c9 = 6
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r9c1 = 6
hidden-single-in-a-block ==> r1c2 = 6
hidden-single-in-a-column ==> r8c1 = 8
hidden-single-in-a-column ==> r6c1 = 7
hidden-single-in-a-column ==> r5c3 = 8
hidden-single-in-a-block ==> r6c3 = 4
hidden-single-in-a-column ==> r5c4 = 4
hidden-single-in-a-block ==> r4c9 = 8
hidden-single-in-a-block ==> r3c8 = 8
hidden-single-in-a-column ==> r1c4 = 8
hidden-single-in-a-column ==> r9c6 = 8
hidden-single-in-a-block ==> r8c6 = 4
hidden-single-in-a-column ==> r9c8 = 4
hidden-single-in-a-column ==> r3c9 = 4
hidden-single-in-a-column ==> r4c7 = 4
hidden-single-in-a-row ==> r1c1 = 4
hidden-single-in-a-block ==> r8c9 = 3
hidden-single-in-a-block ==> r6c7 = 3
hidden-single-in-a-block ==> r5c7 = 1
hidden-single-in-a-block ==> r6c6 = 1
hidden-single-in-a-block ==> r3c5 = 1
hidden-single-in-a-block ==> r2c3 = 1
hidden-single-in-a-block ==> r3c3 = 3
hidden-single-in-a-block ==> r1c3 = 5
hidden-single-in-a-block ==> r2c6 = 3
hidden-single-in-a-block ==> r3c6 = 6
hidden-single-in-a-column ==> r2c7 = 6
hidden-single-in-a-block ==> r5c5 = 6
hidden-single-in-a-block ==> r5c6 = 7
hidden-single-in-a-column ==> r4c6 = 5
hidden-single-in-a-block ==> r6c8 = 6
hidden-single-in-a-block ==> r7c5 = 3
Starting_init_links_with_<Fact-3792>

Starting non trivial part of solution with the following RESOLUTION STATE:
   4         6         5         8         279       29        79        3         1
   29        8         1         2579      4         3         6         259       2579
   29        7         3         259       1         6         59        8         4
   1         29        6         3         29        5         4         7         8
   3         259       8         4         6         7         1         259       259
   7         259       4         29        8         1         3         6         259
   5         4         279       279       3         29        8         1         6
   8         1         79        6         579       4         2         59        3
   6         3         279       1         2579      8         579       4         579

112 candidates, 288 csp-links and 288 links. Density = 4.63%

Entering_level_W1_with_<Fact-4869>
whip[1]: r1n2{c6 .} ==> r3c4 ≠ 2, r2c4 ≠ 2
hidden-single-in-a-row ==> r3c1 = 2
naked-single ==> r2c1 = 9
whip[1]: b3n9{r3c7 .} ==> r9c7 ≠ 9
whip[1]: b9n7{r9c9 .} ==> r9c5 ≠ 7, r9c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 26 VALUES MISSING.

;;; Notice how what was called interactions in [HLS] now appears as whips[1], in conformance with the generic whip pattern.
;;; For anyone who wants to understand whips, understanding that whips[1] and interactions/intersections/pointing+claiming are the same thing (which was demonstrated at length in [HLS]) is an essential first step.)

CURRENT RESOLUTION STATE:
   4         6         5         8         279       29        79        3         1
   9         8         1         57        4         3         6         25        257
   2         7         3         59        1         6         59        8         4
   1         29        6         3         29        5         4         7         8
   3         259       8         4         6         7         1         259       259
   7         259       4         29        8         1         3         6         259
   5         4         279       279       3         29        8         1         6
   8         1         79        6         579       4         2         59        3
   6         3         29        1         259       8         57        4         579

Puzzle .......31.8..4.....7.......1.63...7.3............8....54....8.....6..2.....1..... :
init-time = 0.19s, solve-time = 0.13s, total-time = 0.32s
nb-facts = 0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W1
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

;;; This is the resolution state from which the solution in [HLS] started.

(print-current-resolution-state-all-views)
standard rc-view:
Physical rows are rows, physical columns are columns. Data are digits.
  4         6         5         8         279       29        79        3         1
  9         8         1         57        4         3         6         25        257
  2         7         3         59        1         6         59        8         4
  1         29        6         3         29        5         4         7         8
  3         259       8         4         6         7         1         259       259
  7         259       4         29        8         1         3         6         259
  5         4         279       279       3         29        8         1         6
  8         1         79        6         579       4         2         59        3
  6         3         29        1         259       8         57        4         579

The following representations may be used e.g. to more easily spot
rn-, cn- or bn- bivalue pairs (also named bilocal pairs), mono-typed-chains,
hidden subsets and fishes (which will appear as naked subsets in the proper space).

rn-view:
Physical rows are rows, physical columns are digits. Data are columns.
  9         56        8         1         3         2         57        4         567
  3         89        6         5         489       7         49        2         1
  5         1         3         9         47        6         2         8         47
  1         25        4         7         6         3         8         9         25
  7         289       1         4         289       5         6         3         289
  6         249       7         3         29        8         1         5         249
  8         346       5         2         1         9         34        7         346
  2         7         9         6         58        4         35        1         358
  4         35        2         8         579       1         79        6         359

cn-view:
Physical rows are columns, physical columns are digits. Data are rows.
  4         3         5         1         7         9         6         8         2
  8         456       9         7         56        1         3         2         456
  2         79        3         6         1         4         78        5         789
  9         67        4         5         23        8         27        1         367
  3         149       7         2         89        5         18        6         1489
  6         17        2         8         4         3         5         9         17
  5         8         6         4         39        2         19        7         13
  7         25        1         9         258       6         4         3         58
  1         256       8         3         2569      7         29        4         569

bn-view:
Physical rows are blocks, physical columns are digits. Data are positions in a block.
  6         7         9         1         3         2         8         5         4
  8         23        6         5         47        9         24        1         237
  3         56        2         9         567       4         16        8         17
  1         258       4         9         58        3         7         6         258
  9         27        1         4         3         5         6         8         27
  4         569       7         1         569       8         2         3         569
  5         39        8         2         1         7         36        4         369
  7         138       2         6         58        4         15        9         1358
  2         4         6         8         579       3         79        1         59


;;; For the player not yet used to spot conjugated digits, there is no obvious chain in the rc-view, but the cn-view shows what looks like an xy-chain[3] and is therefore a bivalue-chain-cn[3]:


;;; Now, load SudoRules with the typed-bivalue chains activated. The next step to appear is:

biv-chain-cn[3]: c7n7{r9 r1} - c5n7{r1 r8} - c5n5{r8 r9} ==> r9c7 ≠ 5
singles to the end.


;;; Notice that the very old version of SudoRules used at the time of [HLS2], before its complete re-writing as a part of CSP-Rules, missed this bivalue-chain-cn[3] and found one of length 4 instead:
hxy-cn4-chain {r1 r3}c7n9 – {r3 r9}c7n5 – {r9 r8}c5n5 – {r8 r1}c5n7 ==> r1c7 ≠ 7
;;; You can check on the cn-view that this chain is also present in the resolution state.
