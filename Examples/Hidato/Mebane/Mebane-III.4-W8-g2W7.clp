



(solve Hidato topological 5 19
. . B . . 
B  . . B . 
. 19 1 10 . 
. B . . B 
. . B . . 
)

***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules topological-model   *****
undecided numbers: (2 3 4 5 6 7 8 9 11 12 13 14 15 16 17 18)
start solution 1596604471.60738
entering BRT
Starting_init_links_with_<Fact-741>
199 candidates, 2480 csp-links and 4453 links. Density = 22.6%
starting non trivial part of solution
Entering_level_W1_with_<Fact-14610>
whip[1]: n18{r4c3 .} ==> r4c3 ≠ 17
whip[1]: n11{r2c3 .} ==> r2c3 ≠ 12
whip[1]: n9{r2c3 .} ==> r2c3 ≠ 8
whip[1]: n2{r4c4 .} ==> r5c1 ≠ 3, r1c5 ≠ 3, r2c5 ≠ 3, r4c1 ≠ 3
Entering_relation_bivalue_with_<Fact-14619>
Entering_level_S2_with_<Fact-14620>
Entering_level_BC2_with_<Fact-14621>
Entering_level_Z2_with_<Fact-14622>
Entering_level_tW2_with_<Fact-14624>
Entering_level_W2_with_<Fact-14680>
Entering_level_BC3_with_<Fact-14681>
Entering_level_Z3_with_<Fact-14682>
Entering_level_tW3_with_<Fact-14705>
Entering_level_W3_with_<Fact-14750>
Entering_level_BC4_with_<Fact-14751>
Entering_level_Z4_with_<Fact-14752>
Entering_level_tW4_with_<Fact-14755>
Entering_level_W4_with_<Fact-14782>
whip[4]: n8{r1c2 r2c2} - n9{r4c4 r2c3} - n6{r2c3 r1c1} - n5{r1c4 .} ==> r1c2 ≠ 7
whip[3]: n7{r5c5 r2c2} - n5{r2c2 r1c2} - n8{r1c2 .} ==> r1c1 ≠ 6
whip[4]: n12{r1c2 r2c2} - n11{r4c4 r2c3} - n14{r2c3 r1c1} - n15{r1c4 .} ==> r1c2 ≠ 13
whip[3]: n13{r5c5 r2c2} - n15{r2c2 r1c2} - n12{r1c2 .} ==> r1c1 ≠ 14
whip[4]: n17{r5c4 r4c4} - n18{r4c1 r4c3} - n15{r4c3 r5c5} - n14{r5c5 .} ==> r5c4 ≠ 16
whip[3]: n16{r5c5 r4c4} - n14{r4c4 r5c4} - n17{r5c4 .} ==> r5c5 ≠ 15
Entering_level_BC5_with_<Fact-14798>
Entering_level_Z5_with_<Fact-14799>
Entering_level_tW5_with_<Fact-14802>
Entering_level_W5_with_<Fact-14828>
whip[5]: n17{r5c4 r4c4} - n18{r4c1 r4c3} - n15{r4c3 r2c5} - n9{r2c5 r2c3} - n11{r2c3 .} ==> r3c5 ≠ 16
whip[4]: n18{r4c1 r4c3} - n16{r4c3 r5c5} - n15{r1c1 r5c4} - n14{r1c2 .} ==> r4c4 ≠ 17
whip[5]: n3{r3c5 r4c4} - n2{r4c4 r4c3} - n5{r4c3 r2c5} - n9{r2c5 r2c3} - n11{r2c3 .} ==> r3c5 ≠ 4
Entering_level_BC6_with_<Fact-14842>
Entering_level_Z6_with_<Fact-14843>
Entering_level_tW6_with_<Fact-14846>
Entering_level_W6_with_<Fact-14862>
whip[6]: n17{r5c2 r5c4} - n18{r2c2 r4c3} - n15{r4c3 r3c5} - n14{r1c2 r2c5} - n9{r2c5 r2c3} - n11{r2c3 .} ==> r4c4 ≠ 16
whip[6]: n16{r5c5 r2c5} - n17{r1c1 r1c4} - n18{r2c2 r2c3} - n14{r2c3 r4c4} - n11{r4c4 r4c3} - n9{r4c3 .} ==> r3c5 ≠ 15
whip[3]: n17{r5c4 r1c4} - n15{r1c4 r1c5} - n14{r1c2 .} ==> r2c5 ≠ 16
Entering_level_BC7_with_<Fact-14898>
Entering_level_Z7_with_<Fact-14899>
Entering_level_tW7_with_<Fact-14902>
Entering_level_W7_with_<Fact-14928>
whip[7]: n16{r5c5 r1c4} - n17{r1c1 r2c3} - n14{r2c3 r2c5} - n13{r1c1 r3c5} - n12{r1c2 r4c4} - n9{r4c4 r4c3} - n11{r4c3 .} ==> r1c5 ≠ 15
whip[7]: n18{r4c3 r2c3} - n16{r2c3 r1c5} - n15{r1c1 r2c5} - n14{r1c2 r3c5} - n13{r1c1 r4c4} - n9{r4c4 r4c3} - n11{r4c3 .} ==> r1c4 ≠ 17
whip[1]: n17{r5c4 .} ==> r1c5 ≠ 16
whip[7]: n18{r4c1 r4c3} - n16{r4c3 r5c5} - n15{r1c1 r4c4} - n14{r1c2 r3c5} - n13{r1c1 r2c5} - n9{r2c5 r2c3} - n11{r2c3 .} ==> r5c4 ≠ 17
whip[1]: n17{r5c2 .} ==> r5c5 ≠ 16
whip[7]: n8{r5c5 r2c2} - n9{r4c4 r2c3} - n6{r2c3 r4c1} - n18{r4c1 r4c3} - n17{r5c1 r5c2} - n5{r5c2 r5c1} - n4{r1c1 .} ==> r3c1 ≠ 7
whip[4]: n9{r4c4 r2c3} - n7{r2c3 r1c1} - n6{r1c4 r1c2} - n5{r1c4 .} ==> r2c2 ≠ 8
whip[7]: n12{r5c5 r2c2} - n11{r4c4 r2c3} - n14{r2c3 r4c1} - n18{r4c1 r4c3} - n17{r5c1 r5c2} - n15{r5c2 r5c1} - n16{r1c1 .} ==> r3c1 ≠ 13
whip[4]: n11{r4c4 r2c3} - n13{r2c3 r1c1} - n14{r1c4 r1c2} - n15{r1c4 .} ==> r2c2 ≠ 12
whip[7]: n3{r3c1 r2c2} - n2{r2c2 r2c3} - n5{r2c3 r4c1} - n18{r4c1 r4c3} - n17{r5c1 r5c2} - n6{r5c2 r5c1} - n7{r1c1 .} ==> r3c1 ≠ 4
whip[7]: n3{r5c5 r1c4} - n2{r4c4 r2c3} - n5{r2c3 r2c5} - n6{r2c5 r3c5} - n7{r3c5 r4c4} - n9{r4c4 r4c3} - n11{r4c3 .} ==> r1c5 ≠ 4
Entering_level_BC8_with_<Fact-15032>
Entering_level_Z8_with_<Fact-15033>
Entering_level_tW8_with_<Fact-15036>
Entering_level_W8_with_<Fact-15058>
whip[8]: n8{r5c5 r5c2} - n9{r4c4 r4c3} - n6{r4c3 r4c1} - n5{r4c1 r3c1} - n4{r5c5 r2c2} - n18{r2c2 r2c3} - n2{r2c3 r4c4} - n3{r1c1 .} ==> r5c1 ≠ 7
whip[6]: n2{r4c3 r4c4} - n4{r4c4 r5c4} - n5{r5c4 r4c3} - n6{r4c3 r5c2} - n7{r5c5 r4c1} - n8{r1c2 .} ==> r5c5 ≠ 3
whip[8]: n3{r5c4 r5c2} - n2{r2c2 r4c3} - n5{r4c3 r4c1} - n6{r1c2 r3c1} - n7{r1c1 r2c2} - n8{r1c4 r1c2} - n9{r2c5 r2c3} - n18{r2c3 .} ==> r5c1 ≠ 4
whip[7]: n8{r5c5 r1c2} - n9{r2c5 r2c3} - n6{r2c3 r3c1} - n5{r1c1 r4c1} - n18{r4c1 r4c3} - n4{r4c3 r5c2} - n3{r1c1 .} ==> r2c2 ≠ 7
whip[8]: n7{r5c5 r4c1} - n8{r1c2 r5c2} - n9{r2c3 r4c3} - n5{r4c3 r2c2} - n18{r2c2 r2c3} - n17{r1c1 r1c2} - n4{r1c2 r1c1} - n3{r1c4 .} ==> r3c1 ≠ 6
whip[3]: n4{r5c5 r5c2} - n6{r5c2 r5c1} - n7{r1c1 .} ==> r4c1 ≠ 5
whip[3]: n5{r5c5 r5c2} - n7{r5c2 r4c1} - n8{r1c2 .} ==> r5c1 ≠ 6
z-chain[2]: n8{r5c5 r5c2} - n6{r5c2 .} ==> r4c1 ≠ 7
z-chain[2]: n9{r4c4 r4c3} - n7{r4c3 .} ==> r5c2 ≠ 8
whip[4]: n3{r5c2 r4c3} - n5{r4c3 r5c1} - n6{r5c5 r4c1} - n7{r1c1 .} ==> r5c2 ≠ 4
whip[4]: n2{r4c3 r4c4} - n4{r4c4 r5c4} - n5{r1c1 r5c5} - n6{r1c2 .} ==> r4c3 ≠ 3
whip[4]: n3{r5c4 r4c4} - n2{r2c2 r4c3} - n5{r4c3 r5c5} - n6{r1c2 .} ==> r5c4 ≠ 4
whip[4]: n4{r5c5 r4c4} - n6{r4c4 r5c4} - n3{r5c4 r3c5} - n2{r2c2 .} ==> r5c5 ≠ 5
whip[4]: n2{r4c4 r4c3} - n4{r4c3 r5c5} - n5{r1c1 r5c4} - n6{r1c2 .} ==> r4c4 ≠ 3
whip[6]: n15{r5c4 r1c4} - n16{r5c2 r2c3} - r5c1{n17 n5} - n4{r5c5 r4c1} - n6{r4c1 r5c2} - r1c1{n5 .} ==> r2c5 ≠ 14
whip[3]: n14{r5c5 r4c4} - n12{r4c4 r2c5} - n11{r2c3 .} ==> r3c5 ≠ 13
whip[6]: n16{r5c2 r2c3} - n14{r2c3 r1c5} - r5c1{n15 n5} - n4{r1c1 r4c1} - n6{r4c1 r5c2} - r1c1{n5 .} ==> r1c4 ≠ 15
whip[3]: n15{r5c4 r2c5} - n13{r2c5 r1c4} - n12{r1c2 .} ==> r1c5 ≠ 14
whip[6]: n16{r5c2 r1c4} - n17{r1c1 r2c3} - n14{r2c3 r3c5} - n13{r1c1 r4c4} - n11{r4c4 r4c3} - n9{r4c3 .} ==> r2c5 ≠ 15
z-chain[2]: n17{r5c2 r2c3} - n15{r2c3 .} ==> r1c4 ≠ 16
whip[4]: n18{r2c3 r2c2} - n16{r2c2 r1c2} - n15{r3c1 r1c1} - n14{r1c4 .} ==> r2c3 ≠ 17
whip[5]: n15{r5c4 r4c4} - n16{r1c1 r4c3} - n13{r4c3 r2c5} - n11{r2c5 r2c3} - n9{r2c3 .} ==> r3c5 ≠ 14
whip[7]: n3{r5c2 r5c4} - n5{r5c4 r4c4} - n2{r4c4 r4c3} - n6{r4c3 r3c5} - n7{r1c1 r2c5} - n11{r2c5 r2c3} - n9{r2c3 .} ==> r5c5 ≠ 4
whip[7]: n18{r4c3 r2c2} - n16{r2c2 r1c2} - n15{r1c2 r2c3} - n14{r2c3 r1c4} - r5c1{n15 n5} - r3c1{n5 n3} - n2{r2c3 .} ==> r1c1 ≠ 17
whip[8]: n12{r5c5 r1c2} - n11{r2c5 r2c3} - n14{r2c3 r2c2} - n15{r5c4 r3c1} - n16{r1c1 r4c1} - n18{r4c1 r4c3} - r5c1{n17 n5} - n4{r1c1 .} ==> r1c1 ≠ 13
whip[8]: n9{r4c4 r2c3} - n7{r2c3 r1c1} - n6{r1c4 r2c2} - n5{r1c4 r3c1} - n4{r1c1 r4c1} - n18{r4c1 r4c3} - n17{r5c1 r5c2} - n3{r5c2 .} ==> r1c2 ≠ 8
whip[1]: n8{r5c5 .} ==> r1c1 ≠ 7
whip[8]: n4{r4c4 r4c1} - n6{r4c1 r5c2} - n3{r5c2 r3c1} - n2{r2c3 r2c2} - n17{r2c2 r1c2} - n18{r3c1 r2c3} - n16{r2c3 r1c1} - n15{r2c3 .} ==> r5c1 ≠ 5
z-chain[2]: n7{r5c5 r4c3} - n5{r4c3 .} ==> r5c2 ≠ 6
whip[3]: n15{r5c4 r2c3} - r5c1{n16 n17} - n16{r1c1 .} ==> r1c4 ≠ 14
whip[1]: n14{r5c5 .} ==> r1c5 ≠ 13, r2c5 ≠ 13
whip[3]: n16{r5c2 r4c3} - r5c1{n17 n13} - n14{r1c2 .} ==> r5c4 ≠ 15
t-whip[3]: n15{r5c2 r4c4} - n16{r5c2 r4c3} - r5c1{n17 .} ==> r5c5 ≠ 14
whip[3]: n16{r5c2 r4c3} - n14{r4c3 r5c4} - r5c1{n13 .} ==> r4c4 ≠ 15
z-chain[2]: n17{r5c1 r5c2} - n15{r5c2 .} ==> r4c3 ≠ 16
whip[3]: n7{r5c5 r5c2} - r1c5{n8 n12} - r5c5{n13 .} ==> r4c1 ≠ 6
z-chain[2]: n8{r5c5 r4c3} - n6{r4c3 .} ==> r5c2 ≠ 7
whip[3]: n7{r5c5 r2c3} - r1c5{n8 n12} - r5c5{n13 .} ==> r1c2 ≠ 6
whip[3]: n7{r5c5 r2c3} - r1c5{n8 n12} - r5c5{n13 .} ==> r2c2 ≠ 6
whip[1]: n6{r5c5 .} ==> r1c1 ≠ 5, r3c1 ≠ 5
z-chain[2]: n8{r5c5 r1c4} - n6{r1c4 .} ==> r2c3 ≠ 7
whip[3]: n2{r4c4 r4c3} - n4{r4c3 r4c1} - n5{r5c4 .} ==> r5c2 ≠ 3
t-whip[3]: n4{r4c4 r4c3} - n3{r3c5 r5c4} - n2{r2c2 .} ==> r4c4 ≠ 5
whip[3]: n3{r3c5 r5c4} - n5{r5c4 r5c2} - n6{r1c4 .} ==> r4c3 ≠ 4
whip[3]: n5{r5c2 r5c4} - n4{r4c1 r4c4} - n7{r4c4 .} ==> r5c5 ≠ 6
whip[3]: n4{r4c1 r4c4} - n6{r4c4 r4c3} - n7{r1c4 .} ==> r5c4 ≠ 5
whip[3]: n9{r4c3 r4c4} - n7{r4c4 r5c4} - n6{r5c4 .} ==> r4c3 ≠ 8
whip[4]: n15{r5c2 r4c3} - r5c1{n16 n17} - r3c1{n18 n3} - r1c1{n4 .} ==> r5c4 ≠ 14
whip[4]: n14{r5c2 r4c4} - n15{r1c1 r4c3} - n12{r4c3 r5c4} - n11{r2c3 .} ==> r5c5 ≠ 13
whip[3]: r5c5{n8 n12} - r1c5{n12 n5} - n6{r2c3 .} ==> r4c3 ≠ 7
whip[4]: r5c5{n8 n12} - n11{r2c3 r4c4} - n9{r4c4 r2c5} - n7{r2c5 .} ==> r3c5 ≠ 8
whip[4]: r5c5{n8 n12} - n11{r2c3 r4c4} - n8{r4c4 r2c5} - n9{r2c3 .} ==> r3c5 ≠ 7
whip[4]: n15{r5c2 r4c3} - n13{r4c3 r5c4} - n12{r1c2 r5c5} - n11{r2c3 .} ==> r4c4 ≠ 14
z-chain[2]: n16{r5c1 r5c2} - n14{r5c2 .} ==> r4c3 ≠ 15
whip[3]: n18{r4c3 r4c1} - n16{r4c1 r5c2} - n15{r5c2 .} ==> r5c1 ≠ 17
whip[2]: r5c1{n15 n16} - n15{r1c1 .} ==> r2c3 ≠ 14, r1c2 ≠ 14, r2c2 ≠ 14
whip[1]: n14{r5c2 .} ==> r1c4 ≠ 13, r2c3 ≠ 13, r1c1 ≠ 15, r1c2 ≠ 15, r2c3 ≠ 15
whip[1]: n13{r5c4 .} ==> r1c4 ≠ 12, r1c5 ≠ 12, r2c5 ≠ 12
z-chain[2]: n17{r5c2 r2c2} - n15{r2c2 .} ==> r1c2 ≠ 16
z-chain[2]: r5c1{n16 n13} - n14{r3c1 .} ==> r2c2 ≠ 15
whip[1]: n15{r5c2 .} ==> r1c1 ≠ 16, r2c3 ≠ 16
whip[1]: r1c1{n4 .} ==> r1c4 ≠ 3, r2c3 ≠ 3, r3c1 ≠ 3, r3c5 ≠ 3, r5c4 ≠ 3, r1c4 ≠ 4, r2c3 ≠ 4, r2c5 ≠ 4, r4c1 ≠ 4, r4c4 ≠ 4
whip[1]: n4{r2c2 .} ==> r3c5 ≠ 5, r1c4 ≠ 5, r1c5 ≠ 5, r2c5 ≠ 5, r4c3 ≠ 5, r5c2 ≠ 5
whip[1]: n5{r2c3 .} ==> r4c3 ≠ 6, r1c5 ≠ 6, r2c5 ≠ 6, r3c5 ≠ 6, r4c4 ≠ 6, r5c4 ≠ 6
whip[1]: n6{r2c3 .} ==> r4c4 ≠ 7, r5c4 ≠ 7, r5c5 ≠ 7
whip[1]: n7{r2c5 .} ==> r4c4 ≠ 8, r5c4 ≠ 8, r5c5 ≠ 8
naked-single: r5c5 = 12
hidden-single: r4c4 = 11
hidden-single: r5c4 = 13
hidden-single: r4c3 = 14
hidden-single: r5c2 = 15
naked-single: r5c1 = 16
hidden-single: r4c1 = 17
hidden-single: r3c1 = 18
naked-single: r3c5 = 9
hidden-single: r2c5 = 8
naked-single: r1c5 = 7
hidden-single: r1c4 = 6
hidden-single: r2c3 = 5
hidden-single: r2c2 = 2
hidden-single: r1c2 = 4
hidden-single: r1c1 = 3
GRID SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[8]
 3  4  -  6  7
 -  2  5  -  8
