


. 3 C B 9 . . . . 8 . 1 A 
7 6 4 . 8 . 1 A . . . . . 
D 1 . . . . . . . . . 2 . 
. . 9 . . . 2 8 . . . . . 
4 2 . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . 8 . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. A . . . . . . . . . 8 . 
. . . . . 2 . . . A . . . 
. . . . A . . . . 9 . . .

.3CB9....8.1A764.8.1A.....D1.........2...9...28.....42.............................8...............................................A.........8......2...A.......A....9...

(Generated from a fully cyclic grid)


(solve-list
. 3 C B 9 . . . . 8 . 1 A 
7 6 4 . 8 . 1 A . . . . . 
D 1 . . . . . . . . . 2 . 
. . 9 . . . 2 8 . . . . . 
4 2 . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . 8 . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. A . . . . . . . . . 8 . 
. . . . . 2 . . . A . . . 
. . . . A . . . . 9 . . . 
)
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
(. 3 C B 9 . . . . 8 . 1 A 7 6 4 . 8 . 1 A . . . . . D 1 . . . . . . . . . 2 . . . 9 . . . 2 8 . . . . . 4 2 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . A . . . . . . . . . 8 . . . . . . 2 . . . A . . . . . . . A . . . . 9 . . .)
28 givens, 1020 candidates
entering BRT
naked-single ==> r1c1 = 5
hidden-single-in-a-row ==> r13c2 = 8
hidden-single-in-a-column ==> r8c1 = 8
hidden-single-in-an-anti-diagonal ==> r10c3 = 2
hidden-single-in-a-column ==> r7c5 = 2
hidden-single-in-a-row ==> r2c4 = 2
hidden-single-in-a-diagonal ==> r13c1 = 2
hidden-single-in-a-column ==> r1c9 = 2
Starting_init_links_with_<Fact-13130>
Resolution state after Singles:
5          3          C          B          9          467D       467D       467D       2          8          467D       1          A          
7          6          4          2          8          35BCD      1          A          359BCD     35BCD      359BCD     35BCD      39BC       
D          1          378AB      567AC      34567B     345679C    34567BC    345679BC   345679BC   34567BC    3456789BC  2          4568BC     
36C        57BC       9          1347ACD    567BCD     134567BD   2          8          34567BCD   134567BCD  13467ABCD  456ABCD    1357B      
4          2          35678B     356CD      137BCD     15679ABCD  35679ABD   35679CD    13567BCD   367BCD     1569BCD    3579AB     356789CD   
136ABC     579BCD     3567BD     34567C     3456BCD    13479ABCD  5679BCD    1345679BD  134679ACD  12456BCD   2345789B   35679CD    135678BCD  
1369ABC    4579BCD    13567BD    134567ACD  2          8          3479BCD    1679BCD    14569ABD   13457      3567CD     3567BCD    134567BCD  
8          457BCD     13567ABD   135679ACD  34567BCD   345679BC   346BCD     1249BCD    1579AB     3567D      13567ACD   34567BCD   2345679BCD 
36BC       4579BCD    13567ABD   345679CD   13567BCD   13467ABCD  45689BC    2345B      3789CD     1567BCD    134567ABD  345679ACD  234567BCD  
136BC      4579BCD    2          13456789CD 13467BCD   1569ABCD   34578AB    35679C     356BCD     1347BCD    15679ABCD  345679BD   134567CD   
1369C      A          3567BD     134679CD   1456BCD    134579B    35679CD    13567BCD   34567BC    23456BCD   23479BCD   8          1345679BD  
369B       4579CD     1367BD     45689CD    13457B     2          35678BCD   13567BCD   1345678BCD A          3456BCD    3479BCD    15679BCD   
2          8          156D       13457      A          13567BCD   34567BCD   134567BCD  3567BCD    9          34567BC    3456BCD    347BCD     

925 candidates, 15338 csp-links and 15338 links. Density = 3.59%
Starting non trivial part of solution.
Entering_level_W1_with_<Fact-74485>
whip[1]: d5n10{r8c11 .} ==> r8c3 ≠ 10
whip[1]: c3n10{r9 .} ==> r6c6 ≠ 10
whip[1]: a1n10{r4c4 .} ==> r3c4 ≠ 10
hidden-single-in-a-row ==> r3c3 = 10
hidden-single-in-an-anti-diagonal ==> r9c9 = 8
hidden-single-in-a-row ==> r5c3 = 8
whip[1]: r4n10{c12 .} ==> r5c12 ≠ 10
whip[1]: d3n10{r10c7 .} ==> r10c11 ≠ 10
whip[1]: r10n10{c7 .} ==> r9c6 ≠ 10

