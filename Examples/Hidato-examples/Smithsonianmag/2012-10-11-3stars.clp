



(solve Hidato topological 9 72
. . . . . . . . B
. 66 67 . . 49 47 B . 
. 68 . 53 50 . B . .  
. 1 . . 55 B 42 41 . 
. 71 . 3 B . 31 33 . 
72 . . B . . . 34 . 
. . B 10 12 28 . 35 . 
. B 16 . . . 23 . . 
B 17 . 19 20 . . . . 
)


***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules topological-model   *****
undecided numbers: (2 4 5 6 7 8 9 11 13 14 15 18 21 22 24 25 26 27 29 30 32 36 37 38 39 40 43 44 45 46 48 51 52 54 56 57 58 59 60 61 62 63 64 65 69 70)
start solution 1596609896.61289
entering BRT
hidden-single: r9c3 = 18
hidden-single: r6c7 = 32
hidden-single: r4c4 = 54
naked-single: r9c9 = 25
Starting_init_links_with_<Fact-3231>
365 candidates, 4594 csp-links and 9116 links. Density = 13.72%
starting non trivial part of solution
Entering_level_W1_with_<Fact-30654>
whip[1]: n15{r8c4 .} ==> r8c4 ≠ 14, r6c5 ≠ 14
whip[1]: n14{r8c5 .} ==> r6c5 ≠ 13, r6c6 ≠ 13, r8c5 ≠ 13
whip[1]: n13{r8c6 .} ==> r6c3 ≠ 14
hidden-single: r8c5 = 14
hidden-single: r8c4 = 15
hidden-single: r6c5 = 11
hidden-single: r6c3 = 9
hidden-single: r8c6 = 13
hidden-single: r9c6 = 21
hidden-single: r9c7 = 22
whip[1]: n60{r8c8 .} ==> r3c8 ≠ 59, r5c9 ≠ 59, r6c9 ≠ 59
whip[1]: n8{r7c2 .} ==> r4c1 ≠ 7, r5c6 ≠ 7, r6c6 ≠ 7, r7c7 ≠ 7
whip[1]: n7{r8c1 .} ==> r3c1 ≠ 6, r3c6 ≠ 6, r5c6 ≠ 6, r6c6 ≠ 6, r7c7 ≠ 6
whip[1]: n6{r8c1 .} ==> r3c6 ≠ 5, r5c6 ≠ 5, r6c6 ≠ 5
whip[1]: n5{r7c2 .} ==> r4c1 ≠ 6
whip[1]: n4{r5c3 .} ==> r7c2 ≠ 5
whip[1]: n5{r6c2 .} ==> r8c1 ≠ 6
whip[1]: n57{r6c6 .} ==> r1c2 ≠ 58, r1c7 ≠ 58, r1c8 ≠ 58, r3c8 ≠ 58, r7c2 ≠ 58
whip[1]: n58{r7c7 .} ==> r1c1 ≠ 59, r1c8 ≠ 59, r2c1 ≠ 59, r2c9 ≠ 59, r3c1 ≠ 59, r3c9 ≠ 59, r4c1 ≠ 59, r4c9 ≠ 59, r7c9 ≠ 59, r8c1 ≠ 59, r8c9 ≠ 59
whip[1]: r8c9{n37 .} ==> r6c9 ≠ 36, r7c7 ≠ 36, r5c6 ≠ 37, r5c9 ≠ 37, r6c6 ≠ 37, r6c9 ≠ 37, r7c7 ≠ 37
whip[1]: n37{r8c9 .} ==> r4c9 ≠ 38, r5c6 ≠ 38, r5c9 ≠ 38, r6c6 ≠ 38
whip[1]: n38{r7c9 .} ==> r3c6 ≠ 39, r3c8 ≠ 39, r3c9 ≠ 39, r4c9 ≠ 39, r5c6 ≠ 39
whip[1]: n39{r6c9 .} ==> r3c8 ≠ 40, r3c9 ≠ 40
whip[1]: r3c9{n45 .} ==> r2c5 ≠ 44, r3c6 ≠ 44, r5c6 ≠ 44, r5c9 ≠ 44, r1c5 ≠ 45, r1c6 ≠ 45, r1c7 ≠ 45, r1c8 ≠ 45, r2c5 ≠ 45, r3c6 ≠ 45
whip[1]: n45{r4c9 .} ==> r1c6 ≠ 46, r1c7 ≠ 46, r3c6 ≠ 46
whip[1]: r5c9{n40 .} ==> r6c6 ≠ 39
whip[1]: n39{r6c9 .} ==> r7c7 ≠ 38
whip[1]: n44{r4c9 .} ==> r3c6 ≠ 43, r5c6 ≠ 43
hidden-single: r3c8 = 43
hidden-single: r1c8 = 46
hidden-single: r2c9 = 45
hidden-single: r3c9 = 44
naked-single: r4c9 = 40
hidden-single: r5c9 = 39
hidden-single: r6c9 = 38
hidden-single: r7c9 = 37
naked-single: r8c9 = 36
whip[1]: n59{r8c8 .} ==> r3c1 ≠ 60
whip[1]: n56{r5c6 .} ==> r5c6 ≠ 57, r2c4 ≠ 57, r3c3 ≠ 57, r3c6 ≠ 57, r4c3 ≠ 57, r5c3 ≠ 57
whip[1]: n57{r6c6 .} ==> r1c3 ≠ 58, r2c5 ≠ 58, r3c3 ≠ 58, r4c3 ≠ 58, r5c3 ≠ 58, r6c2 ≠ 58, r6c6 ≠ 58
whip[1]: n58{r7c7 .} ==> r1c2 ≠ 59, r3c6 ≠ 59, r4c3 ≠ 59, r5c1 ≠ 59, r5c3 ≠ 59, r5c6 ≠ 59, r6c2 ≠ 59, r7c1 ≠ 59, r7c2 ≠ 59, r7c7 ≠ 59
whip[1]: n59{r8c8 .} ==> r1c1 ≠ 60, r2c1 ≠ 60, r4c1 ≠ 60, r5c1 ≠ 60, r5c3 ≠ 60, r6c2 ≠ 60, r6c6 ≠ 60, r7c1 ≠ 60, r7c2 ≠ 60, r8c1 ≠ 60, r8c8 ≠ 60
naked-single: r8c1 = 7
hidden-single: r7c2 = 8
hidden-single: r7c1 = 6
hidden-single: r6c2 = 5
hidden-single: r5c3 = 4
hidden-single: r4c3 = 2
whip[1]: n60{r7c7 .} ==> r3c1 ≠ 61, r4c1 ≠ 61, r5c1 ≠ 61, r5c6 ≠ 61, r7c7 ≠ 61
whip[1]: n61{r6c6 .} ==> r6c6 ≠ 62, r4c1 ≠ 62, r5c1 ≠ 62
whip[1]: n62{r5c6 .} ==> r5c1 ≠ 63
naked-single: r5c1 = 70
hidden-single: r4c1 = 69
whip[1]: n65{r3c3 .} ==> r3c3 ≠ 64
whip[1]: n27{r7c7 .} ==> r9c8 ≠ 26
hidden-single: r8c8 = 26
hidden-single: r7c7 = 27
hidden-single: r6c6 = 29
hidden-single: r5c6 = 30
hidden-single: r3c6 = 56
hidden-single: r2c5 = 57
hidden-single: r2c4 = 51
hidden-single: r3c3 = 52
hidden-single: r9c8 = 24
Entering_relation_bivalue_with_<Fact-30750>
Entering_level_S2_with_<Fact-30753>
Entering_level_BC2_with_<Fact-30754>
Entering_level_Z2_with_<Fact-30755>
z-chain[2]: n58{r1c5 r1c6} - n48{r1c6 .} ==> r1c7 ≠ 59
z-chain[2]: n59{r1c5 r1c6} - n48{r1c6 .} ==> r1c7 ≠ 60
z-chain[2]: n60{r1c6 r1c5} - n62{r1c5 .} ==> r1c6 ≠ 61
z-chain[2]: n61{r2c1 r1c4} - n63{r1c4 .} ==> r1c5 ≠ 62
z-chain[2]: n62{r3c1 r1c3} - n64{r1c3 .} ==> r1c4 ≠ 63
z-chain[2]: n63{r3c1 r1c2} - r3c1{n62 .} ==> r1c3 ≠ 64
z-chain[2]: n65{r3c1 r2c1} - n63{r2c1 .} ==> r3c1 ≠ 64
z-chain[2]: n64{r2c1 r1c4} - r3c1{n65 .} ==> r1c5 ≠ 63
whip[1]: n63{r3c1 .} ==> r1c6 ≠ 62
whip[1]: n62{r3c1 .} ==> r1c7 ≠ 61
naked-single: r1c7 = 48
whip[1]: r1c6{n60 .} ==> r1c3 ≠ 59, r1c4 ≠ 59
whip[1]: n59{r1c6 .} ==> r1c2 ≠ 60, r1c3 ≠ 60
whip[1]: n60{r1c6 .} ==> r1c1 ≠ 61, r1c2 ≠ 61, r2c1 ≠ 61
whip[1]: n61{r1c5 .} ==> r1c1 ≠ 62, r2c1 ≠ 62, r3c1 ≠ 62
whip[1]: r3c1{n65 .} ==> r1c1 ≠ 64, r1c2 ≠ 64, r1c4 ≠ 64
hidden-single: r2c1 = 64
whip[1]: n63{r3c1 .} ==> r1c4 ≠ 62
whip[1]: n62{r1c3 .} ==> r1c5 ≠ 61, r3c1 ≠ 63
naked-single: r3c1 = 65
naked-single: r1c1 = 63
hidden-single: r1c2 = 62
hidden-single: r1c3 = 61
hidden-single: r1c4 = 60
hidden-single: r1c5 = 59
hidden-single: r1c6 = 58
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = z-chain[2]
63 62 61 60 59 58 48 46  -
64 66 67 51 57 49 47  - 45
65 68 52 53 50 56  - 43 44
69  1  2 54 55  - 42 41 40
70 71  4  3  - 30 31 33 39
72  5  9  - 11 29 32 34 38
 6  8  - 10 12 28 27 35 37
 7  - 16 15 14 13 23 26 36
 - 17 18 19 20 21 22 24 25
init-time = 0.15s, solve time = 2.98s, total-time = 3.12s
nb-facts=<Fact-30880>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
