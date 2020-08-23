



(solve Hidato topological 10 92

B . . . . . 65 67 . B 
. 56 55 79 . . . . 70 . 
. . . 81 77 74 . . . . 
. . 53 85 . . . 32 33 . 
50 49 . 83 . 88 39 . 37 .
. . . 45 43 . . . . 29
. 8 7 . . . . . 27 .
. 1 . 4 . . . . . 92
B 11 2 . 16 . 20 22 . B 
B B . 14 . 19 . . B B
)


***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules topological-model   *****
undecided numbers: (3 5 6 9 10 12 13 15 17 18 21 23 24 25 26 28 30 31 34 35 36 38 40 41 42 44 46 47 48 51 52 54 57 58 59 60 61 62 63 64 66 68 69 71 72 73 75 76 78 80 82 84 86 87 89 90 91)
start solution 1596610001.13357
entering BRT
hidden-single: r8c9 = 91
hidden-single: r7c8 = 90
hidden-single: r6c7 = 89
hidden-single: r5c8 = 31
hidden-single: r6c8 = 38
hidden-single: r6c9 = 30
hidden-single: r7c10 = 28
hidden-single: r8c8 = 26
hidden-single: r4c5 = 82
hidden-single: r5c5 = 86
hidden-single: r5c3 = 84
hidden-single: r2c5 = 78
hidden-single: r3c3 = 80
hidden-single: r3c2 = 54
hidden-single: r4c2 = 52
hidden-single: r4c1 = 51
naked-single: r6c1 = 48
hidden-single: r6c2 = 47
hidden-single: r6c3 = 46
naked-single: r7c1 = 9
hidden-single: r8c1 = 10
naked-single: r2c10 = 69
hidden-single: r1c9 = 68
Starting_init_links_with_<Fact-4167>
171 candidates, 642 csp-links and 969 links. Density = 6.67%
starting non trivial part of solution
Entering_level_W1_with_<Fact-7392>
whip[1]: r9c9{n24 .} ==> r10c7 ≠ 24, r7c6 ≠ 24, r7c7 ≠ 24, r8c6 ≠ 24, r8c7 ≠ 24, r9c6 ≠ 24
naked-single: r8c6 = 17
hidden-single: r9c6 = 18
naked-single: r8c5 = 5
hidden-single: r7c4 = 6
hidden-single: r7c5 = 44
naked-single: r10c5 = 15
whip[1]: n42{r7c6 .} ==> r4c6 ≠ 41, r4c7 ≠ 41
whip[1]: n41{r7c7 .} ==> r4c6 ≠ 40, r4c7 ≠ 40
hidden-single: r6c6 = 40
hidden-single: r7c6 = 42
hidden-single: r7c7 = 41
hidden-single: r4c6 = 87
hidden-single: r2c6 = 76
whip[1]: n60{r1c6 .} ==> r3c7 ≠ 61, r4c7 ≠ 61, r3c1 ≠ 59
whip[1]: r3c1{n58 .} ==> r1c2 ≠ 57, r1c3 ≠ 57, r1c2 ≠ 58, r1c3 ≠ 58, r1c4 ≠ 58
whip[1]: n58{r3c1 .} ==> r1c3 ≠ 59, r1c4 ≠ 59, r1c5 ≠ 59
whip[1]: n59{r2c1 .} ==> r1c4 ≠ 60, r1c5 ≠ 60, r1c6 ≠ 60
whip[1]: n60{r1c3 .} ==> r1c5 ≠ 61, r1c6 ≠ 61, r2c7 ≠ 61
whip[1]: n61{r1c4 .} ==> r1c6 ≠ 62, r2c7 ≠ 62, r2c8 ≠ 62, r3c7 ≠ 62, r3c8 ≠ 62, r4c7 ≠ 62
whip[1]: n62{r1c5 .} ==> r3c7 ≠ 63, r2c7 ≠ 63, r2c8 ≠ 63, r3c8 ≠ 63, r3c9 ≠ 63
whip[1]: n63{r1c6 .} ==> r2c8 ≠ 64
whip[1]: n24{r10c8 .} ==> r8c7 ≠ 23, r8c7 ≠ 25
hidden-single: r9c9 = 25
hidden-single: r10c8 = 24
hidden-single: r10c7 = 23
hidden-single: r8c7 = 21
whip[1]: r10c3{n12 .} ==> r8c3 ≠ 12
hidden-single: r10c3 = 12
hidden-single: r9c4 = 13
hidden-single: r8c3 = 3
whip[1]: r5c10{n35 .} ==> r4c7 ≠ 35, r3c7 ≠ 35, r3c8 ≠ 35, r3c9 ≠ 35, r3c10 ≠ 35
naked-single: r3c10 = 34
hidden-single: r4c10 = 35
hidden-single: r5c10 = 36
naked-single: r3c9 = 71
naked-single: r3c8 = 72
naked-single: r2c8 = 66
naked-single: r4c7 = 73
naked-single: r3c7 = 75
naked-single: r2c7 = 64
hidden-single: r1c6 = 63
hidden-single: r1c5 = 62
hidden-single: r1c4 = 61
hidden-single: r1c3 = 60
hidden-single: r1c2 = 59
hidden-single: r2c1 = 58
hidden-single: r3c1 = 57
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

 - 59 60 61 62 63 65 67 68  -
58 56 55 79 78 76 64 66 70 69
57 54 80 81 77 74 75 72 71 34
51 52 53 85 82 87 73 32 33 35
50 49 84 83 86 88 39 31 37 36
48 47 46 45 43 40 89 38 30 29
 9  8  7  6 44 42 41 90 27 28
10  1  3  4  5 17 21 26 91 92
 - 11  2 13 16 18 20 22 25  -
 -  - 12 14 15 19 23 24  -  -
init-time = 0.23s, solve time = 0.13s, total-time = 0.35s
nb-facts=<Fact-7455>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