Resolution state after Singles and whips[1]:
5          3          C          B          9          467D       467D       467D       2          8          467D       1          A          
7          6          4          2          8          35BCD      1          A          359BCD     35BCD      359BCD     35BCD      39BC       
D          1          A          567C       34567B     345679C    34567BC    345679BC   345679BC   34567BC    3456789BC  2          4568BC     
36C        57BC       9          1347CD     567BCD     134567BD   2          8          34567BCD   134567BCD  13467ABCD  456ABCD    1357B      
4          2          8          356CD      137BCD     15679ABCD  35679ABD   35679CD    13567BCD   367BCD     1569BCD    3579B      35679CD    
136ABC     579BCD     3567BD     34567C     3456BCD    13479BCD   5679BCD    1345679BD  134679ACD  12456BCD   2345789B   35679CD    135678BCD  
1369ABC    4579BCD    13567BD    134567ACD  2          8          3479BCD    1679BCD    14569ABD   13457      3567CD     3567BCD    134567BCD  
8          457BCD     13567BD    135679ACD  34567BCD   345679BC   346BCD     1249BCD    1579AB     3567D      13567CD    34567BCD   2345679BCD 
36BC       4579BCD    13567BD    345679CD   13567BCD   13467BCD   4569BC     2345B      8          1567BCD    134567ABD  345679ACD  234567BCD  
136BC      4579BCD    2          13456789CD 13467BCD   1569ABCD   34578AB    35679C     356BCD     1347BCD    15679BCD   345679BD   134567CD   
1369C      A          3567BD     134679CD   1456BCD    134579B    35679CD    13567BCD   34567BC    23456BCD   23479BCD   8          1345679BD  
369B       4579CD     1367BD     45689CD    13457B     2          35678BCD   13567BCD   134567BCD  A          3456BCD    3479BCD    15679BCD   
2          8          156D       13457      A          13567BCD   34567BCD   134567BCD  3567BCD    9          34567BC    3456BCD    347BCD     

896 candidates.

