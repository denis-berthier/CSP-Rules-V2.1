http://forum.enjoysudoku.com/pandiagonal-latin-squares-t39102-22.html


.1.....4.........3..5..........6......2.......... ED=3.6/3.6/2.9 <- Naked Triplet

. 1 . . . . .
4 . . . . . .
. . . 3 . . 5
. . . . . . .
. . . 6 . . .
. . . 2 . . .
. . . . . . .



Using only Subsets:

(solve ".1.....4.........3..5..........6......2.......... ED=3.6/3.6/2.9")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W1
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
.1.....4.........3..5..........6......2.......... ED=3.6/3.6/2.9
6 givens, 181 candidates
entering BRT
Starting_init_links_with_<Fact-2240>
Resolution state after Singles:
2357   1      234567 457    23467  4567   237
4      23567  2567   157    12567  12367  137
167    27     12467  3      12467  1247   5
12367  34567  1257   1457   2457   367    123467
12357  247    13457  6      37     2457   12347
1567   34567  1347   2      1357   134567 467
2567   23457  367    147    134567 12357  12467

181 candidates, 1563 csp-links and 1563 links. Density = 9.59%
Starting non trivial part of solution.
Entering_level_W1_with_<Fact-8495>
whip[1]: d1n5{r7c2 .} ==> r7c1 ≠ 5
whip[1]: r7n5{c6 .} ==> r4c2 ≠ 5
whip[1]: d2n6{r4c6 .} ==> r4c7 ≠ 6, r1c3 ≠ 6
whip[1]: r1n6{c6 .} ==> r2c6 ≠ 6, r4c2 ≠ 6, r7c5 ≠ 6, r2c5 ≠ 6
whip[1]: c5n6{r3 .} ==> r3c3 ≠ 6
whip[1]: r3n6{c5 .} ==> r6c1 ≠ 6, r7c1 ≠ 6
whip[1]: a2n6{r6c7 .} ==> r6c6 ≠ 6
whip[1]: a2n4{r4c5 .} ==> r4c7 ≠ 4
whip[1]: c7n4{r7 .} ==> r6c6 ≠ 4
whip[1]: d1n1{r2c7 .} ==> r2c6 ≠ 1
whip[1]: c6n1{r7 .} ==> r3c3 ≠ 1
whip[1]: a7n3{r1c7 .} ==> r1c5 ≠ 3
whip[1]: c5n3{r7 .} ==> r6c6 ≠ 3

Resolution state after Singles and whips[1]:
2357  1     23457 457   2467  4567  237
4     23567 2567  157   1257  237   137
167   27    247   3     12467 1247  5
12367 347   1257  1457  2457  367   1237
12357 247   13457 6     37    2457  12347
157   34567 1347  2     1357  157   467
27    23457 367   147   13457 12357 12467

163 candidates.

Entering_relation_bivalue_with_<Fact-8522>
Entering_level_S2_with_<Fact-8577>
Entering_level_S3_with_<Fact-8592>
naked-triplets-in-a-diagonal: d7{a2 a5 a7}{n7 n2 n3} ==> d7a4 ≠ 7, d7a4 ≠ 3, d7a6 ≠ 7, d7a6 ≠ 3, d7a1 ≠ 7, d7a3 ≠ 7, d7a3 ≠ 2
whip[1]: r3n2{c6 .} ==> r7c6 ≠ 2
whip[1]: r7n2{c7 .} ==> r1c1 ≠ 2
whip[1]: d7n7{r7c1 .} ==> r7c6 ≠ 7
whip[1]: c4n7{r7 .} ==> r1c3 ≠ 7, r1c5 ≠ 7
whip[1]: c3n3{r7 .} ==> r7c2 ≠ 3
whip[1]: c2n3{r4 .} ==> r2c7 ≠ 3, r4c7 ≠ 3
whip[1]: c7n3{r5 .} ==> r1c3 ≠ 3
whip[1]: d3n3{r6c5 .} ==> r5c5 ≠ 3
naked-single ==> r5c5 = 7
whip[1]: d3n7{r7c4 .} ==> r4c1 ≠ 7
whip[1]: d5n7{r6c7 .} ==> r2c7 ≠ 7
naked-single ==> r2c7 = 1
hidden-single-in-an-anti-diagonal ==> r5c1 = 1
hidden-single-in-an-anti-diagonal ==> r7c4 = 1
hidden-single-in-an-anti-diagonal ==> r6c6 = 1
hidden-single-in-a-diagonal ==> r3c5 = 1
hidden-single-in-an-anti-diagonal ==> r4c6 = 6
naked-single ==> r7c3 = 3
naked-single ==> r7c6 = 5
naked-single ==> r2c4 = 7
naked-single ==> r6c1 = 5
naked-single ==> r1c1 = 3
naked-single ==> r4c1 = 2
naked-single ==> r2c6 = 3
naked-single ==> r3c2 = 7
naked-single ==> r1c7 = 2
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 5
naked-single ==> r2c3 = 6
naked-single ==> r6c7 = 4
naked-single ==> r4c2 = 3
naked-single ==> r4c5 = 5
naked-single ==> r6c2 = 6
naked-single ==> r7c7 = 6
naked-single ==> r4c4 = 4
naked-single ==> r1c5 = 6
naked-single ==> r1c6 = 7
naked-single ==> r3c3 = 2
naked-single ==> r2c2 = 5
naked-single ==> r3c6 = 4
naked-single ==> r5c3 = 5
naked-single ==> r5c6 = 2
naked-single ==> r5c7 = 3
naked-single ==> r6c3 = 7
naked-single ==> r7c2 = 2
naked-single ==> r3c1 = 6
naked-single ==> r4c3 = 1
naked-single ==> r4c7 = 7
naked-single ==> r5c2 = 4
naked-single ==> r7c1 = 7
naked-single ==> r2c5 = 2
naked-single ==> r6c5 = 3
naked-single ==> r7c5 = 4
PUZZLE 0 IS SOLVED. rating-type = W1, MOST COMPLEX RULE TRIED = NT
   3145672
   4567231
   6723145
   2314567
   1456723
   5672314
   7231456

