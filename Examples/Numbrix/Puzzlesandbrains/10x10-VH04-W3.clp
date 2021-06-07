



(solve Numbrix topological 10 100

. . . . . . . . . .
. 90 . . . . . . 67 .
. . 86 . 76 75 . 73 . .
. . . . 53 54 . . . .
. . 100 51 . . 48 57 . .
. . 43 44 . . 47 58 . .
. . . . 38 37 . . . .
. . 11 . 19 20 . 30 . .
. 9 . . . . . . 28 .
. . . . . . . . . .
)
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Numbrix-Rules topological-model   *****
undecided numbers: (1 2 3 4 5 6 7 8 10 12 13 14 15 16 17 18 21 22 23 24 25 26 27 29 31 32 33 34 35 36 39 40 41 42 45 46 49 50 52 55 56 59 60 61 62 63 64 65 66 68 69 70 71 72 74 77 78 79 80 81 82 83 84 85 87 88 89 91 92 93 94 95 96 97 98 99)
start solution 1596609599.59787
entering BRT
hidden-single: r6c6 = 46
hidden-single: r7c7 = 36
hidden-single: r6c5 = 45
hidden-single: r7c4 = 39
hidden-single: r5c6 = 49
hidden-single: r4c7 = 55
hidden-single: r5c5 = 50
hidden-single: r4c4 = 52
hidden-single: r4c8 = 56
hidden-single: r3c7 = 74
naked-single: r10c10 = 26
Starting_init_links_with_<Fact-7684>
624 candidates, 7730 csp-links and 14419 links. Density = 7.42%
starting non trivial part of solution
Entering_level_W1_with_<Fact-51985>
whip[1]: r6c10{n61 .} ==> r8c9 ≠ 61, r4c9 ≠ 61, r5c9 ≠ 61, r7c8 ≠ 61, r7c9 ≠ 61
whip[1]: n61{r7c10 .} ==> r7c8 ≠ 60, r2c8 ≠ 62, r3c9 ≠ 62, r4c9 ≠ 62
whip[1]: n62{r7c9 .} ==> r1c8 ≠ 63, r2c7 ≠ 63, r2c8 ≠ 63, r3c9 ≠ 63
whip[1]: n63{r6c9 .} ==> r1c7 ≠ 64, r1c8 ≠ 64, r1c9 ≠ 64, r2c6 ≠ 64, r2c7 ≠ 64, r2c8 ≠ 64
whip[1]: n64{r5c9 .} ==> r1c8 ≠ 65, r1c9 ≠ 65, r2c7 ≠ 65, r2c8 ≠ 65
whip[1]: n65{r4c9 .} ==> r2c8 ≠ 66
whip[1]: r1c8{n71 .} ==> r2c6 ≠ 70, r2c7 ≠ 70, r2c10 ≠ 70, r3c9 ≠ 70, r3c10 ≠ 70, r4c9 ≠ 70, r4c10 ≠ 70, r5c9 ≠ 70
whip[1]: n70{r2c8 .} ==> r4c9 ≠ 71, r3c9 ≠ 71, r3c10 ≠ 71, r2c10 ≠ 69, r3c9 ≠ 69, r3c10 ≠ 69, r4c9 ≠ 69
whip[1]: r4c9{n65 .} ==> r2c10 ≠ 64, r3c10 ≠ 64
whip[1]: n64{r5c9 .} ==> r1c10 ≠ 65, r2c10 ≠ 65
naked-single: r1c10 = 69
hidden-single: r1c9 = 70
hidden-single: r2c10 = 68
hidden-single: r3c9 = 66
hidden-single: r2c8 = 72
hidden-single: r1c8 = 71
naked-single: r1c7 = 80
whip[1]: n81{r2c7 .} ==> r1c1 ≠ 82, r1c2 ≠ 82, r1c3 ≠ 82, r1c4 ≠ 82, r2c1 ≠ 82, r2c3 ≠ 82, r2c4 ≠ 82, r2c5 ≠ 82, r3c1 ≠ 82, r3c2 ≠ 82, r3c4 ≠ 82, r4c1 ≠ 82, r4c2 ≠ 82, r4c3 ≠ 82, r5c1 ≠ 82, r5c2 ≠ 82, r6c2 ≠ 82, r7c3 ≠ 82
whip[1]: n82{r2c6 .} ==> r5c2 ≠ 83, r1c2 ≠ 83, r1c3 ≠ 83, r2c1 ≠ 83, r2c3 ≠ 83, r2c4 ≠ 83, r3c1 ≠ 83, r3c2 ≠ 83, r3c4 ≠ 83, r4c1 ≠ 83, r4c2 ≠ 83, r4c3 ≠ 83
whip[1]: n83{r2c5 .} ==> r4c2 ≠ 84, r2c3 ≠ 84, r3c1 ≠ 84, r3c2 ≠ 84, r3c4 ≠ 84, r4c3 ≠ 84
whip[1]: n84{r2c4 .} ==> r3c2 ≠ 85, r4c3 ≠ 85
whip[1]: r1c1{n94 .} ==> r1c3 ≠ 93, r1c4 ≠ 93, r2c3 ≠ 93, r2c4 ≠ 93, r2c5 ≠ 93, r3c1 ≠ 93, r3c2 ≠ 93, r3c4 ≠ 93, r4c1 ≠ 93, r4c2 ≠ 93, r4c3 ≠ 93, r5c2 ≠ 93
whip[1]: n93{r2c1 .} ==> r4c2 ≠ 94, r1c4 ≠ 94, r1c5 ≠ 94, r2c3 ≠ 94, r2c4 ≠ 94, r2c5 ≠ 94, r2c6 ≠ 94, r3c2 ≠ 94, r3c4 ≠ 94, r4c1 ≠ 94, r4c3 ≠ 94, r5c1 ≠ 94, r5c2 ≠ 94, r6c2 ≠ 94, r2c3 ≠ 92, r2c4 ≠ 92, r3c2 ≠ 92, r4c2 ≠ 92
whip[1]: n94{r3c1 .} ==> r5c2 ≠ 95, r2c4 ≠ 95, r2c5 ≠ 95, r3c4 ≠ 95, r4c2 ≠ 95, r4c3 ≠ 95, r5c1 ≠ 95, r6c1 ≠ 95, r6c2 ≠ 95, r7c2 ≠ 95
whip[1]: n95{r4c1 .} ==> r6c2 ≠ 96, r3c4 ≠ 96, r4c3 ≠ 96, r5c2 ≠ 96, r6c1 ≠ 96, r7c1 ≠ 96, r7c2 ≠ 96, r7c3 ≠ 96, r8c2 ≠ 96
whip[1]: n96{r5c1 .} ==> r7c2 ≠ 97, r6c2 ≠ 97, r7c3 ≠ 97
whip[1]: n97{r6c1 .} ==> r7c3 ≠ 98, r2c3 ≠ 96
whip[1]: n96{r5c1 .} ==> r1c3 ≠ 95
whip[1]: n95{r4c1 .} ==> r1c2 ≠ 94
whip[1]: n79{r2c7 .} ==> r2c4 ≠ 78, r2c5 ≠ 78, r3c4 ≠ 78
whip[1]: n78{r2c6 .} ==> r3c4 ≠ 77
hidden-single: r2c5 = 77
hidden-single: r1c4 = 83
hidden-single: r1c5 = 82
hidden-single: r2c6 = 78
hidden-single: r1c6 = 81
hidden-single: r2c7 = 79
whip[1]: n65{r4c9 .} ==> r4c9 ≠ 64
whip[1]: n64{r5c9 .} ==> r4c10 ≠ 63, r5c9 ≠ 63
whip[1]: n63{r6c9 .} ==> r5c10 ≠ 62, r6c9 ≠ 62
whip[1]: n62{r7c9 .} ==> r6c10 ≠ 61
whip[1]: n61{r7c10 .} ==> r6c9 ≠ 60
whip[1]: r3c10{n65 .} ==> r5c9 ≠ 64
hidden-single: r4c10 = 64
whip[1]: n62{r7c9 .} ==> r3c10 ≠ 63
naked-single: r3c10 = 65
naked-single: r4c9 = 63
hidden-single: r5c9 = 62
naked-single: r7c10 = 33
hidden-single: r7c9 = 34
hidden-single: r8c10 = 32
hidden-single: r8c9 = 31
hidden-single: r9c8 = 29
hidden-single: r6c10 = 60
hidden-single: r6c9 = 59
hidden-single: r5c10 = 61
hidden-single: r7c8 = 35
whip[1]: n24{r10c8 .} ==> r9c10 ≠ 25
hidden-single: r10c9 = 25
hidden-single: r10c8 = 24
hidden-single: r10c7 = 23
hidden-single: r9c10 = 27
whip[1]: n2{r10c6 .} ==> r1c2 ≠ 1, r2c3 ≠ 1, r3c4 ≠ 1
whip[1]: n8{r10c2 .} ==> r10c2 ≠ 7, r8c2 ≠ 7, r9c1 ≠ 7, r9c3 ≠ 7
whip[1]: n7{r10c3 .} ==> r7c2 ≠ 6, r8c1 ≠ 6, r9c4 ≠ 6, r10c1 ≠ 6, r10c3 ≠ 6
whip[1]: n6{r10c4 .} ==> r6c2 ≠ 5, r7c1 ≠ 5, r7c3 ≠ 5, r8c2 ≠ 5, r8c4 ≠ 5, r9c1 ≠ 5, r9c3 ≠ 5, r9c5 ≠ 5, r10c2 ≠ 5, r10c4 ≠ 5
whip[1]: n5{r10c5 .} ==> r5c2 ≠ 4, r6c1 ≠ 4, r7c2 ≠ 4, r8c1 ≠ 4, r9c4 ≠ 4, r9c6 ≠ 4, r10c1 ≠ 4, r10c3 ≠ 4, r10c5 ≠ 4
whip[1]: n4{r10c6 .} ==> r4c2 ≠ 3, r5c1 ≠ 3, r6c2 ≠ 3, r7c1 ≠ 3, r7c3 ≠ 3, r8c2 ≠ 3, r8c4 ≠ 3, r9c1 ≠ 3, r9c3 ≠ 3, r9c5 ≠ 3, r9c7 ≠ 3, r10c2 ≠ 3, r10c4 ≠ 3, r10c6 ≠ 3
whip[1]: n3{r10c5 .} ==> r9c6 ≠ 2, r3c2 ≠ 2, r4c1 ≠ 2, r4c3 ≠ 2, r5c2 ≠ 2, r6c1 ≠ 2, r7c2 ≠ 2, r8c1 ≠ 2, r8c7 ≠ 2, r9c4 ≠ 2, r10c1 ≠ 2, r10c3 ≠ 2, r10c5 ≠ 2
whip[1]: n2{r10c6 .} ==> r3c1 ≠ 1, r4c2 ≠ 1, r5c1 ≠ 1, r6c2 ≠ 1, r7c1 ≠ 1, r7c3 ≠ 1, r8c2 ≠ 1, r8c4 ≠ 1, r9c1 ≠ 1, r9c3 ≠ 1, r9c5 ≠ 1, r9c7 ≠ 1, r10c2 ≠ 1, r10c4 ≠ 1, r10c6 ≠ 1
whip[1]: n18{r9c5 .} ==> r9c5 ≠ 17, r8c4 ≠ 17, r8c7 ≠ 17
whip[1]: n17{r10c5 .} ==> r7c3 ≠ 16, r8c2 ≠ 16, r8c7 ≠ 16, r9c4 ≠ 16, r9c6 ≠ 16, r10c5 ≠ 16
whip[1]: n16{r10c6 .} ==> r7c2 ≠ 15, r7c3 ≠ 15, r8c1 ≠ 15, r8c2 ≠ 15, r8c4 ≠ 15, r9c3 ≠ 15, r9c5 ≠ 15, r10c4 ≠ 15
whip[1]: n15{r10c5 .} ==> r6c2 ≠ 14, r7c1 ≠ 14, r7c2 ≠ 14, r7c3 ≠ 14, r8c1 ≠ 14, r8c2 ≠ 14, r9c1 ≠ 14, r9c4 ≠ 14, r10c3 ≠ 14
whip[1]: n14{r10c4 .} ==> r7c2 ≠ 13, r7c3 ≠ 13, r8c1 ≠ 13, r8c2 ≠ 13, r8c4 ≠ 13, r9c3 ≠ 13, r8c7 ≠ 15
whip[1]: n13{r10c3 .} ==> r7c3 ≠ 12, r8c2 ≠ 12
whip[1]: n42{r7c3 .} ==> r7c3 ≠ 41
hidden-single: r7c2 = 41
hidden-single: r7c3 = 40
hidden-single: r6c2 = 42
whip[1]: n6{r10c4 .} ==> r5c2 ≠ 5
whip[1]: n5{r10c5 .} ==> r4c2 ≠ 4
whip[1]: n4{r10c6 .} ==> r3c2 ≠ 3, r4c3 ≠ 3
whip[1]: n99{r5c2 .} ==> r5c2 ≠ 98, r4c3 ≠ 98
whip[1]: n98{r5c1 .} ==> r2c3 ≠ 97, r3c4 ≠ 97, r4c2 ≠ 97, r5c1 ≠ 97
whip[1]: n97{r6c1 .} ==> r1c3 ≠ 96, r2c4 ≠ 96, r3c2 ≠ 96, r4c1 ≠ 96
whip[1]: n96{r5c1 .} ==> r1c2 ≠ 95, r2c3 ≠ 95, r3c1 ≠ 95
whip[1]: n95{r4c1 .} ==> r1c3 ≠ 94, r2c1 ≠ 94
whip[1]: n94{r3c1 .} ==> r1c1 ≠ 93
whip[1]: n93{r2c1 .} ==> r1c2 ≠ 92, r2c1 ≠ 92
whip[1]: n89{r3c2 .} ==> r3c2 ≠ 88, r2c3 ≠ 88
Entering_relation_bivalue_with_<Fact-52135>
Entering_level_S2_with_<Fact-52166>
Entering_level_BC2_with_<Fact-52167>
Entering_level_Z2_with_<Fact-52184>
z-chain[2]: n96{r4c2 r5c1} - n98{r5c1 .} ==> r6c1 ≠ 97
z-chain[2]: n98{r5c1 r4c2} - n96{r4c2 .} ==> r4c3 ≠ 97
z-chain[2]: n3{r10c5 r8c1} - n1{r8c1 .} ==> r8c2 ≠ 2
z-chain[2]: n4{r10c6 r9c7} - n2{r9c7 .} ==> r8c7 ≠ 3
z-chain[2]: n3{r10c5 r9c6} - n5{r9c6 .} ==> r9c7 ≠ 4
z-chain[2]: n1{r10c5 r9c4} - n3{r9c4 .} ==> r8c4 ≠ 2
z-chain[2]: n5{r10c5 r9c4} - n3{r9c4 .} ==> r8c4 ≠ 4
z-chain[2]: n5{r10c5 r8c1} - n3{r8c1 .} ==> r8c2 ≠ 4
z-chain[2]: n7{r10c3 r8c1} - n5{r8c1 .} ==> r8c2 ≠ 6
z-chain[2]: n7{r10c3 r9c4} - n5{r9c4 .} ==> r8c4 ≠ 6
z-chain[2]: n15{r10c5 r9c4} - n13{r9c4 .} ==> r8c4 ≠ 14
z-chain[2]: n17{r10c5 r9c4} - n15{r9c4 .} ==> r8c4 ≠ 16
z-chain[2]: n13{r9c4 r10c3} - n15{r10c3 .} ==> r10c2 ≠ 14
z-chain[2]: n17{r10c5 r9c6} - n15{r9c6 .} ==> r9c7 ≠ 16
Entering_level_tW2_with_<Fact-52490>
Entering_level_W2_with_<Fact-52491>
Entering_level_BC3_with_<Fact-52492>
Entering_level_Z3_with_<Fact-52497>
z-chain[3]: n3{r10c5 r9c6} - n21{r9c6 r8c7} - n22{r10c6 .} ==> r9c7 ≠ 2
naked-single: r9c7 = 22
whip[1]: n2{r10c6 .} ==> r8c7 ≠ 1
naked-single: r8c7 = 21
z-chain[3]: n89{r3c2 r2c3} - n85{r2c3 r3c4} - n84{r1c3 .} ==> r2c4 ≠ 88
naked-single: r2c4 = 84
whip[1]: n88{r4c2 .} ==> r3c4 ≠ 87
naked-single: r3c4 = 85
t-whip[2]: n88{r4c2 r1c3} - n87{r4c3 .} ==> r2c3 ≠ 89
z-chain[3]: n93{r2c1 r1c2} - n89{r1c2 r3c2} - r1c3{n88 .} ==> r2c1 ≠ 91
z-chain[3]: n17{r10c5 r9c4} - n13{r9c4 r10c3} - n12{r8c4 .} ==> r9c3 ≠ 16
z-chain[3]: n8{r10c2 r9c3} - n12{r9c3 r8c4} - n13{r10c3 .} ==> r9c4 ≠ 7
whip[1]: n7{r10c3 .} ==> r9c5 ≠ 6
whip[1]: n6{r10c4 .} ==> r9c6 ≠ 5
Entering_level_tW3_with_<Fact-52924>
t-whip[3]: r1c3{n88 n92} - r1c1{n92 n94} - n95{r4c1 .} ==> r2c1 ≠ 89
z-chain[2]: n89{r1c2 r3c2} - n87{r3c2 .} ==> r3c1 ≠ 88
biv-chain[2]: n89{r3c2 r1c2} - n88{r4c2 r1c3} ==> r3c2 ≠ 87
biv-chain[3]: n89{r1c2 r3c2} - n88{r1c3 r4c2} - r2c3{n87 n91} ==> r1c2 ≠ 91
whip[1]: n91{r3c2 .} ==> r1c1 ≠ 92
naked-single: r1c1 = 94
hidden-single: r2c1 = 95
hidden-single: r1c2 = 93
hidden-single: r3c2 = 89
hidden-single: r4c2 = 88
hidden-single: r4c3 = 87
hidden-single: r5c2 = 99
hidden-single: r4c1 = 97
hidden-single: r5c1 = 98
hidden-single: r2c3 = 91
hidden-single: r1c3 = 92
hidden-single: r3c1 = 96
z-chain[2]: n4{r10c6 r7c1} - n6{r7c1 .} ==> r6c1 ≠ 5
whip[1]: r6c1{n3 .} ==> r9c1 ≠ 2, r9c3 ≠ 2, r9c5 ≠ 2, r10c2 ≠ 2, r10c4 ≠ 2, r10c6 ≠ 2
hidden-single: r7c1 = 2
whip[1]: n4{r10c6 .} ==> r6c1 ≠ 3
hidden-single: r8c1 = 3
hidden-single: r6c1 = 1
hidden-single: r9c1 = 4
hidden-single: r10c1 = 5
hidden-single: r10c2 = 6
hidden-single: r10c3 = 7
hidden-single: r9c3 = 8
hidden-single: r8c2 = 10
hidden-single: r8c4 = 12
hidden-single: r9c5 = 18
hidden-single: r10c4 = 14
hidden-single: r10c6 = 16
hidden-single: r10c5 = 15
hidden-single: r9c6 = 17
hidden-single: r9c4 = 13
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[3]

94 93 92 83 82 81 80 71 70 69
95 90 91 84 77 78 79 72 67 68
96 89 86 85 76 75 74 73 66 65
97 88 87 52 53 54 55 56 63 64
98 99 100 51 50 49 48 57 62 61
 1 42 43 44 45 46 47 58 59 60
 2 41 40 39 38 37 36 35 34 33
 3 10 11 12 19 20 21 30 31 32
 4  9  8 13 18 17 22 29 28 27
 5  6  7 14 15 16 23 24 25 26
init-time = 0.39s, solve time = 7.15s, total-time = 7.54s
nb-facts=<Fact-53085>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
