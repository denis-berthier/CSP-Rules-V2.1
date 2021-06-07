



(solve Hidato topological 8 36
B B . . B . . 2 
. . B B . . B . 
. B . B . B . . 
B . . B . B B B 
B B B . B . . B 
. . B . B . B . 
. B . . B B . . 
22 . . B . . B B 
)

Using only Subsets[2], bivalue-chains and whips:
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules topological-model   *****
undecided numbers: (1 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 23 24 25 26 27 28 29 30 31 32 33 34 35 36)
start solution 1596607153.28388
entering BRT
Starting_init_links_with_<Fact-2792>
737 candidates, 18078 csp-links and 35838 links. Density = 13.21%
starting non trivial part of solution
Entering_level_W1_with_<Fact-110627>
whip[1]: n27{r8c6 .} ==> r3c7 ≠ 28
whip[1]: n28{r8c6 .} ==> r2c8 ≠ 29, r3c8 ≠ 29
whip[1]: n26{r8c5 .} ==> r6c6 ≠ 27
whip[1]: n25{r8c3 .} ==> r4c2 ≠ 26
whip[1]: n26{r8c5 .} ==> r3c1 ≠ 27
whip[1]: n27{r8c6 .} ==> r2c1 ≠ 28
whip[1]: n24{r8c3 .} ==> r5c4 ≠ 25
whip[1]: n25{r8c3 .} ==> r4c3 ≠ 26, r4c5 ≠ 26
whip[1]: n26{r8c5 .} ==> r3c3 ≠ 27, r3c5 ≠ 27, r4c2 ≠ 27, r5c6 ≠ 27
whip[1]: n27{r8c6 .} ==> r2c2 ≠ 28, r2c5 ≠ 28, r2c6 ≠ 28, r3c1 ≠ 28, r5c7 ≠ 28, r6c6 ≠ 28
whip[1]: n28{r8c6 .} ==> r1c3 ≠ 29, r1c4 ≠ 29, r1c6 ≠ 29, r1c7 ≠ 29, r2c1 ≠ 29, r3c7 ≠ 29
whip[1]: n29{r8c6 .} ==> r2c8 ≠ 30, r3c8 ≠ 30
whip[1]: n7{r6c8 .} ==> r6c2 ≠ 8
whip[1]: n8{r7c8 .} ==> r6c1 ≠ 9, r7c1 ≠ 9
whip[1]: n18{r8c5 .} ==> r6c6 ≠ 17
whip[1]: n17{r8c6 .} ==> r3c7 ≠ 16
whip[1]: n16{r8c6 .} ==> r2c8 ≠ 15, r3c8 ≠ 15
whip[1]: n6{r5c7 .} ==> r3c3 ≠ 7
whip[1]: n20{r8c3 .} ==> r5c4 ≠ 19
whip[1]: n19{r8c3 .} ==> r4c2 ≠ 18, r4c3 ≠ 18, r4c5 ≠ 18
whip[1]: n18{r8c5 .} ==> r3c1 ≠ 17, r3c3 ≠ 17, r3c5 ≠ 17, r4c2 ≠ 17, r5c6 ≠ 17
whip[1]: n17{r8c6 .} ==> r2c1 ≠ 16, r2c2 ≠ 16, r2c5 ≠ 16, r2c6 ≠ 16, r3c1 ≠ 16, r5c7 ≠ 16, r6c6 ≠ 16
whip[1]: n16{r8c6 .} ==> r1c3 ≠ 15, r1c4 ≠ 15, r1c6 ≠ 15, r1c7 ≠ 15, r2c1 ≠ 15, r3c7 ≠ 15
whip[1]: n15{r8c6 .} ==> r2c8 ≠ 14, r3c8 ≠ 14
whip[1]: n5{r4c5 .} ==> r5c7 ≠ 6
whip[1]: n6{r5c6 .} ==> r6c8 ≠ 7
whip[1]: n7{r6c6 .} ==> r7c8 ≠ 8
whip[1]: n4{r3c8 .} ==> r4c5 ≠ 5
whip[1]: n5{r3c8 .} ==> r5c4 ≠ 6, r5c6 ≠ 6
whip[1]: n6{r4c5 .} ==> r5c7 ≠ 7, r4c3 ≠ 7, r6c4 ≠ 7, r6c6 ≠ 7
whip[1]: n7{r5c6 .} ==> r7c7 ≠ 8, r3c3 ≠ 8, r4c2 ≠ 8, r6c8 ≠ 8, r7c3 ≠ 8, r7c4 ≠ 8
whip[1]: n8{r6c6 .} ==> r8c3 ≠ 9, r6c2 ≠ 9, r7c8 ≠ 9, r8c2 ≠ 9, r8c5 ≠ 9, r8c6 ≠ 9
whip[1]: n9{r7c7 .} ==> r7c1 ≠ 10, r6c1 ≠ 10
Entering_relation_bivalue_with_<Fact-110694>
Entering_level_S2_with_<Fact-110703>
hidden-pairs: {n21 n23}{r7c1 r8c2} ==> r8c2 ≠ 36, r8c2 ≠ 35, r8c2 ≠ 34, r8c2 ≠ 33, r8c2 ≠ 32, r8c2 ≠ 31, r8c2 ≠ 30, r8c2 ≠ 29, r8c2 ≠ 28, r8c2 ≠ 27, r8c2 ≠ 26, r8c2 ≠ 25, r8c2 ≠ 24, r8c2 ≠ 20, r8c2 ≠ 19, r8c2 ≠ 18, r8c2 ≠ 17, r8c2 ≠ 16, r8c2 ≠ 15, r8c2 ≠ 14, r8c2 ≠ 13, r8c2 ≠ 12, r8c2 ≠ 11, r8c2 ≠ 10, r7c1 ≠ 36, r7c1 ≠ 35, r7c1 ≠ 34, r7c1 ≠ 33, r7c1 ≠ 32, r7c1 ≠ 31, r7c1 ≠ 30, r7c1 ≠ 29, r7c1 ≠ 28, r7c1 ≠ 27, r7c1 ≠ 26, r7c1 ≠ 25, r7c1 ≠ 24, r7c1 ≠ 20, r7c1 ≠ 19, r7c1 ≠ 18, r7c1 ≠ 17, r7c1 ≠ 16, r7c1 ≠ 15, r7c1 ≠ 14, r7c1 ≠ 13, r7c1 ≠ 12, r7c1 ≠ 11
hidden-pairs: {n1 n3}{r1c7 r2c8} ==> r2c8 ≠ 36, r2c8 ≠ 35, r2c8 ≠ 34, r2c8 ≠ 33, r2c8 ≠ 32, r2c8 ≠ 31, r2c8 ≠ 13, r2c8 ≠ 12, r2c8 ≠ 11, r2c8 ≠ 10, r2c8 ≠ 9, r2c8 ≠ 8, r2c8 ≠ 7, r2c8 ≠ 6, r2c8 ≠ 5, r2c8 ≠ 4, r1c7 ≠ 36, r1c7 ≠ 35, r1c7 ≠ 34, r1c7 ≠ 33, r1c7 ≠ 32, r1c7 ≠ 31, r1c7 ≠ 30, r1c7 ≠ 14, r1c7 ≠ 13, r1c7 ≠ 12, r1c7 ≠ 11, r1c7 ≠ 10, r1c7 ≠ 9, r1c7 ≠ 8, r1c7 ≠ 7, r1c7 ≠ 6, r1c7 ≠ 5, r1c7 ≠ 4
Entering_level_BC2_with_<Fact-110720>
Entering_level_W2_with_<Fact-110738>
whip[2]: n36{r6c1 r6c2} - n34{r6c2 .} ==> r6c1 ≠ 35
whip[2]: n35{r8c6 r3c7} - n33{r3c7 .} ==> r3c8 ≠ 34
whip[2]: n34{r8c6 r3c7} - n32{r3c7 .} ==> r3c8 ≠ 33
whip[2]: n33{r8c6 r3c7} - n31{r3c7 .} ==> r3c8 ≠ 32
whip[2]: n34{r8c6 r2c6} - n32{r2c6 .} ==> r3c7 ≠ 33
whip[2]: n33{r8c6 r6c2} - n35{r6c2 .} ==> r6c1 ≠ 34
whip[2]: n34{r8c6 r6c2} - n32{r6c2 .} ==> r6c1 ≠ 33
whip[2]: n33{r8c6 r6c2} - n31{r6c2 .} ==> r6c1 ≠ 32
whip[2]: n32{r8c6 r2c6} - n30{r2c6 .} ==> r3c7 ≠ 31
whip[2]: n32{r8c6 r3c7} - n30{r3c7 .} ==> r3c8 ≠ 31
whip[2]: n33{r8c6 r2c6} - n31{r2c6 .} ==> r3c7 ≠ 32
whip[2]: n32{r8c6 r7c3} - n34{r7c3 .} ==> r6c2 ≠ 33
whip[2]: n33{r8c6 r7c3} - n35{r7c3 .} ==> r6c2 ≠ 34
whip[2]: n34{r8c6 r3c7} - n36{r3c7 .} ==> r3c8 ≠ 35
whip[2]: n33{r8c6 r2c6} - n35{r2c6 .} ==> r3c7 ≠ 34
whip[2]: n31{r8c6 r2c6} - n29{r2c6 .} ==> r3c7 ≠ 30
whip[2]: n30{r8c6 r6c2} - n32{r6c2 .} ==> r6c1 ≠ 31
whip[2]: n33{r8c6 r7c3} - n31{r7c3 .} ==> r6c2 ≠ 32
whip[2]: n31{r8c6 r6c2} - n29{r6c2 .} ==> r6c1 ≠ 30
whip[2]: n32{r8c6 r7c3} - n30{r7c3 .} ==> r6c2 ≠ 31
whip[2]: n30{r8c6 r6c2} - n28{r6c2 .} ==> r6c1 ≠ 29
whip[2]: n31{r8c6 r7c3} - n29{r7c3 .} ==> r6c2 ≠ 30
whip[2]: n29{r8c6 r6c2} - n27{r6c2 .} ==> r6c1 ≠ 28
whip[2]: n30{r8c6 r7c3} - n28{r7c3 .} ==> r6c2 ≠ 29
whip[2]: n28{r8c6 r6c2} - n26{r6c2 .} ==> r6c1 ≠ 27
whip[2]: n29{r8c6 r7c3} - n27{r7c3 .} ==> r6c2 ≠ 28
whip[2]: n27{r8c6 r6c2} - n25{r6c2 .} ==> r6c1 ≠ 26
whip[2]: n28{r8c6 r7c3} - n26{r7c3 .} ==> r6c2 ≠ 27
whip[2]: n26{r8c5 r6c2} - n24{r6c2 .} ==> r6c1 ≠ 25
whip[2]: n27{r8c6 r7c3} - n25{r7c3 .} ==> r6c2 ≠ 26
whip[2]: n20{r6c1 r6c2} - n18{r6c2 .} ==> r6c1 ≠ 19
whip[2]: n19{r8c3 r6c2} - n17{r6c2 .} ==> r6c1 ≠ 18
whip[2]: n18{r8c5 r6c2} - n16{r6c2 .} ==> r6c1 ≠ 17
whip[2]: n17{r8c6 r6c2} - n15{r6c2 .} ==> r6c1 ≠ 16
whip[2]: n16{r8c6 r6c2} - n14{r6c2 .} ==> r6c1 ≠ 15
whip[2]: n15{r8c6 r6c2} - n13{r6c2 .} ==> r6c1 ≠ 14
whip[2]: n14{r8c6 r3c7} - n12{r3c7 .} ==> r3c8 ≠ 13
whip[2]: n15{r8c6 r2c6} - n13{r2c6 .} ==> r3c7 ≠ 14
whip[2]: n14{r8c6 r7c3} - n16{r7c3 .} ==> r6c2 ≠ 15
whip[2]: n15{r8c6 r7c3} - n17{r7c3 .} ==> r6c2 ≠ 16
whip[2]: n16{r8c6 r7c3} - n18{r7c3 .} ==> r6c2 ≠ 17
whip[2]: n17{r8c6 r7c3} - n19{r7c3 .} ==> r6c2 ≠ 18
whip[2]: n13{r8c6 r3c7} - n11{r3c7 .} ==> r3c8 ≠ 12
whip[2]: n14{r8c6 r2c6} - n12{r2c6 .} ==> r3c7 ≠ 13
whip[2]: n12{r8c6 r3c7} - n10{r3c7 .} ==> r3c8 ≠ 11
whip[2]: n13{r8c6 r2c6} - n11{r2c6 .} ==> r3c7 ≠ 12
whip[2]: n12{r8c6 r6c2} - n14{r6c2 .} ==> r6c1 ≠ 13
whip[2]: n15{r8c6 r7c3} - n13{r7c3 .} ==> r6c2 ≠ 14
whip[2]: n13{r8c6 r6c2} - n11{r6c2 .} ==> r6c1 ≠ 12
whip[2]: n10{r6c2 r7c3} - n12{r7c3 .} ==> r6c2 ≠ 11
whip[2]: n14{r8c6 r7c3} - n12{r7c3 .} ==> r6c2 ≠ 13
whip[2]: n11{r8c6 r3c7} - n9{r3c7 .} ==> r3c8 ≠ 10
whip[2]: n12{r8c6 r2c6} - n10{r2c6 .} ==> r3c7 ≠ 11
whip[2]: n10{r8c6 r3c7} - n8{r3c7 .} ==> r3c8 ≠ 9
whip[2]: n11{r8c6 r2c6} - n9{r2c6 .} ==> r3c7 ≠ 10
whip[2]: n10{r8c6 r6c2} - n12{r6c2 .} ==> r6c1 ≠ 11
whip[2]: n13{r8c6 r7c3} - n11{r7c3 .} ==> r6c2 ≠ 12
whip[2]: n11{r8c6 r7c3} - n9{r7c3 .} ==> r6c2 ≠ 10
whip[2]: n9{r7c7 r3c7} - n7{r3c7 .} ==> r3c8 ≠ 8
whip[2]: n10{r8c6 r2c6} - n8{r2c6 .} ==> r3c7 ≠ 9
whip[2]: n8{r6c6 r3c7} - n6{r3c7 .} ==> r3c8 ≠ 7
whip[2]: n9{r7c7 r2c6} - n7{r2c6 .} ==> r3c7 ≠ 8
whip[2]: n7{r5c6 r3c7} - n5{r3c7 .} ==> r3c8 ≠ 6
whip[2]: n8{r6c6 r2c6} - n6{r2c6 .} ==> r3c7 ≠ 7
whip[2]: n6{r4c5 r3c7} - n4{r3c7 .} ==> r3c8 ≠ 5
whip[2]: n7{r5c6 r2c6} - n5{r2c6 .} ==> r3c7 ≠ 6
whip[2]: r3c8{n36 n4} - n5{r1c6 .} ==> r3c7 ≠ 36
whip[2]: r3c8{n4 n36} - n35{r1c3 .} ==> r3c7 ≠ 4
whip[2]: r3c7{n35 n5} - n6{r1c4 .} ==> r2c6 ≠ 35
whip[2]: r3c7{n5 n35} - n34{r1c3 .} ==> r2c6 ≠ 5
Entering_level_BC3_with_<Fact-111246>
Entering_level_W3_with_<Fact-111252>
whip[3]: r3c8{n36 n4} - n5{r3c5 r3c7} - n6{r1c4 .} ==> r2c6 ≠ 36
whip[3]: r3c7{n5 n35} - n34{r8c6 r2c6} - n4{r2c6 .} ==> r1c6 ≠ 5
whip[3]: r3c7{n5 n35} - n34{r8c6 r2c6} - n4{r2c6 .} ==> r3c5 ≠ 5
whip[1]: n5{r3c7 .} ==> r2c5 ≠ 6, r4c5 ≠ 6
whip[1]: n6{r3c5 .} ==> r5c4 ≠ 7, r1c4 ≠ 7, r5c6 ≠ 7
whip[1]: n7{r4c5 .} ==> r5c7 ≠ 8, r1c3 ≠ 8, r4c3 ≠ 8, r6c4 ≠ 8, r6c6 ≠ 8
whip[1]: n8{r5c6 .} ==> r7c7 ≠ 9, r2c2 ≠ 9, r4c2 ≠ 9, r6c8 ≠ 9, r7c3 ≠ 9, r7c4 ≠ 9
whip[1]: n9{r6c6 .} ==> r8c3 ≠ 10, r7c8 ≠ 10, r8c5 ≠ 10, r8c6 ≠ 10
whip[3]: n9{r6c6 r3c1} - n8{r1c4 r2c2} - n11{r2c2 .} ==> r2c1 ≠ 10
whip[3]: n5{r3c7 r2c5} - n7{r2c5 r2c6} - n4{r2c6 .} ==> r1c6 ≠ 6
whip[3]: n6{r2c6 r3c5} - r3c7{n5 n35} - n34{r1c3 .} ==> r2c6 ≠ 7
whip[3]: r3c8{n4 n36} - n35{r8c6 r3c7} - n34{r1c3 .} ==> r2c6 ≠ 4
whip[3]: r8c2{n23 n21} - r6c1{n20 n36} - n35{r1c3 .} ==> r6c2 ≠ 24
whip[3]: r8c2{n21 n23} - r6c1{n24 n36} - n35{r1c3 .} ==> r6c2 ≠ 20
Entering_level_BC4_with_<Fact-112075>
Entering_level_W4_with_<Fact-112089>
whip[4]: n34{r8c6 r7c3} - n36{r7c3 r6c1} - n24{r6c1 r8c3} - n20{r8c3 .} ==> r6c2 ≠ 35
whip[1]: n35{r8c6 .} ==> r6c1 ≠ 36
whip[3]: r6c1{n20 n24} - n25{r6c4 r6c2} - n26{r5c4 .} ==> r7c3 ≠ 20
whip[1]: n20{r8c3 .} ==> r6c4 ≠ 19, r8c3 ≠ 19
whip[1]: n19{r7c4 .} ==> r5c4 ≠ 18
whip[1]: n18{r8c5 .} ==> r4c3 ≠ 17, r4c5 ≠ 17
whip[1]: n17{r8c6 .} ==> r3c3 ≠ 16, r3c5 ≠ 16, r4c2 ≠ 16, r5c6 ≠ 16
whip[1]: n16{r8c6 .} ==> r2c2 ≠ 15, r2c5 ≠ 15, r2c6 ≠ 15, r3c1 ≠ 15, r5c7 ≠ 15
whip[1]: n15{r8c6 .} ==> r1c3 ≠ 14, r1c4 ≠ 14, r1c6 ≠ 14, r2c1 ≠ 14
whip[2]: n20{r8c3 r6c1} - n19{r7c3 .} ==> r8c3 ≠ 18
whip[3]: r6c1{n24 n20} - n19{r7c4 r6c2} - n18{r6c4 .} ==> r7c3 ≠ 25
whip[3]: n25{r8c3 r7c4} - n24{r6c1 r7c3} - n27{r7c3 .} ==> r8c3 ≠ 26
whip[3]: r6c1{n20 n24} - n25{r8c3 r6c2} - n26{r5c4 .} ==> r7c3 ≠ 19
whip[1]: n19{r7c4 .} ==> r7c4 ≠ 18
whip[1]: n18{r8c5 .} ==> r8c5 ≠ 17
whip[1]: n17{r8c6 .} ==> r8c6 ≠ 16
whip[1]: n16{r8c5 .} ==> r7c7 ≠ 15
whip[3]: n20{r8c3 r6c1} - n24{r6c1 r7c3} - n18{r7c3 .} ==> r8c3 ≠ 17
whip[3]: n19{r6c2 r7c4} - r6c1{n20 n24} - n25{r6c4 .} ==> r6c2 ≠ 36
whip[3]: r6c2{n25 n19} - n18{r6c4 r7c3} - n24{r7c3 .} ==> r8c3 ≠ 25
whip[3]: n9{r6c6 r6c4} - n25{r6c4 r6c2} - n19{r6c2 .} ==> r7c4 ≠ 10
whip[1]: n10{r7c7 .} ==> r8c5 ≠ 11
whip[3]: n20{r8c3 r6c1} - n24{r6c1 r7c3} - n10{r7c3 .} ==> r8c3 ≠ 11
whip[3]: r6c2{n25 n19} - n18{r6c4 r7c3} - n24{r7c3 .} ==> r6c4 ≠ 25
whip[1]: n25{r7c4 .} ==> r5c4 ≠ 26, r7c4 ≠ 26
whip[1]: n26{r8c5 .} ==> r4c3 ≠ 27, r4c5 ≠ 27, r8c5 ≠ 27
whip[1]: n27{r8c6 .} ==> r3c3 ≠ 28, r3c5 ≠ 28, r4c2 ≠ 28, r5c6 ≠ 28, r8c6 ≠ 28
whip[1]: n28{r8c5 .} ==> r7c7 ≠ 29, r2c2 ≠ 29, r2c5 ≠ 29, r2c6 ≠ 29, r3c1 ≠ 29, r5c7 ≠ 29
whip[1]: n29{r8c6 .} ==> r1c3 ≠ 30, r1c4 ≠ 30, r1c6 ≠ 30, r2c1 ≠ 30
hidden-pairs: {n19 n25}{r6c2 r7c4} ==> r7c4 ≠ 36, r7c4 ≠ 35, r7c4 ≠ 34, r7c4 ≠ 33, r7c4 ≠ 32, r7c4 ≠ 31, r7c4 ≠ 30, r7c4 ≠ 29, r7c4 ≠ 28, r7c4 ≠ 27, r7c4 ≠ 17, r7c4 ≠ 16, r7c4 ≠ 15, r7c4 ≠ 14, r7c4 ≠ 13, r7c4 ≠ 12, r7c4 ≠ 11
whip[1]: n16{r8c5 .} ==> r8c5 ≠ 15
whip[1]: n15{r8c6 .} ==> r8c6 ≠ 14
whip[1]: n14{r8c5 .} ==> r8c5 ≠ 13
whip[1]: n28{r8c5 .} ==> r8c5 ≠ 29
whip[1]: n29{r8c6 .} ==> r8c6 ≠ 30
whip[1]: n30{r8c5 .} ==> r8c5 ≠ 31
whip[2]: n11{r8c6 r7c7} - n13{r7c7 .} ==> r8c6 ≠ 12
whip[2]: n9{r6c6 r6c4} - n11{r6c4 .} ==> r7c3 ≠ 10
whip[2]: n8{r1c4 r5c4} - n10{r5c4 .} ==> r6c4 ≠ 9
whip[2]: n31{r8c6 r7c3} - n29{r7c3 .} ==> r8c3 ≠ 30
whip[2]: n30{r8c5 r7c3} - n28{r7c3 .} ==> r8c3 ≠ 29
whip[2]: n29{r8c6 r7c3} - n27{r7c3 .} ==> r8c3 ≠ 28
whip[2]: n30{r8c5 r6c4} - n28{r6c4 .} ==> r7c3 ≠ 29
whip[2]: n29{r7c8 r8c6} - n31{r8c6 .} ==> r8c5 ≠ 30
whip[2]: n28{r8c5 r6c4} - n26{r6c4 .} ==> r7c3 ≠ 27
whip[2]: n29{r8c6 r5c4} - n27{r5c4 .} ==> r6c4 ≠ 28
whip[2]: n27{r8c3 r8c6} - n26{r6c4 .} ==> r8c5 ≠ 28
whip[2]: n30{r7c8 r7c7} - n28{r7c7 .} ==> r8c6 ≠ 29
whip[2]: n31{r8c6 r7c3} - n33{r7c3 .} ==> r8c3 ≠ 32
whip[2]: n30{r7c8 r6c4} - n32{r6c4 .} ==> r7c3 ≠ 31
whip[2]: n29{r7c8 r5c4} - n31{r5c4 .} ==> r6c4 ≠ 30
whip[2]: n30{r7c8 r7c3} - n32{r7c3 .} ==> r8c3 ≠ 31
whip[2]: n29{r7c8 r6c4} - n31{r6c4 .} ==> r7c3 ≠ 30
whip[2]: n31{r7c8 r8c6} - n33{r8c6 .} ==> r8c5 ≠ 32
whip[2]: n30{r7c8 r7c7} - n32{r7c7 .} ==> r8c6 ≠ 31
whip[2]: n32{r8c6 r7c3} - n34{r7c3 .} ==> r8c3 ≠ 33
whip[2]: n31{r7c8 r6c4} - n33{r6c4 .} ==> r7c3 ≠ 32
whip[2]: n30{r7c8 r5c4} - n32{r5c4 .} ==> r6c4 ≠ 31
whip[2]: n32{r7c8 r8c6} - n34{r8c6 .} ==> r8c5 ≠ 33
whip[2]: n31{r7c8 r7c7} - n33{r7c7 .} ==> r8c6 ≠ 32
whip[2]: n33{r8c6 r7c3} - n35{r7c3 .} ==> r8c3 ≠ 34
whip[2]: n32{r6c8 r6c4} - n34{r6c4 .} ==> r7c3 ≠ 33
whip[2]: n31{r7c8 r5c4} - n33{r5c4 .} ==> r6c4 ≠ 32
whip[2]: n33{r7c8 r8c6} - n35{r8c6 .} ==> r8c5 ≠ 34
whip[2]: n32{r7c8 r7c7} - n34{r7c7 .} ==> r8c6 ≠ 33
whip[2]: n34{r8c6 r7c3} - n36{r7c3 .} ==> r8c3 ≠ 35
whip[2]: n33{r6c8 r6c4} - n35{r6c4 .} ==> r7c3 ≠ 34
whip[2]: n32{r7c8 r5c4} - n34{r5c4 .} ==> r6c4 ≠ 33
whip[2]: n34{r7c8 r8c6} - n36{r8c6 .} ==> r8c5 ≠ 35
whip[2]: n33{r7c8 r7c7} - n35{r7c7 .} ==> r8c6 ≠ 34
whip[2]: n13{r8c6 r7c3} - n11{r7c3 .} ==> r8c3 ≠ 12
whip[2]: n10{r7c7 r6c4} - n12{r6c4 .} ==> r7c3 ≠ 11
whip[2]: n9{r6c6 r5c4} - n11{r5c4 .} ==> r6c4 ≠ 10
whip[2]: n11{r7c8 r8c6} - n13{r8c6 .} ==> r8c5 ≠ 12
whip[2]: n10{r1c6 r7c7} - n12{r7c7 .} ==> r8c6 ≠ 11
whip[2]: n13{r8c6 r7c3} - n15{r7c3 .} ==> r8c3 ≠ 14
whip[2]: n12{r7c8 r6c4} - n14{r6c4 .} ==> r7c3 ≠ 13
whip[2]: n11{r7c8 r5c4} - n13{r5c4 .} ==> r6c4 ≠ 12
whip[2]: n12{r7c8 r7c3} - n14{r7c3 .} ==> r8c3 ≠ 13
whip[2]: n11{r7c8 r6c4} - n13{r6c4 .} ==> r7c3 ≠ 12
whip[2]: n10{r7c7 r5c4} - n12{r5c4 .} ==> r6c4 ≠ 11
whip[2]: n13{r7c8 r8c6} - n15{r8c6 .} ==> r8c5 ≠ 14
whip[2]: n12{r7c8 r7c7} - n14{r7c7 .} ==> r8c6 ≠ 13
whip[2]: n15{r8c6 r7c3} - n17{r7c3 .} ==> r8c3 ≠ 16
whip[2]: n18{r8c5 r6c4} - n16{r6c4 .} ==> r7c3 ≠ 17
whip[2]: n14{r7c8 r6c4} - n16{r6c4 .} ==> r7c3 ≠ 15
whip[2]: n13{r7c8 r5c4} - n15{r5c4 .} ==> r6c4 ≠ 14
whip[2]: n14{r7c8 r7c3} - n16{r7c3 .} ==> r8c3 ≠ 15
whip[2]: n13{r7c8 r6c4} - n15{r6c4 .} ==> r7c3 ≠ 14
whip[2]: n12{r7c8 r5c4} - n14{r5c4 .} ==> r6c4 ≠ 13
whip[2]: n15{r8c6 r5c4} - n17{r5c4 .} ==> r6c4 ≠ 16
whip[2]: n15{r8c6 r6c4} - n17{r6c4 .} ==> r7c3 ≠ 16
whip[2]: n14{r7c8 r5c4} - n16{r5c4 .} ==> r6c4 ≠ 15
whip[2]: n15{r7c8 r8c6} - n17{r8c6 .} ==> r8c5 ≠ 16
whip[2]: n14{r7c8 r7c7} - n16{r7c7 .} ==> r8c6 ≠ 15
whip[2]: n28{r7c7 r7c3} - n26{r7c3 .} ==> r8c3 ≠ 27
whip[2]: n29{r6c8 r6c4} - n27{r6c4 .} ==> r7c3 ≠ 28
whip[2]: n30{r7c8 r5c4} - n28{r5c4 .} ==> r6c4 ≠ 29
whip[3]: n20{r8c3 r6c1} - n24{r6c1 r7c3} - n35{r7c3 .} ==> r8c3 ≠ 36
naked-pairs: {r6c1 r8c3}{n20 n24} ==> r7c3 ≠ 24
whip[2]: n34{r6c8 r6c4} - n36{r6c4 .} ==> r7c3 ≠ 35
whip[2]: n33{r7c8 r5c4} - n35{r5c4 .} ==> r6c4 ≠ 34
whip[3]: n35{r8c6 r5c4} - n17{r5c4 r8c6} - n27{r8c6 .} ==> r6c4 ≠ 36
whip[3]: n34{r7c8 r5c4} - n27{r5c4 r8c6} - n17{r8c6 .} ==> r6c4 ≠ 35
whip[1]: n35{r8c6 .} ==> r7c3 ≠ 36
whip[2]: r7c3{n26 n18} - n17{r5c4 .} ==> r6c4 ≠ 26
whip[1]: n26{r8c5 .} ==> r5c4 ≠ 27
whip[1]: n27{r8c6 .} ==> r4c3 ≠ 28, r4c5 ≠ 28
whip[1]: n28{r7c7 .} ==> r3c3 ≠ 29, r3c5 ≠ 29, r4c2 ≠ 29, r5c4 ≠ 29, r5c6 ≠ 29
whip[1]: n29{r7c8 .} ==> r2c2 ≠ 30, r2c5 ≠ 30, r2c6 ≠ 30, r3c1 ≠ 30, r4c3 ≠ 30, r4c5 ≠ 30, r6c6 ≠ 30
whip[1]: n30{r7c8 .} ==> r1c3 ≠ 31, r1c4 ≠ 31, r1c6 ≠ 31, r2c1 ≠ 31, r3c5 ≠ 31, r5c4 ≠ 31
biv-chain[2]: r7c3{n18 n26} - n27{r8c6 r6c4} ==> r6c4 ≠ 18
whip[1]: n18{r8c5 .} ==> r5c4 ≠ 17
whip[1]: n17{r8c6 .} ==> r4c3 ≠ 16, r4c5 ≠ 16
whip[1]: n16{r7c7 .} ==> r3c3 ≠ 15, r3c5 ≠ 15, r4c2 ≠ 15, r5c4 ≠ 15, r5c6 ≠ 15
whip[1]: n15{r7c8 .} ==> r2c2 ≠ 14, r2c5 ≠ 14, r2c6 ≠ 14, r3c1 ≠ 14, r4c3 ≠ 14, r4c5 ≠ 14, r6c6 ≠ 14
whip[1]: n14{r7c8 .} ==> r1c3 ≠ 13, r1c4 ≠ 13, r1c6 ≠ 13, r2c1 ≠ 13, r3c5 ≠ 13, r5c4 ≠ 13
hidden-pairs: {n16 n28}{r5c4 r7c7} ==> r7c7 ≠ 36, r7c7 ≠ 35, r7c7 ≠ 34, r7c7 ≠ 33, r7c7 ≠ 32, r7c7 ≠ 31, r7c7 ≠ 30, r7c7 ≠ 14, r7c7 ≠ 13, r7c7 ≠ 12, r7c7 ≠ 11, r7c7 ≠ 10, r5c4 ≠ 36, r5c4 ≠ 35, r5c4 ≠ 34, r5c4 ≠ 33, r5c4 ≠ 32, r5c4 ≠ 30, r5c4 ≠ 14, r5c4 ≠ 12, r5c4 ≠ 11, r5c4 ≠ 10, r5c4 ≠ 9, r5c4 ≠ 8
whip[1]: n8{r5c6 .} ==> r4c3 ≠ 9
whip[1]: n9{r6c6 .} ==> r3c3 ≠ 10
whip[1]: n34{r7c8 .} ==> r8c6 ≠ 35
whip[1]: n35{r7c8 .} ==> r8c5 ≠ 36, r8c6 ≠ 36
whip[2]: n15{r7c8 r6c8} - n13{r6c8 .} ==> r7c8 ≠ 14
whip[2]: n29{r7c8 r6c8} - n31{r6c8 .} ==> r7c8 ≠ 30
whip[2]: n10{r6c6 r6c8} - n12{r6c8 .} ==> r7c8 ≠ 11
whip[2]: n9{r6c6 r5c7} - n11{r5c7 .} ==> r6c8 ≠ 10
whip[2]: n11{r6c6 r6c8} - n13{r6c8 .} ==> r7c8 ≠ 12
whip[2]: n14{r6c8 r5c7} - n12{r5c7 .} ==> r6c8 ≠ 13
whip[2]: n10{r6c6 r5c7} - n12{r5c7 .} ==> r6c8 ≠ 11
whip[2]: n12{r6c6 r6c8} - n14{r6c8 .} ==> r7c8 ≠ 13
whip[2]: n11{r6c6 r5c7} - n13{r5c7 .} ==> r6c8 ≠ 12
whip[2]: n30{r5c7 r6c8} - n29{r4c3 .} ==> r7c8 ≠ 31
whip[2]: n32{r7c8 r6c8} - n34{r6c8 .} ==> r7c8 ≠ 33
whip[2]: n31{r6c8 r5c7} - n33{r5c7 .} ==> r6c8 ≠ 32
whip[2]: n33{r6c6 r6c8} - n35{r6c8 .} ==> r7c8 ≠ 34
whip[2]: n34{r6c6 r6c8} - n36{r6c8 .} ==> r7c8 ≠ 35
whip[2]: n33{r6c8 r5c7} - n35{r5c7 .} ==> r6c8 ≠ 34
whip[2]: n31{r6c6 r6c8} - n33{r6c8 .} ==> r7c8 ≠ 32
whip[2]: n30{r6c8 r5c7} - n32{r5c7 .} ==> r6c8 ≠ 31
whip[2]: n34{r6c6 r5c7} - n32{r5c7 .} ==> r6c8 ≠ 33
whip[3]: n5{r2c5 r3c7} - n6{r1c4 r2c6} - n13{r2c6 .} ==> r2c5 ≠ 12
whip[3]: n5{r2c5 r3c7} - n6{r1c4 r2c6} - n31{r2c6 .} ==> r2c5 ≠ 32
whip[3]: n32{r6c6 r2c6} - n31{r2c2 r2c5} - n34{r2c5 .} ==> r1c6 ≠ 33
whip[3]: n31{r6c6 r2c5} - n33{r2c5 r3c5} - n30{r3c5 .} ==> r2c6 ≠ 32
whip[3]: n12{r6c6 r2c6} - n13{r2c2 r2c5} - n10{r2c5 .} ==> r1c6 ≠ 11
whip[3]: n13{r6c6 r2c5} - n11{r2c5 r3c5} - n14{r3c5 .} ==> r2c6 ≠ 12
whip[3]: r5c4{n16 n28} - r7c8{n29 n36} - n35{r1c3 .} ==> r6c8 ≠ 15
whip[3]: r5c4{n28 n16} - r7c8{n15 n36} - n35{r1c3 .} ==> r6c8 ≠ 29
whip[3]: n8{r4c5 r5c6} - n10{r5c6 r6c6} - n11{r1c3 .} ==> r5c7 ≠ 9
whip[3]: n9{r6c6 r5c6} - n11{r5c6 r5c7} - n12{r1c3 .} ==> r6c6 ≠ 10
whip[3]: n10{r5c7 r5c6} - n12{r5c6 r6c6} - n13{r2c2 .} ==> r5c7 ≠ 11
whip[3]: n8{r4c5 r5c6} - n10{r5c6 r5c7} - n11{r1c3 .} ==> r6c6 ≠ 9
whip[2]: n7{r1c3 r4c5} - n9{r4c5 .} ==> r5c6 ≠ 8
whip[2]: n6{r2c6 r3c5} - n8{r3c5 .} ==> r4c5 ≠ 7
whip[2]: n5{r3c7 r2c5} - n7{r2c5 .} ==> r3c5 ≠ 6
whip[3]: n9{r4c5 r5c6} - n11{r5c6 r6c6} - n12{r1c3 .} ==> r5c7 ≠ 10
whip[2]: n8{r3c5 r4c5} - n10{r4c5 .} ==> r5c6 ≠ 9
whip[2]: n7{r2c5 r3c5} - n9{r3c5 .} ==> r4c5 ≠ 8
whip[3]: n10{r4c5 r5c6} - n12{r5c6 r5c7} - n13{r2c2 .} ==> r6c6 ≠ 11
whip[2]: n9{r3c5 r4c5} - n11{r4c5 .} ==> r5c6 ≠ 10
whip[2]: n8{r2c6 r3c5} - n10{r3c5 .} ==> r4c5 ≠ 9
whip[3]: n11{r4c5 r5c6} - n13{r5c6 r6c6} - n14{r3c3 .} ==> r5c7 ≠ 12
whip[3]: n12{r6c6 r5c6} - n14{r5c6 r5c7} - n15{r4c3 .} ==> r6c6 ≠ 13
whip[3]: n6{r2c6 r1c4} - r3c7{n5 n35} - n34{r1c3 .} ==> r2c6 ≠ 33
whip[2]: n35{r4c5 r2c5} - n33{r2c5 .} ==> r1c6 ≠ 34
whip[3]: n6{r2c6 r1c4} - r3c7{n5 n35} - n34{r1c3 .} ==> r2c6 ≠ 31
whip[2]: n33{r6c6 r2c5} - n31{r2c5 .} ==> r1c6 ≠ 32
whip[3]: n6{r2c6 r1c4} - r3c7{n5 n35} - n34{r1c3 .} ==> r2c6 ≠ 13
whip[3]: n6{r2c6 r1c4} - r3c7{n5 n35} - n34{r1c3 .} ==> r2c6 ≠ 11
whip[2]: n13{r5c7 r2c5} - n11{r2c5 .} ==> r1c6 ≠ 12
whip[3]: n6{r2c6 r1c4} - r3c7{n5 n35} - n34{r1c3 .} ==> r2c6 ≠ 10
whip[3]: n6{r2c6 r1c4} - r3c7{n5 n35} - n34{r1c3 .} ==> r2c6 ≠ 9
whip[2]: n7{r3c5 r2c5} - n9{r2c5 .} ==> r3c5 ≠ 8, r1c6 ≠ 8
whip[2]: n11{r5c6 r2c5} - n9{r2c5 .} ==> r1c6 ≠ 10
whip[3]: n6{r2c6 r1c4} - n7{r1c6 r2c5} - n5{r2c5 .} ==> r2c6 ≠ 8
whip[2]: n10{r4c5 r2c5} - n8{r2c5 .} ==> r1c6 ≠ 9
whip[3]: n8{r2c5 r1c4} - n7{r1c6 r1c3} - n6{r2c6 .} ==> r2c5 ≠ 9
whip[1]: n9{r3c5 .} ==> r3c5 ≠ 10
whip[1]: n10{r4c5 .} ==> r4c5 ≠ 11
whip[1]: n11{r5c6 .} ==> r5c6 ≠ 12
whip[3]: n9{r3c5 r1c3} - n8{r2c5 r2c2} - n7{r1c6 .} ==> r1c4 ≠ 10
whip[1]: n10{r4c5 .} ==> r2c5 ≠ 11
whip[1]: n11{r5c6 .} ==> r3c5 ≠ 12
whip[1]: n12{r6c6 .} ==> r4c5 ≠ 13
whip[3]: n13{r5c6 r5c7} - n12{r1c3 r6c6} - n11{r1c3 .} ==> r5c6 ≠ 14
whip[4]: n36{r4c5 r2c5} - r3c7{n35 n5} - n6{r1c4 r2c6} - n34{r2c6 .} ==> r1c6 ≠ 35
whip[3]: r3c7{n35 n5} - r1c6{n4 n7} - n8{r1c4 .} ==> r2c5 ≠ 36
whip[3]: n5{r2c5 r3c7} - r1c6{n4 n36} - n35{r1c3 .} ==> r2c5 ≠ 7
whip[2]: n6{r1c4 r2c6} - n7{r1c3 .} ==> r1c4 ≠ 8
whip[2]: n10{r4c5 r2c2} - n8{r2c2 .} ==> r1c3 ≠ 9
whip[2]: n8{r2c5 r2c2} - n9{r1c4 .} ==> r2c5 ≠ 10
whip[2]: n12{r6c6 r4c5} - n10{r4c5 .} ==> r3c5 ≠ 11
whip[2]: n13{r5c7 r5c6} - n11{r5c6 .} ==> r4c5 ≠ 12
whip[2]: n12{r6c6 r1c3} - n10{r1c3 .} ==> r1c4 ≠ 11
whip[2]: n13{r5c7 r2c2} - n11{r2c2 .} ==> r1c3 ≠ 12
whip[2]: n12{r4c3 r6c6} - n11{r1c3 .} ==> r5c6 ≠ 13
whip[1]: n13{r5c7 .} ==> r5c7 ≠ 14
whip[1]: n14{r6c8 .} ==> r6c6 ≠ 15
whip[2]: n8{r2c2 r2c5} - n9{r2c1 .} ==> r2c2 ≠ 10
whip[1]: n10{r4c5 .} ==> r1c3 ≠ 11
whip[1]: n11{r5c6 .} ==> r1c4 ≠ 12
whip[1]: n12{r6c6 .} ==> r2c5 ≠ 13
whip[1]: n13{r5c7 .} ==> r3c5 ≠ 14
whip[1]: n14{r6c8 .} ==> r4c5 ≠ 15
whip[2]: n15{r4c3 r7c8} - n14{r3c3 .} ==> r4c3 ≠ 13
whip[2]: n10{r4c5 r3c1} - n9{r1c4 .} ==> r2c1 ≠ 11
whip[3]: n15{r4c3 r7c8} - n14{r3c3 r6c8} - n13{r2c2 .} ==> r4c3 ≠ 12
whip[3]: n8{r2c5 r2c2} - n7{r1c6 r1c3} - r2c6{n6 .} ==> r2c5 ≠ 34
whip[2]: n32{r6c6 r1c3} - n34{r1c3 .} ==> r1c4 ≠ 33
whip[2]: n31{r6c6 r2c2} - n33{r2c2 .} ==> r1c3 ≠ 32
whip[2]: n36{r7c8 r1c3} - n34{r1c3 .} ==> r1c4 ≠ 35
whip[2]: n35{r6c8 r2c2} - n33{r2c2 .} ==> r1c3 ≠ 34
whip[4]: n8{r2c5 r2c2} - n7{r1c6 r1c3} - n6{r2c6 r1c4} - n5{r3c7 .} ==> r2c5 ≠ 31
whip[1]: n31{r6c6 .} ==> r1c4 ≠ 32
whip[2]: n29{r7c8 r4c5} - n31{r4c5 .} ==> r3c5 ≠ 30
whip[4]: r2c6{n34 n6} - r1c4{n6 n9} - n10{r3c1 r1c3} - n11{r3c1 .} ==> r2c2 ≠ 35
whip[1]: n35{r6c8 .} ==> r1c3 ≠ 36
whip[4]: n32{r6c6 r2c2} - n34{r2c2 r1c4} - n35{r6c8 r2c5} - n8{r2c5 .} ==> r1c3 ≠ 33
whip[4]: n33{r6c6 r2c5} - n35{r2c5 r1c3} - n36{r1c6 r2c2} - n8{r2c2 .} ==> r1c4 ≠ 34
whip[4]: r3c7{n35 n5} - r1c4{n6 n9} - n8{r2c2 r2c5} - n35{r2c5 .} ==> r1c6 ≠ 36
biv-chain[3]: n5{r2c5 r3c7} - r1c6{n4 n7} - n8{r2c2 r2c5} ==> r2c5 ≠ 33, r2c5 ≠ 35
whip[2]: n31{r6c6 r4c5} - n33{r4c5 .} ==> r3c5 ≠ 32
whip[2]: n30{r6c8 r5c6} - n32{r5c6 .} ==> r4c5 ≠ 31
whip[2]: n35{r6c8 r4c5} - n33{r4c5 .} ==> r3c5 ≠ 34
whip[2]: n32{r6c6 r5c6} - n34{r5c6 .} ==> r4c5 ≠ 33
biv-chain[3]: r1c6{n7 n4} - n5{r3c7 r2c5} - n8{r2c5 r2c2} ==> r3c5 ≠ 7
whip[3]: n36{r7c8 r4c5} - n34{r4c5 r2c6} - n33{r6c6 .} ==> r3c5 ≠ 35
whip[3]: n35{r6c8 r5c6} - n33{r5c6 r3c5} - n32{r2c1 .} ==> r4c5 ≠ 34
whip[4]: r2c6{n34 n6} - r1c3{n7 n10} - n35{r1c3 r3c1} - r3c5{n36 .} ==> r2c1 ≠ 34
whip[4]: n34{r6c6 r5c7} - r3c5{n33 n9} - n8{r2c2 r2c5} - r1c3{n7 .} ==> r6c8 ≠ 35
whip[1]: n35{r6c6 .} ==> r7c8 ≠ 36
biv-chain[2]: r7c8{n29 n15} - r5c4{n16 n28} ==> r6c6 ≠ 29
whip[1]: n29{r7c8 .} ==> r5c7 ≠ 30
whip[1]: n30{r6c8 .} ==> r5c6 ≠ 31
whip[1]: n31{r6c6 .} ==> r4c5 ≠ 32
whip[1]: n32{r6c6 .} ==> r3c5 ≠ 33
whip[1]: n33{r6c6 .} ==> r2c6 ≠ 34
naked-single: r2c6 = 6
hidden-single: r1c6 = 7
hidden-single: r3c8 = 4
hidden-single: r2c8 = 3
hidden-single: r1c7 = 1
hidden-single: r3c7 = 5
hidden-single: r2c5 = 8
whip[1]: n9{r3c5 .} ==> r3c1 ≠ 10, r4c2 ≠ 10, r4c3 ≠ 10
whip[1]: n10{r4c5 .} ==> r3c1 ≠ 11, r3c3 ≠ 11, r4c2 ≠ 11, r4c3 ≠ 11
whip[1]: n11{r5c6 .} ==> r2c2 ≠ 12, r4c2 ≠ 12
whip[1]: n12{r6c6 .} ==> r3c3 ≠ 13
naked-pairs: {r1c4 r3c5}{n9 n36} ==> r6c8 ≠ 36, r6c6 ≠ 36, r5c7 ≠ 36, r5c6 ≠ 36, r4c5 ≠ 36, r4c3 ≠ 36, r4c2 ≠ 36, r3c3 ≠ 36, r3c1 ≠ 36, r2c2 ≠ 36, r2c1 ≠ 36
whip[1]: n36{r3c5 .} ==> r2c1 ≠ 35, r3c1 ≠ 35, r3c3 ≠ 35, r4c2 ≠ 35, r4c3 ≠ 35, r5c6 ≠ 35, r5c7 ≠ 35, r6c6 ≠ 35
whip[1]: n35{r4c5 .} ==> r5c7 ≠ 34, r3c1 ≠ 34, r3c3 ≠ 34, r4c2 ≠ 34, r4c3 ≠ 34, r6c6 ≠ 34
whip[1]: n34{r5c6 .} ==> r5c6 ≠ 33, r2c2 ≠ 33, r4c2 ≠ 33, r4c3 ≠ 33
whip[1]: n33{r6c6 .} ==> r3c3 ≠ 32
hidden-pairs: {n11 n34}{r2c2 r5c6} ==> r5c6 ≠ 32, r5c6 ≠ 30, r2c2 ≠ 32, r2c2 ≠ 31, r2c2 ≠ 13
whip[1]: n30{r6c8 .} ==> r4c5 ≠ 29, r6c6 ≠ 31
whip[1]: n31{r5c7 .} ==> r5c7 ≠ 32
whip[1]: n32{r6c6 .} ==> r6c6 ≠ 33
hidden-pairs: {n15 n29}{r4c3 r7c8} ==> r4c3 ≠ 32, r4c3 ≠ 31
whip[2]: n30{r6c8 r4c2} - n32{r4c2 .} ==> r3c3 ≠ 31
whip[2]: n31{r5c7 r3c1} - n33{r3c1 .} ==> r2c1 ≠ 32
biv-chain[2]: r2c1{n33 n12} - r5c6{n11 n34} ==> r3c1 ≠ 33, r3c3 ≠ 33
whip[1]: n33{r5c7 .} ==> r4c2 ≠ 32
whip[1]: n32{r6c6 .} ==> r3c1 ≠ 31
whip[1]: n31{r5c7 .} ==> r4c2 ≠ 30
biv-chain[2]: n33{r5c7 r2c1} - n32{r6c6 r3c1} ==> r5c7 ≠ 31
hidden-single: r4c2 = 31
hidden-single: r3c1 = 32
hidden-single: r5c7 = 13
hidden-single: r6c6 = 12
hidden-single: r5c6 = 11
hidden-single: r4c5 = 10
hidden-single: r3c5 = 9
hidden-single: r1c4 = 36
hidden-single: r1c3 = 35
hidden-single: r2c2 = 34
hidden-single: r6c8 = 14
hidden-single: r7c8 = 15
hidden-single: r7c7 = 16
hidden-single: r8c6 = 17
hidden-single: r8c5 = 18
hidden-single: r7c4 = 19
hidden-single: r8c3 = 20
hidden-single: r8c2 = 21
hidden-single: r7c1 = 23
hidden-single: r6c1 = 24
hidden-single: r6c2 = 25
hidden-single: r7c3 = 26
hidden-single: r6c4 = 27
hidden-single: r5c4 = 28
hidden-single: r4c3 = 29
hidden-single: r2c1 = 33
hidden-single: r3c3 = 30
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[4]
 -  - 35 36  -  7  1  2
