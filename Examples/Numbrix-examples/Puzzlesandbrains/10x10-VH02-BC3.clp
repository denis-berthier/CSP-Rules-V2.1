



(solve Numbrix topological 10 100

. . . . . . . . . .
. . 35 . . . . 46 . .
. 29 . 61 . . 58 . 48 .
. . 27 . . . . 56 . .
. . . . 64 99 . . . .
. . . . 65 82 . . . .
. . 16 . . . . 87 . .
. 12 . 18 . . 85 . 89 .
. . 10 . . . . 77 . .
. . . . . . . . . .
)


***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Numbrix-Rules topological-model   *****
undecided numbers: (1 2 3 4 5 6 7 8 9 11 13 14 15 17 19 20 21 22 23 24 25 26 28 30 31 32 33 34 36 37 38 39 40 41 42 43 44 45 47 49 50 51 52 53 54 55 57 59 60 62 63 66 67 68 69 70 71 72 73 74 75 76 78 79 80 81 83 84 86 88 90 91 92 93 94 95 96 97 98 100)
start solution 1596609732.38147
entering BRT
hidden-single: r9c6 = 79
hidden-single: r8c6 = 80
hidden-single: r7c6 = 81
hidden-single: r6c7 = 83
hidden-single: r7c7 = 84
hidden-single: r8c8 = 86
hidden-single: r7c9 = 88
hidden-single: r9c7 = 78
hidden-single: r3c6 = 59
hidden-single: r3c5 = 60
hidden-single: r4c4 = 62
Starting_init_links_with_<Fact-8656>
753 candidates, 11023 csp-links and 21410 links. Density = 7.56%
starting non trivial part of solution
Entering_level_W1_with_<Fact-73525>
whip[1]: n76{r10c8 .} ==> r10c8 ≠ 75, r9c9 ≠ 75
whip[1]: n75{r10c9 .} ==> r6c8 ≠ 74, r9c5 ≠ 74, r9c10 ≠ 74, r10c7 ≠ 74, r10c9 ≠ 74
whip[1]: n74{r10c10 .} ==> r5c8 ≠ 73, r6c8 ≠ 73, r6c9 ≠ 73, r8c5 ≠ 73, r8c10 ≠ 73, r9c4 ≠ 73, r9c5 ≠ 73, r9c9 ≠ 73, r10c6 ≠ 73, r10c8 ≠ 73
whip[1]: n73{r10c9 .} ==> r5c7 ≠ 72, r5c8 ≠ 72, r5c9 ≠ 72, r6c8 ≠ 72, r6c9 ≠ 72, r7c5 ≠ 72, r7c10 ≠ 72, r8c5 ≠ 72, r9c4 ≠ 72, r10c5 ≠ 72, r10c7 ≠ 72
whip[1]: n72{r10c8 .} ==> r3c8 ≠ 71, r4c7 ≠ 71, r4c9 ≠ 71, r5c7 ≠ 71, r5c8 ≠ 71, r5c9 ≠ 71, r6c8 ≠ 71, r6c10 ≠ 71, r7c4 ≠ 71, r7c5 ≠ 71, r8c3 ≠ 71, r9c2 ≠ 71, r9c5 ≠ 71, r10c4 ≠ 71, r10c6 ≠ 71
whip[1]: n71{r10c7 .} ==> r4c6 ≠ 70, r4c7 ≠ 70, r5c7 ≠ 70, r5c8 ≠ 70, r6c4 ≠ 70, r6c9 ≠ 70, r7c4 ≠ 70, r8c3 ≠ 70, r8c5 ≠ 70, r9c4 ≠ 70, r10c5 ≠ 70, r9c9 ≠ 72
whip[1]: n70{r10c6 .} ==> r4c5 ≠ 69, r4c6 ≠ 69, r4c7 ≠ 69, r5c4 ≠ 69, r5c7 ≠ 69, r6c3 ≠ 69, r6c4 ≠ 69, r6c8 ≠ 69, r7c2 ≠ 69, r7c5 ≠ 69, r8c3 ≠ 69, r9c5 ≠ 69
whip[1]: n69{r10c5 .} ==> r4c5 ≠ 68, r4c6 ≠ 68, r5c3 ≠ 68, r5c4 ≠ 68, r6c2 ≠ 68, r6c3 ≠ 68, r7c4 ≠ 68, r8c5 ≠ 68
whip[1]: n68{r9c5 .} ==> r4c5 ≠ 67, r6c4 ≠ 67, r7c5 ≠ 67
whip[1]: n67{r8c5 .} ==> r5c7 ≠ 68, r6c8 ≠ 68
whip[1]: n68{r9c5 .} ==> r5c8 ≠ 69, r6c9 ≠ 69
whip[1]: n69{r10c5 .} ==> r5c9 ≠ 70, r6c8 ≠ 70, r6c10 ≠ 70
whip[1]: n70{r10c6 .} ==> r5c10 ≠ 71, r6c9 ≠ 71, r7c10 ≠ 71
whip[1]: n71{r10c7 .} ==> r6c10 ≠ 72, r8c10 ≠ 72
whip[1]: n72{r10c8 .} ==> r7c10 ≠ 73, r9c10 ≠ 73
whip[1]: n73{r10c9 .} ==> r8c10 ≠ 74
whip[1]: n9{r10c3 .} ==> r10c3 ≠ 8, r8c3 ≠ 8, r9c2 ≠ 8, r9c4 ≠ 8
whip[1]: n8{r10c4 .} ==> r6c3 ≠ 7, r7c2 ≠ 7, r7c4 ≠ 7, r8c3 ≠ 7, r9c1 ≠ 7, r9c5 ≠ 7, r10c2 ≠ 7, r8c3 ≠ 9, r10c4 ≠ 7
whip[1]: n7{r10c5 .} ==> r5c3 ≠ 6, r6c2 ≠ 6, r6c3 ≠ 6, r6c4 ≠ 6, r7c2 ≠ 6, r7c4 ≠ 6, r8c1 ≠ 6, r8c3 ≠ 6, r8c5 ≠ 6, r9c2 ≠ 6, r9c4 ≠ 6, r10c1 ≠ 6, r10c3 ≠ 6, r10c5 ≠ 6
whip[1]: n6{r10c6 .} ==> r5c2 ≠ 5, r5c3 ≠ 5, r5c4 ≠ 5, r6c2 ≠ 5, r6c3 ≠ 5, r6c4 ≠ 5, r7c1 ≠ 5, r7c5 ≠ 5, r8c3 ≠ 5, r9c1 ≠ 5, r9c5 ≠ 5, r10c2 ≠ 5, r10c4 ≠ 5, r10c6 ≠ 5
whip[1]: n5{r10c7 .} ==> r3c3 ≠ 4, r4c2 ≠ 4, r5c2 ≠ 4, r5c3 ≠ 4, r5c4 ≠ 4, r6c1 ≠ 4, r6c3 ≠ 4, r7c2 ≠ 4, r7c4 ≠ 4, r8c1 ≠ 4, r8c3 ≠ 4, r8c5 ≠ 4, r9c2 ≠ 4, r9c4 ≠ 4, r9c9 ≠ 4, r10c1 ≠ 4, r10c3 ≠ 4, r10c5 ≠ 4, r10c7 ≠ 4
whip[1]: n4{r10c8 .} ==> r3c3 ≠ 3, r4c2 ≠ 3, r4c5 ≠ 3, r5c1 ≠ 3, r5c3 ≠ 3, r6c2 ≠ 3, r6c4 ≠ 3, r7c1 ≠ 3, r7c5 ≠ 3, r8c3 ≠ 3, r9c1 ≠ 3, r9c5 ≠ 3, r9c9 ≠ 3, r9c10 ≠ 3, r10c2 ≠ 3, r10c4 ≠ 3, r10c6 ≠ 3, r10c8 ≠ 3
whip[1]: n3{r10c9 .} ==> r1c3 ≠ 2, r2c2 ≠ 2, r2c4 ≠ 2, r3c3 ≠ 2, r4c1 ≠ 2, r4c5 ≠ 2, r4c6 ≠ 2, r5c2 ≠ 2, r5c4 ≠ 2, r5c7 ≠ 2, r6c1 ≠ 2, r6c3 ≠ 2, r6c8 ≠ 2, r7c2 ≠ 2, r7c4 ≠ 2, r8c1 ≠ 2, r8c3 ≠ 2, r8c5 ≠ 2, r8c10 ≠ 2, r9c2 ≠ 2, r9c4 ≠ 2, r9c10 ≠ 2, r10c1 ≠ 2, r10c3 ≠ 2, r10c5 ≠ 2, r10c7 ≠ 2, r10c9 ≠ 2
whip[1]: n2{r10c10 .} ==> r1c2 ≠ 1, r1c3 ≠ 1, r1c4 ≠ 1, r2c2 ≠ 1, r2c4 ≠ 1, r2c5 ≠ 1, r3c1 ≠ 1, r3c3 ≠ 1, r4c2 ≠ 1, r4c5 ≠ 1, r4c6 ≠ 1, r4c7 ≠ 1, r5c1 ≠ 1, r5c3 ≠ 1, r5c7 ≠ 1, r5c8 ≠ 1, r6c2 ≠ 1, r6c4 ≠ 1, r6c8 ≠ 1, r6c9 ≠ 1, r7c1 ≠ 1, r7c5 ≠ 1, r7c10 ≠ 1, r8c3 ≠ 1, r8c10 ≠ 1, r9c1 ≠ 1, r9c5 ≠ 1, r9c9 ≠ 1, r10c2 ≠ 1, r10c4 ≠ 1, r10c6 ≠ 1, r10c8 ≠ 1, r10c10 ≠ 1
whip[1]: r8c10{n92 .} ==> r6c9 ≠ 91, r9c9 ≠ 91, r10c9 ≠ 91
whip[1]: n91{r9c10 .} ==> r10c8 ≠ 92, r5c9 ≠ 92, r6c8 ≠ 92, r6c9 ≠ 92
whip[1]: n92{r9c9 .} ==> r4c9 ≠ 93, r5c8 ≠ 93, r5c9 ≠ 93, r6c8 ≠ 93, r8c5 ≠ 93, r10c7 ≠ 93
whip[1]: n93{r7c10 .} ==> r10c6 ≠ 94, r4c9 ≠ 94, r5c7 ≠ 94, r5c8 ≠ 94, r7c5 ≠ 94, r8c5 ≠ 94, r9c5 ≠ 94, r9c9 ≠ 92
whip[1]: n94{r6c10 .} ==> r8c5 ≠ 95, r3c8 ≠ 95, r4c7 ≠ 95, r5c7 ≠ 95, r7c4 ≠ 95, r7c5 ≠ 95
whip[1]: n95{r6c9 .} ==> r6c4 ≠ 96, r4c6 ≠ 96, r4c7 ≠ 96, r7c5 ≠ 96
whip[1]: n96{r6c8 .} ==> r4c5 ≠ 97, r4c6 ≠ 97, r5c4 ≠ 97
whip[1]: n21{r9c4 .} ==> r9c4 ≠ 20, r8c3 ≠ 20, r7c2 ≠ 22, r8c3 ≠ 22
whip[1]: n22{r7c5 .} ==> r4c5 ≠ 23, r8c3 ≠ 23, r8c3 ≠ 21, r9c2 ≠ 21, r9c4 ≠ 21, r10c3 ≠ 21
whip[1]: n21{r8c5 .} ==> r10c4 ≠ 20
whip[1]: n23{r7c4 .} ==> r2c4 ≠ 24, r3c3 ≠ 24, r4c5 ≠ 24, r4c6 ≠ 24
whip[1]: n24{r6c4 .} ==> r3c3 ≠ 25, r4c5 ≠ 25
whip[1]: n25{r6c3 .} ==> r3c3 ≠ 26
whip[1]: n20{r9c5 .} ==> r8c3 ≠ 19, r7c2 ≠ 21, r8c1 ≠ 21
whip[1]: n21{r8c5 .} ==> r7c1 ≠ 22
whip[1]: n19{r9c4 .} ==> r7c4 ≠ 20, r8c5 ≠ 20
whip[1]: n20{r9c5 .} ==> r6c4 ≠ 21, r7c5 ≠ 21
whip[1]: n21{r8c5 .} ==> r5c4 ≠ 22, r6c3 ≠ 22, r7c4 ≠ 22
whip[1]: n22{r7c5 .} ==> r5c3 ≠ 23, r6c2 ≠ 23, r6c4 ≠ 23
whip[1]: n23{r7c4 .} ==> r5c2 ≠ 24, r5c4 ≠ 24, r6c3 ≠ 24
whip[1]: n24{r6c4 .} ==> r4c2 ≠ 25, r5c3 ≠ 25
whip[1]: n90{r8c10 .} ==> r8c10 ≠ 91
whip[1]: n91{r9c10 .} ==> r7c10 ≠ 92
whip[1]: n92{r8c10 .} ==> r6c10 ≠ 93
whip[1]: n93{r7c10 .} ==> r5c10 ≠ 94, r6c9 ≠ 94
whip[1]: n94{r6c10 .} ==> r5c9 ≠ 95, r6c8 ≠ 95
whip[1]: n95{r6c9 .} ==> r5c8 ≠ 96
whip[1]: n96{r6c8 .} ==> r5c7 ≠ 97
whip[1]: n14{r8c3 .} ==> r8c3 ≠ 15, r7c4 ≠ 15, r9c2 ≠ 13, r8c3 ≠ 13
whip[1]: n15{r7c2 .} ==> r7c2 ≠ 14, r8c3 ≠ 14
whip[1]: n55{r5c8 .} ==> r5c8 ≠ 54, r3c8 ≠ 54, r4c7 ≠ 54, r4c9 ≠ 54
whip[1]: n54{r6c8 .} ==> r1c8 ≠ 53, r2c7 ≠ 53, r2c9 ≠ 53, r3c8 ≠ 53, r4c6 ≠ 53, r4c10 ≠ 53, r5c7 ≠ 53, r5c9 ≠ 53, r3c8 ≠ 55, r6c8 ≠ 53
whip[1]: n53{r6c9 .} ==> r1c7 ≠ 52, r1c8 ≠ 52, r1c9 ≠ 52, r2c6 ≠ 52, r2c7 ≠ 52, r2c9 ≠ 52, r3c8 ≠ 52, r3c10 ≠ 52, r4c7 ≠ 52, r4c9 ≠ 52, r5c8 ≠ 52, r5c10 ≠ 52, r6c9 ≠ 52
whip[1]: n52{r6c10 .} ==> r1c8 ≠ 51, r1c9 ≠ 51, r2c7 ≠ 51, r2c10 ≠ 51, r3c8 ≠ 51, r4c10 ≠ 51, r5c9 ≠ 51
whip[1]: n51{r6c9 .} ==> r2c9 ≠ 50, r3c8 ≠ 50, r3c10 ≠ 50, r4c9 ≠ 50
whip[1]: n50{r5c9 .} ==> r3c8 ≠ 49, r4c7 ≠ 51
whip[1]: n51{r6c9 .} ==> r4c6 ≠ 52
whip[1]: n52{r6c10 .} ==> r4c5 ≠ 53
whip[1]: n43{r4c7 .} ==> r4c7 ≠ 42, r3c8 ≠ 42, r3c8 ≠ 44
whip[1]: n42{r5c7 .} ==> r3c8 ≠ 41, r4c6 ≠ 41, r3c8 ≠ 43, r4c9 ≠ 43
whip[1]: n41{r4c7 .} ==> r2c2 ≠ 40, r3c3 ≠ 40, r4c5 ≠ 40, r2c9 ≠ 42
whip[1]: n42{r5c7 .} ==> r2c10 ≠ 43
whip[1]: n40{r4c6 .} ==> r2c1 ≠ 39, r2c2 ≠ 39, r3c3 ≠ 39, r2c9 ≠ 41, r5c4 ≠ 39
whip[1]: n39{r4c5 .} ==> r5c3 ≠ 38, r2c1 ≠ 38, r3c1 ≠ 38, r3c3 ≠ 38, r4c2 ≠ 38
whip[1]: n38{r2c6 .} ==> r4c5 ≠ 39, r3c3 ≠ 37
whip[1]: n39{r2c7 .} ==> r4c6 ≠ 40
whip[1]: n40{r2c7 .} ==> r4c5 ≠ 41, r4c7 ≠ 41
naked-single: r4c5 = 63
whip[1]: n41{r2c7 .} ==> r4c6 ≠ 42, r2c10 ≠ 42, r5c7 ≠ 42
whip[1]: n42{r2c7 .} ==> r4c7 ≠ 43, r3c10 ≠ 43, r5c8 ≠ 43
whip[1]: n32{r4c2 .} ==> r4c2 ≠ 31, r3c3 ≠ 31, r2c4 ≠ 33, r3c3 ≠ 33
whip[1]: n33{r2c5 .} ==> r3c3 ≠ 34, r3c3 ≠ 32, r4c2 ≠ 32, r5c3 ≠ 32
whip[1]: n32{r3c1 .} ==> r5c2 ≠ 31
whip[1]: n31{r4c1 .} ==> r3c3 ≠ 30, r2c4 ≠ 32
whip[1]: n32{r3c1 .} ==> r2c5 ≠ 33
whip[1]: n30{r4c2 .} ==> r2c2 ≠ 31, r3c1 ≠ 31
whip[1]: n31{r4c1 .} ==> r1c2 ≠ 32, r2c1 ≠ 32
whip[1]: n32{r3c1 .} ==> r1c3 ≠ 33, r2c2 ≠ 33
whip[1]: n45{r2c9 .} ==> r2c9 ≠ 44, r1c8 ≠ 44, r2c7 ≠ 44
whip[1]: n44{r2c10 .} ==> r1c7 ≠ 43, r1c9 ≠ 43, r2c6 ≠ 43, r3c8 ≠ 45
whip[1]: n43{r2c9 .} ==> r1c6 ≠ 42, r1c8 ≠ 42, r2c5 ≠ 42, r2c7 ≠ 42
whip[1]: n42{r2c6 .} ==> r1c7 ≠ 41, r1c5 ≠ 41, r2c4 ≠ 41, r2c6 ≠ 41
whip[1]: n41{r2c7 .} ==> r1c4 ≠ 40, r1c6 ≠ 40, r2c5 ≠ 40, r2c7 ≠ 40
whip[1]: n40{r2c6 .} ==> r2c6 ≠ 39, r1c3 ≠ 39, r1c5 ≠ 39, r2c4 ≠ 39
whip[1]: n39{r2c7 .} ==> r1c2 ≠ 38, r1c4 ≠ 38, r2c5 ≠ 38
whip[1]: n38{r2c6 .} ==> r1c3 ≠ 37, r2c2 ≠ 37, r2c4 ≠ 37
whip[1]: n37{r2c5 .} ==> r3c3 ≠ 36
naked-single: r3c3 = 28
Entering_relation_bivalue_with_<Fact-73708>
Entering_level_S2_with_<Fact-73755>
hidden-pairs: {n98 n100}{r4c6 r5c7} ==> r5c7 ≠ 96, r5c7 ≠ 54, r5c7 ≠ 52, r4c6 ≠ 54
whip[1]: n54{r6c8 .} ==> r4c7 ≠ 53, r4c7 ≠ 55
whip[1]: n96{r6c8 .} ==> r4c7 ≠ 97
hidden-single: r5c8 = 97
hidden-single: r5c7 = 98
hidden-single: r4c6 = 100
hidden-single: r4c9 = 55
naked-single: r4c7 = 57
naked-single: r3c8 = 47
whip[1]: n49{r3c10 .} ==> r5c9 ≠ 50
whip[1]: n50{r4c10 .} ==> r6c9 ≠ 51
whip[1]: n51{r5c10 .} ==> r6c8 ≠ 52
whip[1]: r6c8{n96 .} ==> r5c10 ≠ 95
hidden-single: r6c9 = 95
whip[1]: n93{r7c10 .} ==> r6c8 ≠ 94
naked-single: r6c8 = 96
Entering_level_BC2_with_<Fact-73790>
Entering_level_Z2_with_<Fact-73829>
z-chain[2]: n51{r3c10 r5c10} - n53{r5c10 .} ==> r5c9 ≠ 52
z-chain[2]: n51{r3c10 r5c10} - n53{r5c10 .} ==> r6c10 ≠ 52
z-chain[2]: n52{r2c10 r4c10} - n50{r4c10 .} ==> r5c10 ≠ 51
z-chain[2]: n51{r2c9 r3c10} - n49{r3c10 .} ==> r4c10 ≠ 50
z-chain[2]: n68{r9c5 r6c4} - n66{r6c4 .} ==> r5c4 ≠ 67
z-chain[2]: n68{r9c5 r6c4} - n66{r6c4 .} ==> r6c3 ≠ 67
z-chain[2]: n67{r8c5 r7c4} - n69{r7c4 .} ==> r6c4 ≠ 68
z-chain[2]: n68{r9c5 r7c5} - n70{r7c5 .} ==> r7c4 ≠ 69
z-chain[2]: n69{r10c5 r8c5} - n71{r8c5 .} ==> r7c5 ≠ 70
z-chain[2]: n70{r10c6 r9c5} - n72{r9c5 .} ==> r8c5 ≠ 71
z-chain[2]: n72{r10c8 r10c4} - n70{r10c4 .} ==> r10c3 ≠ 71
z-chain[2]: n24{r6c4 r6c2} - n22{r6c2 .} ==> r7c2 ≠ 23
Entering_level_tW2_with_<Fact-74307>
Entering_level_W2_with_<Fact-74308>
Entering_level_BC3_with_<Fact-74309>
biv-chain[3]: n15{r7c2 r6c3} - n14{r7c1 r6c2} - n13{r8c1 r7c2} ==> r7c2 ≠ 1, r7c2 ≠ 3, r7c2 ≠ 5
biv-chain[3]: n49{r2c9 r3c10} - n53{r3c10 r5c10} - n52{r2c10 r4c10} ==> r2c9 ≠ 51
biv-chain[3]: n52{r2c10 r4c10} - n51{r1c10 r3c10} - n50{r1c9 r2c10} ==> r2c10 ≠ 44
z-chain[2]: n44{r2c6 r1c9} - n42{r1c9 .} ==> r2c9 ≠ 43
z-chain[2]: n44{r2c6 r1c9} - n42{r1c9 .} ==> r1c10 ≠ 43
naked-single: r1c10 = 51
hidden-single: r2c10 = 52
hidden-single: r1c9 = 50
hidden-single: r2c9 = 49
hidden-single: r3c10 = 53
hidden-single: r4c10 = 54
naked-single: r5c9 = 94
hidden-single: r5c10 = 93
hidden-single: r6c10 = 92
hidden-single: r7c10 = 91
hidden-single: r8c10 = 90
z-chain[2]: n44{r2c6 r1c7} - n42{r1c7 .} ==> r1c8 ≠ 43
z-chain[2]: n42{r2c6 r1c7} - n40{r1c7 .} ==> r1c8 ≠ 41
naked-single: r1c8 = 45
hidden-single: r1c7 = 44
whip[1]: n43{r2c7 .} ==> r2c4 ≠ 42
z-chain[2]: r2c7{n41 n43} - r1c6{n43 .} ==> r2c4 ≠ 40
z-chain[2]: n40{r1c5 r2c6} - n42{r2c6 .} ==> r2c7 ≠ 41
z-chain[2]: r2c7{n39 n43} - r1c5{n42 .} ==> r1c2 ≠ 39
whip[1]: n39{r2c7 .} ==> r1c1 ≠ 38, r2c2 ≠ 38
naked-single: r1c1 = 32
whip[1]: n33{r2c1 .} ==> r2c4 ≠ 34
whip[1]: r2c4{n38 .} ==> r1c2 ≠ 37, r2c1 ≠ 37
whip[1]: n37{r2c5 .} ==> r2c2 ≠ 36
whip[1]: n31{r2c1 .} ==> r4c2 ≠ 30
hidden-pairs: {n31 n33}{r1c2 r2c1} ==> r2c1 ≠ 1
z-chain[2]: n39{r2c7 r1c4} - n41{r1c4 .} ==> r1c3 ≠ 40
hidden-pairs: {n40 n42}{r1c5 r2c6} ==> r2c6 ≠ 38, r1c5 ≠ 38
whip[1]: n38{r2c4 .} ==> r1c6 ≠ 39, r2c7 ≠ 39
naked-single: r2c7 = 43
hidden-single: r2c6 = 42
hidden-single: r1c5 = 40
naked-single: r1c6 = 41
whip[1]: r2c5{n39 .} ==> r1c3 ≠ 38
hidden-single: r2c4 = 38
hidden-single: r1c3 = 36
hidden-single: r2c2 = 34
hidden-single: r3c1 = 30
hidden-single: r2c1 = 31
hidden-single: r1c2 = 33
hidden-single: r1c4 = 37
hidden-single: r2c5 = 39
z-chain[2]: r9c9{n76 n2} - r10c10{n2 .} ==> r10c7 ≠ 75
whip[1]: n75{r10c9 .} ==> r10c6 ≠ 74
whip[1]: n74{r10c10 .} ==> r10c5 ≠ 73
whip[1]: n73{r10c9 .} ==> r9c5 ≠ 72, r10c4 ≠ 72
whip[1]: n72{r10c8 .} ==> r9c4 ≠ 71
biv-chain[3]: n71{r10c7 r10c5} - n72{r10c8 r10c6} - n73{r10c9 r10c7} ==> r10c7 ≠ 1, r10c7 ≠ 3, r10c7 ≠ 5
whip[1]: n5{r10c5 .} ==> r10c8 ≠ 4
whip[1]: n4{r10c6 .} ==> r10c9 ≠ 3
whip[1]: n3{r10c5 .} ==> r9c9 ≠ 2, r10c8 ≠ 2, r10c10 ≠ 2
naked-single: r10c10 = 74
hidden-single: r10c9 = 73
hidden-single: r10c8 = 72
hidden-single: r10c7 = 71
hidden-single: r10c6 = 70
hidden-single: r10c5 = 69
hidden-single: r9c5 = 68
hidden-single: r8c5 = 67
hidden-single: r7c5 = 66
hidden-single: r6c4 = 20
hidden-single: r7c4 = 19
hidden-single: r8c3 = 17
hidden-single: r9c2 = 11
hidden-single: r9c9 = 76
hidden-single: r9c10 = 75
whip[1]: n9{r10c3 .} ==> r9c1 ≠ 8
whip[1]: n8{r10c4 .} ==> r8c1 ≠ 7
whip[1]: n7{r10c3 .} ==> r7c1 ≠ 6
whip[1]: n6{r10c4 .} ==> r6c1 ≠ 5
whip[1]: n5{r10c3 .} ==> r5c1 ≠ 4, r6c2 ≠ 4
whip[1]: n4{r10c4 .} ==> r4c1 ≠ 3, r5c2 ≠ 3, r5c4 ≠ 3, r6c3 ≠ 3
whip[1]: n3{r10c3 .} ==> r4c2 ≠ 2, r5c3 ≠ 2
whip[1]: n2{r10c4 .} ==> r5c4 ≠ 1
whip[1]: r4c2{n26 .} ==> r5c4 ≠ 25, r6c3 ≠ 25
whip[1]: r5c4{n23 .} ==> r6c2 ≠ 22
hidden-single: r5c3 = 22
hidden-single: r4c2 = 26
whip[1]: n24{r6c2 .} ==> r5c4 ≠ 23
naked-single: r5c4 = 21
whip[1]: r6c1{n3 .} ==> r9c1 ≠ 2, r10c2 ≠ 2, r10c4 ≠ 2
whip[1]: n2{r7c1 .} ==> r9c4 ≠ 3, r10c1 ≠ 3, r10c3 ≠ 3, r9c4 ≠ 1, r10c1 ≠ 1, r10c3 ≠ 1
whip[1]: r10c1{n7 .} ==> r10c4 ≠ 6
whip[1]: n6{r10c2 .} ==> r9c4 ≠ 5, r9c4 ≠ 7
naked-single: r9c4 = 9
hidden-single: r10c4 = 8
hidden-single: r10c3 = 7
hidden-single: r10c2 = 6
hidden-single: r10c1 = 5
hidden-single: r9c1 = 4
hidden-single: r8c1 = 3
hidden-single: r7c1 = 2
hidden-single: r6c1 = 1
hidden-single: r6c2 = 14
hidden-single: r5c1 = 24
hidden-single: r5c2 = 23
hidden-single: r4c1 = 25
hidden-single: r7c2 = 13
hidden-single: r6c3 = 15
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = BC[3]

32 33 36 37 40 41 44 45 50 51
31 34 35 38 39 42 43 46 49 52
30 29 28 61 60 59 58 47 48 53
25 26 27 62 63 100 57 56 55 54
24 23 22 21 64 99 98 97 94 93
 1 14 15 20 65 82 83 96 95 92
 2 13 16 19 66 81 84 87 88 91
 3 12 17 18 67 80 85 86 89 90
 4 11 10  9 68 79 78 77 76 75
 5  6  7  8 69 70 71 72 73 74
init-time = 0.43s, solve time = 19.68s, total-time = 20.11s
nb-facts=<Fact-74896>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