18 19  1 10  9
17  - 14 11  -
16 15  - 13 12
init-time = 0.01s, solve time = 29.1s, total-time = 29.11s
nb-facts=<Fact-15668>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



I haven''t coded glabels in HidatoRules, but we can still use g2-Whips:

(solve Hidato topological 5 19
. . B . .
B  . . B .
. 19 1 10 .
. B . . B
. . B . .
)

***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = g2W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
*****  Hidato-Rules topological-model   *****
undecided numbers: (2 3 4 5 6 7 8 9 11 12 13 14 15 16 17 18)
start solution 1596604568.96024
entering BRT
Starting_init_links_with_<Fact-741>
199 candidates, 2480 csp-links and 4453 links. Density = 22.6%
starting non trivial part of solution
Entering_level_W1_with_<Fact-14610>
whip[1]: n18{r4c3 .} ==> r4c3 ≠ 17
whip[1]: n11{r2c3 .} ==> r2c3 ≠ 12
whip[1]: n9{r2c3 .} ==> r2c3 ≠ 8
whip[1]: n2{r4c4 .} ==> r5c1 ≠ 3, r1c5 ≠ 3, r2c5 ≠ 3, r4c1 ≠ 3
Entering_relation_bivalue_with_<Fact-14619>
Entering_level_S2_with_<Fact-14620>
Entering_level_BC2_with_<Fact-14621>
Entering_level_Z2_with_<Fact-14622>
Entering_level_tW2_with_<Fact-14624>
Entering_level_W2_with_<Fact-14680>
Entering_level_g2W2_with_<Fact-14681>
Entering_level_BC3_with_<Fact-14803>
Entering_level_Z3_with_<Fact-14804>
Entering_level_tW3_with_<Fact-14827>
Entering_level_W3_with_<Fact-14872>
Entering_level_g2W3_with_<Fact-14873>
Entering_level_BC4_with_<Fact-15074>
Entering_level_Z4_with_<Fact-15075>
Entering_level_tW4_with_<Fact-15078>
Entering_level_W4_with_<Fact-15105>
whip[4]: n8{r1c2 r2c2} - n9{r4c4 r2c3} - n6{r2c3 r1c1} - n5{r1c4 .} ==> r1c2 ≠ 7
whip[3]: n7{r5c5 r2c2} - n5{r2c2 r1c2} - n8{r1c2 .} ==> r1c1 ≠ 6
whip[4]: n12{r1c2 r2c2} - n11{r4c4 r2c3} - n14{r2c3 r1c1} - n15{r1c4 .} ==> r1c2 ≠ 13
whip[3]: n13{r5c5 r2c2} - n15{r2c2 r1c2} - n12{r1c2 .} ==> r1c1 ≠ 14
whip[4]: n17{r5c4 r4c4} - n18{r4c1 r4c3} - n15{r4c3 r5c5} - n14{r5c5 .} ==> r5c4 ≠ 16
whip[3]: n16{r5c5 r4c4} - n14{r4c4 r5c4} - n17{r5c4 .} ==> r5c5 ≠ 15
Entering_level_g2W4_with_<Fact-15139>
Entering_level_BC5_with_<Fact-15248>
Entering_level_Z5_with_<Fact-15249>
Entering_level_tW5_with_<Fact-15252>
Entering_level_W5_with_<Fact-15278>
whip[5]: n17{r5c4 r4c4} - n18{r4c1 r4c3} - n15{r4c3 r2c5} - n9{r2c5 r2c3} - n11{r2c3 .} ==> r3c5 ≠ 16
whip[4]: n18{r4c1 r4c3} - n16{r4c3 r5c5} - n15{r1c1 r5c4} - n14{r1c2 .} ==> r4c4 ≠ 17
whip[5]: n3{r3c5 r4c4} - n2{r4c4 r4c3} - n5{r4c3 r2c5} - n9{r2c5 r2c3} - n11{r2c3 .} ==> r3c5 ≠ 4
Entering_level_g2W5_with_<Fact-15381>
Entering_level_BC6_with_<Fact-15427>
Entering_level_Z6_with_<Fact-15428>
Entering_level_tW6_with_<Fact-15431>
Entering_level_W6_with_<Fact-15447>
whip[6]: n17{r5c2 r5c4} - n18{r2c2 r4c3} - n15{r4c3 r3c5} - n14{r1c2 r2c5} - n9{r2c5 r2c3} - n11{r2c3 .} ==> r4c4 ≠ 16
whip[6]: n16{r5c5 r2c5} - n17{r1c1 r1c4} - n18{r2c2 r2c3} - n14{r2c3 r4c4} - n11{r4c4 r4c3} - n9{r4c3 .} ==> r3c5 ≠ 15
whip[3]: n17{r5c4 r1c4} - n15{r1c4 r1c5} - n14{r1c2 .} ==> r2c5 ≠ 16
Entering_level_g2W6_with_<Fact-15726>
g2-whip[6]: n2{r4c3 r4c4} - n4{r4c4 r5c4} - n5{r5c4 r4c3} - n6{r4c3 r5c2} - n7{r5c2 r5c1|r4c1} - n8{r1c2 .} ==> r5c5 ≠ 3
Entering_level_BC7_with_<Fact-15809>
Entering_level_Z7_with_<Fact-15810>
Entering_level_tW7_with_<Fact-15813>
Entering_level_W7_with_<Fact-15839>
whip[7]: n3{r5c4 r1c4} - n2{r2c2 r2c3} - n5{r2c3 r2c5} - n6{r1c2 r3c5} - n7{r1c1 r4c4} - n9{r4c4 r4c3} - n11{r4c3 .} ==> r1c5 ≠ 4
whip[7]: n16{r5c5 r1c4} - n17{r1c1 r2c3} - n14{r2c3 r2c5} - n13{r1c1 r3c5} - n12{r1c2 r4c4} - n9{r4c4 r4c3} - n11{r4c3 .} ==> r1c5 ≠ 15
whip[7]: n18{r4c3 r2c3} - n16{r2c3 r1c5} - n15{r1c1 r2c5} - n14{r1c2 r3c5} - n13{r1c1 r4c4} - n9{r4c4 r4c3} - n11{r4c3 .} ==> r1c4 ≠ 17
whip[1]: n17{r5c4 .} ==> r1c5 ≠ 16
whip[7]: n18{r4c1 r4c3} - n16{r4c3 r5c5} - n15{r1c1 r4c4} - n14{r1c2 r3c5} - n13{r1c1 r2c5} - n9{r2c5 r2c3} - n11{r2c3 .} ==> r5c4 ≠ 17
whip[1]: n17{r5c2 .} ==> r5c5 ≠ 16
whip[7]: n8{r5c5 r2c2} - n9{r4c4 r2c3} - n6{r2c3 r4c1} - n18{r4c1 r4c3} - n17{r5c1 r5c2} - n5{r5c2 r5c1} - n4{r1c1 .} ==> r3c1 ≠ 7
whip[4]: n9{r4c4 r2c3} - n7{r2c3 r1c1} - n6{r1c4 r1c2} - n5{r1c4 .} ==> r2c2 ≠ 8
whip[7]: n12{r5c5 r2c2} - n11{r4c4 r2c3} - n14{r2c3 r4c1} - n18{r4c1 r4c3} - n17{r5c1 r5c2} - n15{r5c2 r5c1} - n16{r1c1 .} ==> r3c1 ≠ 13
whip[4]: n11{r4c4 r2c3} - n13{r2c3 r1c1} - n14{r1c4 r1c2} - n15{r1c4 .} ==> r2c2 ≠ 12
whip[7]: n3{r3c1 r2c2} - n2{r2c2 r2c3} - n5{r2c3 r4c1} - n18{r4c1 r4c3} - n17{r5c1 r5c2} - n6{r5c2 r5c1} - n7{r1c1 .} ==> r3c1 ≠ 4
g2-whip[6]: n2{r2c2 r2c3} - n4{r2c3 r1c2|r1c1} - n5{r1c4 r1c2|r1c1} - n6{r1c4 r1c2} - n7{r1c4 r1c1} - n8{r1c4 .} ==> r2c2 ≠ 3
Entering_level_g2W7_with_<Fact-16508>
g2-whip[7]: n3{r5c4 r5c2} - n5{r5c2 r4c1} - n6{r1c2 r3c1} - n7{r1c1 r2c2} - n18{r2c2 r4c3|r2c3} - n17{r5c1 r1c2} - n8{r1c2 .} ==> r5c1 ≠ 4
whip[7]: n8{r5c5 r1c2} - n9{r2c5 r2c3} - n6{r2c3 r3c1} - n5{r1c1 r4c1} - n18{r4c1 r4c3} - n4{r4c3 r5c2} - n3{r1c1 .} ==> r2c2 ≠ 7
g2-whip[3]: n4{r5c5 r5c2} - n6{r5c2 r5c1|r3c1} - n7{r5c5 .} ==> r4c1 ≠ 5
whip[3]: n5{r5c5 r5c2} - n7{r5c2 r4c1} - n8{r1c2 .} ==> r5c1 ≠ 6
whip[4]: n3{r5c2 r4c3} - n5{r4c3 r5c1} - n6{r5c5 r4c1} - n7{r1c1 .} ==> r5c2 ≠ 4
whip[4]: n2{r4c3 r4c4} - n4{r4c4 r5c4} - n5{r1c1 r5c5} - n6{r1c2 .} ==> r4c3 ≠ 3
whip[4]: n3{r5c4 r4c4} - n2{r2c2 r4c3} - n5{r4c3 r5c5} - n6{r1c2 .} ==> r5c4 ≠ 4
g2-whip[3]: n4{r5c5 r4c4} - n3{r1c1 r5c4|r3c5} - n2{r2c2 .} ==> r4c3 ≠ 5
whip[4]: n4{r5c5 r4c4} - n6{r4c4 r5c4} - n3{r5c4 r3c5} - n2{r2c2 .} ==> r5c5 ≠ 5
whip[4]: n2{r4c4 r4c3} - n4{r4c3 r5c5} - n5{r1c1 r5c4} - n6{r1c2 .} ==> r4c4 ≠ 3
g2-whip[5]: n5{r5c4 r4c4} - n4{r1c1 r5c5|r4c3} - n3{r1c1 r5c2} - n7{r5c2 r5c5|r4c3} - n8{r1c2 .} ==> r5c4 ≠ 6
g2-whip[6]: n16{r5c2 r4c3} - n17{r1c1 r5c2} - n14{r5c2 r5c5|r4c4} - r5c1{n15 n7|n5} - n6{r1c2 r4c1} - n18{r4c1 .} ==> r5c4 ≠ 15
whip[4]: n15{r5c2 r4c4} - n16{r1c1 r4c3} - n13{r4c3 r5c4} - n12{r1c2 .} ==> r5c5 ≠ 14
g2-whip[5]: n6{r5c5 r5c2|r4c1} - n5{r5c4 r5c2|r3c1} - r5c5{n4 n13|n12} - r1c5{n12 n14} - n13{r1c1 .} ==> r5c1 ≠ 7
g2-whip[5]: n7{r5c5 r5c2} - n5{r5c2 r5c1|r3c1} - r5c5{n6 n13|n12} - r1c5{n12 n14} - n13{r1c1 .} ==> r4c1 ≠ 6
z-chain[2]: n8{r5c2 r4c3} - n6{r4c3 .} ==> r5c2 ≠ 7
whip[4]: n9{r4c3 r4c4} - n7{r4c4 r5c4} - n6{r1c2 r5c5} - n5{r1c1 .} ==> r4c3 ≠ 8
g2-whip[5]: n6{r5c5 r5c2} - n7{r1c1 r4c3|r4c1} - r5c5{n8 n13|n12} - r1c5{n12 n14} - n13{r1c1 .} ==> r5c1 ≠ 5
whip[1]: n5{r5c4 .} ==> r5c2 ≠ 6
t-whip[3]: n15{r5c2 r1c4} - n16{r5c2 r2c3} - r5c1{n17 .} ==> r2c5 ≠ 14
whip[3]: n16{r5c2 r1c4} - r5c1{n17 n13} - n14{r1c2 .} ==> r2c5 ≠ 15
z-chain[2]: n17{r5c2 r2c3} - n15{r2c3 .} ==> r1c4 ≠ 16
t-whip[3]: n15{r5c2 r4c4} - n16{r5c2 r4c3} - r5c1{n17 .} ==> r3c5 ≠ 14
t-whip[3]: n15{r5c2 r1c4} - n16{r5c2 r2c3} - r5c1{n17 .} ==> r1c5 ≠ 14
z-chain[2]: n16{r5c2 r2c3} - n14{r2c3 .} ==> r1c4 ≠ 15
whip[3]: n15{r5c2 r2c3} - r5c1{n16 n17} - n16{r1c1 .} ==> r1c4 ≠ 14
whip[1]: n14{r5c4 .} ==> r1c5 ≠ 13, r2c5 ≠ 13
whip[3]: n16{r5c2 r4c3} - n14{r4c3 r5c4} - r5c1{n13 .} ==> r4c4 ≠ 15
z-chain[2]: n17{r5c1 r5c2} - n15{r5c2 .} ==> r4c3 ≠ 16
whip[3]: n14{r5c4 r4c4} - n12{r4c4 r2c5} - n11{r2c3 .} ==> r3c5 ≠ 13
g2-whip[3]: n14{r5c4 r2c2|r1c2} - r5c1{n15 n17} - n16{r1c1 .} ==> r2c3 ≠ 15
whip[3]: n18{r4c3 r2c2} - n16{r2c2 r1c2} - n15{r5c2 .} ==> r1c1 ≠ 17
g2-whip[3]: n15{r5c2 r2c2|r1c1} - r5c1{n16 n13} - n14{r1c2 .} ==> r1c2 ≠ 16
z-chain[2]: n18{r2c3 r2c2} - n16{r2c2 .} ==> r2c3 ≠ 17
whip[3]: n16{r5c2 r2c2} - n14{r2c2 r1c2} - r5c1{n15 .} ==> r1c1 ≠ 15
whip[3]: n15{r5c2 r2c2} - r5c1{n16 n17} - n16{r1c1 .} ==> r1c2 ≠ 14
g2-whip[3]: n14{r5c4 r3c1|r2c3} - r5c1{n15 n17} - n16{r1c1 .} ==> r2c2 ≠ 15
whip[3]: n15{r5c2 r1c2} - r5c1{n16 n17} - n16{r1c1 .} ==> r2c3 ≠ 14
whip[1]: n14{r5c4 .} ==> r1c4 ≠ 13
whip[1]: n13{r5c5 .} ==> r1c5 ≠ 12, r2c5 ≠ 12
z-chain[2]: n7{r5c5 r4c1} - r1c5{n8 .} ==> r3c1 ≠ 6
whip[1]: n6{r5c5 .} ==> r4c1 ≠ 7
z-chain[2]: n9{r4c4 r4c3} - n7{r4c3 .} ==> r5c2 ≠ 8
z-chain[2]: n6{r5c5 r4c4} - r1c5{n5 .} ==> r5c5 ≠ 7
z-chain[2]: n6{r5c5 r4c4} - r1c5{n5 .} ==> r4c3 ≠ 7
whip[2]: r1c5{n7 n8} - n7{r1c1 .} ==> r5c5 ≠ 6, r1c2 ≠ 6, r2c2 ≠ 6, r4c3 ≠ 6, r4c4 ≠ 6
whip[1]: n6{r3c5 .} ==> r5c4 ≠ 7, r1c1 ≠ 5, r3c1 ≠ 5, r1c1 ≠ 7, r5c2 ≠ 5, r5c4 ≠ 5
whip[1]: n5{r4c4 .} ==> r4c1 ≠ 4
z-chain[2]: n2{r4c4 r4c3} - n4{r4c3 .} ==> r5c2 ≠ 3
z-chain[2]: n2{r4c4 r2c2} - n4{r2c2 .} ==> r3c1 ≠ 3
z-chain[2]: n9{r4c3 r4c4} - n7{r4c4 .} ==> r5c5 ≠ 8
z-chain[2]: n9{r4c4 r2c3} - n7{r2c3 .} ==> r1c2 ≠ 8
z-chain[2]: r1c5{n8 n5} - n6{r3c5 .} ==> r4c4 ≠ 7
whip[1]: n7{r3c5 .} ==> r5c4 ≠ 8
z-chain[2]: n8{r4c4 r1c4} - n6{r1c4 .} ==> r2c3 ≠ 7
t-whip[3]: r1c5{n7 n8} - n9{r4c4 r2c5} - n7{r2c5 .} ==> r3c5 ≠ 6
whip[1]: n6{r2c5 .} ==> r4c4 ≠ 5
whip[1]: n5{r3c5 .} ==> r4c3 ≠ 4, r5c5 ≠ 4
whip[1]: r5c5{n13 .} ==> r1c2 ≠ 12, r1c4 ≠ 12, r3c5 ≠ 12, r4c3 ≠ 12, r5c2 ≠ 12, r1c1 ≠ 13, r2c2 ≠ 13, r2c3 ≠ 13, r4c1 ≠ 13, r4c3 ≠ 13, r5c1 ≠ 13, r5c2 ≠ 13
whip[1]: n13{r5c5 .} ==> r2c2 ≠ 14, r3c1 ≠ 14, r4c1 ≠ 14, r5c1 ≠ 14, r5c2 ≠ 14
whip[1]: n14{r5c4 .} ==> r1c2 ≠ 15, r3c1 ≠ 15, r4c1 ≠ 15, r5c1 ≠ 15
whip[1]: n15{r5c2 .} ==> r1c1 ≠ 16, r2c2 ≠ 16, r2c3 ≠ 16, r3c1 ≠ 16
whip[1]: n16{r5c2 .} ==> r1c2 ≠ 17, r2c2 ≠ 17
whip[1]: n17{r5c2 .} ==> r2c3 ≠ 18
whip[1]: r1c2{n5 .} ==> r1c4 ≠ 4, r2c5 ≠ 4, r4c4 ≠ 4
whip[1]: n4{r2c3 .} ==> r3c5 ≠ 5, r1c5 ≠ 5, r2c5 ≠ 5, r3c5 ≠ 3, r5c4 ≠ 3
whip[1]: n3{r2c3 .} ==> r4c3 ≠ 2, r4c4 ≠ 2
whip[1]: r1c5{n8 .} ==> r3c5 ≠ 7
whip[1]: n7{r2c5 .} ==> r4c4 ≠ 8
whip[1]: n8{r3c5 .} ==> r4c3 ≠ 9
whip[1]: r3c1{n18 .} ==> r5c1 ≠ 17, r5c2 ≠ 17, r4c3 ≠ 18
naked-single: r5c1 = 16
hidden-single: r4c1 = 17
hidden-single: r3c1 = 18
hidden-single: r5c2 = 15
hidden-single: r4c3 = 14
naked-single: r5c5 = 12
hidden-single: r4c4 = 11
hidden-single: r5c4 = 13
whip[1]: r3c5{n9 .} ==> r1c4 ≠ 8, r1c5 ≠ 8, r2c3 ≠ 9
whip[1]: r1c5{n7 .} ==> r2c3 ≠ 6
whip[1]: n6{r2c5 .} ==> r1c2 ≠ 5, r2c2 ≠ 5
whip[1]: n5{r2c3 .} ==> r1c1 ≠ 4
naked-single: r1c1 = 3
hidden-single: r2c2 = 2
hidden-single: r1c2 = 4
hidden-single: r2c3 = 5
hidden-single: r1c4 = 6
naked-single: r1c5 = 7
hidden-single: r2c5 = 8
hidden-single: r3c5 = 9
GRID SOLVED. rating-type = g2W, MOST COMPLEX RULE TRIED = g2W[7]
 3  4  -  6  7
 -  2  5  -  8
18 19  1 10  9
17  - 14 11  -
16 15  - 13 12
init-time = 0.01s, solve time = 4m 57.19s, total-time = 4m 57.21s
nb-facts=<Fact-18209>
***********************************************************************************************
***  HidatoRules 2.1.s based on CSP-Rules 2.1.s, config = g2W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