33 34  -  -  8  6  -  3
32  - 30  -  9  -  5  4
 - 31 29  - 10  -  -  -
 -  -  - 28  - 11 13  -
24 25  - 27  - 12  - 14
23  - 26 19  -  - 16 15
22 21 20  - 18 17  -  -
init-time = 0.09s, solve time = 4m 15.2s, total-time = 4m 15.29s
nb-facts=<Fact-118077>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



If you want to use intermediate chains (z-chains and t-whips) in addition to the previous confguration, the computational cost for this puzzle is high because it takes large bites of virtual memory (unless you have more than 16 GB of RAM).


(solve Hidato topological 8 36
B B . . B . . 2
. . B B . . B .
. B . B . B . .
B . . B . B B B
B B B . B . . B
. . B . B . B .
. B . . B B . .
22 . . B . . B B
)

***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules topological-model   *****
undecided numbers: (1 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 23 24 25 26 27 28 29 30 31 32 33 34 35 36)
start solution 1596610387.6526
entering BRT
Starting_init_links_with_<Fact-2793>
737 candidates, 18078 csp-links and 35838 links. Density = 13.21%
starting non trivial part of solution
Entering_level_W1_with_<Fact-110628>
whip[1]: n27{r8c6 .} ==> r3c7 ≠ 28
whip[1]: n28{r8c6 .} ==> r2c8 ≠ 29, r3c8 ≠ 29
whip[1]: n26{r8c5 .} ==> r6c6 ≠ 27
whip[1]: n25{r8c3 .} ==> r4c2 ≠ 26
whip[1]: n26{r8c5 .} ==> r3c1 ≠ 27
whip[1]: n27{r8c6 .} ==> r2c1 ≠ 28
whip[1]: n24{r8c3 .} ==> r5c4 ≠ 25
whip[1]: n25{r8c3 .} ==> r4c3 ≠ 26, r4c5 ≠ 26
whip[1]: n26{r8c5 .} ==> r3c3 ≠ 27, r3c5 ≠ 27, r4c2 ≠ 27, r5c6 ≠ 27
whip[1]: n27{r8c6 .} ==> r2c2 ≠ 28, r2c5 ≠ 28, r2c6 ≠ 28, r3c1 ≠ 28, r5c7 ≠ 28, r6c6 ≠ 28
whip[1]: n28{r8c6 .} ==> r1c3 ≠ 29, r1c4 ≠ 29, r1c6 ≠ 29, r1c7 ≠ 29, r2c1 ≠ 29, r3c7 ≠ 29
whip[1]: n29{r8c6 .} ==> r2c8 ≠ 30, r3c8 ≠ 30
whip[1]: n7{r6c8 .} ==> r6c2 ≠ 8
whip[1]: n8{r7c8 .} ==> r6c1 ≠ 9, r7c1 ≠ 9
whip[1]: n18{r8c5 .} ==> r6c6 ≠ 17
whip[1]: n17{r8c6 .} ==> r3c7 ≠ 16
whip[1]: n16{r8c6 .} ==> r2c8 ≠ 15, r3c8 ≠ 15
whip[1]: n6{r5c7 .} ==> r3c3 ≠ 7
whip[1]: n20{r8c3 .} ==> r5c4 ≠ 19
whip[1]: n19{r8c3 .} ==> r4c2 ≠ 18, r4c3 ≠ 18, r4c5 ≠ 18
whip[1]: n18{r8c5 .} ==> r3c1 ≠ 17, r3c3 ≠ 17, r3c5 ≠ 17, r4c2 ≠ 17, r5c6 ≠ 17
whip[1]: n17{r8c6 .} ==> r2c1 ≠ 16, r2c2 ≠ 16, r2c5 ≠ 16, r2c6 ≠ 16, r3c1 ≠ 16, r5c7 ≠ 16, r6c6 ≠ 16
whip[1]: n16{r8c6 .} ==> r1c3 ≠ 15, r1c4 ≠ 15, r1c6 ≠ 15, r1c7 ≠ 15, r2c1 ≠ 15, r3c7 ≠ 15
whip[1]: n15{r8c6 .} ==> r2c8 ≠ 14, r3c8 ≠ 14
whip[1]: n5{r4c5 .} ==> r5c7 ≠ 6
whip[1]: n6{r5c6 .} ==> r6c8 ≠ 7
whip[1]: n7{r6c6 .} ==> r7c8 ≠ 8
whip[1]: n4{r3c8 .} ==> r4c5 ≠ 5
whip[1]: n5{r3c8 .} ==> r5c4 ≠ 6, r5c6 ≠ 6
whip[1]: n6{r4c5 .} ==> r5c7 ≠ 7, r4c3 ≠ 7, r6c4 ≠ 7, r6c6 ≠ 7
whip[1]: n7{r5c6 .} ==> r7c7 ≠ 8, r3c3 ≠ 8, r4c2 ≠ 8, r6c8 ≠ 8, r7c3 ≠ 8, r7c4 ≠ 8
whip[1]: n8{r6c6 .} ==> r8c3 ≠ 9, r6c2 ≠ 9, r7c8 ≠ 9, r8c2 ≠ 9, r8c5 ≠ 9, r8c6 ≠ 9
whip[1]: n9{r7c7 .} ==> r7c1 ≠ 10, r6c1 ≠ 10
Entering_relation_bivalue_with_<Fact-110695>
Entering_level_S2_with_<Fact-110704>
hidden-pairs: {n21 n23}{r7c1 r8c2} ==> r8c2 ≠ 36, r8c2 ≠ 35, r8c2 ≠ 34, r8c2 ≠ 33, r8c2 ≠ 32, r8c2 ≠ 31, r8c2 ≠ 30, r8c2 ≠ 29, r8c2 ≠ 28, r8c2 ≠ 27, r8c2 ≠ 26, r8c2 ≠ 25, r8c2 ≠ 24, r8c2 ≠ 20, r8c2 ≠ 19, r8c2 ≠ 18, r8c2 ≠ 17, r8c2 ≠ 16, r8c2 ≠ 15, r8c2 ≠ 14, r8c2 ≠ 13, r8c2 ≠ 12, r8c2 ≠ 11, r8c2 ≠ 10, r7c1 ≠ 36, r7c1 ≠ 35, r7c1 ≠ 34, r7c1 ≠ 33, r7c1 ≠ 32, r7c1 ≠ 31, r7c1 ≠ 30, r7c1 ≠ 29, r7c1 ≠ 28, r7c1 ≠ 27, r7c1 ≠ 26, r7c1 ≠ 25, r7c1 ≠ 24, r7c1 ≠ 20, r7c1 ≠ 19, r7c1 ≠ 18, r7c1 ≠ 17, r7c1 ≠ 16, r7c1 ≠ 15, r7c1 ≠ 14, r7c1 ≠ 13, r7c1 ≠ 12, r7c1 ≠ 11
hidden-pairs: {n1 n3}{r1c7 r2c8} ==> r2c8 ≠ 36, r2c8 ≠ 35, r2c8 ≠ 34, r2c8 ≠ 33, r2c8 ≠ 32, r2c8 ≠ 31, r2c8 ≠ 13, r2c8 ≠ 12, r2c8 ≠ 11, r2c8 ≠ 10, r2c8 ≠ 9, r2c8 ≠ 8, r2c8 ≠ 7, r2c8 ≠ 6, r2c8 ≠ 5, r2c8 ≠ 4, r1c7 ≠ 36, r1c7 ≠ 35, r1c7 ≠ 34, r1c7 ≠ 33, r1c7 ≠ 32, r1c7 ≠ 31, r1c7 ≠ 30, r1c7 ≠ 14, r1c7 ≠ 13, r1c7 ≠ 12, r1c7 ≠ 11, r1c7 ≠ 10, r1c7 ≠ 9, r1c7 ≠ 8, r1c7 ≠ 7, r1c7 ≠ 6, r1c7 ≠ 5, r1c7 ≠ 4
Entering_level_BC2_with_<Fact-110721>
Entering_level_Z2_with_<Fact-110738>
z-chain[2]: n14{r8c6 r3c7} - n12{r3c7 .} ==> r3c8 ≠ 13
z-chain[2]: n13{r8c6 r2c6} - n15{r2c6 .} ==> r3c7 ≠ 14
z-chain[2]: n16{r6c1 r6c2} - n14{r6c2 .} ==> r6c1 ≠ 15
z-chain[2]: n15{r8c6 r6c2} - n17{r6c2 .} ==> r6c1 ≠ 16
z-chain[2]: n16{r8c6 r6c2} - n18{r6c2 .} ==> r6c1 ≠ 17
z-chain[2]: n17{r8c6 r6c2} - n19{r6c2 .} ==> r6c1 ≠ 18
z-chain[2]: n18{r8c5 r6c2} - n20{r6c2 .} ==> r6c1 ≠ 19
z-chain[2]: n19{r8c3 r7c3} - n17{r7c3 .} ==> r6c2 ≠ 18
z-chain[2]: n16{r8c6 r7c3} - n18{r7c3 .} ==> r6c2 ≠ 17
z-chain[2]: n15{r8c6 r7c3} - n17{r7c3 .} ==> r6c2 ≠ 16
z-chain[2]: n15{r8c6 r6c2} - n13{r6c2 .} ==> r6c1 ≠ 14
z-chain[2]: n14{r8c6 r7c3} - n16{r7c3 .} ==> r6c2 ≠ 15
z-chain[2]: n14{r8c6 r6c2} - n12{r6c2 .} ==> r6c1 ≠ 13
z-chain[2]: n13{r8c6 r7c3} - n15{r7c3 .} ==> r6c2 ≠ 14
z-chain[2]: n13{r8c6 r6c2} - n11{r6c2 .} ==> r6c1 ≠ 12
z-chain[2]: n12{r8c6 r7c3} - n14{r7c3 .} ==> r6c2 ≠ 13
z-chain[2]: n12{r8c6 r7c3} - n10{r7c3 .} ==> r6c2 ≠ 11
z-chain[2]: n12{r8c6 r6c2} - n10{r6c2 .} ==> r6c1 ≠ 11
z-chain[2]: n11{r8c6 r7c3} - n13{r7c3 .} ==> r6c2 ≠ 12
z-chain[2]: n11{r8c6 r7c3} - n9{r7c3 .} ==> r6c2 ≠ 10
z-chain[2]: n13{r8c6 r3c7} - n11{r3c7 .} ==> r3c8 ≠ 12
z-chain[2]: n12{r8c6 r2c6} - n14{r2c6 .} ==> r3c7 ≠ 13
z-chain[2]: n12{r8c6 r3c7} - n10{r3c7 .} ==> r3c8 ≠ 11
z-chain[2]: n11{r8c6 r2c6} - n13{r2c6 .} ==> r3c7 ≠ 12
z-chain[2]: n11{r8c6 r3c7} - n9{r3c7 .} ==> r3c8 ≠ 10
z-chain[2]: n10{r8c6 r2c6} - n12{r2c6 .} ==> r3c7 ≠ 11
z-chain[2]: n10{r8c6 r3c7} - n8{r3c7 .} ==> r3c8 ≠ 9
z-chain[2]: n9{r7c7 r2c6} - n11{r2c6 .} ==> r3c7 ≠ 10
z-chain[2]: n9{r7c7 r3c7} - n7{r3c7 .} ==> r3c8 ≠ 8
z-chain[2]: n8{r6c6 r2c6} - n10{r2c6 .} ==> r3c7 ≠ 9
z-chain[2]: n8{r6c6 r3c7} - n6{r3c7 .} ==> r3c8 ≠ 7
z-chain[2]: n7{r5c6 r2c6} - n9{r2c6 .} ==> r3c7 ≠ 8
z-chain[2]: n7{r5c6 r3c7} - n5{r3c7 .} ==> r3c8 ≠ 6
z-chain[2]: n6{r4c5 r2c6} - n8{r2c6 .} ==> r3c7 ≠ 7
z-chain[2]: n6{r4c5 r3c7} - n4{r3c7 .} ==> r3c8 ≠ 5
z-chain[2]: n5{r3c7 r2c6} - n7{r2c6 .} ==> r3c7 ≠ 6
z-chain[2]: n30{r8c6 r3c7} - n32{r3c7 .} ==> r3c8 ≠ 31
z-chain[2]: n31{r8c6 r3c7} - n33{r3c7 .} ==> r3c8 ≠ 32
z-chain[2]: n32{r8c6 r3c7} - n34{r3c7 .} ==> r3c8 ≠ 33
z-chain[2]: n33{r8c6 r3c7} - n35{r3c7 .} ==> r3c8 ≠ 34
z-chain[2]: n34{r8c6 r3c7} - n36{r3c7 .} ==> r3c8 ≠ 35
z-chain[2]: n35{r8c6 r2c6} - n33{r2c6 .} ==> r3c7 ≠ 34
z-chain[2]: n36{r6c1 r6c2} - n34{r6c2 .} ==> r6c1 ≠ 35
z-chain[2]: n35{r8c6 r6c2} - n33{r6c2 .} ==> r6c1 ≠ 34
z-chain[2]: n34{r8c6 r6c2} - n32{r6c2 .} ==> r6c1 ≠ 33
z-chain[2]: n33{r8c6 r7c3} - n35{r7c3 .} ==> r6c2 ≠ 34
z-chain[2]: n33{r8c6 r6c2} - n31{r6c2 .} ==> r6c1 ≠ 32
z-chain[2]: n32{r8c6 r7c3} - n34{r7c3 .} ==> r6c2 ≠ 33
z-chain[2]: n32{r8c6 r6c2} - n30{r6c2 .} ==> r6c1 ≠ 31
z-chain[2]: n31{r8c6 r7c3} - n33{r7c3 .} ==> r6c2 ≠ 32
z-chain[2]: n31{r8c6 r6c2} - n29{r6c2 .} ==> r6c1 ≠ 30
z-chain[2]: n30{r8c6 r7c3} - n32{r7c3 .} ==> r6c2 ≠ 31
z-chain[2]: n30{r8c6 r6c2} - n28{r6c2 .} ==> r6c1 ≠ 29
z-chain[2]: n29{r8c6 r7c3} - n31{r7c3 .} ==> r6c2 ≠ 30
z-chain[2]: n29{r8c6 r6c2} - n27{r6c2 .} ==> r6c1 ≠ 28
z-chain[2]: n28{r8c6 r7c3} - n30{r7c3 .} ==> r6c2 ≠ 29
z-chain[2]: n28{r8c6 r6c2} - n26{r6c2 .} ==> r6c1 ≠ 27
z-chain[2]: n27{r8c6 r7c3} - n29{r7c3 .} ==> r6c2 ≠ 28
z-chain[2]: n27{r8c6 r6c2} - n25{r6c2 .} ==> r6c1 ≠ 26
z-chain[2]: n26{r8c5 r7c3} - n28{r7c3 .} ==> r6c2 ≠ 27
z-chain[2]: n26{r8c5 r6c2} - n24{r6c2 .} ==> r6c1 ≠ 25
z-chain[2]: n25{r8c3 r7c3} - n27{r7c3 .} ==> r6c2 ≠ 26
z-chain[2]: n34{r8c6 r2c6} - n32{r2c6 .} ==> r3c7 ≠ 33
z-chain[2]: n33{r8c6 r2c6} - n31{r2c6 .} ==> r3c7 ≠ 32
z-chain[2]: n32{r8c6 r2c6} - n30{r2c6 .} ==> r3c7 ≠ 31
z-chain[2]: n31{r8c6 r2c6} - n29{r2c6 .} ==> r3c7 ≠ 30
Entering_level_tW2_with_<Fact-111120>
t-whip[2]: r3c8{n4 n36} - n35{r8c6 .} ==> r3c7 ≠ 4
t-whip[2]: r3c8{n36 n4} - n5{r3c5 .} ==> r3c7 ≠ 36
t-whip[2]: r3c7{n5 n35} - n34{r8c6 .} ==> r2c6 ≠ 5
t-whip[2]: r3c7{n35 n5} - n6{r4c5 .} ==> r2c6 ≠ 35
Entering_level_W2_with_<Fact-111280>
Entering_level_BC3_with_<Fact-111281>
Entering_level_Z3_with_<Fact-111286>
Entering_level_tW3_with_<Fact-111489>
t-whip[3]: r3c8{n36 n4} - n5{r3c5 r3c7} - n6{r4c5 .} ==> r2c6 ≠ 36
t-whip[3]: r3c8{n4 n36} - n35{r8c6 r3c7} - n34{r8c6 .} ==> r2c6 ≠ 4
whip[1]: n4{r3c8 .} ==> r1c6 ≠ 5, r3c5 ≠ 5
whip[1]: n5{r3c7 .} ==> r2c5 ≠ 6, r4c5 ≠ 6
whip[1]: n6{r3c5 .} ==> r5c4 ≠ 7, r1c4 ≠ 7, r5c6 ≠ 7
whip[1]: n7{r4c5 .} ==> r5c7 ≠ 8, r1c3 ≠ 8, r4c3 ≠ 8, r6c4 ≠ 8, r6c6 ≠ 8
whip[1]: n8{r5c6 .} ==> r7c7 ≠ 9, r2c2 ≠ 9, r4c2 ≠ 9, r6c8 ≠ 9, r7c3 ≠ 9, r7c4 ≠ 9
whip[1]: n9{r6c6 .} ==> r8c3 ≠ 10, r7c8 ≠ 10, r8c5 ≠ 10, r8c6 ≠ 10
biv-chain[2]: n5{r3c7 r2c5} - n4{r3c8 r1c6} ==> r1c6 ≠ 6
t-whip[3]: n6{r2c6 r3c5} - r3c7{n5 n35} - n34{r8c6 .} ==> r2c6 ≠ 7
Entering_level_W3_with_<Fact-112551>
whip[3]: n9{r6c6 r3c1} - n11{r3c1 r2c2} - n8{r2c2 .} ==> r2c1 ≠ 10
whip[3]: r8c2{n21 n23} - r6c1{n24 n36} - n35{r1c3 .} ==> r6c2 ≠ 20
whip[3]: r8c2{n23 n21} - r6c1{n20 n36} - n35{r1c3 .} ==> r6c2 ≠ 24
Entering_level_BC4_with_<Fact-112590>
Entering_level_Z4_with_<Fact-112603>
Entering_level_tW4_with_<Fact-113031>
t-whip[4]: r7c1{n23 n21} - n20{r8c3 r6c1} - n19{r6c4 r6c2} - n18{r8c5 .} ==> r7c3 ≠ 24
whip[1]: n24{r8c3 .} ==> r6c4 ≠ 25, r8c3 ≠ 25
whip[1]: n25{r7c4 .} ==> r5c4 ≠ 26
whip[1]: n26{r8c5 .} ==> r4c3 ≠ 27, r4c5 ≠ 27
whip[1]: n27{r8c6 .} ==> r3c3 ≠ 28, r3c5 ≠ 28, r4c2 ≠ 28, r5c6 ≠ 28
whip[1]: n28{r8c6 .} ==> r2c2 ≠ 29, r2c5 ≠ 29, r2c6 ≠ 29, r3c1 ≠ 29, r5c7 ≠ 29
whip[1]: n29{r8c6 .} ==> r1c3 ≠ 30, r1c4 ≠ 30, r1c6 ≠ 30, r2c1 ≠ 30
t-whip[2]: n24{r8c3 r6c1} - n25{r7c3 .} ==> r8c3 ≠ 26
t-whip[3]: n24{r6c1 r8c3} - r7c1{n23 n21} - n20{r8c3 .} ==> r6c1 ≠ 36
z-chain[2]: n36{r8c6 r7c3} - n34{r7c3 .} ==> r6c2 ≠ 35
t-whip[3]: r6c1{n24 n20} - n19{r8c3 r6c2} - n18{r8c5 .} ==> r7c3 ≠ 25
whip[1]: n25{r7c4 .} ==> r7c4 ≠ 26
whip[1]: n26{r8c5 .} ==> r8c5 ≠ 27
whip[1]: n27{r8c6 .} ==> r8c6 ≠ 28
whip[1]: n28{r8c5 .} ==> r7c7 ≠ 29
z-chain[3]: n26{r8c5 r7c3} - n20{r7c3 r6c1} - n24{r6c1 .} ==> r8c3 ≠ 27
t-whip[3]: r6c1{n20 n24} - n25{r7c4 r6c2} - n26{r6c4 .} ==> r7c3 ≠ 20, r7c3 ≠ 19
whip[1]: n20{r8c3 .} ==> r6c4 ≠ 19, r8c3 ≠ 19
whip[1]: n19{r7c4 .} ==> r7c4 ≠ 18, r5c4 ≠ 18
whip[1]: n18{r8c5 .} ==> r4c3 ≠ 17, r4c5 ≠ 17, r8c5 ≠ 17
whip[1]: n17{r8c6 .} ==> r3c3 ≠ 16, r3c5 ≠ 16, r4c2 ≠ 16, r5c6 ≠ 16, r8c6 ≠ 16
whip[1]: n16{r8c5 .} ==> r7c7 ≠ 15, r2c2 ≠ 15, r2c5 ≠ 15, r2c6 ≠ 15, r3c1 ≠ 15, r5c7 ≠ 15
whip[1]: n15{r8c6 .} ==> r1c3 ≠ 14, r1c4 ≠ 14, r1c6 ≠ 14, r2c1 ≠ 14
hidden-pairs: {n19 n25}{r6c2 r7c4} ==> r7c4 ≠ 36, r7c4 ≠ 35, r7c4 ≠ 34, r7c4 ≠ 33, r7c4 ≠ 32, r7c4 ≠ 31, r7c4 ≠ 30, r7c4 ≠ 29, r7c4 ≠ 28, r7c4 ≠ 27, r7c4 ≠ 17, r7c4 ≠ 16, r7c4 ≠ 15, r7c4 ≠ 14, r7c4 ≠ 13, r7c4 ≠ 12, r7c4 ≠ 11, r7c4 ≠ 10, r6c2 ≠ 36
whip[1]: n10{r7c7 .} ==> r8c5 ≠ 11
whip[1]: n16{r8c5 .} ==> r8c5 ≠ 15
whip[1]: n15{r8c6 .} ==> r8c6 ≠ 14
whip[1]: n14{r8c5 .} ==> r8c5 ≠ 13
whip[1]: n28{r8c5 .} ==> r8c5 ≠ 29
whip[1]: n29{r8c6 .} ==> r8c6 ≠ 30
whip[1]: n30{r8c5 .} ==> r8c5 ≠ 31
hidden-pairs: {n20 n24}{r6c1 r8c3} ==> r8c3 ≠ 36, r8c3 ≠ 35, r8c3 ≠ 34, r8c3 ≠ 33, r8c3 ≠ 32, r8c3 ≠ 31, r8c3 ≠ 30, r8c3 ≠ 29, r8c3 ≠ 28, r8c3 ≠ 18, r8c3 ≠ 17, r8c3 ≠ 16, r8c3 ≠ 15, r8c3 ≠ 14, r8c3 ≠ 13, r8c3 ≠ 12, r8c3 ≠ 11
z-chain[2]: n36{r8c5 r8c6} - n34{r8c6 .} ==> r8c5 ≠ 35
z-chain[2]: n35{r7c8 r8c6} - n33{r8c6 .} ==> r8c5 ≠ 34
z-chain[2]: n34{r7c8 r8c6} - n32{r8c6 .} ==> r8c5 ≠ 33
z-chain[2]: n33{r7c8 r8c6} - n31{r8c6 .} ==> r8c5 ≠ 32
z-chain[2]: n32{r8c6 r7c7} - n34{r7c7 .} ==> r8c6 ≠ 33
z-chain[2]: n33{r7c8 r6c4} - n31{r6c4 .} ==> r7c3 ≠ 32
z-chain[2]: n33{r7c8 r6c4} - n35{r6c4 .} ==> r7c3 ≠ 34
z-chain[2]: n34{r8c6 r5c4} - n32{r5c4 .} ==> r6c4 ≠ 33
z-chain[2]: n35{r8c6 r7c7} - n33{r7c7 .} ==> r8c6 ≠ 34
z-chain[2]: n34{r6c8 r6c4} - n32{r6c4 .} ==> r7c3 ≠ 33
z-chain[2]: n34{r6c8 r6c4} - n36{r6c4 .} ==> r7c3 ≠ 35
z-chain[2]: n35{r8c6 r5c4} - n33{r5c4 .} ==> r6c4 ≠ 34
z-chain[2]: n33{r7c8 r7c7} - n31{r7c7 .} ==> r8c6 ≠ 32
z-chain[2]: n32{r6c8 r6c4} - n30{r6c4 .} ==> r7c3 ≠ 31
z-chain[2]: n31{r8c6 r5c4} - n33{r5c4 .} ==> r6c4 ≠ 32
z-chain[2]: n31{r7c8 r8c6} - n29{r8c6 .} ==> r8c5 ≠ 30
z-chain[2]: n30{r7c8 r6c4} - n28{r6c4 .} ==> r7c3 ≠ 29
z-chain[2]: n29{r8c6 r5c4} - n31{r5c4 .} ==> r6c4 ≠ 30
z-chain[2]: n32{r7c8 r7c7} - n30{r7c7 .} ==> r8c6 ≠ 31
z-chain[2]: n31{r6c8 r6c4} - n29{r6c4 .} ==> r7c3 ≠ 30
z-chain[2]: n30{r7c8 r5c4} - n32{r5c4 .} ==> r6c4 ≠ 31
z-chain[2]: n29{r7c8 r8c6} - n27{r8c6 .} ==> r8c5 ≠ 28
z-chain[2]: n28{r7c7 r6c4} - n26{r6c4 .} ==> r7c3 ≠ 27
z-chain[2]: n27{r8c6 r5c4} - n29{r5c4 .} ==> r6c4 ≠ 28
z-chain[2]: n30{r7c8 r7c7} - n28{r7c7 .} ==> r8c6 ≠ 29
z-chain[2]: n29{r6c8 r6c4} - n27{r6c4 .} ==> r7c3 ≠ 28
z-chain[2]: n28{r7c7 r5c4} - n30{r5c4 .} ==> r6c4 ≠ 29
z-chain[2]: n17{r7c3 r8c6} - n15{r8c6 .} ==> r8c5 ≠ 16
z-chain[2]: n16{r7c7 r6c4} - n14{r6c4 .} ==> r7c3 ≠ 15
z-chain[2]: n16{r7c7 r6c4} - n18{r6c4 .} ==> r7c3 ≠ 17
z-chain[2]: n17{r8c6 r5c4} - n15{r5c4 .} ==> r6c4 ≠ 16
z-chain[2]: n15{r7c8 r8c6} - n13{r8c6 .} ==> r8c5 ≠ 14
z-chain[2]: n14{r7c8 r6c4} - n12{r6c4 .} ==> r7c3 ≠ 13
z-chain[2]: n13{r8c6 r5c4} - n15{r5c4 .} ==> r6c4 ≠ 14
z-chain[2]: n16{r7c3 r7c7} - n14{r7c7 .} ==> r8c6 ≠ 15
z-chain[2]: n15{r6c8 r6c4} - n13{r6c4 .} ==> r7c3 ≠ 14
z-chain[2]: n15{r6c8 r6c4} - n17{r6c4 .} ==> r7c3 ≠ 16
z-chain[2]: n16{r7c7 r5c4} - n14{r5c4 .} ==> r6c4 ≠ 15
z-chain[2]: n13{r7c8 r8c6} - n11{r8c6 .} ==> r8c5 ≠ 12
z-chain[2]: n12{r8c6 r7c7} - n14{r7c7 .} ==> r8c6 ≠ 13
z-chain[2]: n13{r6c8 r6c4} - n11{r6c4 .} ==> r7c3 ≠ 12
z-chain[2]: n12{r8c6 r5c4} - n14{r5c4 .} ==> r6c4 ≠ 13
z-chain[2]: n13{r7c8 r7c7} - n11{r7c7 .} ==> r8c6 ≠ 12
z-chain[2]: n12{r6c8 r6c4} - n10{r6c4 .} ==> r7c3 ≠ 11
z-chain[2]: n11{r8c6 r5c4} - n13{r5c4 .} ==> r6c4 ≠ 12
z-chain[2]: n11{r8c6 r5c4} - n9{r5c4 .} ==> r6c4 ≠ 10
z-chain[2]: n12{r7c8 r7c7} - n10{r7c7 .} ==> r8c6 ≠ 11
z-chain[2]: n11{r6c8 r6c4} - n9{r6c4 .} ==> r7c3 ≠ 10
z-chain[2]: n10{r7c7 r5c4} - n12{r5c4 .} ==> r6c4 ≠ 11
z-chain[2]: n10{r7c7 r5c4} - n8{r5c4 .} ==> r6c4 ≠ 9
t-whip[3]: r6c2{n25 n19} - n18{r8c5 r7c3} - n17{r8c6 .} ==> r6c4 ≠ 26
whip[1]: n26{r8c5 .} ==> r5c4 ≠ 27
whip[1]: n27{r8c6 .} ==> r4c3 ≠ 28, r4c5 ≠ 28
whip[1]: n28{r7c7 .} ==> r3c3 ≠ 29, r3c5 ≠ 29, r4c2 ≠ 29, r5c4 ≠ 29, r5c6 ≠ 29
whip[1]: n29{r7c8 .} ==> r2c2 ≠ 30, r2c5 ≠ 30, r2c6 ≠ 30, r3c1 ≠ 30, r4c3 ≠ 30, r4c5 ≠ 30, r6c6 ≠ 30
whip[1]: n30{r7c8 .} ==> r1c3 ≠ 31, r1c4 ≠ 31, r1c6 ≠ 31, r2c1 ≠ 31, r3c5 ≠ 31, r5c4 ≠ 31
whip[2]: n28{r5c4 r7c7} - n29{r4c3 .} ==> r5c4 ≠ 30
whip[2]: n28{r7c7 r5c4} - n29{r6c6 .} ==> r7c7 ≠ 30
t-whip[2]: n30{r7c8 r6c8} - n29{r6c8 .} ==> r7c8 ≠ 31
biv-chain[3]: n27{r6c4 r8c6} - n26{r7c3 r8c5} - r6c2{n25 n19} ==> r6c4 ≠ 18
whip[1]: n18{r8c5 .} ==> r5c4 ≠ 17
whip[1]: n17{r8c6 .} ==> r4c3 ≠ 16, r4c5 ≠ 16
whip[1]: n16{r7c7 .} ==> r3c3 ≠ 15, r3c5 ≠ 15, r4c2 ≠ 15, r5c4 ≠ 15, r5c6 ≠ 15
whip[1]: n15{r7c8 .} ==> r2c2 ≠ 14, r2c5 ≠ 14, r2c6 ≠ 14, r3c1 ≠ 14, r4c3 ≠ 14, r4c5 ≠ 14, r6c6 ≠ 14
whip[1]: n14{r7c8 .} ==> r1c3 ≠ 13, r1c4 ≠ 13, r1c6 ≠ 13, r2c1 ≠ 13, r3c5 ≠ 13, r5c4 ≠ 13
hidden-pairs: {n16 n28}{r5c4 r7c7} ==> r7c7 ≠ 36, r7c7 ≠ 35, r7c7 ≠ 34, r7c7 ≠ 33, r7c7 ≠ 32, r7c7 ≠ 31, r7c7 ≠ 14, r7c7 ≠ 13, r7c7 ≠ 12, r7c7 ≠ 11, r7c7 ≠ 10, r5c4 ≠ 36, r5c4 ≠ 35, r5c4 ≠ 34, r5c4 ≠ 33, r5c4 ≠ 32, r5c4 ≠ 14, r5c4 ≠ 12, r5c4 ≠ 11, r5c4 ≠ 10, r5c4 ≠ 9, r5c4 ≠ 8
whip[1]: n8{r5c6 .} ==> r4c3 ≠ 9
whip[1]: n9{r6c6 .} ==> r3c3 ≠ 10
whip[1]: n34{r7c8 .} ==> r6c4 ≠ 35, r8c6 ≠ 35
whip[1]: n35{r7c8 .} ==> r8c5 ≠ 36, r6c4 ≠ 36, r7c3 ≠ 36, r8c6 ≠ 36
z-chain[2]: n36{r7c8 r6c8} - n34{r6c8 .} ==> r7c8 ≠ 35
z-chain[2]: n35{r6c6 r6c8} - n33{r6c8 .} ==> r7c8 ≠ 34
z-chain[2]: n34{r6c6 r6c8} - n32{r6c8 .} ==> r7c8 ≠ 33
z-chain[2]: n33{r6c8 r5c7} - n35{r5c7 .} ==> r6c8 ≠ 34
z-chain[2]: n33{r6c8 r5c7} - n31{r5c7 .} ==> r6c8 ≠ 32
z-chain[2]: n33{r6c6 r6c8} - n31{r6c8 .} ==> r7c8 ≠ 32
z-chain[2]: n32{r6c6 r5c7} - n34{r5c7 .} ==> r6c8 ≠ 33
z-chain[2]: n31{r6c6 r6c8} - n29{r6c8 .} ==> r7c8 ≠ 30
z-chain[2]: n30{r6c8 r5c7} - n32{r5c7 .} ==> r6c8 ≠ 31
z-chain[2]: n14{r7c8 r6c8} - n12{r6c8 .} ==> r7c8 ≠ 13
z-chain[2]: n13{r6c6 r6c8} - n11{r6c8 .} ==> r7c8 ≠ 12
z-chain[2]: n12{r6c8 r5c7} - n10{r5c7 .} ==> r6c8 ≠ 11
z-chain[2]: n12{r6c6 r6c8} - n10{r6c8 .} ==> r7c8 ≠ 11
z-chain[2]: n11{r6c6 r5c7} - n9{r5c7 .} ==> r6c8 ≠ 10
z-chain[2]: n11{r6c6 r5c7} - n13{r5c7 .} ==> r6c8 ≠ 12
z-chain[2]: n13{r6c6 r6c8} - n15{r6c8 .} ==> r7c8 ≠ 14
z-chain[2]: n14{r6c8 r5c7} - n12{r5c7 .} ==> r6c8 ≠ 13
t-whip[3]: n13{r6c6 r2c5} - n5{r2c5 r3c7} - n6{r1c4 .} ==> r2c6 ≠ 12
t-whip[3]: n31{r6c6 r2c5} - n5{r2c5 r3c7} - n6{r1c4 .} ==> r2c6 ≠ 32
whip[3]: n8{r4c5 r5c6} - n10{r5c6 r5c7} - n11{r1c3 .} ==> r6c6 ≠ 9
whip[3]: n9{r5c7 r5c6} - n11{r5c6 r6c6} - n12{r1c3 .} ==> r5c7 ≠ 10
whip[3]: n10{r6c6 r5c6} - n12{r5c6 r5c7} - n13{r2c2 .} ==> r6c6 ≠ 11
whip[3]: n11{r5c7 r5c6} - n13{r5c6 r6c6} - n14{r3c3 .} ==> r5c7 ≠ 12
whip[3]: n8{r4c5 r5c6} - n10{r5c6 r6c6} - n11{r1c3 .} ==> r5c7 ≠ 9
z-chain[2]: n9{r5c6 r4c5} - n7{r4c5 .} ==> r5c6 ≠ 8
z-chain[2]: n8{r4c5 r3c5} - n6{r3c5 .} ==> r4c5 ≠ 7
z-chain[2]: n7{r3c5 r2c5} - n5{r2c5 .} ==> r3c5 ≠ 6
z-chain[3]: n5{r2c5 r3c7} - n6{r1c4 r2c6} - n31{r2c6 .} ==> r2c5 ≠ 32
whip[1]: n32{r6c6 .} ==> r1c6 ≠ 33
z-chain[3]: n5{r2c5 r3c7} - n6{r1c4 r2c6} - n13{r2c6 .} ==> r2c5 ≠ 12
whip[1]: n12{r6c6 .} ==> r1c6 ≠ 11
t-whip[3]: n6{r2c6 r1c4} - r3c7{n5 n35} - n34{r6c6 .} ==> r2c6 ≠ 33, r2c6 ≠ 31, r2c6 ≠ 13, r2c6 ≠ 11, r2c6 ≠ 10, r2c6 ≠ 9, r2c6 ≠ 8
z-chain[2]: n33{r6c6 r2c5} - n35{r2c5 .} ==> r1c6 ≠ 34
z-chain[2]: n33{r6c6 r2c5} - n31{r2c5 .} ==> r1c6 ≠ 32
z-chain[2]: n13{r6c6 r2c5} - n11{r2c5 .} ==> r1c6 ≠ 12
z-chain[2]: n11{r5c7 r2c5} - n9{r2c5 .} ==> r1c6 ≠ 10
z-chain[2]: n8{r4c5 r2c5} - n10{r2c5 .} ==> r1c6 ≠ 9
z-chain[2]: n7{r3c5 r2c5} - n9{r2c5 .} ==> r1c6 ≠ 8
whip[3]: n9{r4c5 r5c6} - n11{r5c6 r5c7} - n12{r1c3 .} ==> r6c6 ≠ 10
z-chain[2]: n10{r5c6 r4c5} - n8{r4c5 .} ==> r5c6 ≠ 9
z-chain[2]: n9{r4c5 r3c5} - n7{r3c5 .} ==> r4c5 ≠ 8
whip[3]: n10{r4c5 r5c6} - n12{r5c6 r6c6} - n13{r2c2 .} ==> r5c7 ≠ 11
z-chain[2]: n11{r5c6 r4c5} - n9{r4c5 .} ==> r5c6 ≠ 10
z-chain[2]: n10{r4c5 r3c5} - n8{r3c5 .} ==> r4c5 ≠ 9
z-chain[2]: n9{r3c5 r2c5} - n7{r2c5 .} ==> r3c5 ≠ 8
t-whip[3]: n8{r2c5 r1c4} - n6{r1c4 r2c6} - n7{r1c3 .} ==> r2c5 ≠ 9
whip[1]: n9{r3c5 .} ==> r3c5 ≠ 10
whip[1]: n10{r4c5 .} ==> r4c5 ≠ 11
whip[1]: n11{r5c6 .} ==> r5c6 ≠ 12
whip[1]: n12{r6c6 .} ==> r6c6 ≠ 13
whip[3]: n9{r3c5 r1c3} - n8{r2c5 r2c2} - n7{r1c6 .} ==> r1c4 ≠ 10
whip[1]: n10{r4c5 .} ==> r2c5 ≠ 11
whip[1]: n11{r5c6 .} ==> r3c5 ≠ 12
whip[1]: n12{r6c6 .} ==> r4c5 ≠ 13
t-whip[3]: n13{r5c6 r5c7} - n12{r4c5 r6c6} - n11{r1c3 .} ==> r5c6 ≠ 14
whip[3]: r5c4{n28 n16} - r7c8{n15 n36} - n35{r1c3 .} ==> r6c8 ≠ 29
whip[3]: r5c4{n16 n28} - r7c8{n29 n36} - n35{r1c3 .} ==> r6c8 ≠ 15
z-chain[4]: n36{r4c5 r2c5} - n34{r2c5 r2c6} - n6{r2c6 r1c4} - r3c7{n5 .} ==> r1c6 ≠ 35
whip[3]: n5{r2c5 r3c7} - r1c6{n4 n36} - n35{r1c3 .} ==> r2c5 ≠ 7
z-chain[2]: n7{r3c5 r1c3} - n6{r2c6 .} ==> r1c4 ≠ 8
z-chain[2]: n8{r2c5 r2c2} - n10{r2c2 .} ==> r1c3 ≠ 9
whip[2]: n8{r2c5 r2c2} - n9{r3c5 .} ==> r2c5 ≠ 10
z-chain[2]: n10{r4c3 r4c5} - n12{r4c5 .} ==> r3c5 ≠ 11
z-chain[2]: n11{r4c3 r5c6} - n13{r5c6 .} ==> r4c5 ≠ 12
z-chain[2]: n10{r4c5 r1c3} - n12{r1c3 .} ==> r1c4 ≠ 11
z-chain[2]: n11{r5c6 r2c2} - n13{r2c2 .} ==> r1c3 ≠ 12
t-whip[2]: n12{r4c3 r6c6} - n11{r4c3 .} ==> r5c6 ≠ 13
whip[1]: n13{r5c7 .} ==> r5c7 ≠ 14
whip[1]: n14{r6c8 .} ==> r6c6 ≠ 15
whip[2]: n8{r2c2 r2c5} - n9{r2c1 .} ==> r2c2 ≠ 10
whip[1]: n10{r4c5 .} ==> r1c3 ≠ 11
whip[1]: n11{r5c6 .} ==> r1c4 ≠ 12
whip[1]: n12{r6c6 .} ==> r2c5 ≠ 13
whip[1]: n13{r5c7 .} ==> r3c5 ≠ 14
whip[1]: n14{r6c8 .} ==> r4c5 ≠ 15
t-whip[2]: n10{r4c5 r3c1} - n9{r3c5 .} ==> r2c1 ≠ 11
t-whip[2]: n15{r4c3 r7c8} - n14{r4c2 .} ==> r4c3 ≠ 13
z-chain[3]: n8{r2c5 r2c2} - r1c6{n7 n4} - r3c7{n5 .} ==> r2c5 ≠ 36
t-whip[3]: n8{r2c5 r2c2} - n7{r1c6 r1c3} - r2c6{n6 .} ==> r2c5 ≠ 34
z-chain[2]: n34{r6c6 r1c3} - n36{r1c3 .} ==> r1c4 ≠ 35
z-chain[2]: n34{r6c6 r1c3} - n32{r1c3 .} ==> r1c4 ≠ 33
z-chain[2]: n33{r6c6 r2c2} - n35{r2c2 .} ==> r1c3 ≠ 34
z-chain[2]: n33{r6c6 r2c2} - n31{r2c2 .} ==> r1c3 ≠ 32
t-whip[3]: n15{r4c3 r7c8} - n14{r4c2 r6c8} - n13{r4c2 .} ==> r4c3 ≠ 12
z-chain[4]: r3c7{n35 n5} - n6{r1c4 r2c6} - n34{r2c6 r4c5} - n36{r4c5 .} ==> r3c5 ≠ 35
whip[3]: n35{r6c8 r5c6} - n33{r5c6 r3c5} - n32{r1c4 .} ==> r4c5 ≠ 34
t-whip[4]: n31{r6c6 r2c5} - n8{r2c5 r2c2} - n7{r1c6 r1c3} - n6{r2c6 .} ==> r1c4 ≠ 32
z-chain[2]: n32{r6c6 r3c5} - n30{r3c5 .} ==> r2c5 ≠ 31
z-chain[2]: n31{r6c6 r4c5} - n29{r4c5 .} ==> r3c5 ≠ 30
t-whip[4]: n35{r6c8 r2c2} - r2c6{n34 n6} - r1c4{n6 n9} - n10{r3c1 .} ==> r1c3 ≠ 36
t-whip[4]: n15{r4c3 r7c8} - n14{r4c2 r6c8} - n13{r4c2 r5c7} - n12{r2c1 .} ==> r4c3 ≠ 11
t-whip[4]: n8{r2c5 r2c2} - n7{r1c6 r1c3} - n6{r2c6 r1c4} - r3c7{n5 .} ==> r2c5 ≠ 35
whip[1]: n35{r6c8 .} ==> r1c6 ≠ 36
biv-chain[3]: n5{r2c5 r3c7} - r1c6{n4 n7} - n8{r2c2 r2c5} ==> r2c5 ≠ 33
z-chain[2]: n33{r6c6 r4c5} - n35{r4c5 .} ==> r3c5 ≠ 34
z-chain[2]: n33{r6c6 r1c3} - n35{r1c3 .} ==> r1c4 ≠ 34
z-chain[2]: n34{r6c6 r2c2} - n32{r2c2 .} ==> r1c3 ≠ 33
z-chain[2]: n33{r6c6 r4c5} - n31{r4c5 .} ==> r3c5 ≠ 32
z-chain[2]: n32{r6c6 r5c6} - n34{r5c6 .} ==> r4c5 ≠ 33
z-chain[2]: n32{r6c6 r5c6} - n30{r5c6 .} ==> r4c5 ≠ 31
biv-chain[3]: r1c6{n7 n4} - n5{r3c7 r2c5} - n8{r2c5 r2c2} ==> r3c5 ≠ 7
whip[3]: n8{r2c2 r2c5} - r1c3{n7 n10} - n11{r3c1 .} ==> r2c2 ≠ 35
z-chain[4]: n35{r6c8 r3c1} - r3c5{n36 n9} - r1c3{n10 n7} - r2c6{n6 .} ==> r2c1 ≠ 34
z-chain[4]: r2c6{n34 n6} - r1c3{n7 n10} - r3c5{n9 n33} - n34{r5c7 .} ==> r6c8 ≠ 35
whip[1]: n35{r6c6 .} ==> r7c8 ≠ 36
biv-chain[2]: r7c8{n29 n15} - r5c4{n16 n28} ==> r6c6 ≠ 29
whip[1]: n29{r7c8 .} ==> r5c7 ≠ 30
whip[1]: n30{r6c8 .} ==> r5c6 ≠ 31
whip[1]: n31{r6c6 .} ==> r4c5 ≠ 32
whip[1]: n32{r6c6 .} ==> r3c5 ≠ 33
whip[1]: n33{r6c6 .} ==> r2c6 ≠ 34
naked-single: r2c6 = 6
hidden-single: r1c6 = 7
hidden-single: r3c8 = 4
hidden-single: r2c8 = 3
hidden-single: r1c7 = 1
hidden-single: r3c7 = 5
hidden-single: r2c5 = 8
whip[1]: n9{r3c5 .} ==> r3c1 ≠ 10, r4c2 ≠ 10, r4c3 ≠ 10
whip[1]: n10{r4c5 .} ==> r3c1 ≠ 11, r3c3 ≠ 11, r4c2 ≠ 11
whip[1]: n11{r5c6 .} ==> r2c2 ≠ 12, r4c2 ≠ 12
whip[1]: n12{r6c6 .} ==> r3c3 ≠ 13
naked-pairs: {r1c4 r3c5}{n9 n36} ==> r6c8 ≠ 36, r6c6 ≠ 36, r5c7 ≠ 36, r5c6 ≠ 36, r4c5 ≠ 36, r4c3 ≠ 36, r4c2 ≠ 36, r3c3 ≠ 36, r3c1 ≠ 36, r2c2 ≠ 36, r2c1 ≠ 36
whip[1]: n36{r3c5 .} ==> r2c1 ≠ 35, r3c1 ≠ 35, r3c3 ≠ 35, r4c2 ≠ 35, r4c3 ≠ 35, r5c6 ≠ 35, r5c7 ≠ 35, r6c6 ≠ 35
whip[1]: n35{r4c5 .} ==> r5c7 ≠ 34, r3c1 ≠ 34, r3c3 ≠ 34, r4c2 ≠ 34, r4c3 ≠ 34, r6c6 ≠ 34
whip[1]: n34{r5c6 .} ==> r5c6 ≠ 33, r2c2 ≠ 33, r4c2 ≠ 33, r4c3 ≠ 33
whip[1]: n33{r6c6 .} ==> r3c3 ≠ 32
hidden-pairs: {n11 n34}{r2c2 r5c6} ==> r5c6 ≠ 32, r5c6 ≠ 30, r2c2 ≠ 32, r2c2 ≠ 31, r2c2 ≠ 13
whip[1]: n30{r6c8 .} ==> r4c5 ≠ 29, r6c6 ≠ 31
whip[1]: n31{r5c7 .} ==> r5c7 ≠ 32
whip[1]: n32{r6c6 .} ==> r6c6 ≠ 33
hidden-pairs: {n15 n29}{r4c3 r7c8} ==> r4c3 ≠ 32, r4c3 ≠ 31
z-chain[2]: r2c1{n33 n12} - r5c6{n11 .} ==> r3c3 ≠ 33
z-chain[2]: n33{r3c1 r5c7} - n31{r5c7 .} ==> r6c6 ≠ 32
naked-single: r6c6 = 12
hidden-single: r5c6 = 11
hidden-single: r4c5 = 10
hidden-single: r3c5 = 9
hidden-single: r1c4 = 36
hidden-single: r1c3 = 35
hidden-single: r2c2 = 34
hidden-single: r5c7 = 13
hidden-single: r6c8 = 14
hidden-single: r7c8 = 15
hidden-single: r7c7 = 16
hidden-single: r8c6 = 17
hidden-single: r8c5 = 18
hidden-single: r7c4 = 19
hidden-single: r8c3 = 20
hidden-single: r8c2 = 21
hidden-single: r7c1 = 23
hidden-single: r6c1 = 24
hidden-single: r6c2 = 25
hidden-single: r7c3 = 26
hidden-single: r6c4 = 27
hidden-single: r5c4 = 28
hidden-single: r4c3 = 29
whip[1]: r3c3{n31 .} ==> r3c1 ≠ 31
whip[1]: n31{r4c2 .} ==> r2c1 ≠ 32
naked-single: r2c1 = 33
hidden-single: r3c1 = 32
hidden-single: r4c2 = 31
hidden-single: r3c3 = 30
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[4]
 -  - 35 36  -  7  1  2
33 34  -  -  8  6  -  3
32  - 30  -  9  -  5  4
 - 31 29  - 10  -  -  -
 -  -  - 28  - 11 13  -
24 25  - 27  - 12  - 14
23  - 26 19  -  - 16 15
22 21 20  - 18 17  -  -
init-time = 0.86s, solve time = 1h 9m 8.98s, total-time = 1h 9m 9.85s
nb-facts=<Fact-123394>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
