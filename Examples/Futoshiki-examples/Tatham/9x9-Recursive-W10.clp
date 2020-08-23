

(solve-tatham 9
"0R,0,0D,0,0L,0,0,0,0,0UD,3,0,0,0,0,0,0L,0,0D,0,7L,0,0,0U,0,0RL,0,3,8R,0,0R,0R,0,0U,0RL,0,4,6,8,0,0,0D,2,0U,3D,7,0,0D,0,0,5L,0,0,0L,0U,5,0R,0,0,3,0U,0R,0,0D,0,0,0,0,0R,0,0D,0,0,2,6R,0,0,0,0,0,8U,"
)

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..........3.........7......38.......468...2.37....5....5...3.............26.....8
>--<----------<--<----<>->->>-<>------------<--<-->---->----->---->-----
<>>--<->-------->---->-------------------<-->-----<--<-----<--->---->--<
16 givens, 411 candidates
entering BRT
asc[1]: r9c8<r8c8 ==> r9c8 ≠ 9, r8c8 ≠ 1
asc[1]: r6c7<r7c7 ==> r7c7 ≠ 1, r6c7 ≠ 9
asc[3]: r3c7<r4c7<r4c8<r5c8 ==> r5c8 ≠ 1, r4c8 ≠ 9, r4c8 ≠ 2, r4c8 ≠ 1, r4c7 ≠ 9, r4c7 ≠ 1, r3c7 ≠ 9, r3c7 ≠ 8
asc[1]: r2c6<r3c6 ==> r3c6 ≠ 1, r2c6 ≠ 9
asc[1]: r2c3<r1c3 ==> r2c3 ≠ 9, r1c3 ≠ 1
asc[1]: r9c1<r8c1 ==> r9c1 ≠ 9, r8c1 ≠ 1
asc[2]: r4c1<r3c1<r2c1 ==> r3c1 ≠ 9, r2c1 ≠ 2, r2c1 ≠ 1
asc[1]: r8c7<r8c6 ==> r8c7 ≠ 9, r8c6 ≠ 1
asc[1]: r7c9<r7c8 ==> r7c9 ≠ 9, r7c8 ≠ 1
asc[2]: r7c4<r7c3<r6c3 ==> r7c4 ≠ 9, r7c4 ≠ 8, r7c3 ≠ 9, r7c3 ≠ 1, r6c3 ≠ 2, r6c3 ≠ 1
asc[2]: r6c8<r6c9<r5c9 ==> r6c9 ≠ 1, r6c8 ≠ 9, r6c8 ≠ 8
asc[2]: r4c9<r4c8<r5c8 ==> r4c9 ≠ 9
asc[2]: r4c6<r4c5<r4c4 ==> r4c6 ≠ 9, r4c5 ≠ 9, r4c5 ≠ 1, r4c4 ≠ 2, r4c4 ≠ 1
asc[1]: r3c9<r3c8 ==> r3c9 ≠ 9, r3c8 ≠ 1
asc[1]: r2c7<r2c8 ==> r2c8 ≠ 1, r2c7 ≠ 9
asc[1]: r1c4<r1c5 ==> r1c5 ≠ 1, r1c4 ≠ 9
asc[2]: r1c2<r1c1<r2c1 ==> r1c2 ≠ 9, r1c1 ≠ 9, r1c1 ≠ 1
naked-single ==> r6c9 = 2
naked-single ==> r6c8 = 1
hidden-single-in-a-column ==> r9c1 = 1
hidden-single-in-a-row ==> r4c4 = 9
str-asc[1]: r4c6<r4c5 ==> r4c6 ≠ 7
str-asc[1]: r4c9<r4c8 ==> r4c9 ≠ 7
str-asc[1]: r7c4<r7c3 ==> r7c4 ≠ 7, r7c4 ≠ 6, r7c4 ≠ 4
str-asc[1]: r3c1<r2c1 ==> r2c1 ≠ 5
str-asc[2]: r4c7<r4c8<r5c8 ==> r5c8 ≠ 5, r4c8 ≠ 4
str-asc[1]: r4c7<r4c8 ==> r4c7 ≠ 7
str-asc[1]: r3c7<r4c7 ==> r3c7 ≠ 6
str-asc[1]: r9c8<r8c8 ==> r8c8 ≠ 3, r8c8 ≠ 2
hill[2]: r3c7<r3c8>r3c9 ==> r3c8 ≠ 2
Starting_init_links_with_<Fact-3169>
300 candidates, 1972 csp-links and 3224 links. Density = 7.19%
starting non trivial part of solution
Entering_level_W1_with_<Fact-11260>
Entering_relation_bivalue_with_<Fact-11261>
Entering_level_S2_with_<Fact-11298>
naked-pairs-in-a-row: r5{c6 c8}{n7 n9} ==> r5c5 ≠ 9, r5c5 ≠ 7, r5c4 ≠ 7
hidden-pairs-in-a-row: r6{n6 n8}{c4 c7} ==> r6c7 ≠ 4, r6c7 ≠ 3, r6c4 ≠ 4, r6c4 ≠ 3
str-asc[1]: r6c7<r7c7 ==> r7c7 ≠ 6, r7c7 ≠ 4
Entering_level_BC2_with_<Fact-11331>
Entering_level_W2_with_<Fact-11379>
whip[2]: r7c1{n8 n9} - r2c1{n9 .} ==> r1c1 ≠ 8, r3c1 ≠ 8
str-asc[1]: r1c2<r1c1 ==> r1c2 ≠ 7
hidden-single-in-a-column ==> r8c2 = 7
hidden-single-in-a-column ==> r6c2 = 9
str-asc[2]: r7c4<r7c3<r6c3 ==> r7c3 ≠ 4
naked-single ==> r7c3 = 2
naked-single ==> r7c4 = 1
naked-single ==> r5c4 = 5
naked-single ==> r5c5 = 1
str-asc[1]: r1c4<r1c5 ==> r1c5 ≠ 2
str-asc[1]: r7c9<r7c8 ==> r7c8 ≠ 4
whip[1]: r4n2{c6 .} ==> r4c6 ≠ 4, r4c6 ≠ 6
whip[2]: r7n4{c9 c5} - r7n6{c5 .} ==> r7c9 ≠ 7
hidden-pairs-in-a-column: c9{n7 n9}{r1 r2} ==> r2c9 ≠ 6, r2c9 ≠ 5, r2c9 ≠ 4, r2c9 ≠ 1, r1c9 ≠ 6, r1c9 ≠ 5, r1c9 ≠ 4, r1c9 ≠ 1
x-wing-in-columns: n7{c4 c9}{r1 r2} ==> r2c8 ≠ 7, r2c7 ≠ 7, r2c6 ≠ 7, r2c5 ≠ 7, r1c8 ≠ 7, r1c7 ≠ 7, r1c6 ≠ 7, r1c5 ≠ 7
whip[2]: r4c6{n2 n1} - r2c6{n1 .} ==> r3c6 ≠ 2
whip[2]: r4n6{c9 c5} - r4n7{c5 .} ==> r4c8 ≠ 5
whip[2]: r3c2{n4 n1} - r3c9{n1 .} ==> r3c8 ≠ 4
whip[2]: r3c7{n5 n1} - r3c9{n1 .} ==> r3c8 ≠ 3
Entering_level_S3_with_<Fact-12171>
Entering_level_BC3_with_<Fact-12174>
Entering_level_W3_with_<Fact-12236>
whip[3]: c8n3{r9 r1} - c8n4{r1 r2} - c8n2{r2 .} ==> r9c8 ≠ 5
whip[3]: c8n3{r9 r1} - c8n4{r1 r2} - c8n2{r2 .} ==> r9c8 ≠ 7
naked-pairs-in-a-row: r9{c4 c8}{n3 n4} ==> r9c7 ≠ 4, r9c7 ≠ 3, r9c6 ≠ 4, r9c5 ≠ 4, r9c5 ≠ 3
naked-pairs-in-a-column: c6{r5 r9}{n7 n9} ==> r8c6 ≠ 9, r3c6 ≠ 9, r1c6 ≠ 9
str-asc[1]: r2c6<r3c6 ==> r2c6 ≠ 8
str-asc[1]: r8c7<r8c6 ==> r8c7 ≠ 8
Entering_level_S4_with_<Fact-13103>
Entering_level_BC4_with_<Fact-13180>
Entering_level_W4_with_<Fact-13280>
whip[4]: c1n2{r8 r1} - c8n2{r1 r2} - r2c7{n8 n1} - r8c7{n1 .} ==> r8c6 ≠ 2
Entering_level_BC5_with_<Fact-13995>
Entering_level_W5_with_<Fact-14073>
whip[5]: r7n4{c5 c9} - r7n6{c9 c8} - r4c8{n6 n7} - r5c8{n7 n9} - r3n9{c8 .} ==> r7c5 ≠ 9
whip[5]: c8n2{r2 r1} - c1n2{r1 r8} - c1n8{r8 r7} - c1n9{r7 r2} - r2c8{n9 .} ==> r2c7 ≠ 8
whip[3]: c7n7{r9 r7} - c7n9{r7 r1} - c7n8{r1 .} ==> r9c7 ≠ 5
hidden-single-in-a-row ==> r9c5 = 5
whip[3]: c8n2{r1 r2} - r2n5{c8 c3} - r1c3{n3 .} ==> r1c8 ≠ 9
whip[4]: r7n4{c5 c9} - r7n6{c9 c8} - r4c8{n6 n7} - c5n7{r4 .} ==> r7c5 ≠ 8
whip[4]: r4c8{n6 n7} - c5n7{r4 r7} - r7n4{c5 c9} - r7n6{c9 .} ==> r1c8 ≠ 6
whip[4]: r4c8{n6 n7} - c5n7{r4 r7} - r7n4{c5 c9} - r7n6{c9 .} ==> r2c8 ≠ 6
whip[4]: r4c8{n6 n7} - c5n7{r4 r7} - r7n4{c5 c9} - r7n6{c9 .} ==> r3c8 ≠ 6
whip[4]: r4c8{n6 n7} - c5n7{r4 r7} - r7n4{c5 c9} - r7n6{c9 .} ==> r8c8 ≠ 6
whip[5]: r2n5{c8 c3} - r1c3{n3 n9} - c9n9{r1 r2} - r2c1{n9 n8} - r2c8{n8 .} ==> r2c7 ≠ 6
Entering_level_BC6_with_<Fact-16099>
biv-chain[6]: r6n8{c4 c7} - c7n7{r7 r9} - c6n7{r9 r5} - r5n9{c6 c8} - r3n9{c8 c5} - r3n2{c5 c4} ==> r3c4 ≠ 8
Entering_level_W6_with_<Fact-16284>
whip[6]: r4c7{n4 n6} - r4c8{n6 n7} - r5c8{n7 n9} - r3n9{c8 c5} - r3n3{c5 c4} - r3n2{c4 .} ==> r3c7 ≠ 5
whip[6]: r6n8{c4 c7} - c7n7{r7 r9} - c6n7{r9 r5} - r5c8{n7 n9} - r3n9{c8 c5} - r1c5{n9 .} ==> r1c4 ≠ 8
Entering_level_BC7_with_<Fact-17776>
Entering_level_W7_with_<Fact-17874>
whip[7]: r3n2{c4 c5} - r4n2{c5 c6} - r2n2{c6 c8} - r2c7{n5 n1} - c6n1{r2 r1} - r1n2{c6 c1} - r1c2{n4 .} ==> r8c4 ≠ 2
whip[7]: r9n4{c4 c8} - c8n3{r9 r1} - c8n2{r1 r2} - r2n5{c8 c3} - r1c3{n5 n9} - r1c9{n9 n7} - c4n7{r1 .} ==> r2c4 ≠ 4
Entering_level_BC8_with_<Fact-19990>
Entering_level_W8_with_<Fact-20026>
whip[8]: r3c1{n6 n5} - r1c1{n5 n2} - c8n2{r1 r2} - r2c7{n5 n1} - r2c6{n1 n4} - c6n2{r2 r4} - c6n1{r4 r1} - r1c2{n1 .} ==> r2c1 ≠ 6
naked-pairs-in-a-column: c1{r2 r7}{n8 n9} ==> r8c1 ≠ 9, r8c1 ≠ 8
whip[4]: r2c1{n8 n9} - c9n9{r2 r1} - r1n7{c9 c4} - r1c5{n3 .} ==> r2c5 ≠ 8
whip[6]: r1c4{n4 n2} - r3n2{c4 c5} - c5n8{r3 r8} - c5n9{r8 r2} - c9n9{r2 r1} - r1n7{c9 .} ==> r1c5 ≠ 3
whip[7]: r7c1{n9 n8} - r2c1{n8 n9} - c9n9{r2 r1} - r1n7{c9 c4} - r1c5{n6 n8} - c7n8{r1 r6} - r7c7{n8 .} ==> r7c8 ≠ 9
whip[8]: c8n2{r1 r2} - r2n5{c8 c3} - r1c3{n3 n9} - c9n9{r1 r2} - c1n9{r2 r7} - c7n9{r7 r9} - c7n7{r9 r7} - c7n8{r6 .} ==> r1c8 ≠ 8
Entering_level_BC9_with_<Fact-27183>
Entering_level_W9_with_<Fact-27185>
whip[9]: r4n2{c6 c5} - r4n7{c5 c8} - r5c8{n7 n9} - r3n9{c8 c5} - r3n2{c5 c4} - r2n2{c4 c8} - r2n5{c8 c3} - r1c3{n5 n9} - r8n9{c3 .} ==> r1c6 ≠ 2
Entering_level_BC10_with_<Fact-32553>
Entering_level_W10_with_<Fact-32555>
whip[10]: r6c4{n8 n6} - r6c7{n6 n8} - r7c7{n7 n9} - c1n9{r7 r2} - c9n9{r2 r1} - c9n7{r1 r2} - r2c4{n7 n2} - r3n2{c4 c5} - c5n9{r3 r8} - c3n9{r8 .} ==> r8c4 ≠ 8
whip[6]: r2c1{n8 n9} - c9n9{r2 r1} - r1n7{c9 c4} - r1c5{n6 n8} - r3n8{c5 c6} - r8n8{c6 .} ==> r2c8 ≠ 8
whip[10]: c8n2{r2 r1} - c8n3{r1 r9} - c8n4{r9 r8} - r2c8{n4 n9} - c9n9{r2 r1} - r1n7{c9 c4} - r1c5{n4 n8} - r8n8{c5 c6} - r3n8{c6 c8} - c8n5{r3 .} ==> r2c7 ≠ 5
whip[3]: r2n5{c8 c3} - r1c3{n3 n9} - c9n9{r1 .} ==> r2c8 ≠ 9
whip[3]: r2c7{n1 n4} - r2c8{n4 n5} - r2c3{n5 .} ==> r2c6 ≠ 1
biv-chain[4]: c1n2{r8 r1} - r1c2{n4 n1} - c6n1{r1 r4} - r4n2{c6 c5} ==> r8c5 ≠ 2
hidden-single-in-a-row ==> r8c1 = 2
biv-chain[3]: r1n2{c4 c8} - c8n3{r1 r9} - r9c4{n3 n4} ==> r1c4 ≠ 4
biv-chain[4]: c8n2{r1 r2} - c6n2{r2 r4} - c6n1{r4 r1} - r1c2{n1 n4} ==> r1c8 ≠ 4
whip[5]: r6n4{c3 c5} - r7n4{c5 c9} - r4n4{c9 c7} - r2c7{n4 n1} - r2c3{n1 .} ==> r1c3 ≠ 4
whip[7]: r7n4{c9 c5} - r6n4{c5 c3} - r4n4{c3 c7} - r2c7{n4 n1} - r8n1{c7 c3} - r2c3{n1 n5} - c3n3{r1 .} ==> r8c9 ≠ 4
whip[8]: c2n1{r3 r1} - c6n1{r1 r4} - r4n2{c6 c5} - r4n7{c5 c8} - r5c8{n7 n9} - r3n9{c8 c5} - r3n2{c5 c4} - r3n3{c4 .} ==> r3c7 ≠ 1
whip[9]: r6n6{c7 c4} - c4n8{r6 r2} - r2c1{n8 n9} - c9n9{r2 r1} - c3n9{r1 r8} - r8n1{c3 c9} - r8n5{c9 c8} - r2n5{c8 c3} - r1c3{n3 .} ==> r8c7 ≠ 6
whip[9]: r3c7{n3 n4} - r2c7{n4 n1} - r8c7{n1 n5} - r4c7{n5 n6} - r4c8{n6 n7} - r5c8{n7 n9} - r3n9{c8 c5} - r3n2{c5 c4} - r3n3{c4 .} ==> r1c7 ≠ 3
whip[3]: r1n2{c8 c4} - r1n3{c4 c3} - r2n5{c3 .} ==> r1c8 ≠ 5
whip[5]: r9n3{c4 c8} - r1n3{c8 c3} - r2c3{n4 n1} - r2c7{n1 n4} - r3c7{n4 .} ==> r3c4 ≠ 3
whip[8]: r1n2{c4 c8} - r1n3{c8 c3} - c3n9{r1 r8} - c3n5{r8 r4} - r2c3{n5 n1} - r2c7{n1 n4} - r4c7{n4 n6} - r6n6{c7 .} ==> r1c4 ≠ 6
whip[9]: c4n7{r2 r1} - r1n2{c4 c8} - r1n3{c8 c3} - c3n9{r1 r8} - c3n5{r8 r4} - r2c3{n5 n1} - r2c7{n1 n4} - r4c7{n4 n6} - r6n6{c7 .} ==> r2c4 ≠ 6
whip[6]: r3n9{c5 c8} - r5c8{n9 n7} - r4n7{c8 c5} - c5n2{r4 r2} - r2n6{c5 c6} - r3c6{n6 .} ==> r3c5 ≠ 8
whip[6]: r3n9{c5 c8} - r5n9{c8 c6} - r9c6{n9 n7} - c7n7{r9 r7} - c7n8{r7 r1} - c5n8{r1 .} ==> r8c5 ≠ 9
whip[3]: r2n5{c8 c3} - r1c3{n3 n9} - r8n9{c3 .} ==> r8c8 ≠ 5
biv-chain[4]: r3n2{c4 c5} - r3n9{c5 c8} - c8n5{r3 r2} - c8n2{r2 r1} ==> r1c4 ≠ 2
hidden-single-in-a-row ==> r1c8 = 2
hidden-single-in-a-column ==> r9c8 = 3
naked-single ==> r9c4 = 4
naked-triplets-in-a-row: r2{c3 c7 c8}{n5 n1 n4} ==> r2c6 ≠ 4, r2c5 ≠ 4
biv-chain[3]: r2n5{c3 c8} - c8n4{r2 r8} - r8n9{c8 c3} ==> r8c3 ≠ 5
whip[4]: c8n4{r8 r2} - r2n5{c8 c3} - r1c3{n3 n9} - r8n9{c3 .} ==> r8c8 ≠ 8
whip[3]: r2n6{c5 c6} - r3c6{n6 n8} - r8n8{c6 .} ==> r8c5 ≠ 6
biv-chain[4]: r8n8{c5 c6} - r3n8{c6 c8} - c8n5{r3 r2} - c8n4{r2 r8} ==> r8c5 ≠ 4
whip[4]: c4n3{r1 r8} - r8c5{n3 n8} - r1c5{n8 n9} - r1c9{n9 .} ==> r1c4 ≠ 7
naked-single ==> r1c4 = 3
naked-single ==> r8c4 = 6
naked-single ==> r3c4 = 2
naked-single ==> r6c4 = 8
naked-single ==> r2c4 = 7
naked-single ==> r2c9 = 9
naked-single ==> r1c9 = 7
naked-single ==> r2c1 = 8
naked-single ==> r7c1 = 9
naked-single ==> r6c7 = 6
hidden-triplets-in-a-column: c7{n7 n8 n9}{r9 r7 r1} ==> r1c7 ≠ 5, r1c7 ≠ 4, r1c7 ≠ 1
biv-chain[3]: r8c8{n9 n4} - r8c6{n4 n8} - r3n8{c6 c8} ==> r3c8 ≠ 9
hidden-single-in-a-row ==> r3c5 = 9
hidden-single-in-a-row ==> r3c7 = 3
whip[3]: c8n4{r8 r2} - r2c7{n4 n1} - r8c7{n1 .} ==> r8c6 ≠ 4
naked-single ==> r8c6 = 8
naked-single ==> r8c5 = 3
naked-single ==> r6c5 = 4
naked-single ==> r6c3 = 3
hidden-single-in-a-row ==> r7c9 = 4
hidden-single-in-a-row ==> r3c8 = 8
hidden-single-in-a-column ==> r2c8 = 5
hidden-single-in-a-column ==> r8c8 = 4
hidden-single-in-a-column ==> r5c8 = 9
naked-single ==> r5c6 = 7
naked-single ==> r9c6 = 9
naked-single ==> r9c7 = 7
naked-single ==> r7c7 = 8
naked-single ==> r1c7 = 9
naked-single ==> r1c3 = 5
naked-single ==> r1c1 = 6
naked-single ==> r1c5 = 8
naked-single ==> r3c1 = 5
hidden-single-in-a-column ==> r8c3 = 9
str-asc[1]: r2c6<r3c6 ==> r2c6 ≠ 6
naked-single ==> r2c6 = 2
naked-single ==> r2c5 = 6
naked-single ==> r7c5 = 7
naked-single ==> r4c5 = 2
naked-single ==> r7c8 = 6
naked-single ==> r4c8 = 7
naked-single ==> r4c6 = 1
naked-single ==> r1c6 = 4
naked-single ==> r1c2 = 1
naked-single ==> r3c2 = 4
naked-single ==> r3c6 = 6
naked-single ==> r3c9 = 1
naked-single ==> r8c9 = 5
naked-single ==> r4c9 = 6
naked-single ==> r8c7 = 1
naked-single ==> r2c7 = 4
naked-single ==> r2c3 = 1
naked-single ==> r4c7 = 5
naked-single ==> r4c3 = 4
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[10]
615384927
831762459
547296381
384921576
468517293
793845612
952173864
279638145
126459738
Puzzle :
init-time = 4.28s, solve time = 21.21s, total-time = 25.49s
nb-facts=<Fact-62358>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



