



(solve Numbrix topological 10 100

. . . . . . . . . .
. 92 . . . . . . 7 .
. . 96 . 86 11 . 13 . .
. . . . . . . . . .
. . 78 . . . . 31 . .
. . 75 . . . . 32 . .
. . . . . . . . . .
. . 59 . 55 46 . 44 . .
. 65 . . . . . . 24 .
. . . . . . . . . .
)
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Numbrix-Rules topological-model   *****
undecided numbers: (1 2 3 4 5 6 8 9 10 12 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29 30 33 34 35 36 37 38 39 40 41 42 43 45 47 48 49 50 51 52 53 54 56 57 58 60 61 62 63 64 66 67 68 69 70 71 72 73 74 76 77 79 80 81 82 83 84 85 87 88 89 90 91 93 94 95 97 98 99 100)
start solution 1596609688.80976
entering BRT
hidden-single: r8c7 = 45
hidden-single: r3c7 = 12
hidden-single: r2c6 = 10
hidden-single: r2c7 = 9
hidden-single: r2c8 = 8
naked-single: r1c1 = 100
Starting_init_links_with_<Fact-9405>
875 candidates, 13018 csp-links and 25168 links. Density = 6.58%
starting non trivial part of solution
Entering_level_W1_with_<Fact-85780>
whip[1]: r1c6{n2 .} ==> r7c9 ≠ 2, r1c8 ≠ 2, r1c9 ≠ 2, r1c10 ≠ 2, r2c4 ≠ 2, r2c5 ≠ 2, r2c10 ≠ 2, r3c9 ≠ 2, r3c10 ≠ 2, r4c6 ≠ 2, r4c7 ≠ 2, r4c8 ≠ 2, r4c9 ≠ 2, r4c10 ≠ 2, r5c7 ≠ 2, r5c9 ≠ 2, r5c10 ≠ 2, r6c9 ≠ 2, r6c10 ≠ 2
whip[1]: n2{r1c7 .} ==> r5c10 ≠ 3, r1c9 ≠ 3, r1c10 ≠ 3, r2c10 ≠ 3, r3c9 ≠ 3, r3c10 ≠ 3, r4c7 ≠ 3, r4c8 ≠ 3, r4c9 ≠ 3, r4c10 ≠ 3, r5c9 ≠ 3, r6c9 ≠ 3, r1c9 ≠ 1, r1c10 ≠ 1, r2c3 ≠ 1, r2c4 ≠ 1, r2c10 ≠ 1, r3c4 ≠ 1, r3c9 ≠ 1, r3c10 ≠ 1, r4c5 ≠ 1, r4c6 ≠ 1, r4c7 ≠ 1, r4c8 ≠ 1, r4c9 ≠ 1, r4c10 ≠ 1, r5c6 ≠ 1, r5c7 ≠ 1, r5c9 ≠ 1, r5c10 ≠ 1, r6c7 ≠ 1, r6c9 ≠ 1, r6c10 ≠ 1, r7c8 ≠ 1, r7c9 ≠ 1, r7c10 ≠ 1, r8c9 ≠ 1
whip[1]: r1c10{n5 .} ==> r1c7 ≠ 4, r1c8 ≠ 4, r3c9 ≠ 4, r3c10 ≠ 4, r4c8 ≠ 4, r4c9 ≠ 4, r4c10 ≠ 4, r5c9 ≠ 4, r1c8 ≠ 5, r3c9 ≠ 5, r3c10 ≠ 5, r4c9 ≠ 5
whip[1]: n5{r2c10 .} ==> r3c9 ≠ 6
whip[1]: n4{r2c10 .} ==> r1c6 ≠ 3, r1c7 ≠ 3, r2c5 ≠ 3
hidden-single: r1c8 = 3
hidden-single: r1c7 = 2
hidden-single: r1c6 = 1
hidden-single: r1c9 = 4
hidden-single: r1c10 = 5
hidden-single: r2c10 = 6
whip[1]: n16{r5c9 .} ==> r7c8 ≠ 17
whip[1]: n23{r10c9 .} ==> r10c9 ≠ 22, r8c9 ≠ 22, r9c8 ≠ 22, r9c10 ≠ 22
whip[1]: n22{r10c10 .} ==> r7c9 ≠ 21, r8c10 ≠ 21, r9c7 ≠ 21, r10c8 ≠ 21
whip[1]: n21{r10c9 .} ==> r6c9 ≠ 20, r7c8 ≠ 20, r7c10 ≠ 20, r8c9 ≠ 20, r9c8 ≠ 20
whip[1]: n20{r10c8 .} ==> r5c9 ≠ 19, r6c10 ≠ 19, r7c7 ≠ 19, r7c9 ≠ 19
whip[1]: n19{r9c8 .} ==> r4c9 ≠ 18, r5c10 ≠ 18, r6c7 ≠ 18, r6c9 ≠ 18, r7c8 ≠ 18
whip[1]: n18{r7c9 .} ==> r3c9 ≠ 17, r4c8 ≠ 17, r4c10 ≠ 17, r5c7 ≠ 17, r5c9 ≠ 17, r9c8 ≠ 19
whip[1]: n19{r8c9 .} ==> r9c7 ≠ 20, r10c8 ≠ 20
whip[1]: n20{r8c10 .} ==> r9c8 ≠ 21, r9c6 ≠ 21, r10c7 ≠ 21, r10c9 ≠ 21
whip[1]: n21{r9c10 .} ==> r10c8 ≠ 22, r9c7 ≠ 22
whip[1]: n22{r10c10 .} ==> r9c8 ≠ 23
whip[1]: n17{r6c9 .} ==> r3c10 ≠ 16, r4c7 ≠ 16, r4c9 ≠ 16
whip[1]: n16{r5c9 .} ==> r3c9 ≠ 15, r4c8 ≠ 15
whip[1]: n66{r10c2 .} ==> r10c2 ≠ 67, r8c2 ≠ 67, r9c1 ≠ 67, r9c3 ≠ 67
whip[1]: n67{r10c3 .} ==> r7c2 ≠ 68, r8c1 ≠ 68, r9c4 ≠ 68, r10c1 ≠ 68, r10c3 ≠ 68
whip[1]: n68{r10c4 .} ==> r6c2 ≠ 69, r7c1 ≠ 69, r7c3 ≠ 69, r8c2 ≠ 69, r8c4 ≠ 69, r9c1 ≠ 69, r9c3 ≠ 69, r9c5 ≠ 69, r10c2 ≠ 69, r10c4 ≠ 69
whip[1]: n69{r10c5 .} ==> r5c2 ≠ 70, r6c1 ≠ 70, r7c2 ≠ 70, r7c4 ≠ 70, r8c1 ≠ 70, r9c4 ≠ 70, r10c3 ≠ 70
whip[1]: n70{r10c4 .} ==> r4c2 ≠ 71, r5c1 ≠ 71, r6c2 ≠ 71, r6c4 ≠ 71, r7c1 ≠ 71, r7c3 ≠ 71, r7c5 ≠ 71, r8c2 ≠ 71, r8c4 ≠ 71, r9c3 ≠ 71
whip[1]: n71{r10c3 .} ==> r4c3 ≠ 72, r5c2 ≠ 72, r5c4 ≠ 72, r6c1 ≠ 72, r6c5 ≠ 72, r7c2 ≠ 72, r7c4 ≠ 72
whip[1]: n72{r9c3 .} ==> r6c2 ≠ 73, r6c4 ≠ 73, r7c3 ≠ 73
whip[1]: n64{r10c2 .} ==> r10c2 ≠ 63, r8c2 ≠ 63, r9c1 ≠ 63, r9c3 ≠ 63
whip[1]: n63{r10c3 .} ==> r7c2 ≠ 62, r8c1 ≠ 62, r9c4 ≠ 62, r10c3 ≠ 62
whip[1]: n62{r10c4 .} ==> r7c3 ≠ 61, r8c2 ≠ 61, r8c4 ≠ 61, r9c3 ≠ 61
whip[1]: n43{r9c8 .} ==> r9c8 ≠ 42, r7c8 ≠ 42, r8c9 ≠ 42
whip[1]: n42{r10c8 .} ==> r7c7 ≠ 41, r7c9 ≠ 41, r8c10 ≠ 41, r9c7 ≠ 41, r10c8 ≠ 41
whip[1]: n41{r10c9 .} ==> r4c8 ≠ 40, r6c7 ≠ 40, r6c9 ≠ 40, r7c6 ≠ 40, r7c8 ≠ 40, r7c10 ≠ 40, r8c4 ≠ 40, r8c9 ≠ 40, r9c6 ≠ 40, r9c8 ≠ 40, r9c10 ≠ 40, r10c7 ≠ 40, r10c9 ≠ 40
whip[1]: n40{r10c10 .} ==> r4c8 ≠ 39, r5c7 ≠ 39, r5c9 ≠ 39, r6c6 ≠ 39, r6c10 ≠ 39, r7c5 ≠ 39, r7c7 ≠ 39, r7c9 ≠ 39, r8c4 ≠ 39, r8c10 ≠ 39, r9c5 ≠ 39, r9c7 ≠ 39, r10c6 ≠ 39, r10c8 ≠ 39, r10c10 ≠ 39
whip[1]: n39{r10c9 .} ==> r9c10 ≠ 38, r4c7 ≠ 38, r4c9 ≠ 38, r5c6 ≠ 38, r5c10 ≠ 38, r6c5 ≠ 38, r6c7 ≠ 38, r6c9 ≠ 38, r7c4 ≠ 38, r7c6 ≠ 38, r7c8 ≠ 38, r7c10 ≠ 38, r8c9 ≠ 38, r9c6 ≠ 38, r9c8 ≠ 38, r10c7 ≠ 38, r10c9 ≠ 38
whip[1]: n38{r10c10 .} ==> r3c9 ≠ 37, r4c6 ≠ 37, r4c8 ≠ 37, r4c10 ≠ 37, r5c5 ≠ 37, r5c7 ≠ 37, r5c9 ≠ 37, r6c4 ≠ 37, r6c6 ≠ 37, r6c10 ≠ 37, r7c5 ≠ 37, r7c7 ≠ 37, r7c9 ≠ 37, r8c10 ≠ 37, r9c7 ≠ 37, r10c8 ≠ 37
whip[1]: n37{r10c9 .} ==> r4c7 ≠ 36, r4c9 ≠ 36, r5c6 ≠ 36, r5c10 ≠ 36, r6c5 ≠ 36, r6c7 ≠ 36, r6c9 ≠ 36, r7c6 ≠ 36, r7c8 ≠ 36, r7c10 ≠ 36, r8c9 ≠ 36, r9c8 ≠ 36
whip[1]: n36{r10c8 .} ==> r4c8 ≠ 35, r5c7 ≠ 35, r5c9 ≠ 35, r6c6 ≠ 35, r6c10 ≠ 35, r7c7 ≠ 35, r7c9 ≠ 35
whip[1]: n35{r9c8 .} ==> r6c7 ≠ 34, r6c9 ≠ 34, r7c8 ≠ 34
whip[1]: n34{r7c9 .} ==> r9c8 ≠ 35
whip[1]: n35{r8c9 .} ==> r9c7 ≠ 36, r10c8 ≠ 36
whip[1]: n36{r8c10 .} ==> r9c8 ≠ 37, r9c6 ≠ 37, r10c7 ≠ 37, r10c9 ≠ 37
whip[1]: n37{r9c10 .} ==> r10c8 ≠ 38, r9c5 ≠ 38, r9c7 ≠ 38, r10c6 ≠ 38
whip[1]: n38{r10c10 .} ==> r9c6 ≠ 39, r9c8 ≠ 39, r10c5 ≠ 39, r10c7 ≠ 39
whip[1]: n39{r10c9 .} ==> r9c7 ≠ 40, r10c6 ≠ 40
whip[1]: n27{r9c8 .} ==> r9c8 ≠ 26
whip[1]: n47{r9c6 .} ==> r9c6 ≠ 48, r7c6 ≠ 48, r8c4 ≠ 48
whip[1]: n48{r10c6 .} ==> r6c6 ≠ 49, r7c5 ≠ 49, r7c7 ≠ 49, r8c4 ≠ 49, r8c9 ≠ 49, r9c5 ≠ 49, r9c7 ≠ 49, r10c6 ≠ 49
whip[1]: n49{r10c7 .} ==> r5c6 ≠ 50, r6c5 ≠ 50, r6c7 ≠ 50, r7c4 ≠ 50, r7c6 ≠ 50, r7c8 ≠ 50, r8c2 ≠ 50, r8c9 ≠ 50, r8c10 ≠ 50, r9c4 ≠ 50, r9c6 ≠ 50, r9c8 ≠ 50, r10c5 ≠ 50, r10c7 ≠ 50
whip[1]: n50{r10c8 .} ==> r5c5 ≠ 51, r6c4 ≠ 51, r6c6 ≠ 51, r7c3 ≠ 51, r7c5 ≠ 51, r7c7 ≠ 51, r8c1 ≠ 51, r8c2 ≠ 51, r8c4 ≠ 51, r9c3 ≠ 51, r9c5 ≠ 51, r9c7 ≠ 51, r10c4 ≠ 51, r10c6 ≠ 51
whip[1]: n51{r10c7 .} ==> r6c5 ≠ 52, r7c4 ≠ 52, r7c6 ≠ 52, r9c4 ≠ 52, r9c6 ≠ 52, r10c5 ≠ 52
whip[1]: n52{r10c6 .} ==> r8c9 ≠ 51, r7c5 ≠ 53, r8c4 ≠ 53, r9c5 ≠ 53
whip[1]: n53{r10c5 .} ==> r8c2 ≠ 52
whip[1]: n25{r8c9 .} ==> r8c9 ≠ 26
whip[1]: n26{r10c8 .} ==> r7c9 ≠ 27
whip[1]: n27{r9c8 .} ==> r6c9 ≠ 28, r7c8 ≠ 28
whip[1]: n28{r7c9 .} ==> r5c9 ≠ 29, r9c8 ≠ 27
whip[1]: n27{r8c9 .} ==> r9c7 ≠ 26, r10c8 ≠ 26
whip[1]: n26{r8c10 .} ==> r9c8 ≠ 25, r10c9 ≠ 25
whip[1]: n58{r8c4 .} ==> r8c4 ≠ 57
whip[1]: n57{r9c4 .} ==> r8c2 ≠ 58
whip[1]: n79{r5c4 .} ==> r5c4 ≠ 80, r4c3 ≠ 80, r5c2 ≠ 80, r7c3 ≠ 80
whip[1]: n80{r6c4 .} ==> r2c3 ≠ 81, r4c2 ≠ 81, r4c4 ≠ 81, r5c5 ≠ 81, r6c4 ≠ 81
whip[1]: n81{r7c4 .} ==> r1c3 ≠ 82, r2c3 ≠ 82, r3c2 ≠ 82, r3c4 ≠ 82, r4c3 ≠ 82, r4c5 ≠ 82, r5c4 ≠ 82, r5c6 ≠ 82, r6c5 ≠ 82
whip[1]: n82{r7c5 .} ==> r2c4 ≠ 83, r4c4 ≠ 83, r4c6 ≠ 83, r5c5 ≠ 83
whip[1]: n83{r6c5 .} ==> r2c5 ≠ 84, r3c4 ≠ 84, r4c5 ≠ 84
whip[1]: n84{r5c5 .} ==> r3c2 ≠ 83
whip[1]: n83{r6c5 .} ==> r3c1 ≠ 82
whip[1]: n97{r4c3 .} ==> r4c3 ≠ 98, r2c3 ≠ 98, r3c2 ≠ 98, r3c4 ≠ 98
whip[1]: n87{r3c4 .} ==> r3c4 ≠ 88, r2c5 ≠ 88
whip[1]: n88{r4c4 .} ==> r2c4 ≠ 89, r3c2 ≠ 89
whip[1]: n89{r4c3 .} ==> r2c3 ≠ 90, r3c1 ≠ 90, r3c2 ≠ 90
whip[1]: n90{r4c2 .} ==> r2c1 ≠ 91
whip[1]: n95{r3c2 .} ==> r3c2 ≠ 94, r2c3 ≠ 94
whip[1]: n73{r7c4 .} ==> r9c3 ≠ 72
whip[1]: n72{r8c4 .} ==> r10c3 ≠ 71
whip[1]: n71{r9c4 .} ==> r10c2 ≠ 70
whip[1]: n33{r7c8 .} ==> r4c8 ≠ 34
whip[1]: n30{r5c9 .} ==> r7c8 ≠ 29
whip[1]: n77{r5c4 .} ==> r7c3 ≠ 76
whip[1]: n76{r6c4 .} ==> r4c3 ≠ 77
whip[1]: n99{r2c1 .} ==> r4c4 ≠ 98, r2c4 ≠ 98, r4c2 ≠ 98
whip[1]: n98{r3c1 .} ==> r4c3 ≠ 97, r3c4 ≠ 97
whip[1]: n74{r7c3 .} ==> r4c3 ≠ 73
Entering_relation_bivalue_with_<Fact-85951>
Entering_level_S2_with_<Fact-85982>
Entering_level_BC2_with_<Fact-85983>
Entering_level_Z2_with_<Fact-86004>
z-chain[2]: n84{r5c5 r2c4} - n82{r2c4 .} ==> r2c3 ≠ 83
z-chain[2]: n72{r8c4 r4c2} - n70{r4c2 .} ==> r3c2 ≠ 71
z-chain[2]: n82{r7c5 r4c2} - n80{r4c2 .} ==> r3c2 ≠ 81
z-chain[2]: n79{r5c4 r5c2} - n81{r5c2 .} ==> r6c2 ≠ 80
z-chain[2]: n63{r10c3 r7c2} - n61{r7c2 .} ==> r6c2 ≠ 62
z-chain[2]: n52{r10c6 r7c3} - n50{r7c3 .} ==> r7c2 ≠ 51
z-chain[2]: n51{r10c7 r7c4} - n53{r7c4 .} ==> r7c3 ≠ 52
z-chain[2]: n51{r10c7 r7c4} - n49{r7c4 .} ==> r7c3 ≠ 50
z-chain[2]: n39{r10c9 r7c4} - n37{r7c4 .} ==> r7c3 ≠ 38
z-chain[2]: n51{r10c7 r7c8} - n49{r7c8 .} ==> r7c9 ≠ 50
z-chain[2]: n50{r10c8 r7c7} - n52{r7c7 .} ==> r7c8 ≠ 51
z-chain[2]: n50{r10c8 r7c7} - n48{r7c7 .} ==> r7c8 ≠ 49
z-chain[2]: n63{r10c3 r9c4} - n61{r9c4 .} ==> r9c5 ≠ 62
z-chain[2]: n70{r10c4 r9c5} - n68{r9c5 .} ==> r9c6 ≠ 69
Entering_level_tW2_with_<Fact-86564>
Entering_level_W2_with_<Fact-86565>
whip[2]: n47{r7c6 r9c6} - n48{r6c6 .} ==> r7c6 ≠ 49
whip[2]: n47{r9c6 r7c6} - n48{r9c5 .} ==> r9c6 ≠ 49
Entering_level_BC3_with_<Fact-86572>
biv-chain[3]: r2c1{n93 n99} - n98{r1c3 r3c1} - n97{r2c3 r3c2} ==> r3c2 ≠ 93
whip[1]: n93{r2c3 .} ==> r4c2 ≠ 94
whip[1]: n94{r3c1 .} ==> r4c3 ≠ 95
Entering_level_Z3_with_<Fact-86593>
z-chain[3]: r5c1{n72 n80} - n79{r4c3 r5c2} - n77{r5c2 .} ==> r5c4 ≠ 71
z-chain[3]: r6c1{n71 n73} - n74{r7c3 r6c2} - n76{r6c2 .} ==> r6c4 ≠ 70
z-chain[3]: n43{r9c8 r8c9} - n25{r8c9 r9c10} - n26{r7c9 .} ==> r8c10 ≠ 42
whip[1]: n42{r10c8 .} ==> r9c10 ≠ 41
Entering_level_tW3_with_<Fact-87072>
t-whip[3]: n71{r9c4 r4c3} - n70{r10c4 r4c2} - r6c1{n69 .} ==> r4c4 ≠ 72
z-chain[2]: n72{r8c4 r4c2} - n70{r4c2 .} ==> r4c3 ≠ 71
t-whip[3]: n38{r10c10 r8c4} - n37{r9c10 r7c4} - n57{r7c4 .} ==> r9c4 ≠ 39
whip[1]: n39{r10c9 .} ==> r9c5 ≠ 40
whip[1]: n40{r10c10 .} ==> r9c6 ≠ 41
z-chain[2]: n39{r10c9 r7c4} - n37{r7c4 .} ==> r8c4 ≠ 38
t-whip[3]: n71{r8c1 r9c4} - n72{r8c2 r8c4} - r6c1{n73 .} ==> r9c3 ≠ 70, r9c5 ≠ 70, r10c4 ≠ 70
whip[1]: n70{r9c1 .} ==> r10c3 ≠ 69, r10c5 ≠ 69
z-chain[2]: n70{r9c1 r8c4} - n72{r8c4 .} ==> r9c4 ≠ 71
z-chain[2]: n71{r8c1 r7c4} - n73{r7c4 .} ==> r8c4 ≠ 72
z-chain[2]: n69{r10c1 r9c4} - n67{r9c4 .} ==> r9c5 ≠ 68
t-whip[3]: n70{r9c1 r8c4} - n71{r8c1 r7c4} - n57{r7c4 .} ==> r9c4 ≠ 69
whip[1]: n69{r10c1 .} ==> r9c3 ≠ 68, r10c4 ≠ 68
z-chain[2]: n69{r10c1 r7c4} - n71{r7c4 .} ==> r8c4 ≠ 70
z-chain[3]: n69{r10c1 r7c4} - n57{r7c4 r9c4} - n67{r9c4 .} ==> r8c4 ≠ 68
whip[1]: n68{r10c2 .} ==> r9c4 ≠ 67
t-whip[3]: n71{r4c1 r6c5} - n70{r9c1 r7c5} - r6c1{n69 .} ==> r5c5 ≠ 72
z-chain[2]: n72{r8c2 r6c4} - n74{r6c4 .} ==> r5c4 ≠ 73
t-whip[3]: r10c10{n38 n22} - n21{r8c9 r9c10} - n25{r9c10 .} ==> r8c9 ≠ 39
t-whip[3]: r1c4{n89 n83} - n82{r7c5 r2c4} - n81{r7c4 .} ==> r3c4 ≠ 89
t-whip[3]: n97{r3c2 r2c3} - r3c1{n98 n94} - n95{r3c4 .} ==> r3c2 ≠ 91
whip[1]: n91{r2c3 .} ==> r4c2 ≠ 90
whip[1]: n90{r2c4 .} ==> r4c3 ≠ 89
whip[1]: n89{r2c5 .} ==> r4c4 ≠ 88
whip[1]: n88{r2c4 .} ==> r4c5 ≠ 87
biv-chain[3]: n87{r2c5 r3c4} - n88{r1c5 r2c4} - n90{r2c4 r1c3} ==> r2c5 ≠ 89
biv-chain[3]: n98{r3c1 r1c3} - n90{r1c3 r2c4} - n91{r1c2 r2c3} ==> r2c3 ≠ 97
hidden-single: r3c2 = 97
hidden-single: r3c1 = 98
hidden-single: r2c1 = 99
hidden-pairs: {n91 n93}{r1c2 r2c3} ==> r2c3 ≠ 95, r2c3 ≠ 89
hidden-single: r1c4 = 89
hidden-single: r3c4 = 95
hidden-single: r2c4 = 94
hidden-single: r2c3 = 93
hidden-single: r1c2 = 91
hidden-single: r1c5 = 88
hidden-single: r1c3 = 90
hidden-single: r2c5 = 87
hidden-single: r4c5 = 85
z-chain[2]: n51{r10c7 r5c6} - n49{r5c6 .} ==> r4c6 ≠ 50
t-whip[3]: n81{r7c4 r5c6} - n80{r6c4 r5c5} - r4c3{n81 .} ==> r4c6 ≠ 82, r5c7 ≠ 82
whip[1]: n82{r7c5 .} ==> r4c7 ≠ 83
Entering_level_W3_with_<Fact-88357>
whip[3]: n42{r10c8 r7c9} - n26{r7c9 r8c10} - n40{r8c10 .} ==> r8c9 ≠ 41
t-whip[3]: n41{r10c9 r7c10} - n42{r10c8 r7c9} - n26{r7c9 .} ==> r8c10 ≠ 40
whip[3]: n49{r10c7 r6c7} - r10c6{n48 n52} - n51{r5c4 .} ==> r7c7 ≠ 50
whip[3]: n80{r5c5 r6c4} - n82{r6c4 r7c5} - r4c3{n81 .} ==> r7c4 ≠ 81
z-chain[2]: n81{r5c6 r6c5} - n83{r6c5 .} ==> r7c5 ≠ 82
whip[3]: n82{r5c5 r4c2} - n80{r4c2 r5c1} - n79{r4c3 .} ==> r5c2 ≠ 81
whip[3]: n80{r6c4 r5c5} - n82{r5c5 r6c6} - r4c3{n81 .} ==> r5c6 ≠ 81
whip[3]: r4c3{n83 n79} - n81{r4c3 r6c5} - n80{r4c2 .} ==> r6c6 ≠ 82
whip[3]: n18{r7c7 r7c9} - n20{r7c9 r8c10} - n26{r8c10 .} ==> r8c9 ≠ 19
whip[3]: n34{r7c7 r7c9} - n26{r7c9 r8c10} - n36{r8c10 .} ==> r8c9 ≠ 35
whip[3]: n63{r10c3 r9c4} - n57{r9c4 r7c4} - n61{r7c4 .} ==> r8c4 ≠ 62
whip[3]: n52{r10c6 r9c7} - r10c5{n53 n49} - n50{r5c5 .} ==> r9c8 ≠ 51
whip[3]: n49{r10c7 r9c4} - r10c6{n48 n52} - n51{r10c3 .} ==> r9c3 ≠ 50
whip[3]: n70{r6c2 r7c5} - n72{r7c5 r6c6} - r6c1{n71 .} ==> r7c6 ≠ 71
z-chain[2]: n71{r8c1 r6c5} - n73{r6c5 .} ==> r6c6 ≠ 72
whip[3]: n70{r9c1 r7c5} - n72{r7c5 r6c4} - r6c1{n71 .} ==> r6c5 ≠ 71
z-chain[2]: n71{r8c1 r7c4} - n69{r7c4 .} ==> r7c5 ≠ 70
z-chain[2]: n70{r9c1 r7c3} - n68{r7c3 .} ==> r7c4 ≠ 69
z-chain[2]: n69{r10c1 r7c2} - n67{r7c2 .} ==> r7c3 ≠ 68
t-whip[3]: n71{r8c1 r7c4} - n70{r9c1 r7c3} - r6c1{n69 .} ==> r7c5 ≠ 72, r6c4 ≠ 72
whip[1]: n72{r8c2 .} ==> r6c5 ≠ 73
z-chain[2]: n72{r8c2 r7c3} - n70{r7c3 .} ==> r7c4 ≠ 71
z-chain[2]: n71{r8c1 r7c2} - n69{r7c2 .} ==> r7c3 ≠ 70
whip[3]: n40{r10c10 r10c8} - n42{r10c8 r9c7} - n43{r7c8 .} ==> r9c8 ≠ 41
whip[3]: n26{r7c9 r8c10} - n22{r8c10 r10c10} - n21{r6c9 .} ==> r7c9 ≠ 20
t-whip[2]: n20{r8c10 r7c7} - n21{r9c10 .} ==> r7c8 ≠ 19
z-chain[3]: n20{r7c7 r8c10} - n26{r8c10 r7c9} - n25{r9c10 .} ==> r8c9 ≠ 21
whip[3]: n17{r6c9 r6c7} - n19{r6c7 r7c6} - n20{r5c9 .} ==> r7c7 ≠ 18
Entering_level_BC4_with_<Fact-88711>
Entering_level_Z4_with_<Fact-88712>
Entering_level_tW4_with_<Fact-88864>
t-whip[4]: n37{r8c9 r9c10} - n25{r9c10 r8c9} - n23{r8c9 r10c9} - n22{r8c10 .} ==> r10c10 ≠ 38
whip[1]: n38{r8c10 .} ==> r10c9 ≠ 39
whip[1]: n39{r9c10 .} ==> r10c8 ≠ 40
whip[1]: n40{r10c10 .} ==> r10c7 ≠ 41
whip[1]: n41{r10c9 .} ==> r9c7 ≠ 42
whip[1]: r10c7{n51 .} ==> r5c5 ≠ 50, r5c7 ≠ 50, r6c4 ≠ 50, r6c6 ≠ 50, r7c5 ≠ 50, r8c4 ≠ 50, r9c5 ≠ 50, r10c4 ≠ 50
whip[1]: n50{r10c8 .} ==> r5c6 ≠ 49, r6c5 ≠ 49, r6c7 ≠ 49, r7c4 ≠ 49, r9c4 ≠ 49, r5c4 ≠ 51, r5c6 ≠ 51, r6c5 ≠ 51, r6c7 ≠ 51, r7c4 ≠ 51, r7c6 ≠ 51, r9c4 ≠ 51, r10c3 ≠ 51
whip[1]: n51{r10c7 .} ==> r5c5 ≠ 52, r6c4 ≠ 52, r6c6 ≠ 52, r7c5 ≠ 52, r7c7 ≠ 52, r8c4 ≠ 52, r9c3 ≠ 52
whip[1]: n52{r10c6 .} ==> r6c5 ≠ 53, r7c4 ≠ 53, r7c6 ≠ 53
whip[1]: n53{r10c5 .} ==> r7c5 ≠ 54
whip[1]: n49{r10c7 .} ==> r6c6 ≠ 48, r7c5 ≠ 48, r7c7 ≠ 48
whip[1]: n48{r10c6 .} ==> r7c6 ≠ 47
hidden-single: r9c6 = 47
whip[1]: n53{r10c5 .} ==> r9c7 ≠ 52
whip[1]: r9c7{n50 .} ==> r10c5 ≠ 49
whip[1]: n49{r10c7 .} ==> r9c5 ≠ 48
z-chain[2]: n38{r7c9 r8c10} - n36{r8c10 .} ==> r9c10 ≠ 37
biv-chain[3]: n48{r9c7 r10c6} - n49{r9c8 r10c7} - n51{r10c7 r10c5} ==> r9c7 ≠ 50
naked-single: r9c7 = 48
biv-chain[3]: n57{r7c4 r9c4} - n53{r9c4 r10c5} - n54{r8c4 r9c5} ==> r9c5 ≠ 56
t-whip[3]: r10c10{n22 n40} - n39{r7c10 r9c10} - n38{r3c9 .} ==> r8c10 ≠ 22
t-whip[2]: n22{r7c9 r10c10} - n21{r7c10 .} ==> r9c10 ≠ 23
t-whip[3]: r10c10{n22 n40} - n39{r7c10 r9c10} - n25{r9c10 .} ==> r8c9 ≠ 23
hidden-single: r10c9 = 23
hidden-single: r10c10 = 22
hidden-single: r9c10 = 21
hidden-single: r8c10 = 20
hidden-single: r7c10 = 19
hidden-single: r7c9 = 26
hidden-single: r6c10 = 18
hidden-single: r8c9 = 25
whip[1]: n17{r6c9 .} ==> r3c9 ≠ 16, r4c6 ≠ 16, r4c8 ≠ 16, r5c7 ≠ 16
whip[1]: n16{r5c9 .} ==> r4c7 ≠ 15
whip[1]: n42{r10c8 .} ==> r6c9 ≠ 41
whip[1]: n41{r7c8 .} ==> r5c9 ≠ 40, r10c8 ≠ 42
hidden-single: r7c7 = 42
hidden-single: r5c9 = 28
hidden-single: r4c10 = 16
hidden-single: r5c10 = 17
hidden-single: r6c9 = 27
hidden-single: r4c9 = 29
hidden-single: r3c10 = 15
hidden-single: r3c9 = 14
hidden-single: r4c8 = 30
hidden-single: r7c8 = 43
hidden-single: r6c7 = 33
hidden-single: r7c6 = 41
naked-single: r9c8 = 49
hidden-single: r10c8 = 50
hidden-single: r10c7 = 51
hidden-single: r10c6 = 52
hidden-single: r10c5 = 53
hidden-single: r9c5 = 54
naked-single: r10c4 = 62
whip[1]: n61{r10c3 .} ==> r7c3 ≠ 60, r8c2 ≠ 60
whip[1]: n63{r10c3 .} ==> r8c2 ≠ 64, r9c1 ≠ 64
whip[1]: r10c1{n69 .} ==> r6c2 ≠ 68, r7c1 ≠ 68, r8c2 ≠ 68
whip[1]: n68{r10c2 .} ==> r7c2 ≠ 67, r5c2 ≠ 69, r6c1 ≠ 69, r7c2 ≠ 69
whip[1]: n69{r10c1 .} ==> r4c2 ≠ 70, r5c1 ≠ 70, r6c2 ≠ 70
whip[1]: n70{r9c1 .} ==> r4c1 ≠ 71, r5c2 ≠ 71
naked-single: r4c1 = 81
hidden-single: r4c2 = 82
hidden-single: r5c1 = 80
hidden-single: r5c2 = 79
hidden-single: r5c4 = 77
hidden-single: r6c4 = 76
hidden-single: r4c3 = 83
hidden-single: r4c4 = 84
whip[1]: r4c6{n38 .} ==> r6c5 ≠ 37, r7c4 ≠ 37
whip[1]: n37{r5c6 .} ==> r7c5 ≠ 38, r7c5 ≠ 36
whip[1]: n38{r6c6 .} ==> r7c4 ≠ 39
whip[1]: r5c5{n38 .} ==> r4c7 ≠ 37
hidden-single: r5c6 = 37
whip[1]: r6c2{n74 .} ==> r7c4 ≠ 73
naked-single: r7c4 = 57
whip[1]: r6c1{n73 .} ==> r7c3 ≠ 72, r8c2 ≠ 72
whip[1]: n40{r7c5 .} ==> r4c7 ≠ 39
hidden-single: r6c5 = 39
hidden-single: r4c7 = 35
hidden-single: r5c7 = 34
hidden-single: r4c6 = 36
naked-single: r5c5 = 38
naked-single: r6c6 = 40
naked-single: r7c5 = 56
naked-pairs: {r6c1 r7c2}{n71 n73} ==> r8c1 ≠ 71
whip[1]: r8c1{n69 .} ==> r10c2 ≠ 68
hidden-single: r9c1 = 68
whip[1]: n70{r8c2 .} ==> r10c1 ≠ 69
hidden-single: r8c1 = 69
hidden-single: r10c1 = 67
hidden-single: r10c2 = 66
hidden-single: r9c3 = 64
hidden-single: r8c4 = 60
hidden-single: r7c3 = 58
hidden-single: r6c2 = 74
hidden-single: r7c1 = 72
hidden-single: r8c2 = 70
hidden-single: r7c2 = 71
hidden-single: r6c1 = 73
hidden-single: r9c4 = 61
hidden-single: r10c3 = 63
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[4]

100 91 90 89 88  1  2  3  4  5
99 92 93 94 87 10  9  8  7  6
98 97 96 95 86 11 12 13 14 15
81 82 83 84 85 36 35 30 29 16
80 79 78 77 38 37 34 31 28 17
73 74 75 76 39 40 33 32 27 18
72 71 58 57 56 41 42 43 26 19
69 70 59 60 55 46 45 44 25 20
68 65 64 61 54 47 48 49 24 21
67 66 63 62 53 52 51 50 23 22
init-time = 0.47s, solve time = 29.64s, total-time = 30.11s
nb-facts=<Fact-90343>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
