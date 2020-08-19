
(solve Numbrix topological 9 81
. . . . . . . . . 
. 25 22 . 16 . 8 1 .
. 24 . . . . . 2 .
. . . . . . . . . 
. 36 . . . . . 54 .
. . . . . . . . . 
. 42 . . . . . 58 . 
. 41 78 . 68 . 70 59 . 
. . . . . . . . . 

)


***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Numbrix-Rules topological-model   *****
undecided numbers: (3 4 5 6 7 9 10 11 12 13 14 15 17 18 19 20 21 23 26 27 28 29 30 31 32 33 34 35 37 38 39 40 43 44 45 46 47 48 49 50 51 52 53 55 56 57 60 61 62 63 64 65 66 67 69 71 72 73 74 75 76 77 79 80 81)
start solution 1596607930.73847
entering BRT
hidden-single: r8c6 = 69
hidden-single: r3c3 = 23
naked-single: r9c1 = 81
Starting_init_links_with_<Fact-5767>
563 candidates, 5961 csp-links and 11418 links. Density = 7.22%
starting non trivial part of solution
Entering_level_W1_with_<Fact-40528>
whip[1]: r9c9{n62 .} ==> r9c7 ≠ 62, r6c7 ≠ 62, r6c8 ≠ 62, r6c9 ≠ 62, r7c6 ≠ 62, r7c7 ≠ 62, r7c9 ≠ 62, r9c6 ≠ 62
whip[1]: n62{r9c9 .} ==> r6c8 ≠ 61, r7c7 ≠ 61, r5c7 ≠ 63, r6c6 ≠ 63, r6c7 ≠ 63, r6c8 ≠ 63, r7c5 ≠ 63, r7c6 ≠ 63, r7c7 ≠ 63, r8c4 ≠ 63, r9c5 ≠ 63, r9c6 ≠ 63
whip[1]: n63{r9c9 .} ==> r5c6 ≠ 64, r6c5 ≠ 64, r6c6 ≠ 64, r6c7 ≠ 64, r7c4 ≠ 64, r7c5 ≠ 64, r7c6 ≠ 64, r7c7 ≠ 64, r8c4 ≠ 64, r9c4 ≠ 64, r9c5 ≠ 64
whip[1]: n64{r9c8 .} ==> r8c9 ≠ 63, r5c5 ≠ 65, r6c4 ≠ 65, r6c5 ≠ 65, r6c6 ≠ 65, r7c3 ≠ 65, r7c4 ≠ 65, r7c5 ≠ 65, r7c6 ≠ 65, r7c7 ≠ 65, r8c4 ≠ 65, r9c3 ≠ 65, r9c4 ≠ 65
whip[1]: n65{r9c7 .} ==> r8c9 ≠ 64, r6c5 ≠ 66, r7c4 ≠ 66, r7c5 ≠ 66, r7c6 ≠ 66, r8c4 ≠ 66
whip[1]: n66{r9c6 .} ==> r7c5 ≠ 67
whip[1]: n64{r9c8 .} ==> r7c9 ≠ 63
whip[1]: n60{r9c8 .} ==> r9c8 ≠ 61, r8c9 ≠ 61
whip[1]: n61{r9c9 .} ==> r9c9 ≠ 62
whip[1]: n62{r9c8 .} ==> r9c8 ≠ 63
whip[1]: n63{r9c9 .} ==> r9c7 ≠ 64
whip[1]: n64{r9c8 .} ==> r9c6 ≠ 65
whip[1]: n65{r9c7 .} ==> r9c5 ≠ 66
whip[1]: n71{r9c7 .} ==> r9c7 ≠ 72, r7c7 ≠ 72, r8c9 ≠ 72
whip[1]: n72{r9c8 .} ==> r7c6 ≠ 73, r8c4 ≠ 73, r9c6 ≠ 73
whip[1]: n73{r9c7 .} ==> r7c5 ≠ 74, r8c4 ≠ 74, r9c5 ≠ 74
whip[1]: n74{r9c6 .} ==> r7c4 ≠ 75, r9c4 ≠ 75
whip[1]: n75{r9c5 .} ==> r7c3 ≠ 76, r8c1 ≠ 76, r8c4 ≠ 76, r9c3 ≠ 76
whip[1]: n49{r7c9 .} ==> r7c9 ≠ 50
whip[1]: n43{r7c3 .} ==> r7c3 ≠ 44, r6c2 ≠ 44, r7c1 ≠ 44, r9c2 ≠ 44
whip[1]: n44{r8c1 .} ==> r9c3 ≠ 45, r4c2 ≠ 45, r6c1 ≠ 45, r6c3 ≠ 45, r7c4 ≠ 45
whip[1]: n45{r8c4 .} ==> r4c2 ≠ 46, r5c1 ≠ 46, r5c3 ≠ 46, r6c2 ≠ 46, r6c4 ≠ 46, r7c3 ≠ 46, r7c5 ≠ 46, r8c4 ≠ 46
whip[1]: n46{r9c4 .} ==> r4c3 ≠ 47, r5c4 ≠ 47, r6c3 ≠ 47, r6c5 ≠ 47, r7c4 ≠ 47, r7c6 ≠ 47
whip[1]: n47{r9c5 .} ==> r4c4 ≠ 48, r5c3 ≠ 48, r5c5 ≠ 48, r6c4 ≠ 48, r6c6 ≠ 48, r7c5 ≠ 48, r7c7 ≠ 48
whip[1]: n48{r9c6 .} ==> r5c1 ≠ 47, r4c5 ≠ 49, r5c4 ≠ 49, r5c6 ≠ 49, r6c5 ≠ 49, r6c7 ≠ 49, r7c6 ≠ 49, r7c9 ≠ 49
whip[1]: n49{r9c7 .} ==> r4c6 ≠ 50, r5c5 ≠ 50, r5c7 ≠ 50, r6c6 ≠ 50, r6c8 ≠ 50, r7c7 ≠ 50, r8c9 ≠ 50
whip[1]: n50{r9c8 .} ==> r4c7 ≠ 51, r5c6 ≠ 51, r6c7 ≠ 51, r6c9 ≠ 51
whip[1]: n51{r7c9 .} ==> r4c8 ≠ 52, r5c7 ≠ 52, r5c9 ≠ 52, r6c8 ≠ 52, r9c8 ≠ 50
whip[1]: n50{r7c6 .} ==> r9c7 ≠ 49
whip[1]: n49{r7c7 .} ==> r9c6 ≠ 48
whip[1]: n48{r7c6 .} ==> r9c5 ≠ 47
whip[1]: r8c9{n62 .} ==> r9c7 ≠ 61
whip[1]: n57{r6c8 .} ==> r6c8 ≠ 56
whip[1]: n56{r6c9 .} ==> r4c8 ≠ 55
whip[1]: n39{r6c2 .} ==> r6c2 ≠ 38, r9c2 ≠ 40
hidden-single: r8c1 = 40
hidden-single: r7c1 = 39
hidden-single: r6c1 = 38
hidden-single: r9c2 = 80
hidden-single: r9c3 = 79
whip[1]: n32{r7c4 .} ==> r1c2 ≠ 31
whip[1]: n31{r7c3 .} ==> r1c3 ≠ 30
whip[1]: n33{r7c3 .} ==> r1c2 ≠ 32
whip[1]: n32{r7c4 .} ==> r1c3 ≠ 31
whip[1]: n44{r7c4 .} ==> r5c1 ≠ 45
whip[1]: n45{r8c4 .} ==> r4c1 ≠ 46
whip[1]: n35{r6c2 .} ==> r6c2 ≠ 34, r4c2 ≠ 34, r5c1 ≠ 34, r5c3 ≠ 34
whip[1]: n34{r6c3 .} ==> r4c1 ≠ 33, r4c3 ≠ 33, r5c4 ≠ 33, r6c3 ≠ 33
whip[1]: n33{r7c3 .} ==> r3c1 ≠ 32, r4c2 ≠ 32, r4c4 ≠ 32, r5c1 ≠ 32, r5c3 ≠ 32, r5c5 ≠ 32, r6c2 ≠ 32, r6c4 ≠ 32, r7c3 ≠ 32
whip[1]: n32{r7c4 .} ==> r2c1 ≠ 31, r3c4 ≠ 31, r4c1 ≠ 31, r4c3 ≠ 31, r4c5 ≠ 31, r5c4 ≠ 31, r6c3 ≠ 31
whip[1]: n31{r7c3 .} ==> r1c1 ≠ 30, r2c4 ≠ 30, r3c1 ≠ 30, r3c5 ≠ 30, r4c2 ≠ 30, r4c4 ≠ 30, r5c1 ≠ 30, r5c3 ≠ 30, r6c2 ≠ 30
whip[1]: n30{r6c3 .} ==> r1c2 ≠ 29, r1c4 ≠ 29, r2c1 ≠ 29, r3c4 ≠ 29, r4c1 ≠ 29, r4c3 ≠ 29
whip[1]: n29{r6c2 .} ==> r1c1 ≠ 28, r1c3 ≠ 28, r2c4 ≠ 28, r3c1 ≠ 28, r4c2 ≠ 28
whip[1]: n28{r4c3 .} ==> r1c2 ≠ 27, r2c1 ≠ 27, r2c6 ≠ 29, r6c2 ≠ 29
whip[1]: n3{r4c8 .} ==> r4c8 ≠ 4, r1c8 ≠ 4, r3c7 ≠ 4, r3c9 ≠ 4
whip[1]: n4{r4c9 .} ==> r1c7 ≠ 5, r1c8 ≠ 5, r2c9 ≠ 5, r3c6 ≠ 5, r4c7 ≠ 5
whip[1]: n5{r5c7 .} ==> r1c7 ≠ 6, r2c6 ≠ 6, r3c7 ≠ 6
whip[1]: n9{r3c7 .} ==> r3c7 ≠ 10, r1c7 ≠ 10, r2c6 ≠ 10, r2c9 ≠ 10
whip[1]: n10{r4c7 .} ==> r1c6 ≠ 11, r1c8 ≠ 11, r2c4 ≠ 11, r2c9 ≠ 11, r3c6 ≠ 11, r3c9 ≠ 11, r4c7 ≠ 11
whip[1]: n11{r5c7 .} ==> r1c5 ≠ 12, r1c7 ≠ 12, r2c4 ≠ 12, r2c6 ≠ 12, r3c5 ≠ 12, r3c7 ≠ 12, r4c6 ≠ 12
whip[1]: n12{r5c6 .} ==> r1c4 ≠ 13, r1c6 ≠ 13, r3c4 ≠ 13, r3c6 ≠ 13, r4c5 ≠ 13
whip[1]: n13{r5c5 .} ==> r2c9 ≠ 12, r1c5 ≠ 14, r2c4 ≠ 14, r2c6 ≠ 14, r3c5 ≠ 14
whip[1]: r2c9{n6 .} ==> r2c6 ≠ 5, r3c5 ≠ 5, r3c7 ≠ 5, r4c6 ≠ 5, r4c8 ≠ 5, r5c7 ≠ 5
whip[1]: n5{r3c9 .} ==> r4c7 ≠ 6, r3c6 ≠ 4, r1c6 ≠ 6, r3c6 ≠ 6, r4c7 ≠ 4
whip[1]: n4{r4c9 .} ==> r3c7 ≠ 3
whip[1]: n6{r2c9 .} ==> r2c6 ≠ 7, r3c7 ≠ 7
hidden-single: r1c7 = 7
hidden-single: r1c8 = 6
hidden-single: r1c9 = 5
hidden-single: r2c9 = 4
hidden-single: r3c9 = 3
naked-single: r4c9 = 52
whip[1]: n51{r5c9 .} ==> r3c6 ≠ 50, r4c5 ≠ 50, r5c4 ≠ 50, r5c6 ≠ 50, r6c5 ≠ 50, r6c7 ≠ 50, r7c6 ≠ 50
whip[1]: n50{r6c9 .} ==> r6c6 ≠ 49, r3c5 ≠ 49, r4c4 ≠ 49, r5c3 ≠ 49, r5c5 ≠ 49, r6c4 ≠ 49, r7c5 ≠ 49, r7c7 ≠ 49
whip[1]: n49{r6c8 .} ==> r7c6 ≠ 48, r3c4 ≠ 48, r4c3 ≠ 48, r5c4 ≠ 48, r6c3 ≠ 48, r6c5 ≠ 48, r7c4 ≠ 48
whip[1]: n48{r6c7 .} ==> r6c4 ≠ 47, r4c2 ≠ 47, r5c3 ≠ 47, r6c2 ≠ 47, r7c3 ≠ 47, r7c5 ≠ 47, r8c4 ≠ 47
whip[1]: n47{r7c7 .} ==> r7c4 ≠ 46, r6c3 ≠ 46, r9c4 ≠ 46
whip[1]: n46{r7c6 .} ==> r8c4 ≠ 45, r6c2 ≠ 45, r7c3 ≠ 45
whip[1]: n17{r3c5 .} ==> r3c5 ≠ 18, r1c5 ≠ 18, r2c4 ≠ 18, r2c6 ≠ 18
whip[1]: n18{r4c5 .} ==> r1c4 ≠ 19, r3c4 ≠ 19
whip[1]: n19{r4c4 .} ==> r1c3 ≠ 20, r2c1 ≠ 20, r2c4 ≠ 20
whip[1]: n21{r2c4 .} ==> r4c3 ≠ 20
whip[1]: n20{r3c4 .} ==> r2c6 ≠ 19
whip[1]: n26{r2c1 .} ==> r4c2 ≠ 27, r2c4 ≠ 27
whip[1]: n27{r3c1 .} ==> r3c4 ≠ 28, r4c3 ≠ 28
whip[1]: n28{r4c1 .} ==> r4c4 ≠ 29, r3c5 ≠ 29, r5c3 ≠ 29
whip[1]: n29{r5c1 .} ==> r5c4 ≠ 30, r3c6 ≠ 30, r4c5 ≠ 30, r6c3 ≠ 30
whip[1]: n30{r4c3 .} ==> r6c2 ≠ 31, r4c6 ≠ 31, r5c5 ≠ 31, r6c4 ≠ 31, r7c3 ≠ 31
whip[1]: n31{r5c3 .} ==> r7c4 ≠ 32, r5c6 ≠ 32, r6c5 ≠ 32
Entering_relation_bivalue_with_<Fact-40696>
Entering_level_S2_with_<Fact-40751>
hidden-pairs: {n60 n62}{r8c9 r9c8} ==> r9c8 ≠ 72, r9c8 ≠ 64
hidden-single: r9c6 = 64
hidden-single: r9c4 = 66
hidden-single: r9c5 = 65
hidden-single: r8c4 = 67
hidden-single: r7c3 = 77
hidden-single: r6c2 = 43
hidden-single: r5c1 = 37
hidden-single: r6c3 = 44
hidden-single: r7c4 = 76
hidden-single: r9c7 = 63
hidden-single: r9c8 = 62
hidden-single: r9c9 = 61
hidden-single: r8c9 = 60
hidden-single: r7c7 = 71
naked-single: r7c9 = 57
hidden-single: r6c9 = 56
hidden-single: r4c7 = 50
hidden-single: r4c8 = 51
hidden-single: r5c9 = 53
hidden-single: r6c8 = 55
whip[1]: n10{r3c6 .} ==> r5c7 ≠ 11
naked-single: r5c7 = 49
whip[1]: n48{r6c7 .} ==> r4c4 ≠ 47
whip[1]: n47{r6c6 .} ==> r4c3 ≠ 46
whip[1]: r4c6{n13 .} ==> r1c4 ≠ 12, r1c6 ≠ 12, r3c4 ≠ 12
whip[1]: n12{r5c6 .} ==> r1c5 ≠ 11, r1c3 ≠ 13, r1c5 ≠ 13, r2c4 ≠ 13
whip[1]: n13{r5c5 .} ==> r1c4 ≠ 14
whip[1]: n45{r6c4 .} ==> r7c6 ≠ 46
Entering_level_BC2_with_<Fact-40817>
Entering_level_Z2_with_<Fact-40868>
Entering_level_tW2_with_<Fact-40870>
z-chain[2]: n34{r4c3 r5c4} - n32{r5c4 .} ==> r6c4 ≠ 33
z-chain[2]: n12{r5c6 r3c6} - n14{r3c6 .} ==> r3c7 ≠ 13
whip[1]: r3c7{n11 .} ==> r1c6 ≠ 10
hidden-single: r3c6 = 10
whip[1]: n12{r5c6 .} ==> r2c6 ≠ 11, r3c7 ≠ 11, r2c6 ≠ 13
naked-single: r3c7 = 9
whip[1]: n13{r5c5 .} ==> r1c6 ≠ 14
naked-single: r1c6 = 18
hidden-single: r1c5 = 19
hidden-single: r1c4 = 20
hidden-single: r2c6 = 17
whip[1]: n28{r4c1 .} ==> r2c4 ≠ 29
whip[1]: n29{r4c2 .} ==> r3c4 ≠ 30
whip[1]: n30{r4c3 .} ==> r2c4 ≠ 31, r3c5 ≠ 31
z-chain[2]: n31{r5c3 r4c4} - n33{r4c4 .} ==> r3c4 ≠ 32
naked-single: r3c4 = 14
naked-single: r4c6 = 11
whip[1]: n13{r4c4 .} ==> r5c6 ≠ 12
hidden-single: r4c5 = 12
naked-single: r5c6 = 48
naked-single: r6c7 = 72
hidden-single: r6c6 = 73
hidden-single: r5c5 = 47
naked-single: r7c5 = 75
naked-single: r6c4 = 45
naked-single: r7c6 = 74
naked-single: r6c5 = 46
whip[1]: r5c4{n34 .} ==> r3c1 ≠ 33, r4c2 ≠ 33
whip[1]: n33{r5c3 .} ==> r2c1 ≠ 32, r4c1 ≠ 32, r4c1 ≠ 34
whip[1]: r4c1{n30 .} ==> r1c1 ≠ 29, r1c3 ≠ 29
whip[1]: n29{r4c2 .} ==> r1c2 ≠ 28, r1c2 ≠ 30
naked-single: r1c2 = 26
whip[1]: r2c1{n30 .} ==> r4c2 ≠ 29
hidden-single: r3c1 = 29
whip[1]: n30{r4c1 .} ==> r4c4 ≠ 31, r5c3 ≠ 31
whip[1]: n31{r4c2 .} ==> r5c4 ≠ 32
hidden-single: r4c3 = 32
hidden-single: r4c2 = 31
hidden-single: r4c1 = 30
hidden-single: r2c1 = 28
hidden-single: r1c1 = 27
hidden-single: r5c3 = 35
hidden-single: r4c4 = 33
hidden-single: r3c5 = 13
hidden-single: r2c4 = 15
hidden-single: r1c3 = 21
hidden-single: r5c4 = 34
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[2]
27 26 21 20 19 18  7  6  5
28 25 22 15 16 17  8  1  4
29 24 23 14 13 10  9  2  3
30 31 32 33 12 11 50 51 52
37 36 35 34 47 48 49 54 53
38 43 44 45 46 73 72 55 56
39 42 77 76 75 74 71 58 57
40 41 78 67 68 69 70 59 60
81 80 79 66 65 64 63 62 61
init-time = 0.24s, solve time = 3.98s, total-time = 4.22s
nb-facts=<Fact-41061>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve Numbrix geometric 9 81
. . . . . . . . . 
. 25 22 . 16 . 8 1 .
. 24 . . . . . 2 .
. . . . . . . . . 
. 36 . . . . . 54 .
. . . . . . . . . 
. 42 . . . . . 58 . 
. 41 78 . 68 . 70 59 . 
. . . . . . . . .
)

