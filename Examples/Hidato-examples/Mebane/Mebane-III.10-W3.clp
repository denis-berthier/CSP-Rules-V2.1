

(solve Hidato topological 8 56

B . . . 51 . . . 
. B 15 . . . . . 
. . B . 31 . . . 
. . . B . 30 . 28 
38 . 12 . B . . . 
. . . 6 . B . . 
. . . . . 20 B . 
. . . 8 . . . B 
)


***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules topological-model   *****
undecided numbers: (1 2 3 4 5 7 9 10 11 13 14 16 17 18 19 21 22 23 24 25 26 27 29 32 33 34 35 36 37 39 40 41 42 43 44 45 46 47 48 49 50 52 53 54 55 56)
start solution 1596607457.39461
entering BRT
Starting_init_links_with_<Fact-3752>
705 candidates, 14130 csp-links and 26706 links. Density = 10.76%
starting non trivial part of solution
Entering_level_W1_with_<Fact-85427>
whip[1]: n21{r6c7 .} ==> r6c7 ≠ 22
whip[1]: n26{r6c8 .} ==> r7c5 ≠ 25
whip[1]: n25{r7c8 .} ==> r8c5 ≠ 24, r8c6 ≠ 24
whip[1]: n11{r6c3 .} ==> r7c5 ≠ 10
whip[1]: n40{r7c3 .} ==> r2c4 ≠ 41
whip[1]: n41{r8c3 .} ==> r1c3 ≠ 42, r1c4 ≠ 42
whip[1]: n33{r5c6 .} ==> r6c2 ≠ 34
whip[1]: n34{r6c5 .} ==> r7c1 ≠ 35
whip[1]: n49{r3c7 .} ==> r4c2 ≠ 48, r3c2 ≠ 48
whip[1]: n48{r4c7 .} ==> r3c1 ≠ 47, r4c1 ≠ 47
whip[1]: n5{r7c5 .} ==> r4c2 ≠ 4
whip[1]: n4{r8c6 .} ==> r3c1 ≠ 3, r3c7 ≠ 3
whip[1]: n3{r8c7 .} ==> r2c8 ≠ 2
whip[1]: n53{r3c7 .} ==> r4c2 ≠ 54, r3c2 ≠ 54
whip[1]: n54{r4c7 .} ==> r3c1 ≠ 55, r4c1 ≠ 55
whip[1]: n36{r7c3 .} ==> r2c4 ≠ 35
whip[1]: n35{r7c4 .} ==> r1c3 ≠ 34, r1c4 ≠ 34
Entering_relation_bivalue_with_<Fact-85462>
Entering_level_S2_with_<Fact-85475>
hidden-pairs: {n14 n16}{r3c2 r3c4} ==> r3c4 ≠ 56, r3c4 ≠ 55, r3c4 ≠ 54, r3c4 ≠ 53, r3c4 ≠ 49, r3c4 ≠ 48, r3c4 ≠ 47, r3c4 ≠ 46, r3c4 ≠ 45, r3c4 ≠ 44, r3c4 ≠ 43, r3c4 ≠ 42, r3c4 ≠ 41, r3c4 ≠ 35, r3c4 ≠ 34, r3c4 ≠ 33, r3c4 ≠ 32, r3c4 ≠ 24, r3c4 ≠ 3, r3c4 ≠ 2, r3c4 ≠ 1, r3c2 ≠ 56, r3c2 ≠ 55, r3c2 ≠ 47, r3c2 ≠ 46, r3c2 ≠ 45, r3c2 ≠ 44, r3c2 ≠ 43, r3c2 ≠ 42, r3c2 ≠ 41, r3c2 ≠ 40, r3c2 ≠ 36, r3c2 ≠ 35, r3c2 ≠ 34, r3c2 ≠ 3, r3c2 ≠ 2, r3c2 ≠ 1
whip[1]: n3{r8c7 .} ==> r2c1 ≠ 2, r2c4 ≠ 2
whip[1]: n2{r8c7 .} ==> r1c2 ≠ 1, r1c3 ≠ 1
whip[1]: n35{r7c4 .} ==> r2c4 ≠ 34, r2c5 ≠ 34
whip[1]: n34{r6c5 .} ==> r1c4 ≠ 33, r1c6 ≠ 33, r2c4 ≠ 33, r2c5 ≠ 33, r2c6 ≠ 33
whip[1]: n41{r8c3 .} ==> r2c4 ≠ 42, r2c5 ≠ 42
whip[1]: n42{r8c5 .} ==> r1c4 ≠ 43, r1c6 ≠ 43, r2c4 ≠ 43, r2c5 ≠ 43, r2c6 ≠ 43
whip[1]: n43{r8c6 .} ==> r1c6 ≠ 44, r1c7 ≠ 44
whip[1]: n32{r4c5 .} ==> r4c3 ≠ 33
whip[1]: n33{r5c6 .} ==> r4c2 ≠ 34, r5c2 ≠ 34
whip[1]: n34{r6c5 .} ==> r3c1 ≠ 35, r4c1 ≠ 35, r6c1 ≠ 35
whip[1]: n48{r4c7 .} ==> r4c3 ≠ 47
whip[1]: n49{r3c7 .} ==> r4c3 ≠ 48
whip[1]: n48{r4c7 .} ==> r4c2 ≠ 47, r5c2 ≠ 47
whip[1]: n47{r5c8 .} ==> r4c1 ≠ 46, r4c2 ≠ 46, r5c2 ≠ 46, r6c1 ≠ 46, r6c2 ≠ 46
whip[1]: n46{r6c8 .} ==> r6c1 ≠ 45, r7c1 ≠ 45
whip[1]: n53{r3c7 .} ==> r4c3 ≠ 54
whip[1]: n54{r4c7 .} ==> r4c2 ≠ 55, r4c3 ≠ 55, r5c2 ≠ 55
whip[1]: n55{r5c8 .} ==> r4c1 ≠ 56, r4c2 ≠ 56, r5c2 ≠ 56, r6c1 ≠ 56, r6c2 ≠ 56
Entering_level_BC2_with_<Fact-85520>
Entering_level_W2_with_<Fact-85544>
whip[2]: n13{r4c2 r4c3} - n34{r4c3 .} ==> r4c2 ≠ 35
whip[2]: n22{r8c7 r7c4} - n24{r7c4 .} ==> r8c3 ≠ 23, r7c3 ≠ 23
whip[2]: n22{r8c7 r5c4} - n24{r5c4 .} ==> r4c3 ≠ 23
Entering_level_BC3_with_<Fact-85833>
biv-chain[3]: n14{r3c2 r3c4} - n13{r4c2 r4c3} - n17{r4c3 r4c5} ==> r3c2 ≠ 16
hidden-single: r3c4 = 16
hidden-single: r3c2 = 14
Entering_level_W3_with_<Fact-85842>
whip[3]: n19{r6c7 r6c5} - n4{r6c5 r5c6} - n5{r5c4 .} ==> r6c7 ≠ 3
whip[3]: n25{r6c5 r5c6} - n18{r5c6 r5c4} - n19{r6c7 .} ==> r6c5 ≠ 24
whip[3]: n24{r8c7 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 23
whip[3]: n19{r6c5 r6c7} - n26{r6c7 r5c6} - n18{r5c6 .} ==> r6c5 ≠ 25
whip[1]: n25{r7c8 .} ==> r7c4 ≠ 24, r7c5 ≠ 24
whip[1]: n24{r8c7 .} ==> r7c4 ≠ 23, r7c5 ≠ 23, r8c5 ≠ 23
whip[3]: n25{r7c8 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 24
whip[1]: n24{r8c7 .} ==> r6c3 ≠ 23
whip[3]: n24{r8c7 r5c6} - n18{r5c6 r5c4} - n19{r6c7 .} ==> r6c5 ≠ 23
whip[1]: n23{r8c7 .} ==> r7c4 ≠ 22
whip[3]: n23{r8c7 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 22
whip[3]: n19{r6c5 r6c7} - n23{r6c7 r5c6} - n18{r5c6 .} ==> r6c5 ≠ 22
whip[3]: n18{r5c6 r5c4} - n5{r5c4 r6c5} - n19{r6c5 .} ==> r5c6 ≠ 4
whip[1]: n4{r8c6 .} ==> r4c7 ≠ 3, r5c7 ≠ 3
whip[1]: n3{r8c7 .} ==> r3c8 ≠ 2, r5c8 ≠ 2, r6c8 ≠ 2
whip[3]: n4{r8c6 r5c4} - n18{r5c4 r5c6} - n17{r4c3 .} ==> r4c5 ≠ 3
whip[1]: n3{r8c7 .} ==> r3c6 ≠ 2
whip[3]: n3{r8c7 r6c5} - n19{r6c5 r6c7} - n18{r5c4 .} ==> r5c6 ≠ 2
whip[3]: n2{r8c7 r5c4} - n18{r5c4 r5c6} - n17{r4c3 .} ==> r4c5 ≠ 1
whip[3]: n55{r5c4 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 56
whip[3]: n47{r5c4 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 46
whip[1]: n46{r6c8 .} ==> r4c3 ≠ 45, r6c3 ≠ 45
whip[3]: n19{r6c5 r6c7} - n18{r5c4 r5c6} - n46{r5c6 .} ==> r6c5 ≠ 45
whip[3]: n45{r7c8 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 44
whip[3]: n33{r5c4 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 34
whip[1]: n34{r6c5 .} ==> r4c5 ≠ 33, r4c3 ≠ 35, r6c3 ≠ 35
whip[1]: n33{r5c6 .} ==> r3c6 ≠ 32
whip[3]: n32{r2c6 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 33
whip[1]: n33{r5c6 .} ==> r4c3 ≠ 34, r6c3 ≠ 34
whip[1]: n34{r6c5 .} ==> r5c2 ≠ 35, r6c2 ≠ 35, r7c2 ≠ 35, r7c3 ≠ 35
whip[1]: n35{r7c4 .} ==> r4c1 ≠ 36, r4c2 ≠ 36, r5c2 ≠ 36, r6c1 ≠ 36, r6c2 ≠ 36, r7c1 ≠ 36, r7c2 ≠ 36
whip[1]: n36{r7c3 .} ==> r6c1 ≠ 37
whip[3]: n19{r6c5 r6c7} - n18{r5c4 r5c6} - n33{r5c6 .} ==> r6c5 ≠ 34
whip[1]: n34{r4c5 .} ==> r7c4 ≠ 35
whip[1]: n35{r5c4 .} ==> r7c3 ≠ 36
whip[2]: n32{r2c6 r4c5} - n34{r4c5 .} ==> r5c6 ≠ 33
biv-chain[2]: n34{r4c5 r1c2} - n33{r3c6 r1c3} ==> r4c5 ≠ 32
biv-chain[3]: n35{r2c1 r5c4} - n18{r5c4 r5c6} - n17{r4c3 r4c5} ==> r4c5 ≠ 34
hidden-single: r1c2 = 34
hidden-single: r1c3 = 33
hidden-single: r2c4 = 32
hidden-single: r2c1 = 35
hidden-single: r3c1 = 36
whip[1]: n43{r8c6 .} ==> r1c4 ≠ 44
whip[1]: n46{r6c8 .} ==> r4c1 ≠ 45
whip[2]: n13{r4c2 r4c3} - n46{r4c3 .} ==> r4c2 ≠ 45
whip[2]: n45{r7c8 r2c5} - n47{r2c5 .} ==> r1c4 ≠ 46
whip[2]: n46{r6c8 r2c5} - n44{r2c5 .} ==> r1c4 ≠ 45
whip[2]: n46{r6c8 r2c5} - n48{r2c5 .} ==> r1c4 ≠ 47
whip[2]: n47{r5c8 r2c5} - n49{r2c5 .} ==> r1c4 ≠ 48
whip[2]: n48{r4c7 r2c5} - n50{r2c5 .} ==> r1c4 ≠ 49
whip[2]: n56{r6c8 r2c5} - n54{r2c5 .} ==> r1c4 ≠ 55
whip[2]: n55{r5c8 r2c5} - n53{r2c5 .} ==> r1c4 ≠ 54
whip[2]: n54{r4c7 r2c5} - n52{r2c5 .} ==> r1c4 ≠ 53
whip[3]: n37{r4c1 r4c2} - n43{r4c2 r5c2} - n45{r5c2 .} ==> r4c1 ≠ 44
whip[3]: n37{r4c1 r4c2} - n44{r4c2 r5c2} - n42{r5c2 .} ==> r4c1 ≠ 43
whip[3]: n45{r7c8 r5c2} - n43{r5c2 r4c3} - n13{r4c3 .} ==> r4c2 ≠ 44
whip[3]: n37{r4c1 r4c2} - n43{r4c2 r5c2} - n41{r5c2 .} ==> r4c1 ≠ 42
whip[3]: n13{r4c2 r4c3} - n44{r4c3 r5c2} - n42{r5c2 .} ==> r4c2 ≠ 43
whip[3]: n17{r4c5 r4c3} - n42{r4c3 r5c4} - n18{r5c4 .} ==> r4c5 ≠ 43
whip[1]: n43{r8c6 .} ==> r3c6 ≠ 44
whip[3]: n18{r5c6 r5c4} - n19{r6c7 r6c5} - n43{r6c5 .} ==> r5c6 ≠ 44
whip[1]: n44{r8c7 .} ==> r4c5 ≠ 45
whip[3]: n37{r4c1 r4c2} - n42{r4c2 r5c2} - n40{r5c2 .} ==> r4c1 ≠ 41
whip[3]: n13{r4c2 r4c3} - n43{r4c3 r5c2} - n41{r5c2 .} ==> r4c2 ≠ 42
whip[3]: n17{r4c5 r4c3} - n41{r4c3 r5c4} - n18{r5c4 .} ==> r4c5 ≠ 42
whip[1]: n42{r8c5 .} ==> r3c6 ≠ 43
whip[1]: n43{r8c6 .} ==> r2c5 ≠ 44, r2c6 ≠ 44, r2c7 ≠ 44, r3c7 ≠ 44
whip[1]: n44{r8c7 .} ==> r1c6 ≠ 45, r1c7 ≠ 45, r1c8 ≠ 45, r2c5 ≠ 45, r2c6 ≠ 45, r2c7 ≠ 45, r2c8 ≠ 45
whip[1]: n45{r7c8 .} ==> r1c6 ≠ 46, r1c7 ≠ 46, r1c8 ≠ 46
whip[3]: n19{r6c7 r6c5} - n43{r6c5 r5c6} - n42{r8c5 .} ==> r6c7 ≠ 44
whip[3]: n18{r5c6 r5c4} - n19{r6c7 r6c5} - n42{r6c5 .} ==> r5c6 ≠ 43
whip[1]: n43{r8c6 .} ==> r4c7 ≠ 44, r5c7 ≠ 44
whip[1]: n44{r8c7 .} ==> r3c7 ≠ 45, r3c8 ≠ 45, r4c7 ≠ 45, r5c7 ≠ 45, r5c8 ≠ 45, r6c7 ≠ 45, r6c8 ≠ 45
whip[1]: n45{r7c8 .} ==> r2c8 ≠ 46, r3c6 ≠ 46, r3c8 ≠ 46, r5c6 ≠ 46, r5c8 ≠ 46
whip[1]: n46{r6c8 .} ==> r4c5 ≠ 47
whip[3]: n43{r8c6 r5c4} - n18{r5c4 r5c6} - n17{r4c3 .} ==> r4c5 ≠ 44
whip[1]: n44{r8c7 .} ==> r3c6 ≠ 45
whip[1]: n45{r7c8 .} ==> r2c5 ≠ 46, r2c6 ≠ 46, r2c7 ≠ 46, r3c7 ≠ 46
whip[1]: n46{r6c8 .} ==> r1c6 ≠ 47, r1c7 ≠ 47, r1c8 ≠ 47, r2c5 ≠ 47, r2c6 ≠ 47, r2c7 ≠ 47, r2c8 ≠ 47
whip[1]: n47{r5c8 .} ==> r1c6 ≠ 48, r1c7 ≠ 48, r1c8 ≠ 48
whip[3]: n18{r5c6 r5c4} - n19{r6c7 r6c5} - n44{r6c5 .} ==> r5c6 ≠ 45
whip[1]: n45{r7c8 .} ==> r4c7 ≠ 46, r5c7 ≠ 46
whip[1]: n46{r6c8 .} ==> r3c7 ≠ 47, r3c8 ≠ 47, r4c7 ≠ 47
whip[1]: n47{r5c8 .} ==> r2c8 ≠ 48, r3c6 ≠ 48, r3c8 ≠ 48
whip[3]: n45{r7c8 r5c4} - n18{r5c4 r5c6} - n17{r4c3 .} ==> r4c5 ≠ 46
whip[1]: n46{r6c8 .} ==> r3c6 ≠ 47
whip[1]: n47{r5c8 .} ==> r2c5 ≠ 48, r2c6 ≠ 48, r2c7 ≠ 48, r3c7 ≠ 48
whip[1]: n48{r4c7 .} ==> r1c6 ≠ 49, r1c7 ≠ 49, r2c5 ≠ 49, r2c6 ≠ 49, r2c7 ≠ 49
whip[1]: n49{r3c7 .} ==> r1c4 ≠ 50, r1c6 ≠ 50
whip[2]: n2{r8c7 r2c6} - n50{r2c6 .} ==> r2c5 ≠ 1
whip[2]: n3{r8c7 r3c6} - n49{r3c6 .} ==> r3c7 ≠ 2
biv-chain[3]: n48{r4c7 r4c5} - n17{r4c5 r4c3} - n18{r5c6 r5c4} ==> r5c4 ≠ 47
whip[1]: n47{r5c8 .} ==> r4c3 ≠ 46, r6c3 ≠ 46
whip[1]: n46{r6c8 .} ==> r5c2 ≠ 45, r6c2 ≠ 45, r7c2 ≠ 45, r7c3 ≠ 45
whip[1]: n45{r7c8 .} ==> r5c2 ≠ 44, r6c1 ≠ 44, r6c2 ≠ 44, r7c1 ≠ 44, r7c2 ≠ 44, r8c1 ≠ 44, r8c2 ≠ 44
whip[1]: n44{r8c7 .} ==> r4c3 ≠ 43, r6c1 ≠ 43, r7c1 ≠ 43, r8c1 ≠ 43
whip[3]: n19{r6c5 r6c7} - n18{r5c4 r5c6} - n47{r5c6 .} ==> r6c5 ≠ 46
whip[1]: n46{r6c8 .} ==> r5c4 ≠ 45, r7c4 ≠ 45, r7c5 ≠ 45
hidden-single: r7c8 = 45
hidden-single: r8c7 = 44
hidden-single: r8c6 = 43
whip[1]: n42{r8c5 .} ==> r4c2 ≠ 41, r4c3 ≠ 41, r5c2 ≠ 41, r5c4 ≠ 41, r6c1 ≠ 41, r6c2 ≠ 41, r6c3 ≠ 41, r7c1 ≠ 41, r7c2 ≠ 41, r7c3 ≠ 41, r8c1 ≠ 41, r8c2 ≠ 41, r8c3 ≠ 41
hidden-single: r7c4 = 41
whip[1]: n40{r7c3 .} ==> r4c1 ≠ 39, r4c2 ≠ 39, r6c1 ≠ 39
whip[1]: r6c1{n3 .} ==> r2c5 ≠ 2, r2c6 ≠ 2, r2c7 ≠ 2, r4c1 ≠ 2, r4c2 ≠ 2, r4c3 ≠ 2, r4c5 ≠ 2, r4c7 ≠ 2, r5c4 ≠ 2, r5c7 ≠ 2, r6c3 ≠ 2, r6c5 ≠ 2, r6c7 ≠ 2, r7c3 ≠ 2, r7c5 ≠ 2, r8c1 ≠ 2, r8c2 ≠ 2, r8c3 ≠ 2, r8c5 ≠ 2
whip[1]: n2{r7c2 .} ==> r7c5 ≠ 3, r1c4 ≠ 1, r1c6 ≠ 1, r1c7 ≠ 1, r1c8 ≠ 1, r2c6 ≠ 1, r2c7 ≠ 1, r2c8 ≠ 1, r3c6 ≠ 1, r3c7 ≠ 1, r3c8 ≠ 1, r4c7 ≠ 1, r5c4 ≠ 1, r5c6 ≠ 1, r5c7 ≠ 1, r5c8 ≠ 1, r6c5 ≠ 1, r6c7 ≠ 1, r6c8 ≠ 1, r3c6 ≠ 3, r5c4 ≠ 3, r5c6 ≠ 3, r6c5 ≠ 3, r8c5 ≠ 3, r7c5 ≠ 1, r8c5 ≠ 1
whip[1]: n3{r8c3 .} ==> r7c5 ≠ 4, r4c5 ≠ 4, r6c5 ≠ 4, r8c5 ≠ 4
whip[1]: n4{r8c3 .} ==> r7c5 ≠ 5
whip[1]: r1c8{n56 .} ==> r1c6 ≠ 55, r2c5 ≠ 55, r2c6 ≠ 55, r3c6 ≠ 55, r3c7 ≠ 55, r3c8 ≠ 55, r4c5 ≠ 55, r4c7 ≠ 55, r5c4 ≠ 55, r5c6 ≠ 55, r5c7 ≠ 55, r5c8 ≠ 55
whip[1]: n55{r2c8 .} ==> r4c7 ≠ 56, r2c5 ≠ 54, r1c4 ≠ 56, r2c5 ≠ 56, r4c3 ≠ 56, r4c5 ≠ 56, r5c6 ≠ 56, r5c7 ≠ 56, r5c8 ≠ 56, r6c3 ≠ 56, r6c5 ≠ 56, r6c7 ≠ 56, r6c8 ≠ 56, r4c5 ≠ 54, r4c7 ≠ 54
naked-single: r1c4 = 52
hidden-single: r2c5 = 53
hidden-single: r2c6 = 50
whip[1]: n54{r3c6 .} ==> r1c8 ≠ 55, r2c8 ≠ 55
naked-single: r1c8 = 56
naked-single: r1c6 = 54
naked-single: r1c7 = 55
whip[1]: r2c7{n26 .} ==> r4c5 ≠ 25, r4c7 ≠ 25, r5c6 ≠ 25, r5c7 ≠ 25, r5c8 ≠ 25, r6c7 ≠ 25, r6c8 ≠ 25, r4c7 ≠ 26, r5c6 ≠ 26, r5c7 ≠ 26, r5c8 ≠ 26, r6c7 ≠ 26, r6c8 ≠ 26
whip[1]: n26{r3c8 .} ==> r5c7 ≠ 27, r5c8 ≠ 27
whip[1]: n25{r3c8 .} ==> r5c7 ≠ 24, r5c6 ≠ 24, r5c8 ≠ 24, r6c7 ≠ 24, r6c8 ≠ 24
whip[1]: n24{r4c7 .} ==> r6c7 ≠ 23, r6c8 ≠ 23
whip[1]: r2c8{n26 .} ==> r3c6 ≠ 25, r3c6 ≠ 26
whip[1]: n25{r3c8 .} ==> r4c5 ≠ 24
whip[1]: r8c1{n3 .} ==> r5c2 ≠ 2, r6c1 ≠ 2, r6c2 ≠ 2
whip[1]: n2{r7c2 .} ==> r4c1 ≠ 1, r4c2 ≠ 1, r4c3 ≠ 1, r5c2 ≠ 1, r4c1 ≠ 3, r4c2 ≠ 3, r4c3 ≠ 3, r5c2 ≠ 3
naked-single: r4c1 = 37
naked-single: r4c2 = 13
whip[1]: n3{r8c3 .} ==> r4c3 ≠ 4
naked-single: r4c3 = 17
hidden-single: r5c4 = 18
hidden-single: r6c5 = 19
whip[1]: n10{r7c3 .} ==> r7c5 ≠ 9, r8c5 ≠ 9
whip[1]: n23{r5c8 .} ==> r7c5 ≠ 22, r8c5 ≠ 22
whip[1]: n22{r6c8 .} ==> r7c5 ≠ 21, r8c5 ≠ 21
hidden-single: r6c7 = 21
hidden-single: r6c8 = 46
naked-single: r8c5 = 42
naked-single: r7c5 = 7
whip[1]: n47{r5c8 .} ==> r4c5 ≠ 48
hidden-single: r4c7 = 48
naked-single: r4c5 = 23
hidden-single: r3c6 = 24
hidden-single: r3c7 = 49
hidden-single: r2c7 = 25
hidden-single: r3c8 = 27
hidden-single: r2c8 = 26
hidden-single: r5c7 = 29
hidden-single: r5c8 = 47
hidden-single: r5c6 = 22
hidden-pairs: {n5 n40}{r6c3 r7c3} ==> r7c3 ≠ 10, r7c3 ≠ 9, r7c3 ≠ 4, r7c3 ≠ 3, r7c3 ≠ 1, r6c3 ≠ 11, r6c3 ≠ 10, r6c3 ≠ 4, r6c3 ≠ 3, r6c3 ≠ 1
hidden-single: r8c3 = 9
hidden-single: r7c2 = 10
hidden-single: r6c2 = 11
hidden-single: r5c2 = 39
hidden-single: r8c2 = 4
hidden-single: r7c3 = 5
hidden-single: r6c3 = 40
hidden-single: r7c1 = 2
hidden-single: r8c1 = 3
hidden-single: r6c1 = 1
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[3]
 - 34 33 52 51 54 55 56
35  - 15 32 53 50 25 26
36 14  - 16 31 24 49 27
37 13 17  - 23 30 48 28
38 39 12 18  - 22 29 47
 1 11 40  6 19  - 21 46
 2 10  5 41  7 20  - 45
 3  4  9  8 42 43 44  -
init-time = 0.21s, solve time = 1m 37.72s, total-time = 1m 37.93s
nb-facts=<Fact-86517>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




We get a different resolution path (and longer resolution time) if z-chains and t-whips are activated:
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules topological-model   *****
undecided numbers: (1 2 3 4 5 7 9 10 11 13 14 16 17 18 19 21 22 23 24 25 26 27 29 32 33 34 35 36 37 39 40 41 42 43 44 45 46 47 48 49 50 52 53 54 55 56)
start solution 1596610031.05297
entering BRT
Starting_init_links_with_<Fact-3753>
705 candidates, 14130 csp-links and 26706 links. Density = 10.76%
starting non trivial part of solution
Entering_level_W1_with_<Fact-85428>
whip[1]: n21{r6c7 .} ==> r6c7 ≠ 22
whip[1]: n26{r6c8 .} ==> r7c5 ≠ 25
whip[1]: n25{r7c8 .} ==> r8c5 ≠ 24, r8c6 ≠ 24
whip[1]: n11{r6c3 .} ==> r7c5 ≠ 10
whip[1]: n40{r7c3 .} ==> r2c4 ≠ 41
whip[1]: n41{r8c3 .} ==> r1c3 ≠ 42, r1c4 ≠ 42
whip[1]: n33{r5c6 .} ==> r6c2 ≠ 34
whip[1]: n34{r6c5 .} ==> r7c1 ≠ 35
whip[1]: n49{r3c7 .} ==> r4c2 ≠ 48, r3c2 ≠ 48
whip[1]: n48{r4c7 .} ==> r3c1 ≠ 47, r4c1 ≠ 47
whip[1]: n5{r7c5 .} ==> r4c2 ≠ 4
whip[1]: n4{r8c6 .} ==> r3c1 ≠ 3, r3c7 ≠ 3
whip[1]: n3{r8c7 .} ==> r2c8 ≠ 2
whip[1]: n53{r3c7 .} ==> r4c2 ≠ 54, r3c2 ≠ 54
whip[1]: n54{r4c7 .} ==> r3c1 ≠ 55, r4c1 ≠ 55
whip[1]: n36{r7c3 .} ==> r2c4 ≠ 35
whip[1]: n35{r7c4 .} ==> r1c3 ≠ 34, r1c4 ≠ 34
Entering_relation_bivalue_with_<Fact-85463>
Entering_level_S2_with_<Fact-85476>
hidden-pairs: {n14 n16}{r3c2 r3c4} ==> r3c4 ≠ 56, r3c4 ≠ 55, r3c4 ≠ 54, r3c4 ≠ 53, r3c4 ≠ 49, r3c4 ≠ 48, r3c4 ≠ 47, r3c4 ≠ 46, r3c4 ≠ 45, r3c4 ≠ 44, r3c4 ≠ 43, r3c4 ≠ 42, r3c4 ≠ 41, r3c4 ≠ 35, r3c4 ≠ 34, r3c4 ≠ 33, r3c4 ≠ 32, r3c4 ≠ 24, r3c4 ≠ 3, r3c4 ≠ 2, r3c4 ≠ 1, r3c2 ≠ 56, r3c2 ≠ 55, r3c2 ≠ 47, r3c2 ≠ 46, r3c2 ≠ 45, r3c2 ≠ 44, r3c2 ≠ 43, r3c2 ≠ 42, r3c2 ≠ 41, r3c2 ≠ 40, r3c2 ≠ 36, r3c2 ≠ 35, r3c2 ≠ 34, r3c2 ≠ 3, r3c2 ≠ 2, r3c2 ≠ 1
whip[1]: n3{r8c7 .} ==> r2c1 ≠ 2, r2c4 ≠ 2
whip[1]: n2{r8c7 .} ==> r1c2 ≠ 1, r1c3 ≠ 1
whip[1]: n35{r7c4 .} ==> r2c4 ≠ 34, r2c5 ≠ 34
whip[1]: n34{r6c5 .} ==> r1c4 ≠ 33, r1c6 ≠ 33, r2c4 ≠ 33, r2c5 ≠ 33, r2c6 ≠ 33
whip[1]: n41{r8c3 .} ==> r2c4 ≠ 42, r2c5 ≠ 42
whip[1]: n42{r8c5 .} ==> r1c4 ≠ 43, r1c6 ≠ 43, r2c4 ≠ 43, r2c5 ≠ 43, r2c6 ≠ 43
whip[1]: n43{r8c6 .} ==> r1c6 ≠ 44, r1c7 ≠ 44
whip[1]: n32{r4c5 .} ==> r4c3 ≠ 33
whip[1]: n33{r5c6 .} ==> r4c2 ≠ 34, r5c2 ≠ 34
whip[1]: n34{r6c5 .} ==> r3c1 ≠ 35, r4c1 ≠ 35, r6c1 ≠ 35
whip[1]: n48{r4c7 .} ==> r4c3 ≠ 47
whip[1]: n49{r3c7 .} ==> r4c3 ≠ 48
whip[1]: n48{r4c7 .} ==> r4c2 ≠ 47, r5c2 ≠ 47
whip[1]: n47{r5c8 .} ==> r4c1 ≠ 46, r4c2 ≠ 46, r5c2 ≠ 46, r6c1 ≠ 46, r6c2 ≠ 46
whip[1]: n46{r6c8 .} ==> r6c1 ≠ 45, r7c1 ≠ 45
whip[1]: n53{r3c7 .} ==> r4c3 ≠ 54
whip[1]: n54{r4c7 .} ==> r4c2 ≠ 55, r4c3 ≠ 55, r5c2 ≠ 55
whip[1]: n55{r5c8 .} ==> r4c1 ≠ 56, r4c2 ≠ 56, r5c2 ≠ 56, r6c1 ≠ 56, r6c2 ≠ 56
Entering_level_BC2_with_<Fact-85521>
Entering_level_Z2_with_<Fact-85544>
z-chain[2]: n24{r8c7 r5c4} - n22{r5c4 .} ==> r4c3 ≠ 23
z-chain[2]: n34{r6c5 r4c3} - n13{r4c3 .} ==> r4c2 ≠ 35
z-chain[2]: n24{r8c7 r7c4} - n22{r7c4 .} ==> r7c3 ≠ 23
z-chain[2]: n24{r8c7 r7c4} - n22{r7c4 .} ==> r8c3 ≠ 23
Entering_level_tW2_with_<Fact-85834>
Entering_level_W2_with_<Fact-85835>
Entering_level_BC3_with_<Fact-85836>
biv-chain[3]: n14{r3c2 r3c4} - n13{r4c2 r4c3} - n17{r4c3 r4c5} ==> r3c2 ≠ 16
hidden-single: r3c4 = 16
hidden-single: r3c2 = 14
Entering_level_Z3_with_<Fact-85844>
z-chain[3]: n32{r3c6 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 33
whip[1]: n33{r5c6 .} ==> r4c3 ≠ 34, r6c3 ≠ 34
whip[1]: n34{r6c5 .} ==> r5c2 ≠ 35, r6c2 ≠ 35, r7c2 ≠ 35, r7c3 ≠ 35
whip[1]: n35{r7c4 .} ==> r4c1 ≠ 36, r6c1 ≠ 36, r7c1 ≠ 36
z-chain[2]: n35{r7c4 r4c3} - n13{r4c3 .} ==> r4c2 ≠ 36
z-chain[3]: n33{r5c6 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 34
whip[1]: n34{r6c5 .} ==> r4c5 ≠ 33, r4c3 ≠ 35, r6c3 ≠ 35
whip[1]: n35{r7c4 .} ==> r5c2 ≠ 36, r6c2 ≠ 36, r7c2 ≠ 36
whip[1]: n36{r7c3 .} ==> r6c1 ≠ 37
whip[1]: n33{r5c6 .} ==> r3c6 ≠ 32
z-chain[3]: n33{r3c6 r5c6} - n18{r5c6 r5c4} - n19{r6c7 .} ==> r6c5 ≠ 34
whip[1]: n34{r4c5 .} ==> r7c4 ≠ 35
whip[1]: n35{r5c4 .} ==> r7c3 ≠ 36
z-chain[2]: n34{r1c2 r4c5} - n32{r4c5 .} ==> r5c6 ≠ 33
biv-chain[2]: n34{r4c5 r1c2} - n33{r3c6 r1c3} ==> r4c5 ≠ 32
biv-chain[3]: n35{r2c1 r5c4} - n18{r5c4 r5c6} - n17{r4c3 r4c5} ==> r4c5 ≠ 34
hidden-single: r1c2 = 34
hidden-single: r1c3 = 33
hidden-single: r2c4 = 32
hidden-single: r2c1 = 35
hidden-single: r3c1 = 36
whip[1]: n43{r8c6 .} ==> r1c4 ≠ 44
whip[1]: n46{r6c8 .} ==> r4c1 ≠ 45
z-chain[2]: n54{r4c7 r2c5} - n56{r2c5 .} ==> r1c4 ≠ 55
z-chain[2]: n53{r3c7 r2c5} - n55{r2c5 .} ==> r1c4 ≠ 54
z-chain[2]: n52{r2c6 r2c5} - n54{r2c5 .} ==> r1c4 ≠ 53
z-chain[2]: n50{r2c6 r2c5} - n48{r2c5 .} ==> r1c4 ≠ 49
z-chain[2]: n47{r5c8 r2c5} - n49{r2c5 .} ==> r1c4 ≠ 48
z-chain[2]: n46{r6c8 r2c5} - n48{r2c5 .} ==> r1c4 ≠ 47
z-chain[2]: n45{r7c8 r2c5} - n47{r2c5 .} ==> r1c4 ≠ 46
z-chain[2]: n44{r8c7 r2c5} - n46{r2c5 .} ==> r1c4 ≠ 45
z-chain[2]: n46{r6c8 r4c3} - n13{r4c3 .} ==> r4c2 ≠ 45
z-chain[3]: n4{r8c6 r5c2} - n2{r5c2 r4c2} - n37{r4c2 .} ==> r4c1 ≠ 3
z-chain[3]: n37{r4c1 r4c2} - n43{r4c2 r5c2} - n45{r5c2 .} ==> r4c1 ≠ 44
z-chain[3]: n18{r5c4 r5c6} - n17{r4c3 r4c5} - n54{r4c5 .} ==> r5c4 ≠ 55
whip[1]: n55{r5c8 .} ==> r4c3 ≠ 56, r6c3 ≠ 56
z-chain[3]: n55{r5c8 r4c5} - n17{r4c5 r4c3} - n18{r5c6 .} ==> r5c4 ≠ 56
z-chain[3]: n55{r5c8 r5c6} - n18{r5c6 r5c4} - n19{r6c7 .} ==> r6c5 ≠ 56
z-chain[3]: n17{r4c5 r4c3} - n18{r5c6 r5c4} - n41{r5c4 .} ==> r4c5 ≠ 42
whip[1]: n42{r8c5 .} ==> r3c6 ≠ 43
whip[1]: n43{r8c6 .} ==> r2c5 ≠ 44, r2c6 ≠ 44, r2c7 ≠ 44, r3c7 ≠ 44
whip[1]: n44{r8c7 .} ==> r1c6 ≠ 45, r1c7 ≠ 45, r1c8 ≠ 45, r2c8 ≠ 45
z-chain[3]: n42{r8c5 r5c4} - n18{r5c4 r5c6} - n17{r4c3 .} ==> r4c5 ≠ 43
whip[1]: n43{r8c6 .} ==> r3c6 ≠ 44
whip[1]: n44{r8c7 .} ==> r2c5 ≠ 45, r2c6 ≠ 45, r2c7 ≠ 45
whip[1]: n45{r7c8 .} ==> r1c6 ≠ 46, r1c7 ≠ 46, r1c8 ≠ 46
z-chain[3]: n43{r8c6 r6c5} - n19{r6c5 r6c7} - n18{r5c4 .} ==> r5c6 ≠ 44
z-chain[3]: n44{r8c7 r5c4} - n18{r5c4 r5c6} - n17{r4c3 .} ==> r4c5 ≠ 45
z-chain[3]: n42{r8c5 r6c5} - n19{r6c5 r6c7} - n18{r5c4 .} ==> r5c6 ≠ 43
whip[1]: n43{r8c6 .} ==> r4c7 ≠ 44, r5c7 ≠ 44, r6c7 ≠ 44
whip[1]: n44{r8c7 .} ==> r3c7 ≠ 45, r3c8 ≠ 45, r4c7 ≠ 45, r5c7 ≠ 45, r5c8 ≠ 45, r6c7 ≠ 45, r6c8 ≠ 45
whip[1]: n45{r7c8 .} ==> r2c8 ≠ 46, r3c6 ≠ 46, r3c8 ≠ 46, r5c8 ≠ 46
z-chain[3]: n45{r7c8 r6c5} - n19{r6c5 r6c7} - n18{r5c4 .} ==> r5c6 ≠ 46
z-chain[3]: n46{r6c8 r5c4} - n18{r5c4 r5c6} - n17{r4c3 .} ==> r4c5 ≠ 47
whip[1]: n47{r5c8 .} ==> r5c4 ≠ 46
whip[1]: n46{r6c8 .} ==> r4c3 ≠ 45, r6c3 ≠ 45, r6c5 ≠ 45
whip[1]: n45{r7c8 .} ==> r5c4 ≠ 44
z-chain[3]: n43{r8c6 r5c4} - n18{r5c4 r5c6} - n17{r4c3 .} ==> r4c5 ≠ 44
whip[1]: n44{r8c7 .} ==> r3c6 ≠ 45
whip[1]: n45{r7c8 .} ==> r2c5 ≠ 46, r2c6 ≠ 46, r2c7 ≠ 46, r3c7 ≠ 46
whip[1]: n46{r6c8 .} ==> r1c6 ≠ 47, r1c7 ≠ 47, r1c8 ≠ 47, r2c5 ≠ 47, r2c6 ≠ 47, r2c7 ≠ 47, r2c8 ≠ 47
whip[1]: n47{r5c8 .} ==> r1c6 ≠ 48, r1c7 ≠ 48, r1c8 ≠ 48
z-chain[3]: n44{r8c7 r6c5} - n19{r6c5 r6c7} - n18{r5c4 .} ==> r5c6 ≠ 45
whip[1]: n45{r7c8 .} ==> r4c7 ≠ 46, r5c7 ≠ 46
whip[1]: n46{r6c8 .} ==> r3c7 ≠ 47, r3c8 ≠ 47, r4c7 ≠ 47
whip[1]: n47{r5c8 .} ==> r2c8 ≠ 48, r3c6 ≠ 48, r3c8 ≠ 48
z-chain[3]: n45{r7c8 r5c4} - n18{r5c4 r5c6} - n17{r4c3 .} ==> r4c5 ≠ 46
whip[1]: n46{r6c8 .} ==> r3c6 ≠ 47
whip[1]: n47{r5c8 .} ==> r2c5 ≠ 48, r2c6 ≠ 48, r2c7 ≠ 48, r3c7 ≠ 48
whip[1]: n48{r4c7 .} ==> r1c6 ≠ 49, r1c7 ≠ 49, r2c5 ≠ 49, r2c6 ≠ 49, r2c7 ≠ 49
whip[1]: n49{r3c7 .} ==> r1c4 ≠ 50, r1c6 ≠ 50
biv-chain[3]: n48{r4c7 r4c5} - n17{r4c5 r4c3} - n18{r5c6 r5c4} ==> r5c4 ≠ 47
whip[1]: n47{r5c8 .} ==> r4c3 ≠ 46, r6c3 ≠ 46
whip[1]: n46{r6c8 .} ==> r5c2 ≠ 45, r6c2 ≠ 45, r7c2 ≠ 45, r7c3 ≠ 45
whip[1]: n45{r7c8 .} ==> r4c2 ≠ 44, r5c2 ≠ 44, r6c1 ≠ 44, r6c2 ≠ 44, r7c1 ≠ 44, r7c2 ≠ 44, r8c1 ≠ 44, r8c2 ≠ 44
whip[1]: n44{r8c7 .} ==> r4c1 ≠ 43, r4c3 ≠ 43, r6c1 ≠ 43, r7c1 ≠ 43, r8c1 ≠ 43
z-chain[2]: n44{r8c7 r4c3} - n13{r4c3 .} ==> r4c2 ≠ 43
z-chain[3]: n47{r5c8 r5c6} - n18{r5c6 r5c4} - n19{r6c7 .} ==> r6c5 ≠ 46
whip[1]: n46{r6c8 .} ==> r5c4 ≠ 45, r7c4 ≠ 45, r7c5 ≠ 45
hidden-single: r7c8 = 45
hidden-single: r8c7 = 44
hidden-single: r8c6 = 43
whip[1]: n42{r8c5 .} ==> r4c1 ≠ 41, r4c2 ≠ 41, r4c3 ≠ 41, r5c2 ≠ 41, r5c4 ≠ 41, r6c1 ≠ 41, r6c2 ≠ 41, r6c3 ≠ 41, r7c1 ≠ 41, r7c2 ≠ 41, r7c3 ≠ 41, r8c1 ≠ 41, r8c2 ≠ 41, r8c3 ≠ 41
hidden-single: r7c4 = 41
whip[1]: n40{r7c3 .} ==> r4c1 ≠ 39, r4c2 ≠ 39, r6c1 ≠ 39
whip[1]: r6c1{n3 .} ==> r2c5 ≠ 2, r2c6 ≠ 2, r2c7 ≠ 2, r3c6 ≠ 2, r3c7 ≠ 2, r3c8 ≠ 2, r4c1 ≠ 2, r4c2 ≠ 2, r4c3 ≠ 2, r4c5 ≠ 2, r4c7 ≠ 2, r5c4 ≠ 2, r5c6 ≠ 2, r5c7 ≠ 2, r5c8 ≠ 2, r6c3 ≠ 2, r6c5 ≠ 2, r6c7 ≠ 2, r6c8 ≠ 2, r7c3 ≠ 2, r7c5 ≠ 2, r8c1 ≠ 2, r8c2 ≠ 2, r8c3 ≠ 2, r8c5 ≠ 2
whip[1]: n2{r7c2 .} ==> r7c5 ≠ 3, r1c4 ≠ 1, r1c6 ≠ 1, r1c7 ≠ 1, r1c8 ≠ 1, r2c5 ≠ 1, r2c6 ≠ 1, r2c7 ≠ 1, r2c8 ≠ 1, r3c6 ≠ 1, r3c7 ≠ 1, r3c8 ≠ 1, r4c5 ≠ 1, r4c7 ≠ 1, r5c4 ≠ 1, r5c6 ≠ 1, r5c7 ≠ 1, r5c8 ≠ 1, r6c5 ≠ 1, r6c7 ≠ 1, r6c8 ≠ 1, r3c6 ≠ 3, r4c5 ≠ 3, r4c7 ≠ 3, r5c4 ≠ 3, r5c6 ≠ 3, r5c7 ≠ 3, r6c5 ≠ 3, r6c7 ≠ 3, r8c5 ≠ 3, r7c5 ≠ 1, r8c5 ≠ 1
whip[1]: n3{r8c3 .} ==> r7c5 ≠ 4, r4c5 ≠ 4, r5c6 ≠ 4, r6c5 ≠ 4, r8c5 ≠ 4
whip[1]: n4{r8c3 .} ==> r7c5 ≠ 5
whip[1]: r1c8{n56 .} ==> r1c6 ≠ 55, r2c5 ≠ 55, r2c6 ≠ 55, r3c6 ≠ 55, r3c7 ≠ 55, r3c8 ≠ 55, r4c5 ≠ 55, r4c7 ≠ 55, r5c6 ≠ 55, r5c7 ≠ 55, r5c8 ≠ 55
whip[1]: n55{r2c8 .} ==> r4c7 ≠ 56, r2c5 ≠ 54, r1c4 ≠ 56, r2c5 ≠ 56, r4c5 ≠ 56, r5c6 ≠ 56, r5c7 ≠ 56, r5c8 ≠ 56, r6c7 ≠ 56, r6c8 ≠ 56, r4c5 ≠ 54, r4c7 ≠ 54
naked-single: r1c4 = 52
hidden-single: r2c5 = 53
hidden-single: r2c6 = 50
whip[1]: n54{r3c6 .} ==> r1c8 ≠ 55, r2c8 ≠ 55
naked-single: r1c8 = 56
naked-single: r1c6 = 54
naked-single: r1c7 = 55
whip[1]: r2c7{n26 .} ==> r4c5 ≠ 25, r4c7 ≠ 25, r5c6 ≠ 25, r5c7 ≠ 25, r5c8 ≠ 25, r6c5 ≠ 25, r6c7 ≠ 25, r6c8 ≠ 25, r4c7 ≠ 26, r5c6 ≠ 26, r5c7 ≠ 26, r5c8 ≠ 26, r6c7 ≠ 26, r6c8 ≠ 26
whip[1]: n26{r3c8 .} ==> r5c7 ≠ 27, r5c8 ≠ 27
whip[1]: n25{r3c8 .} ==> r5c7 ≠ 24, r5c4 ≠ 24, r5c6 ≠ 24, r5c8 ≠ 24, r6c5 ≠ 24, r6c7 ≠ 24, r6c8 ≠ 24, r7c5 ≠ 24
whip[1]: n24{r4c7 .} ==> r6c5 ≠ 23, r6c3 ≠ 23, r6c7 ≠ 23, r6c8 ≠ 23, r7c5 ≠ 23, r8c5 ≠ 23
whip[1]: n23{r5c8 .} ==> r7c5 ≠ 22, r8c5 ≠ 22
whip[1]: n22{r6c8 .} ==> r8c5 ≠ 21
whip[1]: r2c8{n26 .} ==> r3c6 ≠ 25, r3c6 ≠ 26
whip[1]: n25{r3c8 .} ==> r4c5 ≠ 24
whip[1]: n24{r4c7 .} ==> r5c4 ≠ 23
whip[1]: r8c1{n3 .} ==> r5c2 ≠ 2, r6c1 ≠ 2, r6c2 ≠ 2
whip[1]: n2{r7c2 .} ==> r4c1 ≠ 1, r4c2 ≠ 1, r4c3 ≠ 1, r5c2 ≠ 1, r4c2 ≠ 3, r4c3 ≠ 3, r5c2 ≠ 3
naked-single: r4c1 = 37
naked-single: r4c2 = 13
whip[1]: n3{r8c3 .} ==> r4c3 ≠ 4
naked-single: r4c3 = 17
hidden-single: r5c4 = 18
hidden-single: r6c5 = 19
whip[1]: n10{r7c3 .} ==> r7c5 ≠ 9, r8c5 ≠ 9
naked-single: r8c5 = 42
whip[1]: n22{r6c8 .} ==> r7c5 ≠ 21
hidden-single: r6c7 = 21
hidden-single: r6c8 = 46
naked-single: r7c5 = 7
whip[1]: n47{r5c8 .} ==> r4c5 ≠ 48
hidden-single: r4c7 = 48
naked-single: r4c5 = 23
hidden-single: r3c6 = 24
hidden-single: r3c7 = 49
hidden-single: r2c7 = 25
hidden-single: r3c8 = 27
hidden-single: r2c8 = 26
hidden-single: r5c7 = 29
hidden-single: r5c8 = 47
hidden-single: r5c6 = 22
hidden-pairs: {n5 n40}{r6c3 r7c3} ==> r7c3 ≠ 10, r7c3 ≠ 9, r7c3 ≠ 4, r7c3 ≠ 3, r7c3 ≠ 1, r6c3 ≠ 11, r6c3 ≠ 10, r6c3 ≠ 4, r6c3 ≠ 3, r6c3 ≠ 1
hidden-single: r8c3 = 9
hidden-single: r7c2 = 10
hidden-single: r6c2 = 11
hidden-single: r5c2 = 39
hidden-single: r8c2 = 4
hidden-single: r7c3 = 5
hidden-single: r6c3 = 40
hidden-single: r7c1 = 2
hidden-single: r8c1 = 3
hidden-single: r6c1 = 1
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = z-chain[3]
 - 34 33 52 51 54 55 56
35  - 15 32 53 50 25 26
36 14  - 16 31 24 49 27
37 13 17  - 23 30 48 28
38 39 12 18  - 22 29 47
 1 11 40  6 19  - 21 46
 2 10  5 41  7 20  - 45
 3  4  9  8 42 43 44  -
init-time = 0.12s, solve time = 5m 21.8s, total-time = 5m 21.92s
nb-facts=<Fact-87077>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
