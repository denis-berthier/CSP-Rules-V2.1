



(solve 10
	
B 6 . . B 5 . . B B / 
17 . . . 14 . . . . B / 
11 . . 13 . . B 13 . . / 
B 21 . . . . . 6 . . / 
B 14 . . . 20 . . . B / 
9 . . 16 . . . . . B / 
5 . . B 9 . . 7 . . / 
B 28 . . . . 20 . . . / 
B B 9 . . B 11 . . B // 

B 10 . . B 7 . . B B / 
39 . . . . . . . . B / 
5 . . 16 . . B 8 . . / 
B B 14 . . . . 14 . . / 
B 18 . . . 17 . . . B / 
3 . . 19 . . . . B B / 
10 . . B 6 . . 9 . . / 
B 42 . . . . . . . . / 
B B 9 . . B 8 . . B // 
)



***********************************************************************************************
***  KakuRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
       Uppermost (black) row and leftmost (black) column have index 1
INITIALISATION
horizontal magic sector 16-in-5, starting in r7c4, unique combination: 12346
horizontal pseudo magic sector 28-in-4, starting in r9c2, for digits: (8 9)
vertical magic sector 39-in-8, starting in r1c3, unique combination: 12345789
vertical magic sector 16-in-2, starting in r4c4, unique combination: 79
vertical magic sector 3-in-2, starting in r1c7, unique combination: 12
vertical magic sector 42-in-8, starting in r2c9, unique combination: 12456789
entering BRT
w[1]-ctr-to-horiz-sector  ==> r10c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c8 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r10c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r9c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c8 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c8 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c6 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c6 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c5 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c5 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c5 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c4 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c4 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c4 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c9 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r7c9 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r7c9 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r7c9 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c8 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r7c8 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r7c8 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r7c8 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r7c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r7c7 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r7c7 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r7c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r7c6 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r7c6 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r7c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r7c5 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r7c5 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r7c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r6c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c8 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c8 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c7 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c7 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c10 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c10 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r5c10 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r5c10 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r5c10 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c6 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c6 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c9 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c8 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r2c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c7 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r2c7 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r2c7 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r2c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c4 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c4 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r2c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r2c4 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r2c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r2c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r2c3 ≠ 3
w[1]-ctr-to-verti-sector  ==> r10c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 9
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 3
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 2
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 1
w[1]-ctr-to-verti-sector  ==> r10c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r9c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r9c10 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 9
w[1]-ctr-to-verti-sector  ==> r9c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r9c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c4 ≠ 9
w[1]-ctr-to-verti-sector  ==> r9c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r9c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c3 ≠ 6
w[1]-ctr-to-verti-sector  ==> r8c10 ≠ 4
w[1]-ctr-to-verti-sector  ==> r8c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r7c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r7c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r7c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r7c3 ≠ 6
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r6c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r6c8 ≠ 9
w[1]-ctr-to-verti-sector  ==> r6c8 ≠ 8
w[1]-ctr-to-verti-sector  ==> r6c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r6c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r6c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r6c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r6c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r6c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r6c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r6c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r6c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r6c4 ≠ 2
w[1]-ctr-to-verti-sector  ==> r6c4 ≠ 1
w[1]-ctr-to-verti-sector  ==> r6c3 ≠ 6
w[1]-ctr-to-verti-sector  ==> r5c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 2
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 1
w[1]-ctr-to-verti-sector  ==> r5c3 ≠ 6
w[1]-ctr-to-verti-sector  ==> r4c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r4c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r4c3 ≠ 6
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c7 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r3c7 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c7 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c7 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c7 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 9
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 7
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c3 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 5
w[1]-ctr-to-verti-sector  ==> r2c7 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c7 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 5
horizontal-magic-sector: hr7c4 = 12346
vertical-magic-sector: vr2c9 = 12456789
vertical-magic-sector: vr1c7 = 12
vertical-magic-sector: vr4c4 = 79
vertical-magic-sector: vr1c3 = 12345789

