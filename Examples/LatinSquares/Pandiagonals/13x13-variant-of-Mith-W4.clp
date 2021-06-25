
The original (non-minimal) puzzle by Mith was in Z2:

. . . . . 9 . . . C D . .
. . . 2 . . . . . . . . .
A . 8 . . 5 . . . 9 . . .
. . . . . . . 2 . . . . .
. A . . . . . . 1 . . . .
. . . . . . . . . 3 . . .
. . . 4 . . . . . . . . 1
. . . . . . . . . . C D .
3 . . . 9 . . . . . . . .
. . D . . . . . . . . . .
. 6 . . . . . . . . . . .
. . A . 6 . . . . . . . .
. . . . . . B . . 5 7 . .

.....9...CD.....2.........A.8..5...9..........2......A......1.............3......4........1..........CD.3...9..........D...........6.............A.6..............B..57..


I obtained the variant considered here by deleting 6 candidates, with the goal of finding harder 13x13 puzzles still solvable by LatinRules.
This variant is in W4.


. . . . . . . . . . D . .
. . . 2 . . . . . . . . .
A . 8 . . 5 . . . . . . .
. . . . . . . 2 . . . . .
. A . . . . . . 1 . . . .
. . . . . . . . . 3 . . .
. . . 4 . . . . . . . . 1
. . . . . . . . . . C D .
. . . . 9 . . . . . . . .
. . D . . . . . . . . . .
. 6 . . . . . . . . . . .
. . A . 6 . . . . . . . .
. . . . . . B . . . . . .

..........D.....2.........A.8..5..............2......A......1.............3......4........1..........CD.....9..........D...........6.............A.6..............B......


(solve "..........D.....2.........A.8..5..............2......A......1.............3......4........1..........CD.....9..........D...........6.............A.6..............B......; #3/1/2/8")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
..........D.....2.........A.8..5..............2......A......1.............3......4........1..........CD.....9..........D...........6.............A.6..............B......; #3/1/2/8
19 givens, 1226 candidates
entering BRT
Starting_init_links_with_<Fact-13293>
Resolution state after Singles:
12345679BC  1245789BC   134579BC    136789AB    457B        2346789C    2345789AC   1346789AC   23456789ABC 125678ABC   D           12345789BC  2345678ABC
1456789BCD  134579BCD   1345679BC   2           3478        4789BC      1346789ACD  345789ABC   356789ACD   1456789ABC  134578AB    35678BC     3456789BCD
A           123479BCD   8           3679C       1347BCD     5           479C        13679BCD    3479BC      12479C      23467B      123467BC    2679BC
1356789BC   134579BD    345679C     135679ABCD  13478ABCD   1346789ABCD 136789AD    2           345789ABC   4578ABC     13456789    1456789ABC  34578BCD
34567BD     A           2345679BC   36789BCD    23457BCD    236789BCD   3456789C    34789B      1           2456789BCD  245789B     2345789C    23456789BCD
2456789C    124578BCD   12679BC     156789BCD   12578ABCD   14679ABC    1245789AC   45678ABCD   246789BD    3           1245789B    245789ABC   45679AD
2356789CD   23789BCD    23567BC     4           3578BC      23789ABC    23567ACD    356789BCD   56789ABCD   2789BD      5789B       35679AB     1
234789B     12345789    1235679B    135678AB    123578B     234678B     123456789   145679AB    2345789B    1456789AB   C           D           23456789AB
12345678BCD 23578BC     134567C     13578ABC    9           123678BC    1245678CD   134578BCD   234567ABCD  14567ABD    345678      1234678AB   478BC
5789BC      1345789BC   D           35678AC     1234578BC   124678ABC   1235789C    13456789BC  345679AB    245679C     123456789AB 1346789ABC  2346789AB
134789B     6           23457BC     35789BC     124578ACD   1234789BCD  1234578ACD  13579B      2345789C    1245789ABCD 123479AB    12345789ABC 35789ABCD
1345789BC   23478BD     A           15789BCD    6           1234789CD   134579D     34578C      235789BC    124789BCD   12345789B   123579BC    345789BC
2345678CD   1345789CD   124679      5789C       1234578ACD  3479A       B           13456789ACD 234678ACD   1256789C    12356789    13456789AC  234579AC

1226 candidates, 23260 csp-links and 23260 links. Density = 3.1%
Starting non trivial part of solution.
Entering_level_W1_with_<Fact-106336>
whip[1]: r3n13{c8 .} ==> r6c5 ≠ 13, r13c5 ≠ 13

Resolution state after Singles and whips[1]:
12345679BC  1245789BC   134579BC    136789AB    457B        2346789C    2345789AC   1346789AC   23456789ABC 125678ABC   D           12345789BC  2345678ABC
1456789BCD  134579BCD   1345679BC   2           3478        4789BC      1346789ACD  345789ABC   356789ACD   1456789ABC  134578AB    35678BC     3456789BCD
A           123479BCD   8           3679C       1347BCD     5           479C        13679BCD    3479BC      12479C      23467B      123467BC    2679BC
1356789BC   134579BD    345679C     135679ABCD  13478ABCD   1346789ABCD 136789AD    2           345789ABC   4578ABC     13456789    1456789ABC  34578BCD
34567BD     A           2345679BC   36789BCD    23457BCD    236789BCD   3456789C    34789B      1           2456789BCD  245789B     2345789C    23456789BCD
2456789C    124578BCD   12679BC     156789BCD   12578ABC    14679ABC    1245789AC   45678ABCD   246789BD    3           1245789B    245789ABC   45679AD
2356789CD   23789BCD    23567BC     4           3578BC      23789ABC    23567ACD    356789BCD   56789ABCD   2789BD      5789B       35679AB     1
234789B     12345789    1235679B    135678AB    123578B     234678B     123456789   145679AB    2345789B    1456789AB   C           D           23456789AB
12345678BCD 23578BC     134567C     13578ABC    9           123678BC    1245678CD   134578BCD   234567ABCD  14567ABD    345678      1234678AB   478BC
5789BC      1345789BC   D           35678AC     1234578BC   124678ABC   1235789C    13456789BC  345679AB    245679C     123456789AB 1346789ABC  2346789AB
134789B     6           23457BC     35789BC     124578ACD   1234789BCD  1234578ACD  13579B      2345789C    1245789ABCD 123479AB    12345789ABC 35789ABCD
1345789BC   23478BD     A           15789BCD    6           1234789CD   134579D     34578C      235789BC    124789BCD   12345789B   123579BC    345789BC
2345678CD   1345789CD   124679      5789C       1234578AC   3479A       B           13456789ACD 234678ACD   1256789C    12356789    13456789AC  234579AC