nb-facts = <Fact-8658>
Puzzle .1.....4.........3..5..........6......2.......... ED=3.6/3.6/2.9 :
init-time = 0.06s, solve-time = 0.18s, total-time = 0.24s
nb-facts=<Fact-8658>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W1
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************



-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

Using only generic chains:


(solve ".1.....4.........3..5..........6......2.......... ED=3.6/3.6/2.9")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
.1.....4.........3..5..........6......2.......... ED=3.6/3.6/2.9
6 givens, 181 candidates
entering BRT
Starting_init_links_with_<Fact-2241>
Resolution state after Singles:
2357   1      234567 457    23467  4567   237
4      23567  2567   157    12567  12367  137
167    27     12467  3      12467  1247   5
12367  34567  1257   1457   2457   367    123467
12357  247    13457  6      37     2457   12347
1567   34567  1347   2      1357   134567 467
2567   23457  367    147    134567 12357  12467

181 candidates, 1563 csp-links and 1563 links. Density = 9.59%
Starting non trivial part of solution.
Entering_level_W1_with_<Fact-8496>
whip[1]: d1n5{r7c2 .} ==> r7c1 ≠ 5
whip[1]: r7n5{c6 .} ==> r4c2 ≠ 5
whip[1]: d2n6{r4c6 .} ==> r4c7 ≠ 6, r1c3 ≠ 6
whip[1]: r1n6{c6 .} ==> r2c6 ≠ 6, r4c2 ≠ 6, r7c5 ≠ 6, r2c5 ≠ 6
whip[1]: c5n6{r3 .} ==> r3c3 ≠ 6
whip[1]: r3n6{c5 .} ==> r6c1 ≠ 6, r7c1 ≠ 6
whip[1]: a2n6{r6c7 .} ==> r6c6 ≠ 6
whip[1]: a2n4{r4c5 .} ==> r4c7 ≠ 4
whip[1]: c7n4{r7 .} ==> r6c6 ≠ 4
whip[1]: d1n1{r2c7 .} ==> r2c6 ≠ 1
whip[1]: c6n1{r7 .} ==> r3c3 ≠ 1
whip[1]: a7n3{r1c7 .} ==> r1c5 ≠ 3
whip[1]: c5n3{r7 .} ==> r6c6 ≠ 3

Resolution state after Singles and whips[1]:
2357  1     23457 457   2467  4567  237
4     23567 2567  157   1257  237   137
167   27    247   3     12467 1247  5
12367 347   1257  1457  2457  367   1237
12357 247   13457 6     37    2457  12347
157   34567 1347  2     1357  157   467
27    23457 367   147   13457 12357 12467

163 candidates.

