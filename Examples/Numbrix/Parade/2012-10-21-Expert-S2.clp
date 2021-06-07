



(solve Numbrix topological 9 81

69 . 67 . 65 . 61 . 57
. . . . . . . . . 
77 . . . . . . . 55
. . . . . . . . . 
19 . . . . . . . 45
. . . . . . . . . 
3 . . . . . . . 39
. . . . . . . . . 
5 . 7 . 11 . 31 . 33


)


***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Numbrix-Rules topological-model   *****
undecided numbers: (1 2 4 6 8 9 10 12 13 14 15 16 17 18 20 21 22 23 24 25 26 27 28 29 30 32 34 35 36 37 38 40 41 42 43 44 46 47 48 49 50 51 52 53 54 56 58 59 60 62 63 64 66 68 70 71 72 73 74 75 76 78 79 80 81)
start solution 1596608193.49017
entering BRT
hidden-single: r9c8 = 32
hidden-single: r8c9 = 34
hidden-single: r8c8 = 35
hidden-single: r9c2 = 6
hidden-single: r8c1 = 4
hidden-single: r2c9 = 56
hidden-single: r1c8 = 58
hidden-single: r2c8 = 59
hidden-single: r2c7 = 60
hidden-single: r1c6 = 62
hidden-single: r2c6 = 63
hidden-single: r2c5 = 64
hidden-single: r1c4 = 66
hidden-single: r1c2 = 68
hidden-single: r2c1 = 70
hidden-single: r2c2 = 71
Starting_init_links_with_<Fact-5322>
297 candidates, 1932 csp-links and 3434 links. Density = 7.81%
starting non trivial part of solution
Entering_level_W1_with_<Fact-16057>
whip[1]: r8c6{n28 .} ==> r9c4 ≠ 28, r6c7 ≠ 28, r7c7 ≠ 28, r7c8 ≠ 28
whip[1]: n28{r9c6 .} ==> r5c7 ≠ 27, r6c7 ≠ 27, r6c8 ≠ 27, r9c4 ≠ 27
whip[1]: n27{r8c6 .} ==> r4c7 ≠ 26, r5c7 ≠ 26, r5c8 ≠ 26
whip[1]: r7c6{n27 .} ==> r8c5 ≠ 27, r8c4 ≠ 27
whip[1]: n27{r8c6 .} ==> r8c3 ≠ 26, r8c4 ≠ 26, r9c4 ≠ 26
whip[1]: n26{r8c5 .} ==> r8c2 ≠ 25, r8c3 ≠ 25
whip[1]: n25{r8c4 .} ==> r8c2 ≠ 24
whip[1]: r3c6{n51 .} ==> r6c9 ≠ 51, r3c8 ≠ 51, r4c7 ≠ 51, r4c8 ≠ 51, r4c9 ≠ 51, r5c7 ≠ 51, r5c8 ≠ 51, r6c8 ≠ 51
whip[1]: n51{r4c6 .} ==> r5c8 ≠ 52, r4c8 ≠ 52, r4c9 ≠ 52, r6c9 ≠ 52, r4c8 ≠ 50, r4c9 ≠ 50, r5c7 ≠ 50, r5c8 ≠ 50, r6c7 ≠ 50, r6c8 ≠ 50, r6c9 ≠ 50, r7c8 ≠ 50
whip[1]: n50{r5c6 .} ==> r6c8 ≠ 49, r4c9 ≠ 49, r5c8 ≠ 49, r6c7 ≠ 49, r6c9 ≠ 49, r7c7 ≠ 49, r7c8 ≠ 49
whip[1]: n49{r6c6 .} ==> r6c8 ≠ 48, r6c9 ≠ 48, r7c8 ≠ 48
whip[1]: n48{r6c7 .} ==> r6c9 ≠ 47
whip[1]: n52{r4c7 .} ==> r4c9 ≠ 53
whip[1]: n30{r9c6 .} ==> r9c6 ≠ 29, r8c7 ≠ 29
whip[1]: n29{r8c6 .} ==> r8c6 ≠ 28
whip[1]: n28{r9c6 .} ==> r7c6 ≠ 27
whip[1]: n27{r8c6 .} ==> r6c6 ≠ 26, r7c5 ≠ 26
whip[1]: n26{r8c5 .} ==> r5c6 ≠ 25, r6c5 ≠ 25, r7c4 ≠ 25
whip[1]: n25{r8c4 .} ==> r5c5 ≠ 24, r6c4 ≠ 24, r7c3 ≠ 24
whip[1]: n24{r8c3 .} ==> r5c4 ≠ 23, r6c3 ≠ 23, r7c2 ≠ 23
whip[1]: n23{r8c2 .} ==> r5c3 ≠ 22, r6c2 ≠ 22
whip[1]: n22{r7c2 .} ==> r5c2 ≠ 21, r6c1 ≠ 21
whip[1]: n10{r9c4 .} ==> r9c4 ≠ 9
hidden-single: r8c4 = 9
hidden-single: r7c5 = 13
hidden-single: r8c5 = 12
hidden-single: r9c4 = 10
hidden-single: r8c3 = 8
whip[1]: n27{r8c6 .} ==> r7c4 ≠ 26
whip[1]: n26{r7c6 .} ==> r7c3 ≠ 25
whip[1]: n25{r6c6 .} ==> r7c2 ≠ 24
whip[1]: n24{r7c4 .} ==> r8c2 ≠ 23
whip[1]: n14{r7c4 .} ==> r8c2 ≠ 15
naked-single: r8c2 = 1
hidden-single: r7c2 = 2
whip[1]: r9c6{n30 .} ==> r7c7 ≠ 29
hidden-single: r8c6 = 29
whip[1]: n27{r7c7 .} ==> r9c6 ≠ 28
naked-single: r9c6 = 30
whip[1]: n40{r7c8 .} ==> r7c8 ≠ 41, r6c9 ≠ 41
whip[1]: n41{r7c7 .} ==> r4c9 ≠ 42, r6c8 ≠ 42
whip[1]: n42{r7c8 .} ==> r4c9 ≠ 43, r5c8 ≠ 43, r6c9 ≠ 43
whip[1]: n38{r7c8 .} ==> r7c8 ≠ 37, r6c9 ≠ 37
whip[1]: n80{r6c1 .} ==> r6c1 ≠ 81
whip[1]: n46{r5c8 .} ==> r5c8 ≠ 47, r4c9 ≠ 47
whip[1]: n47{r6c8 .} ==> r4c8 ≠ 48, r5c7 ≠ 48
whip[1]: n48{r6c7 .} ==> r3c8 ≠ 49, r4c7 ≠ 49, r5c6 ≠ 49
whip[1]: n49{r6c6 .} ==> r3c7 ≠ 50, r4c6 ≠ 50
whip[1]: n50{r5c6 .} ==> r3c6 ≠ 51
whip[1]: n51{r4c6 .} ==> r3c7 ≠ 52
whip[1]: n52{r4c7 .} ==> r3c8 ≠ 53
whip[1]: n78{r4c1 .} ==> r4c1 ≠ 79, r3c2 ≠ 79
whip[1]: n79{r4c2 .} ==> r3c3 ≠ 80, r6c1 ≠ 80, r4c2 ≠ 80
whip[1]: n80{r5c2 .} ==> r2c3 ≠ 81, r3c2 ≠ 81, r3c4 ≠ 81, r4c1 ≠ 81, r4c3 ≠ 81, r5c2 ≠ 81
whip[1]: n76{r4c1 .} ==> r4c1 ≠ 75, r3c2 ≠ 75
whip[1]: n75{r4c2 .} ==> r3c3 ≠ 74, r6c1 ≠ 74, r4c2 ≠ 74
whip[1]: n74{r5c2 .} ==> r2c3 ≠ 73, r3c2 ≠ 73, r4c1 ≠ 73
Entering_relation_bivalue_with_<Fact-16163>
Entering_level_S2_with_<Fact-16220>
hidden-pairs: {n38 n40}{r6c9 r7c8} ==> r7c8 ≠ 42, r7c8 ≠ 36, r6c9 ≠ 46, r6c9 ≠ 44, r6c9 ≠ 42
hidden-single: r8c7 = 36
hidden-single: r7c7 = 37
hidden-single: r7c8 = 38
hidden-single: r6c9 = 40
hidden-single: r6c6 = 27
hidden-single: r6c8 = 41
hidden-single: r7c6 = 28
hidden-pairs: {n43 n47}{r4c8 r5c7} ==> r5c7 ≠ 49, r5c7 ≠ 25, r4c8 ≠ 53, r4c8 ≠ 49
hidden-single: r3c7 = 53
hidden-single: r3c8 = 54
whip[1]: n49{r5c5 .} ==> r4c9 ≠ 48, r5c8 ≠ 48, r6c7 ≠ 48
whip[1]: n25{r6c4 .} ==> r6c7 ≠ 26
naked-single: r6c7 = 42
hidden-single: r5c7 = 43
hidden-single: r5c8 = 44
hidden-single: r4c9 = 46
hidden-single: r4c8 = 47
hidden-single: r4c7 = 48
hidden-single: r3c6 = 52
hidden-single: r4c6 = 49
hidden-single: r3c5 = 51
hidden-single: r4c5 = 50
whip[1]: r5c6{n26 .} ==> r6c4 ≠ 25
hidden-single: r5c5 = 25
naked-single: r7c4 = 14
whip[1]: n23{r7c3 .} ==> r5c6 ≠ 24
naked-single: r5c6 = 26
naked-single: r6c5 = 24
hidden-single: r6c4 = 23
hidden-single: r7c3 = 15
hidden-single: r6c3 = 16
hidden-single: r5c4 = 22
hidden-single: r5c3 = 21
hidden-single: r5c2 = 20
hidden-single: r6c1 = 18
hidden-single: r6c2 = 17
naked-single: r4c4 = 81
naked-single: r2c4 = 73
hidden-single: r2c3 = 72
hidden-single: r3c4 = 74
hidden-single: r4c3 = 80
hidden-single: r3c3 = 75
hidden-single: r4c2 = 79
hidden-single: r3c2 = 76
hidden-single: r4c1 = 78
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = P
69 68 67 66 65 62 61 58 57
70 71 72 73 64 63 60 59 56
77 76 75 74 51 52 53 54 55
78 79 80 81 50 49 48 47 46
19 20 21 22 25 26 43 44 45
18 17 16 23 24 27 42 41 40
 3  2 15 14 13 28 37 38 39
 4  1  8  9 12 29 36 35 34
 5  6  7 10 11 30 31 32 33
init-time = 0.22s, solve time = 0.65s, total-time = 0.87s
nb-facts=<Fact-16283>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