1224 candidates.

Entering_relation_bivalue_with_<Fact-106339>
Entering_level_S2_with_<Fact-106340>
Entering_level_BC2_with_<Fact-106343>
Entering_level_Z2_with_<Fact-106344>
z-chain[2]: r3n13{c8 c2} - c6n13{r12 .} ==> r11c13 ≠ 13
z-chain[2]: r8n10{c13 c10} - r9n10{c10 .} ==> r4c4 ≠ 10
Entering_level_tW2_with_<Fact-106400>
t-whip[2]: c13n13{r6 r5} - c6n13{r5 .} ==> r4c2 ≠ 13
t-whip[2]: d13n13{r13c1 r7c7} - a4n13{r7c10 .} ==> r13c2 ≠ 13
Entering_level_W2_with_<Fact-106413>
whip[2]: c11n10{r11 r10} - r9n10{c10 .} ==> r13c13 ≠ 10
whip[2]: c11n10{r11 r10} - a4n10{r9c12 .} ==> r11c7 ≠ 10
Entering_level_S3_with_<Fact-106418>
Entering_level_BC3_with_<Fact-106421>
Entering_level_Z3_with_<Fact-106422>
z-chain[3]: r13n13{c8 c9} - d10n13{r2c9 r4c7} - d13n13{r12c2 .} ==> r7c8 ≠ 13
z-chain[2]: d1n13{r5c10 r6c9} - a12n13{r6c4 .} ==> r2c7 ≠ 13
whip[2]: d1n13{r5c10 r6c9} - a10n13{r13c9 .} ==> r5c13 ≠ 13
whip[2]: c13n13{r6 r4} - c6n13{r11 .} ==> r2c9 ≠ 13
z-chain[2]: d10n13{r5c6 r3c8} - r13n13{c8 .} ==> r4c5 ≠ 13
whip[1]: a2n13{r13c1 .} ==> r5c1 ≠ 13
z-chain[2]: d5n13{r12c7 r6c13} - d1n13{r6c9 .} ==> r12c10 ≠ 13
z-chain[2]: c10n13{r11 r5} - r2n13{c13 .} ==> r9c8 ≠ 13
whip[1]: c8n13{r13 .} ==> r3c5 ≠ 13
z-chain[2]: a3n13{r6c8 r7c9} - c5n13{r11 .} ==> r6c4 ≠ 13
whip[1]: a12n13{r9c7 .} ==> r2c1 ≠ 13
whip[1]: r2n13{c13 .} ==> r4c13 ≠ 13
whip[1]: c13n13{r6 .} ==> r6c9 ≠ 13
whip[1]: a4n13{r12c2 .} ==> r7c7 ≠ 13
whip[1]: d3n13{r11c6 .} ==> r7c2 ≠ 13
biv-chain[2]: c5n13{r5 r11} - a12n13{r9c7 r2c13} ==> r5c10 ≠ 13, r2c2 ≠ 13
hidden-single-in-a-row ==> r2c13 = 13
whip[1]: r6n13{c8 .} ==> r13c8 ≠ 13, r12c2 ≠ 13
whip[1]: c2n13{r6 .} ==> r11c7 ≠ 13, r11c10 ≠ 13
whip[1]: r11n13{c6 .} ==> r12c6 ≠ 13
whip[1]: a8n13{r11c5 .} ==> r7c9 ≠ 13
Entering_level_tW3_with_<Fact-110235>
Entering_level_W3_with_<Fact-112318>
whip[3]: c11n10{r11 r2} - d10n10{r2c9 r11c13} - c10n10{r1 .} ==> r4c5 ≠ 10
z-chain[2]: a2n10{r11c12 r6c7} - c11n10{r2 .} ==> r11c10 ≠ 10
whip[3]: r7n10{c12 c7} - a2n10{r6c7 r11c12} - d2n10{r4c12 .} ==> r10c9 ≠ 10
whip[3]: a2n10{r11c12 r6c7} - d5n10{r9c10 r13c6} - r4n10{c6 .} ==> r9c12 ≠ 10
z-chain[2]: r9n10{c10 c9} - c11n10{r11 .} ==> r6c7 ≠ 10
z-chain[2]: a4n10{r10c13 r1c4} - c5n10{r13 .} ==> r11c13 ≠ 10
t-whip[2]: a4n10{r4c7 r10c13} - a2n10{r11c12 .} ==> r1c10 ≠ 10
whip[2]: d10n10{r6c5 r4c7} - d13n10{r7c7 .} ==> r6c13 ≠ 10
z-chain[2]: d5n10{r13c6 r7c12} - c7n10{r2 .} ==> r4c10 ≠ 10
whip[2]: a4n10{r10c13 r1c4} - a7n10{r6c12 .} ==> r4c6 ≠ 10
z-chain[2]: a3n10{r8c10 r10c12} - r11n10{c12 .} ==> r8c8 ≠ 10
z-chain[2]: a3n10{r10c12 r7c9} - c5n10{r11 .} ==> r6c12 ≠ 10
whip[1]: a7n10{r13c6 .} ==> r13c8 ≠ 10
z-chain[2]: a7n10{r2c8 r13c6} - r9n10{c10 .} ==> r1c9 ≠ 10
z-chain[2]: a9n10{r4c12 r9c4} - d5n10{r9c10 .} ==> r13c12 ≠ 10
z-chain[2]: r13n10{c9 c6} - r9n10{c10 .} ==> r4c9 ≠ 10
z-chain[2]: d12n10{r7c6 r9c4} - d11n10{r2c10 .} ==> r10c6 ≠ 10
z-chain[2]: a10n10{r8c4 r13c9} - r9n10{c9 .} ==> r2c10 ≠ 10
whip[1]: c10n10{r9 .} ==> r9c9 ≠ 10
biv-chain[2]: c10n10{r8 r9} - a9n10{r9c4 r4c12} ==> r10c12 ≠ 10, r7c9 ≠ 10
whip[1]: c9n10{r13 .} ==> r1c8 ≠ 10, r2c7 ≠ 10, r2c11 ≠ 10
whip[1]: c11n10{r11 .} ==> r11c12 ≠ 10       <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
biv-chain[2]: a3n10{r8c10 r6c8} - d9n10{r2c8 r10c13} ==> r8c13 ≠ 10, r1c4 ≠ 10
whip[1]: r1n10{c13 .} ==> r7c7 ≠ 10
whip[1]: r7n10{c12 .} ==> r13c6 ≠ 10
whip[1]: c6n10{r7 .} ==> r6c5 ≠ 10
whip[1]: c13n10{r10 .} ==> r10c4 ≠ 10
biv-chain[3]: r4n10{c7 c12} - r9n10{c4 c10} - d5n13{r9c10 r12c7} ==> r4c7 ≠ 13
hidden-single-in-an-anti-diagonal ==> r7c10 = 13
hidden-single-in-an-anti-diagonal ==> r11c5 = 13
hidden-single-in-an-anti-diagonal ==> r2c9 = 10
hidden-single-in-an-anti-diagonal ==> r1c7 = 10
hidden-single-in-an-anti-diagonal ==> r7c6 = 10
hidden-single-in-an-anti-diagonal ==> r11c11 = 10
hidden-single-in-a-diagonal ==> r8c4 = 10
hidden-single-in-an-anti-diagonal ==> r6c8 = 10
hidden-single-in-an-anti-diagonal ==> r4c6 = 13
hidden-single-in-an-anti-diagonal ==> r9c9 = 13
hidden-single-in-an-anti-diagonal ==> r5c4 = 13
hidden-single-in-a-column ==> r6c2 = 13
hidden-single-in-a-row ==> r3c8 = 13
hidden-single-in-a-row ==> r13c1 = 13
hidden-single-in-a-diagonal ==> r13c5 = 10
hidden-single-in-a-column ==> r9c10 = 10
hidden-single-in-a-column ==> r4c12 = 10
hidden-single-in-a-column ==> r10c13 = 10
hidden-single-in-a-row ==> r12c7 = 13
whip[1]: d5n1{r11c8 .} ==> r10c8 ≠ 1, r4c1 ≠ 1
whip[3]: d5n1{r11c8 r4c2} - r3n1{c2 c12} - d10n1{r12c12 .} ==> r8c5 ≠ 1
z-chain[3]: d5n1{r11c8 r4c2} - c5n1{r4 r10} - r3n1{c12 .} ==> r11c10 ≠ 1
whip[3]: c5n1{r10 r6} - r3n1{c5 c10} - c11n1{r2 .} ==> r10c12 ≠ 1
whip[3]: d5n1{r4c2 r11c8} - d8n1{r6c3 r4c5} - d7n1{r3c5 .} ==> r9c7 ≠ 1
whip[3]: r3n1{c12 c10} - a12n1{r12c10 r6c4} - r1n1{c4 .} ==> r13c2 ≠ 1
whip[3]: d5n1{r4c2 r11c8} - r13n1{c10 c3} - a10n1{r10c6 .} ==> r1c12 ≠ 1
whip[3]: a12n1{r13c11 r4c2} - a6n1{r10c2 r2c7} - a2n1{r6c7 .} ==> r12c11 ≠ 1
whip[3]: d5n1{r11c8 r4c2} - d9n1{r8c2 r11c12} - r10n1{c11 .} ==> r9c6 ≠ 1
whip[3]: a3n1{r12c1 r1c3} - a11n1{r10c7 r11c8} - d4n1{r11c7 .} ==> r3c10 ≠ 1
t-whip[3]: r3n1{c12 c2} - d5n1{r4c2 r11c8} - r8n1{c8 .} ==> r10c5 ≠ 1
z-chain[2]: r10n1{c11 c7} - d5n1{r11c8 .} ==> r1c2 ≠ 1
whip[2]: r3n1{c12 c5} - a2n1{r10c11 .} ==> r11c7 ≠ 1
t-whip[3]: c5n1{r6 r4} - d5n1{r4c2 r11c8} - c7n1{r10 .} ==> r3c2 ≠ 1
whip[1]: r3n1{c12 .} ==> r9c12 ≠ 1
z-chain[2]: d7n1{r10c11 r13c8} - d5n1{r11c8 .} ==> r4c5 ≠ 1
z-chain[2]: c5n1{r6 r3} - r4n1{c4 .} ==> r13c11 ≠ 1
z-chain[3]: r3n1{c5 c12} - c11n1{r2 r6} - c5n1{r6 .} ==> r4c4 ≠ 1
whip[3]: d5n1{r11c8 r4c2} - a8n1{r8c2 r12c6} - c4n1{r1 .} ==> r9c8 ≠ 1
whip[2]: r9n1{c4 c3} - d8n1{r6c3 .} ==> r12c4 ≠ 1
z-chain[2]: r12n1{c10 c12} - r3n1{c12 .} ==> r8c10 ≠ 1
t-whip[2]: r9n1{c4 c3} - d4n1{r12c6 .} ==> r6c4 ≠ 1
z-chain[2]: c4n1{r9 r1} - r13n1{c3 .} ==> r2c10 ≠ 1
whip[2]: d5n1{r4c2 r11c8} - d9n1{r13c10 .} ==> r10c2 ≠ 1
z-chain[2]: a6n1{r6c11 r9c1} - a2n1{r11c12 .} ==> r2c11 ≠ 1
z-chain[2]: c11n1{r10 r4} - d5n1{r4c2 .} ==> r10c7 ≠ 1
biv-chain[2]: r10n1{c11 c6} - r3n1{c12 c5} ==> r13c8 ≠ 1
biv-chain[2]: r3n1{c12 c5} - r10n1{c11 c6} ==> r1c10 ≠ 1
whip[1]: c10n1{r13 .} ==> r6c3 ≠ 1
whip[1]: a11n1{r13c10 .} ==> r11c12 ≠ 1
biv-chain[2]: a10n1{r10c6 r3c12} - c5n1{r3 r6} ==> r2c1 ≠ 1, r6c6 ≠ 1
whip[1]: d11n1{r13c12 .} ==> r13c3 ≠ 1
whip[3]: r7n2{c3 c7} - c1n2{r1 r6} - d4n2{r5c13 .} ==> r8c2 ≠ 2
whip[3]: d6n2{r11c9 r10c10} - a8n2{r3c10 r7c1} - a6n2{r9c1 .} ==> r11c6 ≠ 2
whip[3]: d3n2{r10c7 r5c12} - c5n2{r5 r10} - a1n2{r1c1 .} ==> r6c7 ≠ 2
whip[3]: d6n2{r1c6 r10c10} - d12n2{r13c13 r8c5} - c13n2{r3 .} ==> r1c9 ≠ 2
whip[3]: d12n2{r13c13 r1c12} - d6n2{r11c9 r6c1} - d8n2{r8c1 .} ==> r13c10 ≠ 2
whip[3]: d6n2{r1c6 r11c9} - r13n2{c11 c3} - a10n2{r7c3 .} ==> r1c1 ≠ 2
whip[3]: c1n2{r9 r6} - c9n2{r11 r13} - c3n2{r6 .} ==> r8c13 ≠ 2
Entering_level_S4_with_<Fact-123072>
Entering_level_BC4_with_<Fact-123075>
Entering_level_Z4_with_<Fact-123100>
Entering_level_tW4_with_<Fact-125310>
Entering_level_W4_with_<Fact-128478>
whip[4]: c13n2{r5 r13} - c5n2{r5 r10} - a4n2{r6c9 r9c12} - a8n2{r5c12 .} ==> r3c2 ≠ 2
whip[3]: d3n2{r10c7 r5c12} - r3n2{c12 c13} - d12n2{r13c13 .} ==> r10c11 ≠ 2
whip[3]: c5n2{r10 r5} - r10n2{c10 c6} - a2n2{r5c6 .} ==> r8c7 ≠ 2
whip[3]: c7n2{r11 r7} - c2n2{r12 r9} - r13n2{c11 .} ==> r10c6 ≠ 2
whip[3]: c5n2{r10 r5} - r10n2{c10 c7} - c11n2{r6 .} ==> r8c3 ≠ 2
whip[3]: d12n2{r13c13 r1c12} - r13n2{c11 c9} - r8n2{c9 .} ==> r3c13 ≠ 2
z-chain[2]: r3n2{c12 c11} - a13n2{r12c11 .} ==> r1c10 ≠ 2
z-chain[2]: r3n2{c12 c11} - c13n2{r5 .} ==> r1c12 ≠ 2
z-chain[2]: c13n2{r13 r5} - r10n2{c5 .} ==> r7c7 ≠ 2
z-chain[2]: r7n2{c3 c2} - d2n2{r1c2 .} ==> r5c3 ≠ 2
t-whip[2]: a10n2{r11c7 r13c9} - c3n2{r13 .} ==> r11c12 ≠ 2
t-whip[2]: r10n2{c7 c10} - d12n2{r13c13 .} ==> r9c6 ≠ 2
z-chain[3]: a2n2{r8c9 r1c2} - c6n2{r1 r8} - r3n2{c11 .} ==> r5c12 ≠ 2
whip[2]: c12n2{r9 r12} - r13n2{c13 .} ==> r6c9 ≠ 2
z-chain[2]: d1n2{r10c5 r3c12} - d12n2{r3c10 .} ==> r5c5 ≠ 2
z-chain[2]: c5n2{r10 r8} - r10n2{c7 .} ==> r6c1 ≠ 2
z-chain[2]: d6n2{r11c9 r1c6} - a8n2{r12c6 .} ==> r11c10 ≠ 2
z-chain[2]: r11n2{c9 c3} - a4n2{r12c2 .} ==> r9c7 ≠ 2
z-chain[2]: a12n2{r13c11 r8c6} - c3n2{r11 .} ==> r13c9 ≠ 2
z-chain[2]: a10n2{r11c7 r3c12} - a4n2{r9c12 .} ==> r11c3 ≠ 2
z-chain[2]: d1n2{r10c5 r3c12} - r11n2{c7 .} ==> r10c10 ≠ 2
whip[1]: d6n2{r11c9 .} ==> r8c6 ≠ 2
whip[1]: d13n2{r12c2 .} ==> r12c11 ≠ 2
whip[1]: d9n2{r9c1 .} ==> r7c1 ≠ 2
whip[1]: r7n2{c3 .} ==> r6c3 ≠ 2
whip[1]: a11n2{r12c9 .} ==> r8c9 ≠ 2
whip[1]: c9n2{r12 .} ==> r12c10 ≠ 2
whip[1]: c10n2{r5 .} ==> r3c12 ≠ 2
whip[1]: c12n2{r12 .} ==> r9c2 ≠ 2
whip[1]: d1n2{r10c5 .} ==> r5c13 ≠ 2
whip[1]: a2n2{r5c6 .} ==> r1c6 ≠ 2, r5c11 ≠ 2
hidden-single-in-a-diagonal ==> r11c9 = 2
hidden-single-in-an-anti-diagonal ==> r7c3 = 2
hidden-single-in-a-diagonal ==> r8c1 = 2
hidden-single-in-a-diagonal ==> r12c6 = 2
hidden-single-in-a-diagonal ==> r13c13 = 2
hidden-single-in-an-anti-diagonal ==> r6c5 = 2
hidden-single-in-a-column ==> r3c5 = 1
hidden-single-in-an-anti-diagonal ==> r10c6 = 1
hidden-single-in-an-anti-diagonal ==> r5c10 = 2
hidden-single-in-a-diagonal ==> r10c7 = 2
hidden-single-in-a-column ==> r3c11 = 2
hidden-single-in-a-row ==> r1c2 = 2
hidden-single-in-an-anti-diagonal ==> r9c12 = 2
whip[1]: d3n1{r6c11 .} ==> r2c7 ≠ 1
whip[1]: a9n1{r9c4 .} ==> r9c3 ≠ 1
whip[3]: r3n6{c13 c4} - c11n6{r10 r13} - r4n6{c11 .} ==> r9c6 ≠ 6
whip[3]: a10n6{r5c1 r13c9} - c8n6{r1 r10} - d9n6{r6c4 .} ==> r1c1 ≠ 6
whip[4]: d5n6{r7c12 r10c9} - c8n6{r10 r8} - d13n6{r8c6 r2c12} - d1n6{r3c12 .} ==> r7c1 ≠ 6
whip[3]: r7n6{c9 c12} - c6n6{r1 r5} - r3n6{c4 .} ==> r8c8 ≠ 6
whip[3]: c8n6{r13 r1} - c4n6{r10 r6} - c6n6{r8 .} ==> r10c11 ≠ 6
whip[3]: d9n6{r9c1 r13c10} - c11n6{r13 r4} - a10n6{r3c12 .} ==> r6c1 ≠ 6
whip[3]: c11n6{r13 r4} - c1n6{r4 r5} - r7n6{c12 .} ==> r9c7 ≠ 6
z-chain[3]: r9n6{c11 c1} - d7n6{r8c13 r13c8} - c11n6{r13 .} ==> r4c3 ≠ 6
whip[3]: r9n6{c11 c3} - c11n6{r4 r13} - d9n6{r6c4 .} ==> r1c6 ≠ 6
z-chain[2]: c6n6{r8 r6} - d7n6{r4c4 .} ==> r8c3 ≠ 6
t-whip[2]: c11n6{r9 r13} - c6n6{r8 .} ==> r9c3 ≠ 6
whip[2]: r9n6{c1 c11} - c10n6{r8 .} ==> r1c9 ≠ 6
z-chain[2]: a9n6{r13c8 r2c10} - c6n6{r6 .} ==> r5c3 ≠ 6
z-chain[2]: a12n6{r10c8 r13c11} - d6n6{r9c11 .} ==> r10c4 ≠ 6
z-chain[2]: a8n6{r4c11 r6c13} - r3n6{c13 .} ==> r7c8 ≠ 6
z-chain[2]: a2n6{r5c6 r3c4} - d7n6{r4c4 .} ==> r5c13 ≠ 6
whip[1]: a9n6{r13c8 .} ==> r13c10 ≠ 6, r13c12 ≠ 6
z-chain[2]: a9n6{r2c10 r13c8} - c3n6{r13 .} ==> r2c12 ≠ 6
whip[1]: d13n6{r8c6 .} ==> r8c7 ≠ 6
z-chain[2]: a11n6{r6c3 r4c1} - a13n6{r2c1 .} ==> r6c13 ≠ 6
biv-chain[2]: r9n6{c1 c11} - a8n6{r4c11 r1c8} ==> r2c7 ≠ 6
z-chain[2]: a8n6{r1c8 r4c11} - c9n6{r6 .} ==> r10c12 ≠ 6
whip[1]: c12n6{r7 .} ==> r5c1 ≠ 6
whip[1]: r5n6{c7 .} ==> r4c7 ≠ 6, r6c6 ≠ 6
whip[1]: c6n6{r8 .} ==> r13c11 ≠ 6
whip[1]: d11n6{r5c7 .} ==> r8c10 ≠ 6
whip[1]: r8n6{c13 .} ==> r1c13 ≠ 6
whip[1]: a13n6{r10c9 .} ==> r7c9 ≠ 6
biv-chain[2]: c12n6{r7 r3} - c11n6{r4 r9} ==> r9c1 ≠ 6
hidden-single-in-a-diagonal ==> r6c4 = 6
hidden-single-in-an-anti-diagonal ==> r13c3 = 6
hidden-single-in-an-anti-diagonal ==> r10c9 = 6
hidden-single-in-an-anti-diagonal ==> r8c13 = 6
hidden-single-in-a-column ==> r3c12 = 6
hidden-single-in-a-diagonal ==> r5c6 = 6
hidden-single-in-an-anti-diagonal ==> r9c11 = 6
hidden-single-in-a-diagonal ==> r2c10 = 6
hidden-single-in-a-column ==> r7c7 = 6
hidden-single-in-a-row ==> r1c8 = 6
hidden-single-in-a-diagonal ==> r12c10 = 1
hidden-single-in-a-diagonal ==> r11c8 = 1
hidden-single-in-a-diagonal ==> r13c12 = 1
hidden-single-in-a-row ==> r4c1 = 6
whip[3]: a11n3{r9c6 r12c9} - r13n3{c9 c2} - r10n3{c2 .} ==> r8c6 ≠ 3
whip[3]: r3n3{c9 c4} - d8n3{r4c5 r13c9} - d5n3{r5c1 .} ==> r10c2 ≠ 3
whip[3]: r3n11{c13 c9} - a4n11{r6c9 r5c8} - a10n11{r2c11 .} ==> r1c13 ≠ 11
whip[4]: d2n4{r9c7 r5c11} - d7n4{r10c11 r2c6} - r3n4{c7 c10} - r8n4{c10 .} ==> r9c8 ≠ 4
whip[4]: r3n11{c13 c2} - c8n11{r9 r7} - d5n11{r7c12 r1c5} - c10n11{r1 .} ==> r5c11 ≠ 11
whip[4]: r3n11{c13 c2} - d2n11{r2c1 r8c8} - r6n11{c6 c11} - r2n11{c11 .} ==> r12c9 ≠ 11
whip[4]: r3n11{c13 c9} - a4n11{r6c9 r12c2} - a12n11{r4c2 r1c12} - d5n11{r7c12 .} ==> r5c13 ≠ 11
whip[4]: r3n4{c10 c9} - r13n4{c9 c8} - c10n4{r11 r10} - d1n4{r1c1 .} ==> r8c2 ≠ 4
whip[4]: r3n3{c9 c2} - c13n3{r1 r11} - r12n3{c13 c8} - a4n3{r5c8 .} ==> r8c9 ≠ 3
whip[3]: r8n3{c7 c2} - r7n3{c2 c12} - c6n3{r1 .} ==> r10c5 ≠ 3
whip[4]: c6n3{r13 r1} - r3n3{c4 c2} - d5n3{r4c2 r5c1} - d3n3{r5c12 .} ==> r11c4 ≠ 3
whip[4]: d5n9{r13c6 r4c2} - d8n9{r7c2 r2c7} - c6n9{r1 r11} - c3n9{r1 .} ==> r6c12 ≠ 9
whip[4]: r3n3{c9 c4} - c6n3{r1 r11} - a4n3{r11c1 r5c8} - d4n3{r10c8 .} ==> r9c2 ≠ 3
whip[3]: a7n3{r13c6 r3c9} - r7n3{c5 c12} - a12n3{r1c12 .} ==> r13c8 ≠ 3
whip[3]: r13n3{c11 c9} - r3n3{c9 c4} - r10n3{c4 .} ==> r4c2 ≠ 3
whip[4]: d5n3{r7c12 r13c6} - d1n3{r9c6 r8c7} - a11n3{r8c5 r2c12} - c2n3{r12 .} ==> r7c1 ≠ 3
whip[4]: r7n3{c8 c12} - d6n3{r1c6 r12c8} - a11n3{r12c9 r9c6} - d12n3{r8c5 .} ==> r4c5 ≠ 3
whip[3]: d8n3{r13c9 r2c7} - a7n3{r2c8 r3c9} - r7n3{c5 .} ==> r13c2 ≠ 3
t-whip[3]: r3n3{c4 c9} - r13n3{c9 c11} - d7n3{r10c11 .} ==> r4c3 ≠ 3, r1c4 ≠ 3
whip[4]: d8n3{r10c12 r13c9} - a7n3{r3c9 r2c8} - d6n3{r12c8 r3c4} - r10n3{c4 .} ==> r7c12 ≠ 3
whip[1]: d5n3{r13c6 .} ==> r13c9 ≠ 3
z-chain[2]: r7n3{c8 c2} - r3n3{c2 .} ==> r12c13 ≠ 3
whip[3]: c4n3{r10 r9} - d8n3{r7c2 r2c7} - a11n3{r2c12 .} ==> r10c11 ≠ 3
whip[2]: d7n3{r12c9 r5c3} - a3n3{r1c3 .} ==> r12c12 ≠ 3
z-chain[3]: d5n3{r13c6 r5c1} - a1n3{r1c1 r4c4} - a2n3{r3c4 .} ==> r2c8 ≠ 3
z-chain[3]: a7n3{r13c6 r3c9} - r9n3{c3 c1} - d5n3{r5c1 .} ==> r11c6 ≠ 3
z-chain[3]: d8n3{r10c12 r7c2} - d10n3{r8c3 r13c11} - a7n3{r13c6 .} ==> r5c7 ≠ 3
whip[3]: c13n3{r11 r5} - r10n3{c8 c4} - a1n3{r4c4 .} ==> r1c3 ≠ 3
t-whip[3]: a3n3{r11c13 r12c1} - d5n3{r5c1 r13c6} - a11n3{r9c6 .} ==> r11c12 ≠ 3
z-chain[3]: a2n3{r7c8 r2c3} - r3n3{c2 c9} - d5n3{r13c6 .} ==> r12c8 ≠ 3
z-chain[3]: d5n3{r13c6 r5c1} - c8n3{r5 r10} - r13n3{c11 .} ==> r9c6 ≠ 3
z-chain[3]: c6n3{r13 r1} - r11n3{c3 c13} - r13n3{c11 .} ==> r5c1 ≠ 3
hidden-single-in-a-diagonal ==> r13c6 = 3
whip[1]: d6n3{r3c4 .} ==> r2c3 ≠ 3
z-chain[2]: d5n9{r7c12 r6c13} - d8n9{r6c3 .} ==> r10c2 ≠ 9
t-whip[2]: a3n3{r12c1 r11c13} - a10n3{r11c7 .} ==> r1c12 ≠ 3
whip[1]: c12n3{r10 .} ==> r10c4 ≠ 3
z-chain[2]: c12n3{r10 r5} - a10n3{r4c13 .} ==> r2c7 ≠ 3
z-chain[2]: a6n3{r9c1 r11c3} - a11n3{r2c12 .} ==> r12c1 ≠ 3
z-chain[2]: c1n3{r9 r11} - r12n3{c2 .} ==> r1c9 ≠ 3
whip[1]: r1n3{c13 .} ==> r8c7 ≠ 3
whip[1]: c7n3{r11 .} ==> r4c13 ≠ 3, r11c1 ≠ 3, r11c13 ≠ 3
hidden-single-in-an-anti-diagonal ==> r10c12 = 3
whip[1]: a11n3{r12c9 .} ==> r4c9 ≠ 3
hidden-single-in-a-column ==> r12c9 = 3
hidden-single-in-an-anti-diagonal ==> r7c5 = 3
hidden-single-in-a-diagonal ==> r3c4 = 3
hidden-pairs-in-a-column: c2{n1 n3}{r2 r8} ==> r8c2 ≠ 9, r8c2 ≠ 8, r8c2 ≠ 7, r8c2 ≠ 5, r2c2 ≠ 12, r2c2 ≠ 11, r2c2 ≠ 9, r2c2 ≠ 7, r2c2 ≠ 5, r2c2 ≠ 4
hidden-pairs-in-a-row: r4{n1 n3}{c7 c11} ==> r4c11 ≠ 9, r4c11 ≠ 8, r4c11 ≠ 7, r4c11 ≠ 5, r4c11 ≠ 4, r4c7 ≠ 9, r4c7 ≠ 8, r4c7 ≠ 7
hidden-pairs-in-a-row: r8{n1 n3}{c2 c3} ==> r8c3 ≠ 11, r8c3 ≠ 9, r8c3 ≠ 7, r8c3 ≠ 5
hidden-pairs-in-a-column: c1{n1 n3}{r1 r9} ==> r9c1 ≠ 12, r9c1 ≠ 11, r9c1 ≠ 8, r9c1 ≠ 7, r9c1 ≠ 5, r9c1 ≠ 4, r1c1 ≠ 12, r1c1 ≠ 11, r1c1 ≠ 9, r1c1 ≠ 7, r1c1 ≠ 5, r1c1 ≠ 4
z-chain[2]: d8n9{r6c3 r7c2} - d5n9{r4c2 .} ==> r6c11 ≠ 9
z-chain[2]: d8n9{r7c2 r2c7} - c6n9{r2 .} ==> r6c1 ≠ 9
t-whip[2]: d8n9{r6c3 r7c2} - d5n9{r7c12 .} ==> r6c7 ≠ 9
whip[2]: r9n4{c7 c13} - d5n4{r6c13 .} ==> r5c3 ≠ 4
z-chain[3]: d8n9{r7c2 r6c3} - d6n9{r4c3 r10c10} - a8n9{r3c10 .} ==> r7c12 ≠ 9
z-chain[2]: d5n9{r6c13 r4c2} - d6n9{r4c3 .} ==> r6c6 ≠ 9
t-whip[2]: d5n9{r4c2 r6c13} - a11n9{r6c3 .} ==> r13c11 ≠ 9, r13c2 ≠ 9
whip[1]: d10n9{r12c12 .} ==> r12c1 ≠ 9
z-chain[2]: r13n9{c10 c4} - c6n9{r2 .} ==> r1c9 ≠ 9
z-chain[2]: r13n9{c10 c4} - c1n9{r10 .} ==> r11c10 ≠ 9
z-chain[2]: d12n9{r5c8 r4c9} - d5n9{r4c2 .} ==> r5c12 ≠ 9
z-chain[2]: c12n9{r12 r1} - d5n9{r4c2 .} ==> r12c13 ≠ 9
z-chain[2]: d11n9{r11c1 r5c7} - a4n9{r5c8 .} ==> r11c4 ≠ 9
whip[1]: d1n9{r8c7 .} ==> r8c9 ≠ 9
z-chain[2]: a7n9{r5c11 r2c8} - r8n9{c8 .} ==> r5c7 ≠ 9
whip[1]: d11n9{r11c1 .} ==> r6c9 ≠ 9
whip[1]: r6n9{c13 .} ==> r3c13 ≠ 9
whip[1]: d1n9{r8c7 .} ==> r8c8 ≠ 9
whip[1]: r8n9{c10 .} ==> r3c2 ≠ 9
biv-chain[2]: c2n9{r7 r4} - r6n9{c13 c3} ==> r2c7 ≠ 9
whip[1]: c7n9{r8 .} ==> r12c11 ≠ 9
whip[1]: r12n9{c12 .} ==> r4c4 ≠ 9
whip[1]: a1n9{r12c12 .} ==> r10c1 ≠ 9
whip[1]: d10n9{r12c12 .} ==> r11c12 ≠ 9
whip[1]: a2n9{r10c11 .} ==> r7c11 ≠ 9, r10c8 ≠ 9
whip[1]: c11n9{r10 .} ==> r5c3 ≠ 9
whip[1]: a12n9{r4c2 .} ==> r4c9 ≠ 9
whip[1]: c9n9{r7 .} ==> r5c11 ≠ 9
hidden-single-in-a-column ==> r10c11 = 9
hidden-single-in-a-diagonal ==> r8c7 = 9
hidden-single-in-a-column ==> r11c1 = 9
hidden-single-in-a-diagonal ==> r5c13 = 9
hidden-single-in-an-anti-diagonal ==> r8c3 = 3
naked-single ==> r4c7 = 1
naked-single ==> r4c11 = 3
naked-single ==> r1c1 = 1
naked-single ==> r2c2 = 3
naked-single ==> r9c1 = 3
naked-single ==> r8c2 = 1
hidden-single-in-an-anti-diagonal ==> r1c13 = 3
hidden-single-in-a-column ==> r5c8 = 3
hidden-single-in-a-diagonal ==> r6c11 = 1
hidden-single-in-a-row ==> r2c3 = 1
hidden-single-in-a-row ==> r9c4 = 1
hidden-single-in-an-anti-diagonal ==> r11c7 = 3
hidden-single-in-an-anti-diagonal ==> r3c10 = 9
hidden-single-in-an-anti-diagonal ==> r4c2 = 9
hidden-single-in-a-column ==> r12c12 = 9
hidden-single-in-an-anti-diagonal ==> r1c6 = 9
hidden-single-in-an-anti-diagonal ==> r7c9 = 9
hidden-single-in-a-diagonal ==> r13c4 = 9
hidden-single-in-a-column ==> r6c3 = 9
hidden-single-in-a-diagonal ==> r2c8 = 9
whip[1]: r6n11{c12 .} ==> r3c9 ≠ 11
whip[1]: r3n11{c13 .} ==> r2c1 ≠ 11
whip[1]: r7n12{c8 .} ==> r13c8 ≠ 12
whip[1]: c11n4{r12 .} ==> r2c1 ≠ 4
whip[1]: c1n4{r12 .} ==> r12c8 ≠ 4
whip[1]: d7n4{r13c8 .} ==> r11c6 ≠ 4
z-chain[2]: d7n8{r11c10 r13c8} - d6n8{r12c8 .} ==> r2c1 ≠ 8
z-chain[2]: a13n8{r11c10 r12c11} - r7n8{c11 .} ==> r13c8 ≠ 8
z-chain[2]: d1n4{r10c5 r13c2} - a4n4{r12c2 .} ==> r6c1 ≠ 4
whip[1]: c1n4{r12 .} ==> r2c11 ≠ 4, r5c7 ≠ 4
whip[1]: c11n4{r12 .} ==> r5c5 ≠ 4
x-wing-in-columns: n4{c1 c11}{r5 r12} ==> r12c13 ≠ 4, r12c2 ≠ 4, r5c12 ≠ 4
whip[1]: c12n4{r11 .} ==> r6c7 ≠ 4
whip[1]: c7n4{r9 .} ==> r9c13 ≠ 4
whip[1]: d8n4{r13c9 .} ==> r4c9 ≠ 4
whip[1]: d12n4{r12c1 .} ==> r1c3 ≠ 4
whip[1]: d3n4{r8c9 .} ==> r13c9 ≠ 4, r4c5 ≠ 4
hidden-single-in-a-diagonal ==> r2c7 = 4
hidden-single-in-an-anti-diagonal ==> r6c9 = 4
hidden-single-in-an-anti-diagonal ==> r13c8 = 4
hidden-single-in-an-anti-diagonal ==> r10c10 = 4
hidden-single-in-a-column ==> r9c3 = 4
hidden-single-in-a-row ==> r4c13 = 4
hidden-single-in-a-diagonal ==> r1c5 = 4
hidden-single-in-an-anti-diagonal ==> r8c6 = 4
hidden-single-in-a-diagonal ==> r12c1 = 4
hidden-single-in-an-anti-diagonal ==> r3c2 = 4
hidden-single-in-a-row ==> r3c13 = 11
hidden-single-in-a-diagonal ==> r11c12 = 4
hidden-single-in-a-column ==> r5c11 = 4
whip[1]: r2n11{c11 .} ==> r7c11 ≠ 11
whip[1]: r3n7{c9 .} ==> r1c9 ≠ 7, r5c7 ≠ 7
whip[1]: r3n12{c9 .} ==> r1c9 ≠ 12, r5c7 ≠ 12
whip[1]: r8n11{c10 .} ==> r1c3 ≠ 11
hidden-single-in-an-anti-diagonal ==> r8c10 = 11
hidden-single-in-an-anti-diagonal ==> r12c2 = 11
hidden-single-in-a-diagonal ==> r4c5 = 11
hidden-single-in-an-anti-diagonal ==> r6c6 = 11
hidden-single-in-an-anti-diagonal ==> r10c1 = 11
hidden-single-in-an-anti-diagonal ==> r2c11 = 11
hidden-single-in-an-anti-diagonal ==> r5c3 = 11
hidden-single-in-a-column ==> r7c12 = 11
hidden-single-in-a-row ==> r1c9 = 11
hidden-single-in-an-anti-diagonal ==> r7c11 = 5
hidden-single-in-a-diagonal ==> r9c8 = 11
hidden-single-in-a-row ==> r11c4 = 11
whip[1]: d1n5{r13c2 .} ==> r10c2 ≠ 5
whip[1]: c2n5{r13 .} ==> r11c13 ≠ 5
whip[1]: c13n5{r12 .} ==> r6c7 ≠ 5
whip[1]: r6n5{c13 .} ==> r5c1 ≠ 5
naked-single ==> r5c1 = 7
naked-single ==> r6c13 = 5
hidden-single-in-an-anti-diagonal ==> r10c5 = 5
naked-single ==> r5c5 = 12
naked-single ==> r3c7 = 7
naked-single ==> r3c9 = 12
naked-single ==> r13c9 = 8
naked-single ==> r9c13 = 12
naked-single ==> r2c6 = 8
naked-single ==> r2c5 = 7
naked-single ==> r1c4 = 8
naked-single ==> r6c12 = 7
naked-single ==> r10c8 = 12
naked-single ==> r1c12 = 5
naked-single ==> r1c10 = 12
naked-single ==> r1c3 = 7
naked-single ==> r8c9 = 5
naked-single ==> r8c8 = 7
naked-single ==> r4c4 = 5
naked-single ==> r4c3 = 12
naked-single ==> r2c1 = 5
naked-single ==> r6c1 = 8
naked-single ==> r6c7 = 12
naked-single ==> r11c3 = 5
naked-single ==> r4c10 = 8
naked-single ==> r9c2 = 5
naked-single ==> r11c10 = 7
naked-single ==> r12c4 = 12
naked-single ==> r7c8 = 8
naked-single ==> r12c13 = 7
naked-single ==> r10c2 = 8
naked-single ==> r5c7 = 5
naked-single ==> r11c6 = 12
naked-single ==> r11c13 = 8
naked-single ==> r13c2 = 12
naked-single ==> r2c12 = 12
naked-single ==> r4c9 = 7
naked-single ==> r9c7 = 8
naked-single ==> r10c4 = 7
naked-single ==> r12c8 = 5
naked-single ==> r8c5 = 8
naked-single ==> r7c1 = 12
naked-single ==> r9c6 = 7
naked-single ==> r7c2 = 7
naked-single ==> r13c10 = 5
naked-single ==> r13c11 = 7
naked-single ==> r12c11 = 8
naked-single ==> r5c12 = 8
PUZZLE 0 IS SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[4]
   127849A6BCD53
   53127849A6BCD
   A483157DC926B
   69C5BD12783A4
   7ABDC65312489
   8D962BCA43175
   C7243A689D5B1
   213A84975BCD6
   3541978BDA62C
   B8D7512C6493A
   965BDC3127A48
   4BAC62D531897
   DC69A3B485712

nb-facts = <Fact-198497>
Puzzle ..........D.....2.........A.8..5..............2......A......1.............3......4........1..........CD.....9..........D...........6.............A.6..............B......; #3/1/2/8 :
init-time = 2.52s, solve-time = 4m 0.44s, total-time = 4m 2.95s
nb-facts=<Fact-198497>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

