



(solve Hidato topological 10 78

B B . . 65 . . 62 B B 
B . 19 . . 66 . . . B
. 21 . B . . B . 58 59
. . 12 B . . B 69 . 56
. 10 . 74 . . . 1 . . 
. 26 . 5 4 76 . . 54 52
28 . B . . . 78 B . . 
. . . B B B B 48 47 .
B . . . . 39 . 43 . B
B B 33 35 37 40 42 . B B 

)

***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules topological-model   *****
undecided numbers: (2 3 6 7 8 9 11 13 14 15 16 17 18 20 22 23 24 25 27 29 30 31 32 34 36 38 41 44 45 46 49 50 51 53 55 57 60 61 63 64 67 68 70 71 72 73 75 77)
start solution 1596609921.74384
entering BRT
hidden-single: r9c7 = 41
hidden-single: r9c5 = 38
hidden-single: r9c4 = 36
hidden-single: r9c3 = 34
hidden-single: r9c2 = 32
hidden-single: r5c5 = 75
hidden-single: r4c5 = 73
hidden-single: r4c9 = 57
hidden-single: r3c8 = 68
hidden-single: r2c7 = 67
hidden-single: r1c7 = 63
hidden-single: r5c7 = 70
hidden-single: r6c7 = 2
hidden-single: r7c6 = 77
hidden-single: r5c6 = 3
hidden-single: r4c6 = 71
hidden-single: r2c9 = 60
hidden-single: r2c8 = 61
hidden-single: r1c6 = 64
naked-single: r6c8 = 50
hidden-single: r7c9 = 49
hidden-single: r5c9 = 51
hidden-single: r5c10 = 55
hidden-single: r7c10 = 53
Starting_init_links_with_<Fact-3047>
158 candidates, 891 csp-links and 1469 links. Density = 11.84%
starting non trivial part of solution
Entering_level_W1_with_<Fact-7770>
whip[1]: r8c10{n45 .} ==> r10c8 ≠ 45
naked-single: r10c8 = 44
hidden-single: r9c9 = 45
hidden-single: r8c10 = 46
whip[1]: r8c1{n30 .} ==> r8c3 ≠ 30
whip[1]: r7c5{n7 .} ==> r8c3 ≠ 7, r5c3 ≠ 6, r6c3 ≠ 6, r4c2 ≠ 7, r5c3 ≠ 7, r6c3 ≠ 7, r7c2 ≠ 7, r8c2 ≠ 7
naked-single: r8c3 = 31
naked-single: r8c1 = 29
naked-single: r8c2 = 30
whip[1]: n7{r7c5 .} ==> r7c2 ≠ 8, r3c1 ≠ 8, r3c3 ≠ 8, r4c1 ≠ 8, r4c2 ≠ 8, r5c1 ≠ 8, r5c3 ≠ 8, r6c1 ≠ 8
whip[1]: n8{r7c4 .} ==> r4c1 ≠ 9, r4c2 ≠ 9, r5c1 ≠ 9, r6c1 ≠ 9
whip[1]: n13{r5c3 .} ==> r6c1 ≠ 14, r2c5 ≠ 14, r3c5 ≠ 14
whip[1]: n14{r6c3 .} ==> r3c6 ≠ 15
whip[1]: r2c5{n17 .} ==> r1c3 ≠ 16, r2c2 ≠ 16, r3c1 ≠ 16, r3c3 ≠ 16, r4c1 ≠ 16, r4c2 ≠ 16, r5c1 ≠ 16, r5c3 ≠ 16
whip[1]: n16{r3c6 .} ==> r4c2 ≠ 17, r2c2 ≠ 15, r3c1 ≠ 15, r2c2 ≠ 17, r3c1 ≠ 17, r4c1 ≠ 17, r4c1 ≠ 15, r4c2 ≠ 15, r5c1 ≠ 15, r5c3 ≠ 15, r6c1 ≠ 15, r6c3 ≠ 15
whip[1]: n15{r3c5 .} ==> r5c3 ≠ 14, r3c1 ≠ 14, r4c1 ≠ 14, r5c1 ≠ 14, r6c3 ≠ 14
whip[1]: r5c1{n25 .} ==> r5c3 ≠ 24, r6c3 ≠ 24
whip[1]: n24{r6c1 .} ==> r6c3 ≠ 25
whip[1]: r4c1{n24 .} ==> r3c3 ≠ 23, r5c3 ≠ 23
whip[1]: r3c1{n23 .} ==> r3c3 ≠ 22, r5c1 ≠ 23
whip[1]: r5c1{n25 .} ==> r5c3 ≠ 25, r7c2 ≠ 25
naked-single: r7c2 = 27
whip[1]: r6c1{n25 .} ==> r4c1 ≠ 24, r4c2 ≠ 24
whip[1]: n24{r6c1 .} ==> r3c1 ≠ 23
naked-single: r3c1 = 22
naked-single: r4c1 = 23
hidden-single: r5c1 = 24
hidden-single: r6c1 = 25
Entering_relation_bivalue_with_<Fact-7816>
Entering_level_S2_with_<Fact-7837>
hidden-pairs: {n6 n7}{r7c4 r7c5} ==> r7c4 ≠ 8
hidden-single: r6c3 = 8
hidden-single: r5c3 = 9
hidden-single: r4c2 = 11
hidden-single: r3c3 = 13
hidden-single: r2c2 = 20
hidden-single: r2c4 = 14
hidden-single: r7c4 = 7
hidden-single: r7c5 = 6
whip[1]: n18{r1c4 .} ==> r3c5 ≠ 17
Entering_level_BC2_with_<Fact-7852>
Entering_level_Z2_with_<Fact-7853>
z-chain[2]: n16{r3c6 r1c4} - n18{r1c4 .} ==> r1c3 ≠ 15
whip[1]: r1c3{n18 .} ==> r2c5 ≠ 17
whip[1]: n17{r1c4 .} ==> r3c5 ≠ 16, r3c6 ≠ 16
naked-single: r3c6 = 72
naked-single: r3c5 = 15
hidden-single: r2c5 = 16
hidden-single: r1c4 = 17
hidden-single: r1c3 = 18
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = z-chain[2]

 -  - 18 17 65 64 63 62  -  -
 - 20 19 14 16 66 67 61 60  -