***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Numbrix-Rules geometric-model   *****
undecided numbers: (3 4 5 6 7 9 10 11 12 13 14 15 17 18 19 20 21 23 26 27 28 29 30 31 32 33 34 35 37 38 39 40 43 44 45 46 47 48 49 50 51 52 53 55 56 57 60 61 62 63 64 65 66 67 69 71 72 73 74 75 76 77 79 80 81)
start solution 1596607984.53073
entering BRT
hidden-single: r8c6 = 69
hidden-single: r3c3 = 23
naked-single: r9c1 = 81
hidden-single: r9c3 = 79
hidden-single: r9c2 = 80
hidden-single: r8c1 = 40
hidden-single: r6c1 = 38
hidden-single: r7c1 = 39
Starting_init_links_with_<Fact-5772>
528 candidates, 5453 csp-links and 17118 links. Density = 12.3%
starting non trivial part of solution
Entering_level_W1_with_<Fact-50917>
whip[1]: r9c9{n62 .} ==> r9c7 ≠ 62, r6c8 ≠ 61, r7c7 ≠ 61, r5c5 ≠ 65, r5c6 ≠ 64, r5c7 ≠ 63, r6c4 ≠ 65, r6c5 ≠ 64, r6c5 ≠ 65, r6c5 ≠ 66, r6c6 ≠ 63, r6c6 ≠ 64, r6c6 ≠ 65, r6c7 ≠ 63, r6c7 ≠ 64, r6c8 ≠ 63, r7c3 ≠ 65, r7c4 ≠ 64, r7c4 ≠ 65, r7c4 ≠ 66, r7c5 ≠ 63, r7c5 ≠ 64, r7c5 ≠ 65, r7c5 ≠ 66, r7c6 ≠ 63, r7c6 ≠ 64, r7c6 ≠ 65, r7c7 ≠ 63, r7c7 ≠ 64, r8c4 ≠ 63, r8c4 ≠ 64, r8c4 ≠ 65, r8c4 ≠ 66, r9c4 ≠ 64, r9c4 ≠ 65, r9c5 ≠ 63, r9c5 ≠ 64, r9c6 ≠ 63, r6c7 ≠ 62, r6c8 ≠ 62, r6c9 ≠ 62, r7c6 ≠ 62, r7c7 ≠ 62, r7c9 ≠ 62, r9c6 ≠ 62
whip[1]: n64{r9c8 .} ==> r8c9 ≠ 63, r7c7 ≠ 65
whip[1]: n65{r9c7 .} ==> r7c9 ≠ 63, r8c9 ≠ 64, r7c6 ≠ 66
whip[1]: n66{r9c6 .} ==> r7c5 ≠ 67
whip[1]: r3c1{n32 .} ==> r7c4 ≠ 32, r1c3 ≠ 30, r1c4 ≠ 29, r1c4 ≠ 30, r1c5 ≠ 29, r2c4 ≠ 30, r2c6 ≠ 29, r3c5 ≠ 30, r3c6 ≠ 30, r4c4 ≠ 30, r4c5 ≠ 30, r4c5 ≠ 31, r4c6 ≠ 31, r5c3 ≠ 30, r5c4 ≠ 30, r5c4 ≠ 31, r5c5 ≠ 31, r6c2 ≠ 30, r6c3 ≠ 30, r6c3 ≠ 31, r6c4 ≠ 31, r7c3 ≠ 31, r5c5 ≠ 32, r5c6 ≠ 32, r6c4 ≠ 32, r6c5 ≠ 32, r7c3 ≠ 32
whip[1]: n32{r6c3 .} ==> r1c2 ≠ 31
whip[1]: n31{r6c2 .} ==> r6c2 ≠ 32
whip[1]: n30{r5c1 .} ==> r6c2 ≠ 31, r3c4 ≠ 29, r3c4 ≠ 31, r6c2 ≠ 29
whip[1]: n29{r5c3 .} ==> r2c4 ≠ 28
whip[1]: r1c1{n31 .} ==> r5c3 ≠ 31, r4c4 ≠ 32, r4c5 ≠ 32, r5c3 ≠ 32, r5c4 ≠ 32, r5c4 ≠ 33, r5c5 ≠ 33, r6c3 ≠ 32, r6c3 ≠ 33, r6c4 ≠ 33, r7c3 ≠ 33, r2c4 ≠ 29, r3c4 ≠ 28, r3c4 ≠ 30, r3c5 ≠ 29, r4c1 ≠ 29, r4c2 ≠ 28, r4c2 ≠ 29, r4c2 ≠ 30, r4c3 ≠ 28, r4c3 ≠ 29, r4c3 ≠ 30, r4c4 ≠ 29, r5c1 ≠ 29, r5c1 ≠ 30, r5c3 ≠ 29, r3c5 ≠ 31, r4c3 ≠ 31, r4c4 ≠ 31
whip[1]: n30{r4c1 .} ==> r3c4 ≠ 32, r2c4 ≠ 31
whip[1]: n32{r5c1 .} ==> r6c2 ≠ 33
whip[1]: n33{r5c3 .} ==> r6c2 ≠ 34, r1c2 ≠ 32, r1c3 ≠ 31
whip[1]: n60{r9c8 .} ==> r9c8 ≠ 61, r8c9 ≠ 61
whip[1]: n61{r9c9 .} ==> r9c9 ≠ 62
whip[1]: n62{r9c8 .} ==> r9c8 ≠ 63
whip[1]: n63{r9c9 .} ==> r9c7 ≠ 64
whip[1]: n64{r9c8 .} ==> r9c6 ≠ 65
whip[1]: n65{r9c7 .} ==> r9c5 ≠ 66
whip[1]: n71{r9c7 .} ==> r9c7 ≠ 72, r7c7 ≠ 72, r8c4 ≠ 73, r8c4 ≠ 74, r8c9 ≠ 72
whip[1]: n72{r9c8 .} ==> r7c6 ≠ 73, r9c6 ≠ 73
whip[1]: n73{r9c7 .} ==> r7c5 ≠ 74, r9c5 ≠ 74
whip[1]: n74{r9c6 .} ==> r7c4 ≠ 75, r9c4 ≠ 75
whip[1]: n75{r9c5 .} ==> r7c3 ≠ 76, r8c4 ≠ 76
whip[1]: n49{r7c9 .} ==> r7c9 ≠ 50
whip[1]: n43{r7c3 .} ==> r7c3 ≠ 44, r6c2 ≠ 44
whip[1]: n44{r7c4 .} ==> r4c1 ≠ 46, r4c2 ≠ 45, r4c2 ≠ 46, r5c1 ≠ 45, r5c1 ≠ 46, r6c3 ≠ 45, r7c4 ≠ 45
whip[1]: n45{r8c4 .} ==> r5c3 ≠ 46, r6c2 ≠ 46, r6c4 ≠ 46, r7c3 ≠ 46, r7c5 ≠ 46, r8c4 ≠ 46
whip[1]: n46{r9c4 .} ==> r4c3 ≠ 47, r5c1 ≠ 47, r5c4 ≠ 47, r6c3 ≠ 47, r6c5 ≠ 47, r7c4 ≠ 47, r7c6 ≠ 47
whip[1]: n47{r9c5 .} ==> r4c4 ≠ 48, r5c3 ≠ 48, r5c5 ≠ 48, r6c4 ≠ 48, r6c6 ≠ 48, r7c5 ≠ 48, r7c7 ≠ 48
whip[1]: n48{r9c6 .} ==> r4c5 ≠ 49, r5c4 ≠ 49, r5c6 ≠ 49, r6c5 ≠ 49, r6c7 ≠ 49, r7c6 ≠ 49, r7c9 ≠ 49, r8c9 ≠ 50
whip[1]: r8c9{n62 .} ==> r9c7 ≠ 61
whip[1]: n49{r9c7 .} ==> r4c6 ≠ 50, r5c5 ≠ 50, r5c7 ≠ 50, r6c6 ≠ 50, r6c8 ≠ 50, r7c7 ≠ 50
whip[1]: n50{r9c8 .} ==> r4c7 ≠ 51, r5c6 ≠ 51, r6c7 ≠ 51, r6c9 ≠ 51
whip[1]: n51{r7c9 .} ==> r4c8 ≠ 52, r5c7 ≠ 52, r5c9 ≠ 52, r6c8 ≠ 52, r9c8 ≠ 50
whip[1]: n50{r7c6 .} ==> r9c7 ≠ 49
whip[1]: n49{r7c7 .} ==> r9c6 ≠ 48
whip[1]: n48{r7c6 .} ==> r9c5 ≠ 47
whip[1]: n57{r6c8 .} ==> r6c8 ≠ 56
whip[1]: n56{r6c9 .} ==> r4c8 ≠ 55
whip[1]: n35{r5c3 .} ==> r5c3 ≠ 34, r4c2 ≠ 34, r5c1 ≠ 34
whip[1]: n34{r6c3 .} ==> r4c1 ≠ 33, r4c3 ≠ 33
whip[1]: n33{r5c3 .} ==> r3c1 ≠ 32, r4c2 ≠ 32, r5c1 ≠ 32
whip[1]: n32{r4c3 .} ==> r4c1 ≠ 31, r2c1 ≠ 31
whip[1]: n31{r5c1 .} ==> r1c1 ≠ 30, r3c1 ≠ 30
whip[1]: n30{r4c1 .} ==> r1c2 ≠ 29, r2c1 ≠ 29
whip[1]: n29{r3c1 .} ==> r1c1 ≠ 28, r1c3 ≠ 28, r3c1 ≠ 28
whip[1]: n28{r4c1 .} ==> r1c2 ≠ 27, r2c1 ≠ 27
whip[1]: n3{r4c8 .} ==> r4c8 ≠ 4, r1c8 ≠ 4, r1c8 ≠ 5, r3c7 ≠ 4, r3c9 ≠ 4
whip[1]: n4{r4c9 .} ==> r1c7 ≠ 5, r1c7 ≠ 6, r2c9 ≠ 5, r3c6 ≠ 5, r4c7 ≠ 5
whip[1]: n5{r5c7 .} ==> r2c6 ≠ 6, r3c7 ≠ 6
whip[1]: n9{r3c7 .} ==> r3c7 ≠ 10, r1c7 ≠ 10, r2c6 ≠ 10, r2c9 ≠ 10, r2c9 ≠ 11
whip[1]: n11{r5c7 .} ==> r2c4 ≠ 12
whip[1]: n10{r4c7 .} ==> r1c6 ≠ 11, r1c8 ≠ 11, r2c4 ≠ 11, r3c6 ≠ 11, r3c9 ≠ 11, r4c7 ≠ 11
whip[1]: n11{r5c7 .} ==> r1c5 ≠ 12, r1c7 ≠ 12, r2c6 ≠ 12, r3c5 ≠ 12, r3c7 ≠ 12, r4c6 ≠ 12
whip[1]: n12{r5c6 .} ==> r1c4 ≠ 13, r1c6 ≠ 13, r3c4 ≠ 13, r3c6 ≠ 13, r4c5 ≠ 13
whip[1]: n13{r5c5 .} ==> r2c9 ≠ 12, r1c5 ≠ 14, r2c4 ≠ 14, r2c6 ≠ 14, r3c5 ≠ 14
whip[1]: r2c9{n6 .} ==> r2c6 ≠ 5, r3c5 ≠ 5, r3c6 ≠ 4, r3c7 ≠ 5, r4c6 ≠ 5, r4c7 ≠ 4, r4c8 ≠ 5, r5c7 ≠ 5, r1c6 ≠ 6, r3c6 ≠ 6, r4c7 ≠ 6
whip[1]: n6{r2c9 .} ==> r3c7 ≠ 7, r2c6 ≠ 7
hidden-single: r1c7 = 7
hidden-single: r1c8 = 6
hidden-single: r1c9 = 5
hidden-single: r3c9 = 3
hidden-single: r2c9 = 4
naked-single: r4c9 = 52
whip[1]: r3c7{n13 .} ==> r1c4 ≠ 12, r1c5 ≠ 11, r1c3 ≠ 13
whip[1]: n17{r3c5 .} ==> r3c5 ≠ 18, r1c5 ≠ 18, r2c4 ≠ 18, r2c6 ≠ 18
whip[1]: n18{r4c5 .} ==> r1c4 ≠ 19, r2c1 ≠ 20, r3c4 ≠ 19
whip[1]: n19{r4c4 .} ==> r1c3 ≠ 20, r2c4 ≠ 20
whip[1]: n21{r2c4 .} ==> r4c3 ≠ 20
whip[1]: n20{r3c4 .} ==> r2c6 ≠ 19
whip[1]: n26{r2c1 .} ==> r4c2 ≠ 27, r2c4 ≠ 27
Entering_relation_bivalue_with_<Fact-51056>
Entering_level_S2_with_<Fact-51117>
hidden-pairs: {n60 n62}{r8c9 r9c8} ==> r9c8 ≠ 72, r9c8 ≠ 64
hidden-single: r9c6 = 64
hidden-single: r9c9 = 61
hidden-single: r9c8 = 62
hidden-single: r8c9 = 60
hidden-single: r9c4 = 66
hidden-single: r9c5 = 65
hidden-single: r8c4 = 67
hidden-single: r7c3 = 77
hidden-single: r6c2 = 43
hidden-single: r5c1 = 37
hidden-single: r6c3 = 44
hidden-single: r7c4 = 76
hidden-single: r9c7 = 63
hidden-single: r7c7 = 71
naked-single: r7c9 = 57
hidden-single: r6c9 = 56
hidden-single: r4c7 = 50
hidden-single: r4c8 = 51
hidden-single: r5c9 = 53
hidden-single: r6c8 = 55
whip[1]: n10{r3c6 .} ==> r5c7 ≠ 11
naked-single: r5c7 = 49
whip[1]: r4c3{n34 .} ==> r1c1 ≠ 31, r2c1 ≠ 32, r3c1 ≠ 33
whip[1]: r3c1{n31 .} ==> r1c3 ≠ 29, r1c4 ≠ 28
whip[1]: n32{r4c3 .} ==> r1c2 ≠ 30
whip[1]: r1c1{n29 .} ==> r4c1 ≠ 28
whip[1]: r4c6{n13 .} ==> r1c6 ≠ 12, r3c4 ≠ 12, r1c4 ≠ 14, r1c5 ≠ 13, r2c4 ≠ 13
whip[1]: r1c4{n20 .} ==> r3c5 ≠ 19, r3c6 ≠ 18, r4c4 ≠ 19, r4c5 ≠ 18
whip[1]: r4c5{n14 .} ==> r2c6 ≠ 13, r3c7 ≠ 13, r1c6 ≠ 14
whip[1]: n14{r4c5 .} ==> r1c5 ≠ 15
whip[1]: r1c5{n19 .} ==> r3c4 ≠ 18
whip[1]: n18{r1c6 .} ==> r3c5 ≠ 17
whip[1]: r3c7{n11 .} ==> r1c6 ≠ 10
hidden-single: r3c6 = 10
naked-single: r1c6 = 18
hidden-single: r1c4 = 20
hidden-single: r1c5 = 19
hidden-single: r2c6 = 17
hidden-single: r3c7 = 9
naked-single: r3c4 = 14
hidden-single: r4c5 = 12
naked-single: r4c6 = 11
naked-single: r5c5 = 47
hidden-single: r5c6 = 48
naked-single: r6c6 = 73
naked-single: r7c5 = 75
naked-single: r6c4 = 45
naked-single: r6c7 = 72
naked-single: r7c6 = 74
naked-single: r6c5 = 46
naked-single: r5c4 = 34
hidden-single: r3c1 = 29
hidden-single: r2c1 = 28
hidden-single: r1c2 = 26
hidden-single: r1c1 = 27
hidden-single: r4c1 = 30
hidden-single: r4c2 = 31
hidden-single: r4c3 = 32
hidden-single: r5c3 = 35
hidden-single: r4c4 = 33
hidden-single: r3c5 = 13
hidden-single: r2c4 = 15
hidden-single: r1c3 = 21
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = P
27 26 21 20 19 18  7  6  5
28 25 22 15 16 17  8  1  4
29 24 23 14 13 10  9  2  3
30 31 32 33 12 11 50 51 52
37 36 35 34 47 48 49 54 53
38 43 44 45 46 73 72 55 56
39 42 77 76 75 74 71 58 57
40 41 78 67 68 69 70 59 60
81 80 79 66 65 64 63 62 61
init-time = 0.24s, solve time = 8.58s, total-time = 8.82s
nb-facts=<Fact-51195>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