RESOLUTION
w[1]-cell-to-horiz-ctr  ==> hr5c2 ≠ 12468
w[1]-cell-to-horiz-ctr  ==> hr5c2 ≠ 13458
w[1]-cell-to-horiz-ctr  ==> hr6c2 ≠ 158
w[1]-cell-to-horiz-ctr  ==> hr6c2 ≠ 248
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 8
w[1]-cell-to-horiz-ctr  ==> hr6c2 ≠ 356
w[1]-cell-to-horiz-ctr  ==> hr6c6 ≠ 389
w[1]-ctr-to-horiz-sector  ==> r6c7 ≠ 3
w[1]-cell-to-horiz-ctr  ==> hr10c3 ≠ 27
w[1]-ctr-to-horiz-sector  ==> r10c4 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r10c4 ≠ 7
w[1]-cell-to-verti-ctr  ==> vr3c10 ≠ 36
w[1]-ctr-to-verti-sector  ==> r4c10 ≠ 6
horiz-sector-to-ctr  ==> hr10c3 ≠ 45
w[1]-ctr-to-horiz-sector  ==> r10c4 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r10c5 ≠ 5
w[1]-cell-to-verti-ctr  ==> vr8c5 ≠ 59
naked-single ==> vr8c5 = 68
verti-sector-to-ctr  ==> vr8c4 ≠ 26
w[1]-ctr-to-verti-sector  ==> r9c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r10c4 ≠ 6
verti-sector-to-ctr  ==> vr1c8 ≠ 19
w[1]-ctr-to-verti-sector  ==> r2c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 1
verti-sector-to-ctr  ==> vr8c8 ≠ 18
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 8
Starting_init_links_with_<Fact-9225>
408 candidates, 1231 csp-links and 2736 links. Density = 3.3%
starting non trivial part of solution
Entering_level_W1_with_<Fact-21028>
Entering_relation_bivalue_with_<Fact-21029>
Entering_level_S2_with_<Fact-21076>
Entering_level_TyBC2_with_<Fact-21087>
biv-chain-vr5c8[2]: vr5c8{n15 n24} - r6c8{n5 n4} ==> r7c8 ≠ 4
biv-chain-hr2c6[2]: hr2c6{n14 n23} - r2c7{n1 n2} ==> r2c8 ≠ 2
w[1]-cell-to-verti-ctr  ==> vr1c8 ≠ 28
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 8
biv-chain-vr1c8[2]: r2c8{n4 n3} - vr1c8{n46 n37} ==> r3c8 ≠ 4
biv-chain-vr1c8[2]: vr1c8{n46 n37} - r2c8{n4 n3} ==> r3c8 ≠ 3
w[1]-cell-to-horiz-ctr  ==> hr3c5 ≠ 1238
w[1]-ctr-to-horiz-sector  ==> r3c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r3c9 ≠ 8
w[1]-cell-to-horiz-ctr  ==> hr3c5 ≠ 2345
biv-chain-hr9c2[2]: hr9c2{n4789 n5689} - r9c4{n7 n5} ==> r9c3 ≠ 5, r9c6 ≠ 5
biv-chain-hr9c2[2]: hr9c2{n5689 n4789} - r9c4{n5 n7} ==> r9c3 ≠ 7, r9c6 ≠ 7
Entering_level_BC2_with_<Fact-21174>
Entering_level_TyZ2_with_<Fact-21245>
z-chain-hr3c5[2]: hr3c5{n1346 n1247} - r3c8{n6 .} ==> r3c6 ≠ 7
z-chain-hr3c5[2]: hr3c5{n1346 n1247} - r3c8{n6 .} ==> r3c9 ≠ 7
z-chain-hr6c6[2]: hr6c6{n578 n479} - r6c8{n5 .} ==> r6c7 ≠ 4
z-chain-hr6c6[2]: hr6c6{n578 n479} - r6c8{n5 .} ==> r6c9 ≠ 4
z-chain-hr9c7[2]: r9c8{n7 n3} - r9c10{n3 .} ==> hr9c7 ≠ 389
w[1]-ctr-to-horiz-sector  ==> r9c8 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c10 ≠ 3
Entering_level_Z2_with_<Fact-21798>
Entering_level_TytW2_with_<Fact-22201>
Entering_level_tW2_with_<Fact-22202>
t-whip[2]: vr1c4{n14 n23} - r2c4{n4 .} ==> r3c4 ≠ 2
w[1]-cell-to-horiz-ctr  ==> hr3c1 ≠ 269
w[1]-cell-to-horiz-ctr  ==> hr3c1 ≠ 278
w[1]-ctr-to-horiz-sector  ==> r3c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c2 ≠ 2
t-whip[2]: vr2c2{n46 n28} - r3c2{n9 .} ==> r4c2 ≠ 8
t-whip[2]: vr2c2{n46 n19} - r4c2{n7 .} ==> r3c2 ≠ 9
z-chain-hr3c1[2]: r3c2{n8 n3} - r3c4{n3 .} ==> hr3c1 ≠ 359
t-whip[2]: hr3c1{n467 n368} - r3c4{n4 .} ==> r3c3 ≠ 3, r3c2 ≠ 3
t-whip[2]: vr2c2{n46 n37} - r3c2{n8 .} ==> r4c2 ≠ 7
t-whip[2]: hr4c1{n56 n47} - r4c2{n9 .} ==> r4c3 ≠ 4
t-whip[2]: hr4c1{n56 n38} - r4c2{n9 .} ==> r4c3 ≠ 3
t-whip[2]: vr2c6{n567 n189} - r3c6{n6 .} ==> r5c6 ≠ 1
t-whip[2]: vr2c6{n567 n279} - r3c6{n6 .} ==> r5c6 ≠ 2
t-whip[2]: vr3c5{n2345 n1238} - r4c5{n7 .} ==> r5c5 ≠ 8
t-whip[2]: vr6c2{n34 n16} - r8c2{n4 .} ==> r7c2 ≠ 1
w[1]-cell-to-horiz-ctr  ==> hr7c1 ≠ 18
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 8
t-whip[2]: hr7c1{n45 n36} - r7c3{n7 .} ==> r7c2 ≠ 3
t-whip[2]: vr6c2{n25 n34} - r7c2{n6 .} ==> r8c2 ≠ 4
t-whip[2]: vr6c2{n34 n25} - r8c2{n3 .} ==> r7c2 ≠ 2
w[1]-cell-to-horiz-ctr  ==> hr7c1 ≠ 27
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 7
t-whip[2]: hr8c1{n23 n14} - r8c2{n3 .} ==> r8c3 ≠ 1
t-whip[2]: vr6c6{n467 n179} - r7c6{n6 .} ==> r8c6 ≠ 1
t-whip[2]: hr8c5{n45 n18} - r8c6{n7 .} ==> r8c7 ≠ 8
t-whip[2]: vr7c10{n26 n35} - r9c10{n7 .} ==> r8c10 ≠ 5
t-whip[2]: hr8c8{n34 n25} - r8c10{n6 .} ==> r8c9 ≠ 2
t-whip[2]: vr7c10{n35 n26} - r9c10{n7 .} ==> r8c10 ≠ 6
t-whip[2]: hr8c8{n34 n16} - r8c10{n3 .} ==> r8c9 ≠ 1
t-whip[2]: vr8c8{n45 n27} - r9c8{n6 .} ==> r10c8 ≠ 7
t-whip[2]: hr10c7{n56 n29} - r10c8{n6 .} ==> r10c9 ≠ 2
t-whip[2]: hr10c7{n56 n47} - r10c8{n6 .} ==> r10c9 ≠ 4
t-whip[2]: vr8c8{n45 n36} - r9c8{n7 .} ==> r10c8 ≠ 6
t-whip[2]: hr10c7{n47 n56} - r10c8{n4 .} ==> r10c9 ≠ 5
t-whip[2]: hr2c2{n24 n15} - r2c4{n4 .} ==> r2c3 ≠ 1
t-whip[2]: hr3c1{n467 n179} - r3c4{n4 .} ==> r3c2 ≠ 1, r3c3 ≠ 1
w[1]-cell-to-verti-ctr  ==> vr2c2 ≠ 19
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 9
t-whip[2]: hr4c1{n56 n29} - r4c2{n6 .} ==> r4c3 ≠ 2
t-whip[2]: r3c8{n6 n7} - hr3c5{n1346 .} ==> r3c6 ≠ 6, r3c9 ≠ 6
t-whip[2]: hr4c4{n67 n49} - r4c5{n8 .} ==> r4c6 ≠ 4
t-whip[2]: hr4c8{n67 n49} - r4c10{n8 .} ==> r4c9 ≠ 4
t-whip[2]: hr4c8{n58 n67} - r4c10{n8 .} ==> r4c9 ≠ 7
t-whip[2]: r6c8{n5 n4} - hr6c6{n578 .} ==> r6c7 ≠ 5, r6c9 ≠ 5
Entering_level_TyW2_with_<Fact-22546>
whip-hr5c2[2]: r5c4{n7 n9} - hr5c2{n12378 .} ==> r5c3 ≠ 7, r5c5 ≠ 7, r5c6 ≠ 7, r5c7 ≠ 7
whip-hr5c2[2]: r5c4{n9 n7} - hr5c2{n12369 .} ==> r5c3 ≠ 9, r5c6 ≠ 9, r5c7 ≠ 9
w[1]-cell-to-verti-ctr  ==> vr2c6 ≠ 279
w[1]-ctr-to-verti-sector  ==> r3c6 ≠ 2
whip-hr6c2[2]: r6c4{n7 n9} - hr6c2{n167 .} ==> r6c3 ≠ 7, r6c5 ≠ 7
whip-hr6c2[2]: r6c4{n9 n7} - hr6c2{n149 .} ==> r6c3 ≠ 9
Entering_level_W2_with_<Fact-22595>
Entering_level_S3_with_<Fact-22596>
Entering_level_TyBC3_with_<Fact-22599>
Entering_level_BC3_with_<Fact-22622>
Entering_level_TyZ3_with_<Fact-22677>
Entering_level_Z3_with_<Fact-22859>
Entering_level_TytW3_with_<Fact-23071>
t-whip-hr9c7[3]: hr9c7{n578 n479} - r9c10{n6 n7} - r9c8{n7 .} ==> r9c9 ≠ 4
Entering_level_TyW3_with_<Fact-23422>
whip-hr9c7[3]: hr9c7{n578 n569} - r9c8{n7 n5} - r9c10{n5 .} ==> r9c9 ≠ 6
Entering_level_tW3_with_<Fact-23424>
Entering_level_W3_with_<Fact-23805>
Entering_level_S4_with_<Fact-23806>
Entering_level_TyBC4_with_<Fact-23809>
Entering_level_BC4_with_<Fact-23810>
Entering_level_TyZ4_with_<Fact-23853>
Entering_level_Z4_with_<Fact-23898>
Entering_level_TytW4_with_<Fact-24029>
Entering_level_TyW4_with_<Fact-24146>
Entering_level_tW4_with_<Fact-24148>
t-whip[4]: c3n7{r3 r4} - hr4c1{n56 n47} - r4c2{n6 n4} - vr2c2{n37 .} ==> r3c2 ≠ 7
w[1]-cell-to-horiz-ctr  ==> hr3c1 ≠ 179
w[1]-ctr-to-horiz-sector  ==> r3c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c4 ≠ 1
w[1]-cell-to-verti-ctr  ==> vr2c2 ≠ 37
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 3
w[1]-cell-to-horiz-ctr  ==> hr4c1 ≠ 38
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 8
biv-chain-vr1c4[2]: r3c4{n4 n3} - vr1c4{n14 n23} ==> r2c4 ≠ 4
biv-chain-hr2c2[2]: r2c4{n2 n1} - hr2c2{n24 n15} ==> r2c3 ≠ 2
t-whip[2]: r3c4{n4 n3} - hr3c1{n467 .} ==> r3c3 ≠ 4, r3c2 ≠ 4
biv-chain-vr2c2[2]: vr2c2{n28 n46} - r3c2{n8 n6} ==> r4c2 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr4c1 ≠ 56
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 5
Entering_level_W4_with_<Fact-25300>
Entering_level_TyBC5_with_<Fact-25301>
Entering_level_BC5_with_<Fact-25302>
biv-chain[5]: c7n2{r3 r2} - hr2c6{n14 n23} - r2c8{n4 n3} - vr1c8{n46 n37} - r3c8{n6 n7} ==> hr3c5 ≠ 1346
w[1]-ctr-to-horiz-sector  ==> r3c6 ≠ 3
w[1]-cell-to-verti-ctr  ==> vr2c6 ≠ 369
w[1]-cell-to-verti-ctr  ==> vr2c6 ≠ 378
w[1]-ctr-to-verti-sector  ==> r5c6 ≠ 3
t-whip[2]: hr5c2{n23457 n12378} - r5c6{n6 .} ==> r5c3 ≠ 8, r5c7 ≠ 8
hidden-triplets-in-verti-sector: c3{n7 n8 n9}{r4 r3 r9} ==> r9c3 ≠ 4, r3c3 ≠ 5
horiz-sector-to-ctr  ==> hr3c1 ≠ 458
biv-chain-hr3c1[2]: r3c3{n8 n7} - hr3c1{n368 n467} ==> r3c2 ≠ 8
naked-single ==> r3c2 = 6
naked-single ==> vr2c2 = 46
naked-single ==> r4c2 = 4
naked-single ==> hr4c1 = 47
naked-single ==> r4c3 = 7
naked-single ==> r3c3 = 8
naked-single ==> r9c3 = 9
naked-single ==> hr3c1 = 368
naked-single ==> r3c4 = 3
naked-single ==> vr1c4 = 23
naked-single ==> r2c4 = 2
naked-single ==> hr2c2 = 24
naked-single ==> r2c3 = 4
w[1]-cell-to-horiz-ctr  ==> hr8c1 ≠ 14
naked-single ==> hr8c1 = 23
w[1]-cell-to-verti-ctr  ==> vr6c2 ≠ 16
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr7c1 ≠ 36
naked-single ==> hr7c1 = 45
naked-single ==> r7c3 = 5
naked-single ==> r7c2 = 4
naked-single ==> vr6c2 = 34
naked-single ==> r8c2 = 3
naked-single ==> r8c3 = 2
w[1]-cell-to-horiz-ctr  ==> hr6c2 ≠ 257
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 5
w[1]-cell-to-verti-ctr  ==> vr6c6 ≠ 359
w[1]-cell-to-verti-ctr  ==> vr6c6 ≠ 179
w[1]-ctr-to-verti-sector  ==> r7c6 ≠ 1
verti-sector-to-ctr  ==> vr6c6 ≠ 269
t-whip[2]: vr6c6{n467 n278} - r7c6{n6 .} ==> r8c6 ≠ 2
t-whip[2]: hr8c5{n45 n27} - r8c6{n8 .} ==> r8c7 ≠ 7
whip-hr6c2[2]: r6c3{n1 n3} - hr6c2{n149 .} ==> r6c5 ≠ 1
whip-hr6c2[2]: r6c3{n3 n1} - hr6c2{n239 .} ==> r6c5 ≠ 3
Entering_level_TyZ5_with_<Fact-25968>
Entering_level_Z5_with_<Fact-25971>
Entering_level_TytW5_with_<Fact-26051>
Entering_level_TyW5_with_<Fact-26056>
Entering_level_tW5_with_<Fact-26058>
Entering_level_W5_with_<Fact-26222>
Entering_level_TyBC6_with_<Fact-26223>
Entering_level_BC6_with_<Fact-26224>
biv-chain[6]: vr8c4{n35 n17} - r9c4{n5 n7} - hr9c2{n5689 n4789} - r9c5{n6 n8} - r10c5{n8 n6} - hr10c3{n18 n36} ==> r10c4 ≠ 1
naked-single ==> r10c4 = 3
naked-single ==> vr8c4 = 35
naked-single ==> r9c4 = 5
naked-single ==> hr9c2 = 5689
naked-single ==> hr10c3 = 36
naked-single ==> r10c5 = 6
naked-single ==> r9c5 = 8
naked-single ==> r9c6 = 6
w[1]-ctr-to-verti-sector  ==> r8c6 ≠ 5
w[1]-ctr-to-verti-sector  ==> r7c6 ≠ 2
biv-chain-vr6c6[2]: vr6c6{n467 n368} - r7c6{n4 n3} ==> r8c6 ≠ 3
w[1]-cell-to-horiz-ctr  ==> hr8c5 ≠ 36
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 6
biv-chain-vr6c6[2]: r7c6{n4 n3} - vr6c6{n467 n368} ==> r8c6 ≠ 4
w[1]-cell-to-horiz-ctr  ==> hr8c5 ≠ 45
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 5
w[1]-cell-to-verti-ctr  ==> vr4c7 ≠ 3457
whip-vr4c7[3]: r8c7{n2 n1} - vr4c7{n2359 n1279} - r7c7{n3 .} ==> r5c7 ≠ 2
whip-vr4c7[3]: r5c7{n6 n1} - r8c7{n1 n2} - r7c7{n2 .} ==> vr4c7 ≠ 1279
whip-vr4c7[2]: r8c7{n2 n1} - vr4c7{n2467 .} ==> r7c7 ≠ 2
whip-vr4c7[2]: r8c7{n1 n2} - vr4c7{n1567 .} ==> r5c7 ≠ 1, r7c7 ≠ 1
z-chain-vr4c7[2]: r5c7{n6 n3} - r7c7{n3 .} ==> vr4c7 ≠ 1378
Entering_level_TyZ6_with_<Fact-26834>
Entering_level_Z6_with_<Fact-26836>
z-chain[6]: r8c7{n1 n2} - hr8c5{n18 n27} - r8c6{n8 n7} - vr6c6{n368 n467} - r7c6{n3 n4} - r7c7{n4 .} ==> vr4c7 ≠ 2458
Entering_level_TytW6_with_<Fact-26889>
Entering_level_TyW6_with_<Fact-26891>
Entering_level_tW6_with_<Fact-26893>
Entering_level_W6_with_<Fact-27001>
whip[6]: hr4c8{n67 n58} - r4c10{n7 n8} - vr3c10{n45 n18} - r5c10{n5 n1} - hr5c8{n24 n15} - r5c9{n2 .} ==> r4c9 ≠ 5
t-whip[2]: hr4c8{n67 n58} - r4c9{n9 .} ==> r4c10 ≠ 8
w[1]-cell-to-verti-ctr  ==> vr3c10 ≠ 18
w[1]-ctr-to-verti-sector  ==> r5c10 ≠ 1
t-whip[2]: hr5c8{n24 n15} - r5c10{n4 .} ==> r5c9 ≠ 5
Entering_level_TyBC7_with_<Fact-27141>
Entering_level_BC7_with_<Fact-27142>
Entering_level_TyZ7_with_<Fact-27151>
Entering_level_Z7_with_<Fact-27153>
Entering_level_TytW7_with_<Fact-27192>
Entering_level_TyW7_with_<Fact-27193>
Entering_level_tW7_with_<Fact-27195>
t-whip[7]: hr3c5{n1256 n1247} - r3c8{n6 n7} - vr1c8{n46 n37} - r2c8{n4 n3} - hr2c6{n14 n23} - c7n1{r2 r3} - r3c6{n1 .} ==> r3c9 ≠ 4
Entering_level_W7_with_<Fact-27332>
Entering_level_TyBC8_with_<Fact-27333>
Entering_level_BC8_with_<Fact-27334>
Entering_level_TyZ8_with_<Fact-27335>
Entering_level_Z8_with_<Fact-27337>
Entering_level_TytW8_with_<Fact-27375>
Entering_level_TyW8_with_<Fact-27376>
Entering_level_tW8_with_<Fact-27378>
Entering_level_W8_with_<Fact-27482>
Entering_level_TyBC9_with_<Fact-27483>
Entering_level_BC9_with_<Fact-27484>
Entering_level_TyZ9_with_<Fact-27485>
Entering_level_Z9_with_<Fact-27487>
Entering_level_TytW9_with_<Fact-27504>
Entering_level_TyW9_with_<Fact-27505>
Entering_level_tW9_with_<Fact-27507>
Entering_level_W9_with_<Fact-27608>
Entering_level_TyBC10_with_<Fact-27609>
Entering_level_BC10_with_<Fact-27610>
Entering_level_TyZ10_with_<Fact-27611>
Entering_level_Z10_with_<Fact-27613>
Entering_level_TytW10_with_<Fact-27618>
Entering_level_TyW10_with_<Fact-27619>
Entering_level_tW10_with_<Fact-27621>
t-whip[10]: hr10c7{n47 n56} - r10c8{n4 n5} - vr8c8{n36 n45} - r9c8{n7 n4} - hr9c7{n578 n479} - r9c10{n6 n7} - vr7c10{n35 n17} - r8c10{n3 n1} - hr8c8{n34 n16} - r8c9{n5 .} ==> r10c9 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr10c7 ≠ 56
w[1]-ctr-to-horiz-sector  ==> r10c8 ≠ 5
t-whip[2]: vr8c8{n36 n45} - r10c8{n3 .} ==> r9c8 ≠ 4
horiz-sector-to-ctr  ==> hr9c7 ≠ 479
whip-hr9c7[3]: hr9c7{n569 n578} - r9c10{n6 n5} - r9c8{n5 .} ==> r9c9 ≠ 7
Entering_level_W10_with_<Fact-28110>
whip[10]: hr8c8{n34 n16} - r8c10{n3 n1} - vr7c10{n35 n17} - r9c10{n6 n7} - hr9c7{n569 n578} - r9c8{n6 n5} - r9c9{n5 n8} - r4c9{n8 n9} - r10c9{n9 n7} - r6c9{n7 .} ==> r8c9 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr8c8 ≠ 16
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 1
w[1]-cell-to-verti-ctr  ==> vr7c10 ≠ 17
w[1]-ctr-to-verti-sector  ==> r9c10 ≠ 7
t-whip-hr9c7[3]: r9c10{n5 n6} - hr9c7{n578 n569} - r9c8{n7 .} ==> r9c9 ≠ 5
naked-quads-in-verti-sector: c9{r4 r6 r10 r9}{n9 n6 n7 n8} ==> r7c9 ≠ 6
t-whip[8]: r9c9{n9 n8} - hr9c7{n569 n578} - r9c10{n6 n5} - r9c8{n5 n7} - vr8c8{n36 n27} - r10c8{n3 n2} - hr10c7{n38 n29} - c9n7{r10 .} ==> r6c9 ≠ 9
t-whip[2]: hr6c6{n578 n569} - r6c9{n8 .} ==> r6c7 ≠ 6
t-whip[8]: r9c9{n9 n8} - hr9c7{n569 n578} - r9c10{n6 n5} - r9c8{n5 n7} - vr8c8{n36 n27} - r10c8{n3 n2} - hr10c7{n38 n29} - r10c9{n7 .} ==> r4c9 ≠ 9
w[1]-cell-to-horiz-ctr  ==> hr4c8 ≠ 49
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 4
biv-chain-vr3c10[2]: vr3c10{n27 n45} - r4c10{n7 n5} ==> r5c10 ≠ 5
w[1]-cell-to-horiz-ctr  ==> hr5c8 ≠ 15
naked-single ==> hr5c8 = 24
Entering_level_TyBC11_with_<Fact-35595>
Entering_level_BC11_with_<Fact-35596>
Entering_level_TyZ11_with_<Fact-35631>
Entering_level_Z11_with_<Fact-35633>
Entering_level_TytW11_with_<Fact-35779>
Entering_level_TyW11_with_<Fact-35780>
Entering_level_tW11_with_<Fact-35782>
t-whip[11]: c9n1{r3 r7} - r7c8{n1 n2} - vr5c8{n15 n24} - r6c8{n5 n4} - hr6c6{n578 n479} - c9n6{r6 r4} - hr4c8{n58 n67} - r4c10{n5 n7} - vr3c10{n45 n27} - r5c10{n4 n2} - c9n2{r5 .} ==> r3c9 ≠ 5
hidden-single-in-magic-verti-sector ==> r8c9 = 5
naked-single ==> hr8c8 = 25
naked-single ==> r8c10 = 2
naked-single ==> vr7c10 = 26
naked-single ==> r9c10 = 6
naked-single ==> hr9c7 = 569
naked-single ==> r9c9 = 9
naked-single ==> r9c8 = 5
naked-single ==> vr8c8 = 45
naked-single ==> r10c8 = 4
naked-single ==> hr10c7 = 47
naked-single ==> r10c9 = 7
w[1]-cell-to-horiz-ctr  ==> hr6c6 ≠ 479
w[1]-ctr-to-horiz-sector  ==> r6c8 ≠ 4
naked-single ==> r6c8 = 5
naked-single ==> vr5c8 = 15
naked-single ==> r7c8 = 1
hidden-single-in-magic-verti-sector ==> r3c9 = 1
naked-single ==> r3c7 = 2
naked-single ==> r2c7 = 1
naked-single ==> hr2c6 = 14
naked-single ==> r2c8 = 4
naked-single ==> vr1c8 = 46
naked-single ==> r3c8 = 6
naked-single ==> hr3c5 = 1256
naked-single ==> r3c6 = 5
w[1]-ctr-to-verti-sector  ==> r5c6 ≠ 8
w[1]-ctr-to-verti-sector  ==> r4c6 ≠ 8
w[1]-cell-to-horiz-ctr  ==> hr4c4 ≠ 58
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 8
w[1]-cell-to-horiz-ctr  ==> hr5c2 ≠ 12378
w[1]-cell-to-verti-ctr  ==> vr3c5 ≠ 1238
biv-chain-hr6c6[2]: r6c9{n8 n6} - hr6c6{n578 n569} ==> r6c7 ≠ 8
w[1]-cell-to-verti-ctr  ==> vr4c7 ≠ 1468
w[1]-cell-to-verti-ctr  ==> vr4c7 ≠ 2368
biv-chain-vr2c6[2]: r5c6{n6 n4} - vr2c6{n567 n459} ==> r4c6 ≠ 6
biv-chain-hr4c4[2]: hr4c4{n49 n67} - r4c6{n9 n7} ==> r4c5 ≠ 7
verti-sector-to-ctr  ==> vr3c5 ≠ 1247
whip-vr3c5[3]: r4c5{n6 n4} - r6c5{n4 n2} - vr3c5{n1346 .} ==> r5c5 ≠ 6
whip-vr3c5[3]: r4c5{n6 n4} - r6c5{n4 n2} - vr3c5{n1346 .} ==> r7c5 ≠ 6
hidden-single-in-magic-horiz-sector ==> r7c7 = 6
z-chain-vr3c5[3]: r7c5{n4 n2} - r6c5{n2 n6} - r4c5{n6 .} ==> vr3c5 ≠ 1256
t-whip-vr3c5[3]: vr3c5{n1346 n2345} - r4c5{n6 n4} - r6c5{n4 .} ==> r7c5 ≠ 2, r5c5 ≠ 2
hidden-single-in-magic-horiz-sector ==> r7c9 = 2
naked-single ==> r5c9 = 4
naked-single ==> r5c10 = 2
naked-single ==> vr3c10 = 27
naked-single ==> r4c10 = 7
naked-single ==> hr4c8 = 67
naked-single ==> r4c9 = 6
naked-single ==> r6c9 = 8
naked-single ==> hr6c6 = 578
naked-single ==> r6c7 = 7
w[1]-ctr-to-verti-sector  ==> r5c7 ≠ 3
w[1]-cell-to-horiz-ctr  ==> hr5c2 ≠ 12369
horiz-sector-to-ctr  ==> hr5c2 ≠ 23457
horiz-sector-to-ctr  ==> hr5c2 ≠ 12567
horiz-sector-to-ctr  ==> hr5c2 ≠ 12459
naked-single ==> hr5c2 = 13467
naked-single ==> r5c7 = 4
naked-single ==> r5c6 = 6
naked-single ==> r5c4 = 7
naked-single ==> r6c4 = 9
naked-single ==> vr2c6 = 567
naked-single ==> r4c6 = 7
naked-single ==> hr4c4 = 67
naked-single ==> r4c5 = 6
naked-single ==> vr3c5 = 1346
naked-single ==> r6c5 = 4
naked-single ==> r7c5 = 3
naked-single ==> r7c6 = 4
naked-single ==> r5c5 = 1
naked-single ==> r5c3 = 3
naked-single ==> r6c3 = 1
naked-single ==> vr6c6 = 467
naked-single ==> r8c6 = 7
naked-single ==> hr8c5 = 27
naked-single ==> r8c7 = 2
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = tW[11]

----------
--42--14--
-683-5261-
-47-67--67
--37164-42
--194-758-
-45-34612-
-32--72-52
--9586-596
---36--47-
Puzzle (B 6 . . B 5 . . B B / 17 . . . 14 . . . . B / 11 . . 13 . . B 13 . . / B 21 . . . . . 6 . . / B 14 . . . 20 . . . B / 9 . . 16 . . . . . B / 5 . . B 9 . . 7 . . / B 28 . . . . 20 . . . / B B 9 . . B 11 . . B // B 10 . . B 7 . . B B / 39 . . . . . . . . B / 5 . . 16 . . B 8 . . / B B 14 . . . . 14 . . / B 18 . . . 17 . . . B / 3 . . 19 . . . . B B / 10 . . B 6 . . 9 . . / B 42 . . . . . . . . / B B 9 . . B 8 . . B //) :
init-time = 1.19s, solve-time = 3.25s, total-time = 4.44s
nb-facts=<Fact-37163>
***********************************************************************************************
***  KakuRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


Exercise: try to solve this puzzle by pieces, using surface sums and then function "solve-partly-solbed-puzzle"