Entering_relation_bivalue_with_<Fact-74501>
Entering_level_S2_with_<Fact-74614>
Entering_level_BC2_with_<Fact-74665>
Entering_level_Z2_with_<Fact-75666>
Entering_level_tW2_with_<Fact-76587>
Entering_level_W2_with_<Fact-76588>
whip[2]: c1n9{r7 r11} - d8n9{r3c6 .} ==> r7c9 ≠ 9
whip[2]: d8n9{r11c11 r10c12} - d4n9{r6c12 .} ==> r11c6 ≠ 9
Entering_level_S3_with_<Fact-76600>
Entering_level_BC3_with_<Fact-76611>
Entering_level_Z3_with_<Fact-81540>
z-chain[3]: d3n9{r8c9 r5c12} - c1n9{r7 r12} - r2n9{c11 .} ==> r6c9 ≠ 9
z-chain[2]: d1n9{r11c4 r7c8} - c1n9{r7 .} ==> r11c13 ≠ 9
z-chain[2]: a3n9{r12c1 r10c12} - d3n9{r5c12 .} ==> r6c7 ≠ 9
z-chain[2]: c9n9{r8 r2} - c1n9{r7 .} ==> r12c13 ≠ 9
whip[2]: c13n9{r8 r5} - c7n9{r11 .} ==> r8c6 ≠ 9
whip[2]: c9n9{r8 r3} - d10n9{r9c2 .} ==> r5c12 ≠ 9
whip[1]: d3n9{r8c9 .} ==> r10c11 ≠ 9, r8c13 ≠ 9
whip[1]: c13n9{r5 .} ==> r10c8 ≠ 9
z-chain[2]: a8n9{r10c4 r2c9} - a12n9{r2c13 .} ==> r7c7 ≠ 9
z-chain[2]: r7n9{c2 c8} - d3n9{r8c9 .} ==> r6c2 ≠ 9
whip[1]: d7n9{r9c12 .} ==> r11c1 ≠ 9
hidden-pairs-in-a-diagonal: d7{n9 n10}{a4 a8} ==> d7a4 ≠ 13, d7a4 ≠ 12, d7a4 ≠ 7, d7a4 ≠ 6, d7a4 ≠ 5, d7a4 ≠ 4, d7a4 ≠ 3, d7a8 ≠ 12, d7a8 ≠ 11, d7a8 ≠ 6, d7a8 ≠ 3, d7a8 ≠ 1
biv-chain[2]: a12n9{r2c13 r9c7} - d7n9{r9c12 r7c1} ==> r2c9 ≠ 9, r7c8 ≠ 9
whip[1]: c9n9{r8 .} ==> r8c4 ≠ 9
hidden-pairs-in-an-anti-diagonal: a2{n9 n10}{d3 d10} ==> d3a2 ≠ 11, d3a2 ≠ 7, d3a2 ≠ 5, d3a2 ≠ 1, d10a2 ≠ 13, d10a2 ≠ 12, d10a2 ≠ 11, d10a2 ≠ 7, d10a2 ≠ 6, d10a2 ≠ 5, d10a2 ≠ 1
whip[2]: c9n1{r12 r7} - d10n1{r11c13 .} ==> r12c3 ≠ 1
hidden-triplets-in-a-diagonal: d3{n8 n9 n10}{a11 a6 a2} ==> d3a11 ≠ 11, d3a11 ≠ 7, d3a11 ≠ 5, d3a11 ≠ 4, d3a11 ≠ 3, d3a6 ≠ 11, d3a6 ≠ 7, d3a6 ≠ 5, d3a6 ≠ 4, d3a6 ≠ 3, d3a6 ≠ 2
hidden-single-in-an-anti-diagonal ==> r8c13 = 2
hidden-single-in-an-anti-diagonal ==> r11c11 = 2
hidden-single-in-a-diagonal ==> r6c10 = 2
hidden-single-in-a-column ==> r9c8 = 2
whip[1]: a5n1{r13c4 .} ==> r10c4 ≠ 1
whip[1]: r11n9{c7 .} ==> r6c12 ≠ 9
whip[1]: d4n9{r11c7 .} ==> r5c7 ≠ 9
whip[1]: c7n9{r11 .} ==> r10c6 ≠ 9
biv-chain[3]: a8n9{r7c1 r10c4} - r10n8{c4 c7} - a11n10{r10c7 r7c4} ==> r7c1 ≠ 10
naked-single ==> r7c1 = 9
naked-single ==> r9c12 = 10
hidden-single-in-an-anti-diagonal ==> r6c1 = 10
hidden-single-in-a-row ==> r4c11 = 10
whip[1]: c1n1{r11 .} ==> r10c13 ≠ 1, r11c13 ≠ 1
z-chain[2]: c1n1{r11 r10} - r5n1{c9 .} ==> r11c5 ≠ 1
whip[1]: a8n1{r9c3 .} ==> r6c6 ≠ 1, r12c13 ≠ 1, r9c10 ≠ 1
whip[1]: c10n1{r10 .} ==> r7c13 ≠ 1
whip[1]: a2n1{r10c11 .} ==> r13c8 ≠ 1, r10c5 ≠ 1
biv-chain[2]: a9n1{r11c6 r8c3} - a8n1{r9c3 r6c13} ==> r4c13 ≠ 1, r11c8 ≠ 1, r13c6 ≠ 1
hidden-single-in-a-column ==> r6c13 = 1
hidden-single-in-an-anti-diagonal ==> r10c4 = 8
naked-single ==> r10c7 = 10
naked-single ==> r8c9 = 9
naked-single ==> r5c6 = 10
naked-single ==> r6c11 = 8
hidden-single-in-an-anti-diagonal ==> r7c9 = 10
hidden-single-in-a-diagonal ==> r8c4 = 10
hidden-single-in-a-diagonal ==> r11c1 = 1
hidden-single-in-an-anti-diagonal ==> r8c3 = 1
hidden-single-in-a-row ==> r7c8 = 1
hidden-single-in-an-anti-diagonal ==> r12c9 = 1
hidden-single-in-a-column ==> r13c4 = 1
hidden-single-in-an-anti-diagonal ==> r12c7 = 8
hidden-single-in-a-row ==> r3c13 = 8
z-chain[3]: d3n4{r12c5 r11c6} - c10n4{r11 r3} - a5n4{r3c7 .} ==> r7c13 ≠ 4
Entering_level_tW3_with_<Fact-92770>
Entering_level_W3_with_<Fact-93975>
whip[3]: r7n4{c10 c4} - r6n4{c5 c6} - d3n4{r11c6 .} ==> r12c2 ≠ 4
whip[3]: a5n4{r8c12 r9c13} - c2n4{r9 r10} - r1n4{c6 .} ==> r13c7 ≠ 4
whip[2]: a8n4{r11c5 r3c10} - d13n4{r4c10 .} ==> r8c8 ≠ 4
whip[2]: a11n4{r9c6 r1c11} - r13n4{c12 .} ==> r9c4 ≠ 4
z-chain[3]: a5n4{r9c13 r3c7} - c8n4{r3 r13} - c13n4{r13 .} ==> r10c12 ≠ 4
z-chain[3]: a5n4{r9c13 r8c12} - a8n4{r8c2 r11c5} - d3n4{r12c5 .} ==> r3c6 ≠ 4
whip[3]: a5n4{r8c12 r9c13} - d12n4{r13c13 r4c9} - d2n4{r12c4 .} ==> r8c2 ≠ 4
t-whip[2]: c2n4{r10 r7} - d3n4{r11c6 .} ==> r3c9 ≠ 4
whip[2]: c9n4{r11 r6} - r10n4{c13 .} ==> r1c6 ≠ 4
z-chain[3]: r1n4{c8 c11} - c2n4{r10 r9} - d8n4{r9c13 .} ==> r13c8 ≠ 4
whip[1]: r13n4{c13 .} ==> r12c12 ≠ 4
z-chain[2]: r12n4{c11 c5} - a4n4{r7c10 .} ==> r6c4 ≠ 4
z-chain[3]: d3n4{r12c5 r7c10} - a9n4{r7c2 r3c11} - r12n4{c11 .} ==> r11c5 ≠ 4
whip[1]: a8n4{r3c10 .} ==> r3c8 ≠ 4
z-chain[2]: a8n4{r1c8 r3c10} - r13n4{c13 .} ==> r1c11 ≠ 4
z-chain[2]: r1n4{c7 c8} - a5n4{r9c13 .} ==> r8c7 ≠ 4
z-chain[2]: r1n4{c8 c7} - d3n4{r12c5 .} ==> r7c2 ≠ 4
z-chain[2]: c2n4{r9 r10} - r13n4{c12 .} ==> r11c13 ≠ 4
z-chain[2]: c13n4{r13 r9} - a8n4{r1c8 .} ==> r10c10 ≠ 4
z-chain[2]: c2n4{r9 r10} - c9n4{r4 .} ==> r11c4 ≠ 4
z-chain[2]: d1n4{r10c5 r9c6} - c2n4{r9 .} ==> r10c13 ≠ 4
biv-chain[2]: a4n4{r7c10 r6c9} - c8n4{r6 r1} ==> r3c10 ≠ 4
hidden-single-in-an-anti-diagonal ==> r1c8 = 4
hidden-single-in-a-column ==> r13c13 = 4
hidden-single-in-a-diagonal ==> r10c2 = 4
hidden-single-in-a-diagonal ==> r6c6 = 9
hidden-single-in-a-diagonal ==> r10c12 = 9
hidden-single-in-a-column ==> r7c4 = 4
hidden-single-in-a-row ==> r6c9 = 4
whip[3]: r1n6{c11 c6} - r7n6{c12 c3} - a4n6{r13c3 .} ==> r5c11 ≠ 6
whip[3]: r1n6{c11 c6} - a8n6{r13c7 r11c5} - c12n6{r4 .} ==> r3c9 ≠ 6
whip[3]: r1n13{c11 c7} - d4n13{r11c7 r5c13} - c10n13{r2 .} ==> r9c11 ≠ 13
Entering_level_S4_with_<Fact-99572>
Entering_level_BC4_with_<Fact-99697>
Entering_level_Z4_with_<Fact-104978>
z-chain[4]: a3n1{r4c6 r9c11} - a3n4{r9c11 r3c5} - c10n4{r11 r4} - r4n1{c10 .} ==> r4c6 ≠ 13
z-chain[4]: a3n1{r4c6 r9c11} - a3n4{r9c11 r3c5} - c10n4{r11 r4} - r4n1{c10 .} ==> r4c6 ≠ 11
z-chain[4]: a3n1{r4c6 r9c11} - a3n4{r9c11 r3c5} - c10n4{r11 r4} - r4n1{c10 .} ==> r4c6 ≠ 7
z-chain[4]: a3n1{r4c6 r9c11} - a3n4{r9c11 r3c5} - c10n4{r11 r4} - r4n1{c10 .} ==> r4c6 ≠ 6
z-chain[4]: a3n1{r4c6 r9c11} - a3n4{r9c11 r3c5} - c10n4{r11 r4} - r4n1{c10 .} ==> r4c6 ≠ 5
z-chain[4]: a3n1{r4c6 r9c11} - a3n4{r9c11 r3c5} - c10n4{r11 r4} - r4n1{c10 .} ==> r4c6 ≠ 3
Entering_level_tW4_with_<Fact-116948>
Entering_level_W4_with_<Fact-125421>
whip[4]: r1n6{c11 c6} - r7n6{c12 c3} - r3n6{c7 c10} - a4n6{r5c8 .} ==> r10c11 ≠ 6
whip[4]: r1n6{c7 c11} - c12n6{r13 r4} - a8n6{r11c5 r3c10} - d7n6{r11c10 .} ==> r7c13 ≠ 6
whip[3]: r7n6{c12 c11} - d10n6{r13c11 r6c5} - r8n6{c5 .} ==> r11c3 ≠ 6
whip[3]: r7n6{c11 c12} - c9n6{r4 r5} - a7n6{r4c10 .} ==> r11c7 ≠ 6
whip[4]: r7n6{c11 c12} - c1n6{r9 r4} - r1n6{c11 c7} - d11n6{r5c7 .} ==> r12c3 ≠ 6
whip[3]: r1n6{c11 c6} - r12n6{c8 c11} - r7n6{c11 .} ==> r5c7 ≠ 6
whip[4]: a8n6{r13c7 r3c10} - d7n6{r11c10 r13c8} - d1n6{r10c5 r11c4} - a3n6{r11c13 .} ==> r9c7 ≠ 6
whip[4]: c1n6{r12 r10} - r7n6{c11 c3} - a12n6{r6c4 r8c6} - a4n6{r3c6 .} ==> r4c9 ≠ 6
whip[4]: r7n6{c12 c11} - r1n6{c11 c7} - d1n6{r8c7 r10c5} - r4n6{c12 .} ==> r9c1 ≠ 6
whip[3]: c1n6{r10 r12} - c13n6{r11 r9} - c9n6{r5 .} ==> r10c8 ≠ 6
whip[4]: c1n6{r12 r10} - c13n6{r9 r12} - a13n6{r13c12 r5c4} - r6n6{c4 .} ==> r8c10 ≠ 6
whip[3]: r1n6{c7 c11} - d4n6{r7c11 r5c13} - a4n6{r10c13 .} ==> r13c6 ≠ 6
whip[3]: a7n6{r11c4 r6c12} - d5n6{r7c12 r8c11} - a12n6{r13c11 .} ==> r11c10 ≠ 6
whip[3]: d7n6{r13c8 r3c5} - d10n6{r6c5 r10c1} - c9n6{r5 .} ==> r13c7 ≠ 6
whip[3]: a8n6{r11c5 r3c10} - a3n6{r12c1 r11c13} - a2n6{r12c13 .} ==> r9c5 ≠ 6
whip[3]: d7n6{r3c5 r13c8} - a4n6{r5c8 r8c11} - r7n6{c11 .} ==> r3c7 ≠ 6
whip[2]: c7n6{r8 r6} - c10n6{r3 .} ==> r11c4 ≠ 6
whip[3]: c1n6{r12 r10} - d1n6{r10c5 r5c10} - d5n6{r9c10 .} ==> r8c5 ≠ 6
z-chain[4]: a10n6{r13c9 r12c8} - d11n6{r12c13 r1c11} - d7n6{r1c7 r3c5} - a8n6{r3c10 .} ==> r13c3 ≠ 6
whip[3]: c9n6{r13 r11} - r13n6{c11 c8} - c5n6{r3 .} ==> r5c4 ≠ 6
whip[3]: a8n6{r9c3 r11c5} - c4n6{r12 r6} - c3n6{r7 .} ==> r9c10 ≠ 6
z-chain[2]: c10n6{r5 r4} - d7n6{r1c7 .} ==> r3c8 ≠ 6
whip[3]: d2n6{r11c5 r12c4} - a2n6{r12c13 r6c7} - d7n6{r1c7 .} ==> r10c5 ≠ 6
z-chain[2]: c5n6{r11 r4} - c1n6{r4 .} ==> r11c13 ≠ 6
z-chain[2]: r11n6{c9 c5} - a3n6{r3c5 .} ==> r12c8 ≠ 6
whip[2]: c10n6{r5 r4} - a9n6{r4c12 .} ==> r5c8 ≠ 6
t-whip[2]: a4n6{r10c13 r8c11} - r7n6{c12 .} ==> r10c6 ≠ 6
whip[1]: a10n6{r13c9 .} ==> r6c3 ≠ 6
z-chain[2]: a10n6{r7c3 r13c9} - a4n6{r3c6 .} ==> r12c11 ≠ 6
z-chain[2]: a10n6{r13c9 r7c3} - r10n6{c13 .} ==> r5c9 ≠ 6
z-chain[2]: r5n6{c13 c10} - c7n6{r8 .} ==> r6c12 ≠ 6
biv-chain[2]: r5n6{c13 c10} - a7n6{r4c10 r1c7} ==> r13c8 ≠ 6
biv-chain[2]: c8n6{r11 r6} - d7n6{r3c5 r1c7} ==> r1c11 ≠ 6
z-chain[2]: d4n6{r7c11 r4c1} - a3n6{r12c1 .} ==> r3c11 ≠ 6
z-chain[2]: a9n6{r9c4 r4c12} - d11n6{r13c12 .} ==> r9c13 ≠ 6
z-chain[2]: r1n6{c7 c6} - c4n6{r12 .} ==> r6c7 ≠ 6
z-chain[2]: a2n6{r4c5 r12c13} - a8n6{r9c3 .} ==> r3c5 ≠ 6
hidden-single-in-a-diagonal ==> r1c7 = 6
whip[1]: r1n7{c11 .} ==> r9c11 ≠ 7, r9c6 ≠ 7
whip[1]: r1n13{c11 .} ==> r9c6 ≠ 13
whip[1]: d13n6{r8c6 .} ==> r6c4 ≠ 6
biv-chain[2]: c3n6{r7 r9} - d1n6{r9c6 r5c10} ==> r7c12 ≠ 6
z-chain[2]: d1n6{r9c6 r5c10} - d12n6{r3c10 .} ==> r9c11 ≠ 6
whip[3]: r1n7{c6 c11} - c9n7{r3 r13} - c6n7{r3 .} ==> r11c3 ≠ 7
whip[2]: r1n7{c6 c11} - c3n7{r9 .} ==> r12c8 ≠ 7
whip[3]: r1n7{c6 c11} - a8n7{r9c3 r3c10} - a6n7{r5c10 .} ==> r8c12 ≠ 7
z-chain[2]: c12n7{r12 r7} - d1n7{r5c10 .} ==> r12c5 ≠ 7
whip[3]: r1n13{c11 c6} - r10n13{c6 c5} - d2n13{r11c5 .} ==> r8c11 ≠ 13
z-chain[4]: c7n9{r11 r9} - a12n4{r9c7 r8c6} - d13n6{r8c6 r6c8} - a3n13{r6c8 .} ==> r11c7 ≠ 13
whip[3]: d4n13{r8c10 r5c13} - a3n13{r11c13 r6c8} - c7n13{r5 .} ==> r8c12 ≠ 13
whip[4]: r1n13{c6 c11} - c3n13{r6 r7} - c2n13{r6 r9} - c12n13{r6 .} ==> r12c4 ≠ 13
whip[4]: d4n13{r7c11 r8c10} - c7n13{r5 r6} - a6n13{r4c9 r11c3} - r9n13{c3 .} ==> r7c13 ≠ 13
t-whip[3]: d6n13{r12c8 r13c7} - r1n13{c6 c11} - r2n13{c11 .} ==> r10c6 ≠ 13
whip[3]: c4n13{r11 r9} - r10n13{c5 c13} - c2n13{r8 .} ==> r11c10 ≠ 13
whip[4]: r1n13{c6 c11} - a3n13{r5c7 r8c10} - r7n13{c11 c2} - r9n13{c2 .} ==> r11c3 ≠ 13
whip[3]: r1n13{c6 c11} - r2n13{c11 c9} - r11n13{c13 .} ==> r13c6 ≠ 13
whip[4]: c6n13{r1 r2} - c9n13{r5 r13} - d6n13{r12c8 r10c10} - r4n13{c10 .} ==> r7c12 ≠ 13
z-chain[2]: d5n13{r10c9 r11c8} - r1n13{c11 .} ==> r10c10 ≠ 13
whip[3]: a3n13{r11c13 r6c8} - r7n13{c7 c3} - a4n13{r13c3 .} ==> r5c13 ≠ 13
whip[3]: d5n13{r10c9 r11c8} - c13n13{r11 r9} - c4n13{r5 .} ==> r10c11 ≠ 13
whip[3]: d13n6{r6c8 r8c6} - c11n6{r13 r7} - d4n13{r7c11 .} ==> r6c8 ≠ 13
z-chain[2]: a3n13{r8c10 r11c13} - r10n13{c13 .} ==> r8c7 ≠ 13
whip[3]: r1n13{c11 c6} - c7n13{r13 r7} - a5n13{r5c9 .} ==> r12c13 ≠ 13
whip[3]: r8n13{c8 c10} - c13n13{r11 r9} - r7n13{c2 .} ==> r5c5 ≠ 13
whip[3]: a1n13{r12c12 r7c7} - d4n13{r7c11 r8c10} - a2n13{r9c10 .} ==> r4c12 ≠ 13
t-whip[3]: d2n13{r13c3 r11c5} - r8n13{c8 c10} - a2n13{r9c10 .} ==> r5c8 ≠ 13
whip[3]: r10n13{c13 c5} - r7n13{c2 c7} - r5n13{c9 .} ==> r12c11 ≠ 13
t-whip[3]: a13n13{r13c12 r6c5} - r10n13{c9 c13} - c2n13{r8 .} ==> r13c9 ≠ 13
z-chain[3]: r13n13{c12 c8} - d5n13{r11c8 r10c9} - d9n13{r10c13 .} ==> r9c3 ≠ 13
z-chain[3]: a2n13{r9c10 r6c7} - r9n13{c4 c13} - d4n13{r7c11 .} ==> r4c10 ≠ 13
z-chain[3]: r4n13{c9 c4} - c8n13{r13 r12} - r1n13{c6 .} ==> r8c5 ≠ 13
t-whip[3]: c12n13{r13 r2} - r1n13{c11 c6} - c9n13{r4 .} ==> r6c5 ≠ 13
z-chain[2]: a13n13{r13c12 r10c9} - c10n13{r9 .} ==> r5c7 ≠ 13
whip[1]: d11n13{r13c12 .} ==> r2c12 ≠ 13
z-chain[2]: d11n13{r13c12 r1c11} - d6n13{r1c6 .} ==> r13c8 ≠ 13
whip[2]: a3n13{r8c10 r11c13} - a7n13{r9c2 .} ==> r7c11 ≠ 13
z-chain[2]: d4n13{r6c12 r8c10} - a2n13{r9c10 .} ==> r6c3 ≠ 13
biv-chain[2]: a3n13{r8c10 r11c13} - a11n13{r11c8 r1c11} ==> r2c10 ≠ 13
z-chain[2]: a11n13{r11c8 r1c11} - r13n13{c12 .} ==> r11c5 ≠ 13
z-chain[2]: a8n13{r8c2 r13c7} - r6n13{c7 .} ==> r9c2 ≠ 13
z-chain[2]: r6n13{c7 c12} - d11n13{r13c12 .} ==> r2c11 ≠ 13
whip[1]: r2n13{c9 .} ==> r5c9 ≠ 13
whip[1]: r5n13{c11 .} ==> r11c4 ≠ 13
biv-chain[2]: a7n13{r6c12 r5c11} - d11n13{r1c11 r13c12} ==> r12c12 ≠ 13
whip[4]: r5n6{c10 c13} - r4n6{c12 c5} - a2n13{r4c5 r6c7} - a7n13{r6c12 .} ==> r5c10 ≠ 13
biv-chain[2]: a6n13{r4c9 r1c6} - r2n13{c6 c9} ==> r10c9 ≠ 13
whip[4]: r1n7{c6 c11} - a3n7{r5c7 r8c10} - c10n13{r8 r9} - a11n13{r11c8 .} ==> r3c8 ≠ 7
whip[3]: r1n7{c6 c11} - d10n7{r13c11 r12c12} - c3n7{r12 .} ==> r7c13 ≠ 7
whip[3]: a11n7{r11c8 r6c3} - r7n7{c3 c7} - a5n7{r3c7 .} ==> r8c11 ≠ 7
whip[2]: r8n7{c10 c6} - d6n7{r1c6 .} ==> r3c10 ≠ 7
whip[4]: r1n7{c11 c6} - c9n7{r4 r13} - a8n7{r13c7 r8c2} - c13n7{r10 .} ==> r5c7 ≠ 7
whip[4]: r1n7{c11 c6} - c7n7{r13 r6} - a12n7{r6c4 r4c2} - r8n7{c2 .} ==> r7c11 ≠ 7
whip[4]: r1n7{c11 c6} - r13n7{c6 c9} - a5n7{r9c13 r12c3} - d11n7{r12c13 .} ==> r3c11 ≠ 7
whip[4]: c11n7{r10 r13} - r1n7{c11 c6} - r10n7{c10 c5} - r9n7{c5 .} ==> r12c13 ≠ 7
whip[2]: d11n7{r9c3 r3c9} - a5n7{r5c9 .} ==> r6c3 ≠ 7
z-chain[4]: r5n6{c10 c13} - r7n6{c11 c3} - c3n7{r7 r9} - r1n7{c11 .} ==> r5c10 ≠ 7
whip[3]: d1n7{r11c4 r12c3} - c13n7{r9 r10} - r5n7{c13 .} ==> r11c6 ≠ 7
whip[2]: d3n7{r7c10 r5c12} - a1n7{r12c12 .} ==> r4c10 ≠ 7
whip[3]: a6n7{r4c9 r7c12} - r13n7{c6 c8} - c4n7{r4 .} ==> r11c9 ≠ 7
z-chain[3]: a11n7{r11c8 r1c11} - c9n7{r3 r13} - d3n7{r4c13 .} ==> r5c8 ≠ 7
whip[4]: c8n6{r6 r11} - a11n13{r11c8 r1c11} - a11n7{r1c11 r8c5} - a11n5{r8c5 .} ==> r6c8 ≠ 5
whip[4]: d11n7{r9c3 r1c11} - d5n7{r11c8 r7c12} - a8n7{r5c12 r13c7} - d12n7{r6c7 .} ==> r9c2 ≠ 7
z-chain[3]: d3n7{r7c10 r4c13} - d10n7{r11c13 r13c11} - r1n7{c11 .} ==> r7c12 ≠ 7
hidden-pairs-in-an-anti-diagonal: a6{n7 n13}{d6 d12} ==> d12a6 ≠ 12, d12a6 ≠ 11, d12a6 ≠ 5, d12a6 ≠ 3
whip[2]: a6n7{r1c6 r4c9} - a2n7{r6c7 .} ==> r10c10 ≠ 7
z-chain[3]: d6n7{r3c4 r13c7} - d3n7{r5c12 r4c13} - a6n7{r4c9 .} ==> r3c6 ≠ 7
z-chain[2]: a4n7{r10c13 r12c2} - d8n7{r7c2 .} ==> r4c13 ≠ 7
z-chain[3]: r12n7{c3 c12} - c13n7{r11 r10} - d3n7{r7c10 .} ==> r5c9 ≠ 7
z-chain[3]: r5n7{c13 c5} - r5n1{c5 c11} - a7n13{r5c11 .} ==> r6c12 ≠ 7
whip[1]: c12n7{r12 .} ==> r5c5 ≠ 7
z-chain[2]: c12n7{r5 r12} - c3n7{r12 .} ==> r8c2 ≠ 7
z-chain[2]: r8n7{c10 c5} - c11n7{r1 .} ==> r10c8 ≠ 7
whip[1]: d4n7{r11c7 .} ==> r11c13 ≠ 7
biv-chain[2]: d10n7{r13c11 r12c12} - r5n7{c12 c13} ==> r13c8 ≠ 7
hidden-pairs-in-a-column: c8{n6 n7}{r6 r11} ==> r11c8 ≠ 13, r11c8 ≠ 12, r11c8 ≠ 11, r11c8 ≠ 5, r11c8 ≠ 3, r6c8 ≠ 11, r6c8 ≠ 3
hidden-single-in-an-anti-diagonal ==> r1c11 = 13
naked-single ==> r1c6 = 7
naked-single ==> r4c9 = 13
hidden-single-in-a-diagonal ==> r11c13 = 13
hidden-single-in-a-diagonal ==> r6c12 = 13
hidden-single-in-a-diagonal ==> r2c6 = 13
hidden-single-in-a-diagonal ==> r10c5 = 13
hidden-single-in-a-diagonal ==> r5c4 = 13
hidden-single-in-a-row ==> r9c10 = 13
whip[1]: a9n7{r9c4 .} ==> r9c13 ≠ 7
whip[1]: a5n7{r12c3 .} ==> r7c3 ≠ 7
whip[1]: r7n7{c10 .} ==> r12c2 ≠ 7
whip[1]: r8n7{c10 .} ==> r3c5 ≠ 7
biv-chain[2]: a7n7{r11c4 r3c9} - r13n7{c9 c11} ==> r6c4 ≠ 7
biv-chain[2]: c10n7{r8 r7} - d9n7{r10c13 r3c7} ==> r11c7 ≠ 7
biv-chain[3]: d13n6{r8c6 r6c8} - c8n7{r6 r11} - a12n7{r4c2 r13c11} ==> r13c11 ≠ 6
whip[1]: r13n6{c12 .} ==> r10c9 ≠ 6
whip[1]: c11n6{r8 .} ==> r8c12 ≠ 6
whip[1]: a5n6{r10c1 .} ==> r4c1 ≠ 6
whip[1]: r4n6{c12 .} ==> r11c5 ≠ 6
whip[1]: d2n6{r12c4 .} ==> r9c4 ≠ 6
whip[1]: c4n6{r12 .} ==> r12c13 ≠ 6
whip[1]: a2n6{r4c5 .} ==> r3c6 ≠ 6
hidden-pairs-in-a-column: c13{n6 n7}{r5 r10} ==> r10c13 ≠ 12, r10c13 ≠ 5, r10c13 ≠ 3, r5c13 ≠ 12, r5c13 ≠ 9, r5c13 ≠ 5, r5c13 ≠ 3
hidden-single-in-a-diagonal ==> r11c7 = 9
hidden-single-in-a-row ==> r2c13 = 9
whip[1]: d4n12{r10c8 .} ==> r10c1 ≠ 12
whip[1]: c1n12{r9 .} ==> r9c6 ≠ 12
whip[1]: d1n12{r11c4 .} ==> r11c10 ≠ 12
z-chain[2]: a11n12{r4c1 r8c5} - d1n12{r8c7 .} ==> r4c10 ≠ 12
t-whip[2]: c13n12{r12 r7} - r11n12{c9 .} ==> r4c5 ≠ 12
t-whip[2]: c13n11{r12 r9} - c1n11{r10 .} ==> r12c8 ≠ 11, r12c5 ≠ 11
whip[1]: d3n11{r11c6 .} ==> r4c12 ≠ 11
whip[2]: d4n5{r10c8 r7c11} - d9n5{r12c11 .} ==> r8c6 ≠ 5
whip[2]: r11n12{c5 c9} - r10n12{c9 .} ==> r5c11 ≠ 12
biv-chain[3]: d8n6{r4c5 r13c9} - d9n6{r7c3 r10c13} - r10n7{c13 c11} ==> r4c5 ≠ 7
whip[1]: c5n7{r9 .} ==> r9c4 ≠ 7
whip[1]: d8n7{r13c9 .} ==> r6c2 ≠ 7
whip[1]: r6n7{c8 .} ==> r7c7 ≠ 7
biv-chain[3]: r7n7{c2 c10} - r10c13{n7 n6} - a10n6{r7c3 r13c9} ==> r13c9 ≠ 7
hidden-single-in-an-anti-diagonal ==> r9c5 = 7
naked-single ==> r6c8 = 6
naked-single ==> r11c8 = 7
hidden-single-in-an-anti-diagonal ==> r13c11 = 7
hidden-single-in-an-anti-diagonal ==> r6c7 = 7
hidden-single-in-an-anti-diagonal ==> r12c3 = 7
hidden-single-in-a-diagonal ==> r10c13 = 7
naked-single ==> r5c13 = 6
hidden-single-in-a-diagonal ==> r12c4 = 6
hidden-single-in-an-anti-diagonal ==> r4c5 = 6
hidden-single-in-an-anti-diagonal ==> r7c3 = 6
hidden-single-in-an-anti-diagonal ==> r12c8 = 13
hidden-single-in-an-anti-diagonal ==> r7c7 = 13
hidden-single-in-a-diagonal ==> r13c3 = 13
hidden-single-in-a-row ==> r8c2 = 13
hidden-single-in-an-anti-diagonal ==> r3c10 = 6
hidden-single-in-a-diagonal ==> r13c12 = 6
hidden-single-in-a-row ==> r9c6 = 6
hidden-single-in-a-column ==> r11c9 = 6
hidden-single-in-an-anti-diagonal ==> r3c8 = 9
hidden-single-in-an-anti-diagonal ==> r9c4 = 9
hidden-single-in-a-diagonal ==> r12c2 = 9
hidden-single-in-a-column ==> r5c11 = 9
hidden-single-in-an-anti-diagonal ==> r4c10 = 1
naked-single ==> r4c6 = 4
hidden-single-in-a-diagonal ==> r11c10 = 4
hidden-single-in-a-column ==> r12c5 = 4
hidden-single-in-a-row ==> r3c11 = 4
hidden-single-in-an-anti-diagonal ==> r8c12 = 4
hidden-single-in-a-column ==> r9c7 = 4
hidden-single-in-an-anti-diagonal ==> r9c11 = 1
hidden-single-in-a-diagonal ==> r5c5 = 1
hidden-single-in-a-column ==> r10c6 = 1
hidden-single-in-an-anti-diagonal ==> r10c1 = 6
hidden-single-in-a-column ==> r8c11 = 6
hidden-single-in-an-anti-diagonal ==> r7c2 = 7
hidden-single-in-a-diagonal ==> r8c10 = 7
hidden-single-in-a-row ==> r8c5 = 5
hidden-single-in-an-anti-diagonal ==> r5c7 = 5
hidden-single-in-a-column ==> r7c10 = 5
hidden-single-in-a-column ==> r13c6 = 5
hidden-single-in-a-column ==> r6c2 = 5
hidden-single-in-an-anti-diagonal ==> r10c8 = 5
hidden-single-in-a-diagonal ==> r12c11 = 5
hidden-single-in-a-column ==> r3c4 = 5
hidden-single-in-a-row ==> r4c12 = 5
hidden-single-in-a-diagonal ==> r2c9 = 5
hidden-single-in-a-row ==> r9c13 = 5
hidden-single-in-an-anti-diagonal ==> r11c3 = 5
hidden-single-in-a-row ==> r5c12 = 7
hidden-single-in-a-row ==> r3c9 = 7
hidden-single-in-a-diagonal ==> r4c4 = 7
x-wing-in-diags-w-transv-columns: n12{d7 d12}{c8 c11} ==> d2c8 ≠ 12, d4c11 ≠ 12
naked-single ==> r7c11 = 3
naked-single ==> r4c1 = 12
naked-single ==> r4c2 = 11
naked-single ==> r4c13 = 3
naked-single ==> r11c6 = 11
naked-single ==> r11c5 = 12
naked-single ==> r11c4 = 3
naked-single ==> r6c4 = 12
naked-single ==> r3c7 = 11
naked-single ==> r3c5 = 3
naked-single ==> r3c6 = 12
naked-single ==> r5c8 = 3
naked-single ==> r13c9 = 11
naked-single ==> r2c11 = 12
naked-single ==> r2c10 = 3
naked-single ==> r2c12 = 11
naked-single ==> r9c3 = 11
naked-single ==> r12c13 = 12
naked-single ==> r7c13 = 11
naked-single ==> r10c10 = 12
naked-single ==> r5c10 = 11
naked-single ==> r10c9 = 3
naked-single ==> r12c12 = 3
naked-single ==> r10c11 = 11
naked-single ==> r6c3 = 3
naked-single ==> r6c5 = 11
naked-single ==> r12c1 = 11
naked-single ==> r13c8 = 12
naked-single ==> r5c9 = 12
naked-single ==> r8c7 = 12
naked-single ==> r9c1 = 3
naked-single ==> r13c7 = 3
naked-single ==> r8c6 = 3
naked-single ==> r7c12 = 12
naked-single ==> r9c2 = 12
naked-single ==> r8c8 = 11
PUZZLE 0 IS SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[4]
   53CB976428D1A
   76428D1A53CB9
   D1A53CB976428
   CB976428D1A53
   428D1A53CB976
   A53CB976428D1
   976428D1A53CB
   8D1A53CB97642
   3CB976428D1A5
   6428D1A53CB97
   1A53CB976428D
   B976428D1A53C
   28D1A53CB9764

nb-facts = <Fact-183246>
Puzzle (. 3 C B 9 . . . . 8 . 1 A 7 6 4 . 8 . 1 A . . . . . D 1 . . . . . . . . . 2 . . . 9 . . . 2 8 . . . . . 4 2 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . A . . . . . . . . . 8 . . . . . . 2 . . . A . . . . . . . A . . . . 9 . . .) :
init-time = 2.85s, solve-time = 3m 1.54s, total-time = 3m 4.39s
nb-facts=<Fact-183246>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************


