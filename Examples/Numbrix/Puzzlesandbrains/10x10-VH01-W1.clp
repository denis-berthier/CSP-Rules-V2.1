



(solve Numbrix topological 10 100

. 2 . . 19 20 . . 25 .
4 3 . . . . . . 24 27
. . . . . . . . . .
. . . . . . . . . .
9 . . . 41 44 . . . 52
72 . . . 68 67 . . . 53
. . . . . . . . . .
. . . . . . . . . .
99 96 . . . . . . 61 58
. 95 . . 88 85 . . 60 .
)
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Numbrix-Rules topological-model   *****
undecided numbers: (1 5 6 7 8 10 11 12 13 14 15 16 17 18 21 22 23 26 28 29 30 31 32 33 34 35 36 37 38 39 40 42 43 45 46 47 48 49 50 51 54 55 56 57 59 62 63 64 65 66 69 70 71 73 74 75 76 77 78 79 80 81 82 83 84 86 87 89 90 91 92 93 94 97 98 100)
start solution 1596609768.95859
entering BRT
hidden-single: r10c10 = 59
hidden-single: r8c10 = 57
hidden-single: r6c4 = 69
hidden-single: r6c3 = 70
hidden-single: r6c2 = 71
hidden-single: r7c1 = 73
hidden-single: r2c8 = 23
hidden-single: r1c10 = 26
hidden-single: r3c10 = 28
naked-single: r10c8 = 83
hidden-single: r10c7 = 84
hidden-single: r9c8 = 82
hidden-single: r8c9 = 62
hidden-single: r7c10 = 56
hidden-single: r6c9 = 54
hidden-single: r7c9 = 55
hidden-single: r8c8 = 63
hidden-single: r9c7 = 81
hidden-single: r9c6 = 86
hidden-single: r8c7 = 80
hidden-single: r7c8 = 64
hidden-single: r9c5 = 87
hidden-single: r10c4 = 89
Starting_init_links_with_<Fact-7336>
416 candidates, 4102 csp-links and 8340 links. Density = 9.66%
starting non trivial part of solution
Entering_level_W1_with_<Fact-32223>
whip[1]: n94{r10c3 .} ==> r10c3 ≠ 93, r8c2 ≠ 93, r10c1 ≠ 93
hidden-single: r9c3 = 93
hidden-single: r8c2 = 97
hidden-single: r8c1 = 98
hidden-single: r7c2 = 74
hidden-single: r7c3 = 75
hidden-single: r10c1 = 100
hidden-single: r10c3 = 94
hidden-single: r9c4 = 90
hidden-single: r8c4 = 91
hidden-single: r8c3 = 92
hidden-single: r7c4 = 76
hidden-single: r7c5 = 77
whip[1]: n38{r8c5 .} ==> r7c6 ≠ 37
whip[1]: n39{r5c7 .} ==> r7c6 ≠ 38, r8c5 ≠ 38, r5c7 ≠ 38
naked-single: r8c5 = 78
hidden-single: r8c6 = 79
whip[1]: n38{r6c7 .} ==> r5c8 ≠ 37, r6c7 ≠ 37
whip[1]: n37{r7c7 .} ==> r5c9 ≠ 36, r6c8 ≠ 36, r7c7 ≠ 36
whip[1]: n51{r5c9 .} ==> r5c9 ≠ 50, r4c10 ≠ 50
whip[1]: n50{r5c8 .} ==> r4c9 ≠ 49, r5c8 ≠ 49
whip[1]: n49{r6c8 .} ==> r4c8 ≠ 48, r5c7 ≠ 48, r5c9 ≠ 48, r6c8 ≠ 48
whip[1]: n48{r6c7 .} ==> r5c8 ≠ 47, r4c7 ≠ 47, r6c7 ≠ 47
whip[1]: n47{r7c7 .} ==> r4c6 ≠ 46, r5c4 ≠ 46, r5c7 ≠ 46
whip[1]: n40{r5c4 .} ==> r5c4 ≠ 39, r4c5 ≠ 39, r5c7 ≠ 39
whip[1]: n39{r5c3 .} ==> r5c8 ≠ 38, r3c5 ≠ 38, r4c4 ≠ 38, r4c6 ≠ 38, r6c7 ≠ 38, r5c3 ≠ 38
whip[1]: n38{r5c4 .} ==> r2c5 ≠ 37, r3c4 ≠ 37, r3c6 ≠ 37, r4c3 ≠ 37, r4c5 ≠ 37, r4c7 ≠ 37, r5c9 ≠ 37, r6c8 ≠ 37, r7c7 ≠ 37, r5c4 ≠ 37
whip[1]: n37{r5c7 .} ==> r2c4 ≠ 36, r2c6 ≠ 36, r3c3 ≠ 36, r3c5 ≠ 36, r3c7 ≠ 36, r4c4 ≠ 36, r4c6 ≠ 36, r4c8 ≠ 36, r7c6 ≠ 36, r5c7 ≠ 36
whip[1]: n36{r6c7 .} ==> r1c4 ≠ 35, r2c3 ≠ 35, r2c5 ≠ 35, r2c7 ≠ 35, r3c4 ≠ 35, r3c6 ≠ 35, r3c8 ≠ 35, r4c5 ≠ 35, r4c7 ≠ 35, r4c9 ≠ 35, r5c8 ≠ 35, r6c7 ≠ 35
whip[1]: n35{r7c7 .} ==> r1c7 ≠ 34, r2c4 ≠ 34, r2c6 ≠ 34, r3c5 ≠ 34, r3c7 ≠ 34, r3c9 ≠ 34, r4c6 ≠ 34, r4c8 ≠ 34, r4c10 ≠ 34, r5c7 ≠ 34, r5c9 ≠ 34, r6c8 ≠ 34
whip[1]: n34{r6c7 .} ==> r5c8 ≠ 33, r1c8 ≠ 33, r2c5 ≠ 33, r2c7 ≠ 33, r3c6 ≠ 33, r3c8 ≠ 33, r4c7 ≠ 33, r4c9 ≠ 33
whip[1]: n33{r6c8 .} ==> r1c7 ≠ 32, r2c6 ≠ 32, r3c7 ≠ 32, r3c9 ≠ 32, r4c8 ≠ 32, r4c10 ≠ 32, r5c9 ≠ 32
whip[1]: n32{r5c8 .} ==> r4c9 ≠ 31, r1c8 ≠ 31, r2c7 ≠ 31, r3c8 ≠ 31
whip[1]: n31{r5c9 .} ==> r3c9 ≠ 30, r4c10 ≠ 30
whip[1]: n10{r5c2 .} ==> r5c2 ≠ 11, r4c1 ≠ 11
whip[1]: n11{r5c3 .} ==> r3c1 ≠ 12, r4c2 ≠ 12, r5c3 ≠ 12
whip[1]: n12{r5c4 .} ==> r1c1 ≠ 13, r3c2 ≠ 13, r4c3 ≠ 13, r5c4 ≠ 13
whip[1]: n13{r5c3 .} ==> r4c4 ≠ 14, r1c1 ≠ 14, r3c3 ≠ 14
whip[1]: n14{r5c4 .} ==> r1c1 ≠ 15, r2c3 ≠ 15, r3c4 ≠ 15, r4c5 ≠ 15
whip[1]: n15{r4c6 .} ==> r1c3 ≠ 16, r2c4 ≠ 16, r3c5 ≠ 16
whip[1]: n16{r4c5 .} ==> r1c4 ≠ 17, r2c5 ≠ 17
whip[1]: n8{r4c1 .} ==> r4c1 ≠ 7
whip[1]: n7{r4c2 .} ==> r3c1 ≠ 6
whip[1]: n6{r4c1 .} ==> r1c1 ≠ 5
hidden-single: r3c1 = 5
hidden-single: r4c2 = 7
hidden-single: r5c3 = 11
hidden-single: r5c2 = 10
hidden-single: r4c1 = 8
hidden-single: r3c2 = 6
naked-single: r1c1 = 1
whip[1]: n45{r5c7 .} ==> r7c6 ≠ 46
naked-single: r7c6 = 66
hidden-single: r7c7 = 65
whip[1]: n42{r5c4 .} ==> r5c7 ≠ 43
hidden-single: r4c6 = 43
hidden-single: r5c7 = 45
hidden-single: r4c5 = 42
hidden-single: r5c4 = 40
hidden-single: r4c4 = 39
hidden-single: r3c3 = 13
hidden-single: r4c3 = 12
hidden-single: r3c4 = 38
hidden-single: r2c3 = 14
whip[1]: n15{r2c4 .} ==> r3c6 ≠ 16
whip[1]: n37{r3c5 .} ==> r2c7 ≠ 36, r3c8 ≠ 36, r4c7 ≠ 36, r4c9 ≠ 36, r5c8 ≠ 36, r6c7 ≠ 36
whip[1]: n36{r3c6 .} ==> r6c8 ≠ 35, r1c7 ≠ 35, r3c9 ≠ 35, r4c8 ≠ 35, r4c10 ≠ 35, r5c9 ≠ 35
whip[1]: n35{r3c7 .} ==> r4c9 ≠ 34, r1c8 ≠ 34, r5c8 ≠ 34, r6c7 ≠ 34
whip[1]: r6c7{n48 .} ==> r3c7 ≠ 47, r4c8 ≠ 47, r5c9 ≠ 47
hidden-single: r6c8 = 47
whip[1]: n48{r6c7 .} ==> r3c9 ≠ 49, r4c10 ≠ 49
whip[1]: r4c7{n34 .} ==> r1c7 ≠ 33, r2c4 ≠ 33, r2c6 ≠ 33, r3c5 ≠ 33, r3c9 ≠ 33, r4c10 ≠ 33, r5c9 ≠ 33
whip[1]: n33{r4c8 .} ==> r1c8 ≠ 32, r2c5 ≠ 32, r1c4 ≠ 34, r2c5 ≠ 34
whip[1]: n34{r4c7 .} ==> r1c3 ≠ 35, r2c4 ≠ 35
whip[1]: n35{r3c7 .} ==> r1c4 ≠ 36
whip[1]: r1c4{n18 .} ==> r2c6 ≠ 17, r3c5 ≠ 17
whip[1]: r1c3{n17 .} ==> r2c5 ≠ 16
hidden-single: r1c4 = 16
hidden-single: r2c5 = 18
hidden-single: r2c4 = 17
hidden-single: r1c3 = 15
hidden-single: r3c5 = 37
hidden-single: r3c6 = 36
whip[1]: r3c9{n31 .} ==> r1c8 ≠ 30, r2c7 ≠ 30
naked-single: r1c8 = 22
hidden-single: r1c7 = 21
whip[1]: r2c7{n34 .} ==> r4c8 ≠ 33
hidden-single: r3c7 = 33
hidden-single: r2c6 = 35
hidden-single: r2c7 = 34
naked-single: r4c7 = 32
hidden-single: r4c8 = 31
hidden-single: r5c9 = 49
hidden-single: r4c10 = 51
hidden-single: r3c9 = 29
hidden-single: r4c9 = 50
hidden-single: r3c8 = 30
hidden-single: r5c8 = 48
hidden-single: r6c7 = 46
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

 1  2 15 16 19 20 21 22 25 26
 4  3 14 17 18 35 34 23 24 27
 5  6 13 38 37 36 33 30 29 28
 8  7 12 39 42 43 32 31 50 51
 9 10 11 40 41 44 45 48 49 52
72 71 70 69 68 67 46 47 54 53
73 74 75 76 77 66 65 64 55 56
98 97 92 91 78 79 80 63 62 57
99 96 93 90 87 86 81 82 61 58
100 95 94 89 88 85 84 83 60 59
init-time = 0.39s, solve time = 4.07s, total-time = 4.46s
nb-facts=<Fact-32369>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