Entering_relation_bivalue_with_<Fact-8523>
Entering_level_BC2_with_<Fact-8578>
Entering_level_Z2_with_<Fact-9011>
z-chain[2]: r1n3{c3 c7} - r6n3{c5 .} ==> r7c2 ≠ 3
whip[1]: c2n3{r6 .} ==> r4c7 ≠ 3
whip[1]: c7n3{r5 .} ==> r5c3 ≠ 3
z-chain[2]: c2n5{r2 r6} - d6n5{r2c5 .} ==> r1c3 ≠ 5
whip[1]: r1n5{c6 .} ==> r6c6 ≠ 5
whip[1]: d4n5{r7c5 .} ==> r2c5 ≠ 5
z-chain[2]: d2n7{r4c6 r5c5} - c4n7{r4 .} ==> r1c3 ≠ 7
z-chain[2]: r3n4{c3 c6} - a2n4{r5c6 .} ==> r1c5 ≠ 4
whip[1]: c5n4{r7 .} ==> r7c2 ≠ 4
whip[1]: c2n4{r6 .} ==> r5c3 ≠ 4
z-chain[2]: r2n1{c5 c7} - c3n1{r5 .} ==> r6c1 ≠ 1
whip[1]: d6n1{r7c7 .} ==> r4c7 ≠ 1
whip[1]: c7n1{r7 .} ==> r7c5 ≠ 1
Entering_level_tW2_with_<Fact-9848>
Entering_level_W2_with_<Fact-9849>
whip[2]: d2n7{r4c6 r7c3} - a7n7{r4c3 .} ==> r3c5 ≠ 7
z-chain[2]: r3n7{c3 c6} - c4n7{r1 .} ==> r2c2 ≠ 7
whip[2]: d2n7{r7c3 r4c6} - r2n7{c6 .} ==> r7c5 ≠ 7
Entering_level_BC3_with_<Fact-9860>
Entering_level_Z3_with_<Fact-12669>
z-chain[3]: r3n7{c6 c2} - r1n7{c7 c6} - d2n7{r4c6 .} ==> r5c1 ≠ 7
z-chain[3]: r3n7{c6 c1} - a3n7{r6c1 r5c7} - d2n7{r5c5 .} ==> r7c6 ≠ 7
z-chain[3]: r6c1{n7 n5} - r7c2{n5 n2} - r3c2{n2 .} ==> r6c2 ≠ 7
z-chain[2]: c2n7{r5 r7} - c4n7{r2 .} ==> r4c1 ≠ 7
whip[2]: c1n7{r7 r3} - c2n7{r4 .} ==> r7c7 ≠ 7
z-chain[3]: c2n7{r7 r4} - a2n7{r4c5 r7c1} - d2n7{r7c3 .} ==> r5c7 ≠ 7
z-chain[3]: r6c1{n7 n5} - r7c2{n5 n2} - r3c2{n2 .} ==> r5c2 ≠ 7
z-chain[2]: c2n7{r4 r7} - d2n7{r4c6 .} ==> r3c3 ≠ 7
z-chain[2]: r3n7{c2 c6} - d6n7{r1c6 .} ==> r6c5 ≠ 7
z-chain[2]: a1n7{r5c5 r6c6} - c2n7{r3 .} ==> r4c5 ≠ 7
z-chain[2]: a2n7{r6c7 r7c1} - r3n7{c1 .} ==> r6c6 ≠ 7
naked-single ==> r6c6 = 1
hidden-single-in-a-diagonal ==> r2c7 = 1
hidden-single-in-an-anti-diagonal ==> r3c5 = 1
hidden-single-in-an-anti-diagonal ==> r4c6 = 6
hidden-single-in-an-anti-diagonal ==> r3c1 = 6
hidden-single-in-an-anti-diagonal ==> r7c7 = 6
hidden-single-in-an-anti-diagonal ==> r2c3 = 6
hidden-single-in-a-diagonal ==> r1c5 = 6
hidden-single-in-a-row ==> r6c2 = 6
hidden-single-in-a-diagonal ==> r4c4 = 4
naked-single ==> r3c3 = 2
naked-single ==> r3c2 = 7
naked-single ==> r1c4 = 5
naked-single ==> r2c4 = 7
naked-single ==> r2c5 = 2
naked-single ==> r2c6 = 3
naked-single ==> r1c7 = 2
naked-single ==> r7c1 = 7
naked-single ==> r1c1 = 3
naked-single ==> r1c3 = 4
naked-single ==> r1c6 = 7
naked-single ==> r5c7 = 3
naked-single ==> r7c5 = 4
naked-single ==> r6c3 = 7
naked-single ==> r5c1 = 1
naked-single ==> r5c5 = 7
naked-single ==> r5c3 = 5
naked-single ==> r4c3 = 1
naked-single ==> r5c6 = 2
naked-single ==> r7c3 = 3
naked-single ==> r2c2 = 5
naked-single ==> r6c5 = 3
naked-single ==> r7c2 = 2
naked-single ==> r4c1 = 2
naked-single ==> r7c6 = 5
naked-single ==> r4c5 = 5
naked-single ==> r4c7 = 7
naked-single ==> r5c2 = 4
naked-single ==> r6c1 = 5
naked-single ==> r6c7 = 4
naked-single ==> r7c4 = 1
naked-single ==> r3c6 = 4
naked-single ==> r4c2 = 3
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = z-chain[3]
   3145672
   4567231
   6723145
   2314567
   1456723
   5672314
   7231456

nb-facts = <Fact-15946>
Puzzle .1.....4.........3..5..........6......2.......... ED=3.6/3.6/2.9 :
init-time = 0.05s, solve-time = 2.19s, total-time = 2.24s
nb-facts=<Fact-15946>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