22 21 13  - 15 72  - 68 58 59
23 11 12  - 73 71  - 69 57 56
24 10  9 74 75  3 70  1 51 55
25 26  8  5  4 76  2 50 54 52
28 27  -  7  6 77 78  - 49 53
29 30 31  -  -  -  - 48 47 46
 - 32 34 36 38 39 41 43 45  -
 -  - 33 35 37 40 42 44  -  -
init-time = 0.16s, solve time = 0.19s, total-time = 0.34s
nb-facts=<Fact-7901>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



Notice that using the geometric model will give a lower rating:

(solve Hidato geometric 10 78

B B . . 65 . . 62 B B 
B . 19 . . 66 . . . B
. 21 . B . . B . 58 59
. . 12 B . . B 69 . 56
. 10 . 74 . . . 1 . . 
. 26 . 5 4 76 . . 54 52
28 . B . . . 78 B . . 
. . . B B B B 48 47 .
B . . . . 39 . 43 . B
B B 33 35 37 40 42 . B B
)

***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules geometric-model   *****
undecided numbers: (2 3 6 7 8 9 11 13 14 15 16 17 18 20 22 23 24 25 27 29 30 31 32 34 36 38 41 44 45 46 49 50 51 53 55 57 60 61 63 64 67 68 70 71 72 73 75 77)
start solution 1596609949.5326
entering BRT
hidden-single: r9c7 = 41
hidden-single: r9c5 = 38
hidden-single: r9c4 = 36
hidden-single: r9c3 = 34
hidden-single: r9c2 = 32
hidden-single: r5c5 = 75
hidden-single: r4c5 = 73
hidden-single: r4c9 = 57
hidden-single: r3c8 = 68
hidden-single: r2c7 = 67
hidden-single: r1c7 = 63
hidden-single: r5c7 = 70
hidden-single: r6c7 = 2
hidden-single: r7c6 = 77
hidden-single: r5c6 = 3
hidden-single: r4c6 = 71
hidden-single: r2c9 = 60
hidden-single: r2c8 = 61
hidden-single: r1c6 = 64
naked-single: r6c8 = 50
hidden-single: r7c9 = 49
hidden-single: r5c9 = 51
hidden-single: r5c10 = 55
hidden-single: r7c10 = 53
Starting_init_links_with_<Fact-3047>
158 candidates, 891 csp-links and 1736 links. Density = 14.0%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8304>
whip[1]: r8c10{n45 .} ==> r10c8 ≠ 45
naked-single: r10c8 = 44
hidden-single: r9c9 = 45
hidden-single: r8c10 = 46
whip[1]: r8c1{n30 .} ==> r8c3 ≠ 30
whip[1]: r7c5{n7 .} ==> r8c3 ≠ 7, r5c3 ≠ 6, r6c3 ≠ 6, r3c1 ≠ 8, r3c3 ≠ 8, r4c1 ≠ 8, r4c1 ≠ 9, r4c2 ≠ 8, r5c1 ≠ 8, r5c1 ≠ 9, r6c1 ≠ 8, r6c1 ≠ 9, r7c2 ≠ 8, r4c2 ≠ 7, r5c3 ≠ 7, r6c3 ≠ 7, r7c2 ≠ 7, r8c2 ≠ 7
naked-single: r8c3 = 31
naked-single: r8c1 = 29
naked-single: r8c2 = 30
whip[1]: n7{r7c5 .} ==> r4c2 ≠ 9, r5c3 ≠ 8
whip[1]: r2c5{n17 .} ==> r4c1 ≠ 17, r2c2 ≠ 15, r2c2 ≠ 16, r3c1 ≠ 14, r3c1 ≠ 15, r3c1 ≠ 16, r4c1 ≠ 14, r4c1 ≠ 15, r4c1 ≠ 16, r4c2 ≠ 15, r4c2 ≠ 16, r5c1 ≠ 14, r5c1 ≠ 15, r5c1 ≠ 16, r5c3 ≠ 15, r5c3 ≠ 16, r6c1 ≠ 14, r6c1 ≠ 15, r6c3 ≠ 14, r6c3 ≠ 15, r3c1 ≠ 17
whip[1]: r3c1{n23 .} ==> r6c1 ≠ 24, r6c3 ≠ 24, r7c2 ≠ 25, r3c3 ≠ 22, r3c3 ≠ 23, r5c1 ≠ 23, r5c3 ≠ 23
naked-single: r7c2 = 27
naked-single: r6c1 = 25
hidden-single: r5c1 = 24
naked-single: r3c1 = 22
naked-single: r4c1 = 23
whip[1]: n15{r3c6 .} ==> r5c3 ≠ 14
whip[1]: r1c4{n17 .} ==> r4c2 ≠ 17
whip[1]: r1c3{n16 .} ==> r3c6 ≠ 16
whip[1]: n13{r5c3 .} ==> r3c6 ≠ 15, r2c5 ≠ 14, r3c5 ≠ 14
naked-single: r3c6 = 72
whip[1]: r3c5{n17 .} ==> r1c3 ≠ 16, r1c4 ≠ 16, r3c3 ≠ 16, r2c2 ≠ 17
Entering_relation_bivalue_with_<Fact-8339>
Entering_level_S2_with_<Fact-8356>
hidden-pairs: {n6 n7}{r7c4 r7c5} ==> r7c4 ≠ 8
hidden-single: r6c3 = 8
hidden-single: r5c3 = 9
hidden-single: r4c2 = 11
hidden-single: r3c3 = 13
hidden-single: r2c2 = 20
hidden-single: r2c4 = 14
hidden-single: r7c4 = 7
hidden-single: r7c5 = 6
whip[1]: n16{r3c5 .} ==> r1c3 ≠ 15, r1c3 ≠ 17
naked-single: r1c3 = 18
hidden-single: r1c4 = 17
hidden-single: r2c5 = 16
hidden-single: r3c5 = 15
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = P

 -  - 18 17 65 64 63 62  -  -
 - 20 19 14 16 66 67 61 60  -
22 21 13  - 15 72  - 68 58 59
23 11 12  - 73 71  - 69 57 56
24 10  9 74 75  3 70  1 51 55
25 26  8  5  4 76  2 50 54 52
28 27  -  7  6 77 78  - 49 53
29 30 31  -  -  -  - 48 47 46
 - 32 34 36 38 39 41 43 45  -
 -  - 33 35 37 40 42 44  -  -
init-time = 0.15s, solve time = 0.25s, total-time = 0.41s
nb-facts=<Fact-8373>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
