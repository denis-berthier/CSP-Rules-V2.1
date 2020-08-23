


(solve-tatham 9
    "8,0,0D,0L,0R,0,0D,0DL,7L,0,0,3,0,0L,0L,0,0RD,0,0,0,0,0,0L,0U,0,0,0,5,0,0D,0U,0R,6,0,0R,0,0,0R,0R,0,2,0U,0,0,6,0,0L,0,0,0,0,0,0,0D,0,0,0L,0L,0,3,5,0,0L,0,0,0D,0D,0U,0R,0,0,4,0,0,0R,0,0L,0,0,0,8,"
)


***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
8.......7..3...............5....6.......2...6..............35..........4........8
--<->-<<---<<-->---<-------->-->->>-----<--------<<----<----->----><----
---------------->-->--->--<---->------<--<-<---->------->>----------->--
11 givens, 485 candidates
entering BRT
asc[3]: r3c8<r2c8<r1c8<r1c9 ==> r3c8 ≠ 9, r3c8 ≠ 8, r3c8 ≠ 7, r2c8 ≠ 9, r2c8 ≠ 8, r2c8 ≠ 1, r1c8 ≠ 2, r1c8 ≠ 1
asc[3]: r2c7<r1c7<r1c8<r1c9 ==> r2c7 ≠ 9, r2c7 ≠ 8, r2c7 ≠ 7, r1c7 ≠ 9, r1c7 ≠ 1
asc[1]: r7c5<r8c5 ==> r8c5 ≠ 1, r7c5 ≠ 9
asc[1]: r9c4<r8c4 ==> r9c4 ≠ 9, r8c4 ≠ 1
asc[1]: r3c4<r4c4 ==> r4c4 ≠ 1, r3c4 ≠ 9
asc[2]: r2c3<r1c3<r1c4 ==> r1c4 ≠ 2, r1c4 ≠ 1, r1c3 ≠ 9
asc[1]: r9c4<r9c5 ==> r9c5 ≠ 1
asc[2]: r9c4<r9c3<r8c3 ==> r9c3 ≠ 9, r9c3 ≠ 1, r8c3 ≠ 2, r8c3 ≠ 1
asc[1]: r8c7<r8c6 ==> r8c7 ≠ 9, r8c6 ≠ 1
asc[2]: r7c8<r7c9<r6c9 ==> r7c9 ≠ 9, r7c9 ≠ 1, r7c8 ≠ 9, r7c8 ≠ 8, r6c9 ≠ 2, r6c9 ≠ 1
asc[2]: r7c2<r7c3<r7c4 ==> r7c4 ≠ 2, r7c4 ≠ 1, r7c3 ≠ 9, r7c3 ≠ 1, r7c2 ≠ 9, r7c2 ≠ 8
asc[1]: r6c1<r6c2 ==> r6c2 ≠ 1, r6c1 ≠ 9
asc[2]: r5c4<r5c3<r4c3 ==> r5c4 ≠ 9, r5c4 ≠ 8, r5c3 ≠ 9, r5c3 ≠ 1, r4c3 ≠ 2, r4c3 ≠ 1
asc[2]: r5c4<r5c3<r5c2 ==> r5c2 ≠ 1
asc[1]: r4c9<r4c8 ==> r4c9 ≠ 9, r4c8 ≠ 1
asc[1]: r3c4<r3c5 ==> r3c5 ≠ 1
asc[3]: r2c9<r2c8<r1c8<r1c9 ==> r2c9 ≠ 9
asc[3]: r2c4<r2c5<r2c6<r3c6 ==> r3c6 ≠ 2, r3c6 ≠ 1, r2c6 ≠ 9, r2c6 ≠ 2, r2c6 ≠ 1, r2c5 ≠ 9, r2c5 ≠ 8, r2c5 ≠ 1, r2c4 ≠ 9, r2c4 ≠ 8, r2c4 ≠ 7
asc[1]: r1c6<r1c5 ==> r1c6 ≠ 9, r1c5 ≠ 1
naked-single ==> r7c9 = 2
naked-single ==> r7c8 = 1
hidden-single-in-a-column ==> r6c5 = 1
hidden-single-in-a-column ==> r3c3 = 1
str-asc[1]: r2c6<r3c6 ==> r3c6 ≠ 4
str-asc[2]: r2c5<r2c6<r3c6 ==> r3c6 ≠ 5, r2c6 ≠ 4
str-asc[1]: r2c8<r1c8 ==> r2c8 ≠ 7, r2c8 ≠ 6
str-asc[1]: r2c9<r2c8 ==> r2c9 ≠ 5
naked-single ==> r2c9 = 1
naked-single ==> r4c9 = 3
str-asc[1]: r5c3<r5c2 ==> r5c2 ≠ 4, r5c2 ≠ 3
str-asc[1]: r5c3<r4c3 ==> r4c3 ≠ 4
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 2
str-asc[1]: r7c3<r7c4 ==> r7c4 ≠ 4
str-asc[2]: r7c2<r7c3<r7c4 ==> r7c3 ≠ 4
str-asc[1]: r7c3<r7c4 ==> r7c4 ≠ 6
str-asc[1]: r9c4<r9c3 ==> r9c4 ≠ 7
str-asc[1]: r1c3<r1c4 ==> r1c4 ≠ 4, r1c4 ≠ 3
str-asc[1]: r3c4<r4c4 ==> r4c4 ≠ 2
str-asc[1]: r7c5<r8c5 ==> r8c5 ≠ 3
str-asc[1]: r1c7<r1c8 ==> r1c7 ≠ 6
str-asc[1]: r2c7<r1c7 ==> r2c7 ≠ 6, r2c7 ≠ 4, r1c7 ≠ 2
naked-single ==> r2c7 = 2
hidden-single-in-a-row ==> r4c2 = 2
hidden-single-in-a-row ==> r1c6 = 2
hidden-single-in-a-column ==> r9c6 = 1
hidden-single-in-a-column ==> r5c4 = 1
hidden-single-in-a-column ==> r8c1 = 1
hidden-single-in-a-column ==> r1c2 = 1
hidden-single-in-a-column ==> r4c7 = 1
hidden-single-in-a-column ==> r6c6 = 4
str-asc[1]: r9c4<r9c3 ==> r9c3 ≠ 2
hidden-single-in-a-column ==> r6c3 = 2
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 3
str-asc[1]: r9c4<r8c4 ==> r8c4 ≠ 2
hidden-single-in-a-row ==> r8c8 = 2
str-asc[3]: r2c4<r2c5<r2c6<r3c6 ==> r2c6 ≠ 5, r2c5 ≠ 4
hidden-single-in-a-column ==> r8c6 = 5
naked-single ==> r8c7 = 3
naked-single ==> r1c7 = 4
hidden-single-in-a-row ==> r1c5 = 3
hidden-single-in-a-row ==> r1c4 = 9
hidden-single-in-a-row ==> r7c1 = 9
hidden-single-in-a-row ==> r2c2 = 9
hidden-single-in-a-row ==> r2c6 = 8
naked-single ==> r3c6 = 9
naked-single ==> r3c9 = 5
naked-single ==> r6c9 = 9
naked-single ==> r5c6 = 7
str-asc[1]: r3c4<r3c5 ==> r3c4 ≠ 8
str-asc[1]: r5c3<r5c2 ==> r5c3 ≠ 8
str-asc[2]: r7c2<r7c3<r7c4 ==> r7c3 ≠ 8, r7c2 ≠ 7
str-asc[2]: r3c8<r2c8<r1c8 ==> r3c8 ≠ 6
Starting_init_links_with_<Fact-3311>
171 candidates, 610 csp-links and 1745 links. Density = 12.01%
starting non trivial part of solution
Entering_level_W1_with_<Fact-5792>
Entering_relation_bivalue_with_<Fact-5793>
Entering_level_S2_with_<Fact-5854>
hidden-pairs-in-a-column: c3{n8 n9}{r4 r8} ==> r8c3 ≠ 7, r8c3 ≠ 6, r4c3 ≠ 7
Entering_level_BC2_with_<Fact-5875>
Entering_level_W2_with_<Fact-5951>
whip[2]: r2c4{n6 n4} - r2c8{n4 .} ==> r2c5 ≠ 5
hidden-single-in-a-column ==> r9c5 = 5
x-wing-in-columns: n9{c3 c5}{r4 r8} ==> r4c8 ≠ 9
whip[2]: r7c4{n7 n8} - r4c4{n8 .} ==> r3c4 ≠ 7
Entering_level_S3_with_<Fact-6410>
Entering_level_BC3_with_<Fact-6413>
biv-chain[3]: r2c8{n4 n5} - r1n5{c8 c3} - r5c3{n5 n4} ==> r5c8 ≠ 4
Entering_level_W3_with_<Fact-6558>
whip[3]: r7n8{c4 c5} - r8n7{c5 c2} - r8n6{c2 .} ==> r8c4 ≠ 8
whip[3]: r8c4{n6 n7} - r4c4{n7 n8} - r7c4{n8 .} ==> r3c4 ≠ 6
whip[3]: c2n5{r5 r6} - r6c1{n7 n3} - r5n3{c1 .} ==> r5c8 ≠ 5
Entering_level_S4_with_<Fact-7112>
Entering_level_BC4_with_<Fact-7193>
biv-chain[4]: c2n3{r9 r3} - r3c8{n3 n4} - c5n4{r3 r7} - r7c2{n4 n6} ==> r9c2 ≠ 6
Entering_level_W4_with_<Fact-7331>
whip[4]: c2n3{r9 r3} - r3c8{n3 n4} - c5n4{r3 r7} - c2n4{r7 .} ==> r9c2 ≠ 7
biv-chain[3]: r9c2{n3 n4} - c3n4{r9 r5} - r5c1{n4 n3} ==> r9c1 ≠ 3
whip[4]: r6c1{n7 n3} - r5c1{n3 n4} - r5c3{n4 n5} - c2n5{r5 .} ==> r6c2 ≠ 6
whip[4]: r5n3{c1 c8} - r3c8{n3 n4} - r4n4{c8 c4} - r2n4{c4 .} ==> r5c1 ≠ 4
naked-single ==> r5c1 = 3
hidden-single-in-a-row ==> r5c3 = 4
hidden-single-in-a-column ==> r1c3 = 5
naked-single ==> r1c8 = 6
hidden-single-in-a-row ==> r5c2 = 5
hidden-pairs-in-a-row: r6{n3 n5}{c4 c8} ==> r6c8 ≠ 8, r6c8 ≠ 7, r6c4 ≠ 8, r6c4 ≠ 7, r6c4 ≠ 6
naked-triplets-in-a-column: c8{r2 r3 r6}{n5 n4 n3} ==> r9c8 ≠ 4, r9c8 ≠ 3, r4c8 ≠ 4
hidden-single-in-a-row ==> r4c4 = 4
hidden-single-in-a-column ==> r7c4 = 8
hidden-single-in-a-column ==> r8c4 = 7
hidden-single-in-a-column ==> r2c4 = 6
naked-single ==> r2c5 = 7
naked-single ==> r2c1 = 4
naked-single ==> r2c8 = 5
naked-single ==> r6c8 = 3
naked-single ==> r3c8 = 4
naked-single ==> r6c4 = 5
hidden-single-in-a-column ==> r7c5 = 4
naked-single ==> r7c2 = 6
naked-single ==> r7c3 = 7
naked-single ==> r9c3 = 6
naked-single ==> r8c2 = 8
naked-single ==> r6c2 = 7
naked-single ==> r3c2 = 3
naked-single ==> r3c4 = 2
naked-single ==> r9c4 = 3
naked-single ==> r9c2 = 4
naked-single ==> r6c1 = 6
naked-single ==> r3c1 = 7
naked-single ==> r9c1 = 2
naked-single ==> r6c7 = 8
naked-single ==> r3c7 = 6
naked-single ==> r3c5 = 8
naked-single ==> r4c5 = 9
naked-single ==> r4c3 = 8
naked-single ==> r4c8 = 7
naked-single ==> r9c8 = 9
naked-single ==> r5c8 = 8
naked-single ==> r9c7 = 7
naked-single ==> r8c5 = 6
naked-single ==> r5c7 = 9
naked-single ==> r8c3 = 9
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[4]
815932467
493678251
731289645
528496173
354127986
672514839
967843512
189765324
246351798
Puzzle :
init-time = 4.32s, solve time = 1.72s, total-time = 6.05s
nb-facts=<Fact-7951>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
