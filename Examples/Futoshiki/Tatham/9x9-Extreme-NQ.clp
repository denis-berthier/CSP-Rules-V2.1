


(solve-tatham 9
    "0D,0,0,0,0L,0,0L,0,0D,0D,0,0,0,0,5,0,0,0,0R,0R,0,0,0U,0L,5,0U,0,0R,0R,0R,0D,0,0D,0U,0,0D,0,0R,0D,0,7,0L,0,0L,0L,0U,7,0,0,0L,0,0L,0U,0,0R,0U,0,0,0L,0L,0R,0,5L,0R,0,0,0,0L,0U,0,0,0L,0U,0R,0,0,0R,2,0U,0L,0,"
)

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..............5.........5...............7.....7...............5..............2...
---<-<---------->>--<--->>>------>--<-<<---<-<-->--<<-><>--<---<->-->-<-
>>--<--<-----<------>------>-----<--------->--<---<----<-<--<--->-->----
6 givens, 589 candidates
entering BRT
asc[1]: r2c9<r1c9 ==> r2c9 ≠ 9, r1c9 ≠ 1
asc[1]: r2c8<r3c8 ==> r3c8 ≠ 1, r2c8 ≠ 9
asc[2]: r8c7<r9c7<r9c8 ==> r9c8 ≠ 1, r9c7 ≠ 9, r9c7 ≠ 1, r8c7 ≠ 9, r8c7 ≠ 8
asc[2]: r2c5<r3c5<r3c6 ==> r3c6 ≠ 1, r3c5 ≠ 9, r3c5 ≠ 1, r2c5 ≠ 9, r2c5 ≠ 8
asc[4]: r5c4<r4c4<r4c3<r4c2<r4c1 ==> r5c4 ≠ 9, r5c4 ≠ 8, r5c4 ≠ 6, r4c4 ≠ 9, r4c4 ≠ 8, r4c4 ≠ 7, r4c4 ≠ 1, r4c3 ≠ 9, r4c3 ≠ 8, r4c3 ≠ 2, r4c3 ≠ 1, r4c2 ≠ 9, r4c2 ≠ 3, r4c2 ≠ 2, r4c2 ≠ 1, r4c1 ≠ 4, r4c1 ≠ 3, r4c1 ≠ 2, r4c1 ≠ 1
asc[2]: r6c3<r5c3<r5c2 ==> r6c3 ≠ 9, r6c3 ≠ 8, r5c3 ≠ 9, r5c3 ≠ 1, r5c2 ≠ 2, r5c2 ≠ 1
asc[2]: r6c2<r7c2<r7c1 ==> r7c2 ≠ 9, r7c1 ≠ 2, r7c1 ≠ 1
asc[1]: r5c1<r6c1 ==> r6c1 ≠ 1, r5c1 ≠ 9
asc[1]: r9c3<r9c2 ==> r9c3 ≠ 9, r9c2 ≠ 1
asc[1]: r8c8<r8c9 ==> r8c9 ≠ 1, r8c8 ≠ 9
asc[1]: r8c4<r8c5 ==> r8c5 ≠ 1, r8c4 ≠ 9
asc[2]: r8c2<r8c1<r9c1 ==> r9c1 ≠ 1, r8c2 ≠ 9, r8c2 ≠ 8, r8c1 ≠ 9, r8c1 ≠ 1
asc[1]: r7c8<r7c7 ==> r7c7 ≠ 1
asc[3]: r7c4<r7c5<r7c6<r8c6 ==> r8c6 ≠ 3, r8c6 ≠ 1, r7c6 ≠ 9, r7c6 ≠ 1, r7c5 ≠ 9, r7c5 ≠ 8, r7c5 ≠ 1, r7c4 ≠ 9, r7c4 ≠ 8, r7c4 ≠ 7
asc[1]: r6c6<r6c7 ==> r6c7 ≠ 1, r6c6 ≠ 9
asc[1]: r6c4<r6c5 ==> r6c5 ≠ 1, r6c4 ≠ 9
asc[2]: r5c7<r5c8<r6c8 ==> r6c8 ≠ 2, r6c8 ≠ 1, r5c8 ≠ 9, r5c8 ≠ 1, r5c7 ≠ 9, r5c7 ≠ 8
asc[3]: r5c7<r5c8<r5c9<r4c9 ==> r5c9 ≠ 9, r5c9 ≠ 2, r5c9 ≠ 1, r5c8 ≠ 8, r4c9 ≠ 3, r4c9 ≠ 2, r4c9 ≠ 1
asc[2]: r5c5<r5c6<r4c6 ==> r5c6 ≠ 9, r4c6 ≠ 1
asc[4]: r3c3<r3c2<r3c1<r2c1<r1c1 ==> r3c3 ≠ 9, r3c3 ≠ 8, r3c3 ≠ 7, r3c3 ≠ 6, r3c2 ≠ 9, r3c2 ≠ 8, r3c2 ≠ 1, r3c1 ≠ 9, r3c1 ≠ 8, r3c1 ≠ 2, r3c1 ≠ 1, r2c1 ≠ 9, r2c1 ≠ 3, r2c1 ≠ 2, r2c1 ≠ 1, r1c1 ≠ 4, r1c1 ≠ 3, r1c1 ≠ 2, r1c1 ≠ 1
asc[1]: r1c6<r1c7 ==> r1c7 ≠ 1, r1c6 ≠ 9
asc[1]: r1c4<r1c5 ==> r1c5 ≠ 1, r1c4 ≠ 9
naked-single ==> r7c2 = 8
naked-single ==> r7c1 = 9
naked-single ==> r5c6 = 8
naked-single ==> r4c6 = 9
hidden-single-in-a-row ==> r5c2 = 9
hidden-single-in-a-column ==> r5c1 = 1
str-asc[1]: r2c1<r1c1 ==> r2c1 ≠ 8
str-asc[3]: r3c3<r3c2<r3c1<r2c1 ==> r3c2 ≠ 6, r3c1 ≠ 7
str-asc[1]: r3c3<r3c2 ==> r3c3 ≠ 4
str-asc[1]: r5c8<r5c9 ==> r5c8 ≠ 6
str-asc[1]: r5c7<r5c8 ==> r5c8 ≠ 2, r5c7 ≠ 6
str-asc[1]: r5c8<r5c9 ==> r5c9 ≠ 3
str-asc[1]: r5c9<r4c9 ==> r4c9 ≠ 4
str-asc[1]: r5c8<r6c8 ==> r6c8 ≠ 3
str-asc[1]: r7c6<r8c6 ==> r7c6 ≠ 7
str-asc[2]: r7c4<r7c5<r7c6 ==> r7c5 ≠ 6, r7c4 ≠ 6
str-asc[1]: r7c4<r7c5 ==> r7c4 ≠ 4
str-asc[1]: r8c1<r9c1 ==> r8c1 ≠ 8
str-asc[1]: r9c3<r9c2 ==> r9c3 ≠ 8, r9c3 ≠ 7, r9c3 ≠ 6
str-asc[1]: r6c3<r5c3 ==> r6c3 ≠ 6
str-asc[2]: r4c3<r4c2<r4c1 ==> r4c3 ≠ 7
str-asc[2]: r5c4<r4c4<r4c3 ==> r5c4 ≠ 5, r4c4 ≠ 6, r4c4 ≠ 2, r4c3 ≠ 3
str-asc[1]: r4c3<r4c2 ==> r4c3 ≠ 6, r4c2 ≠ 4
str-asc[1]: r4c2<r4c1 ==> r4c1 ≠ 5
str-asc[2]: r5c4<r4c4<r4c3 ==> r5c4 ≠ 4, r4c4 ≠ 5
str-asc[1]: r3c5<r3c6 ==> r3c5 ≠ 8
str-asc[1]: r2c5<r3c5 ==> r2c5 ≠ 6
str-asc[1]: r9c7<r9c8 ==> r9c8 ≠ 3
Starting_init_links_with_<Fact-3453>
380 candidates, 2862 csp-links and 4522 links. Density = 6.28%
starting non trivial part of solution
Entering_level_W1_with_<Fact-15272>
Entering_relation_bivalue_with_<Fact-15273>
Entering_level_S2_with_<Fact-15302>
hidden-pairs-in-a-row: r4{n1 n2}{c5 c8} ==> r4c8 ≠ 8, r4c8 ≠ 7, r4c8 ≠ 6, r4c8 ≠ 5, r4c8 ≠ 4, r4c8 ≠ 3, r4c5 ≠ 8, r4c5 ≠ 6, r4c5 ≠ 5, r4c5 ≠ 4, r4c5 ≠ 3
hidden-single-in-a-row ==> r4c4 = 3
naked-single ==> r5c4 = 2
naked-single ==> r7c4 = 1
hidden-single-in-a-row ==> r4c3 = 4
hidden-single-in-a-row ==> r4c2 = 5
str-asc[1]: r1c4<r1c5 ==> r1c5 ≠ 4, r1c5 ≠ 3, r1c5 ≠ 2
str-asc[1]: r6c4<r6c5 ==> r6c5 ≠ 4, r6c5 ≠ 3, r6c5 ≠ 2
str-asc[1]: r7c8<r7c7 ==> r7c7 ≠ 2
str-asc[1]: r8c4<r8c5 ==> r8c5 ≠ 4, r8c5 ≠ 3, r8c5 ≠ 2
str-asc[1]: r5c7<r5c8 ==> r5c8 ≠ 3
str-asc[2]: r5c8<r5c9<r4c9 ==> r5c9 ≠ 4
naked-single ==> r5c9 = 6
str-asc[1]: r6c3<r5c3 ==> r6c3 ≠ 5
str-asc[1]: r5c8<r6c8 ==> r6c8 ≠ 4
x-wing-in-rows: n1{r3 r9}{c3 c9} ==> r8c3 ≠ 1, r6c9 ≠ 1, r6c3 ≠ 1, r2c9 ≠ 1, r2c3 ≠ 1, r1c3 ≠ 1
hidden-single-in-a-row ==> r6c6 = 1
str-asc[1]: r1c6<r1c7 ==> r1c7 ≠ 3, r1c7 ≠ 2
str-asc[1]: r2c9<r1c9 ==> r1c9 ≠ 2
Entering_level_BC2_with_<Fact-15390>
Entering_level_W2_with_<Fact-15436>
whip[2]: r2c5{n4 n1} - r4c5{n1 .} ==> r3c5 ≠ 2
str-asc[1]: r3c5<r3c6 ==> r3c6 ≠ 3
whip[2]: r2c8{n8 n1} - r4c8{n1 .} ==> r3c8 ≠ 2
whip[2]: r3n2{c3 c9} - r3n1{c9 .} ==> r3c3 ≠ 3
Entering_level_S3_with_<Fact-15780>
Entering_level_BC3_with_<Fact-15795>
Entering_level_W3_with_<Fact-15833>
whip[3]: r2c1{n6 n7} - r4c1{n7 n8} - r1c1{n8 .} ==> r3c1 ≠ 6
str-asc[2]: r3c3<r3c2<r3c1 ==> r3c2 ≠ 4
whip[2]: r3c1{n4 n3} - r3c5{n3 .} ==> r3c6 ≠ 4
whip[2]: r3c6{n6 n7} - r8c6{n7 .} ==> r7c6 ≠ 6
str-asc[1]: r7c5<r7c6 ==> r7c5 ≠ 4
hidden-pairs-in-a-row: r7{n6 n7}{c3 c7} ==> r7c7 ≠ 4, r7c7 ≠ 3, r7c3 ≠ 3, r7c3 ≠ 2
x-wing-in-rows: n2{r4 r7}{c5 c8} ==> r8c8 ≠ 2, r2c8 ≠ 2, r2c5 ≠ 2, r1c8 ≠ 2
whip[3]: r9c7{n6 n8} - r4c7{n8 n6} - r7c7{n6 .} ==> r8c7 ≠ 7
whip[3]: r9c3{n5 n1} - r3c3{n1 n2} - r3c2{n2 .} ==> r9c2 ≠ 3
whip[3]: r7c5{n3 n2} - r4c5{n2 n1} - r2c5{n1 .} ==> r3c5 ≠ 3
whip[3]: r7c7{n6 n7} - r4c7{n7 n8} - r9c7{n8 .} ==> r8c7 ≠ 6
Entering_level_S4_with_<Fact-16845>
naked-quads-in-a-column: c3{r3 r9 r5 r6}{n2 n1 n5 n3} ==> r8c3 ≠ 5, r8c3 ≠ 3, r8c3 ≠ 2, r2c3 ≠ 3, r2c3 ≠ 2, r1c3 ≠ 5, r1c3 ≠ 3, r1c3 ≠ 2
hidden-single-in-a-row ==> r1c2 = 2
naked-single ==> r3c2 = 3
naked-single ==> r3c1 = 4
naked-single ==> r3c5 = 6
naked-single ==> r3c6 = 7
hidden-single-in-a-row ==> r1c8 = 1
naked-single ==> r4c8 = 2
naked-single ==> r4c5 = 1
hidden-single-in-a-column ==> r7c5 = 2
str-asc[1]: r8c8<r8c9 ==> r8c9 ≠ 3, r8c9 ≠ 2
str-asc[1]: r2c1<r1c1 ==> r1c1 ≠ 6, r1c1 ≠ 5
whip[1]: r1n5{c5 .} ==> r1c4 ≠ 6, r1c4 ≠ 7, r1c4 ≠ 8
naked-pairs-in-a-row: r3{c4 c8}{n8 n9} ==> r3c9 ≠ 9, r3c9 ≠ 8
hidden-pairs-in-a-column: c5{n3 n4}{r2 r9} ==> r9c5 ≠ 9, r9c5 ≠ 8, r9c5 ≠ 5
biv-chain[2]: r8n2{c1 c7} - r8n1{c7 c2} ==> r8c2 ≠ 4, r8c2 ≠ 6
naked-single ==> r8c2 = 1
hidden-single-in-a-row ==> r2c7 = 1
hidden-single-in-a-row ==> r2c9 = 2
naked-single ==> r3c9 = 1
naked-single ==> r3c3 = 2
naked-single ==> r6c3 = 3
naked-single ==> r5c3 = 5
naked-single ==> r5c8 = 4
naked-single ==> r5c7 = 3
naked-single ==> r7c8 = 3
naked-single ==> r7c6 = 4
naked-single ==> r8c6 = 6
naked-single ==> r1c6 = 3
naked-single ==> r9c3 = 1
hidden-single-in-a-column ==> r9c9 = 3
naked-single ==> r9c5 = 4
naked-single ==> r2c5 = 3
naked-single ==> r9c2 = 6
naked-single ==> r2c2 = 4
hidden-single-in-a-column ==> r8c1 = 3
hidden-single-in-a-column ==> r6c1 = 2
hidden-single-in-a-column ==> r9c1 = 5
hidden-single-in-a-column ==> r8c7 = 2
str-asc[1]: r9c7<r9c8 ==> r9c8 ≠ 7
str-asc[1]: r8c8<r8c9 ==> r8c9 ≠ 4
hidden-single-in-a-row ==> r8c4 = 4
naked-single ==> r1c4 = 5
str-asc[1]: r6c4<r6c5 ==> r6c5 ≠ 5
hidden-single-in-a-column ==> r8c5 = 5
hidden-single-in-a-column ==> r6c8 = 5
hidden-single-in-a-column ==> r2c8 = 6
naked-single ==> r2c1 = 7
naked-single ==> r1c1 = 8
naked-single ==> r1c5 = 9
naked-single ==> r6c5 = 8
naked-single ==> r6c4 = 6
naked-single ==> r4c1 = 6
hidden-single-in-a-column ==> r6c7 = 9
naked-single ==> r6c9 = 4
naked-single ==> r1c9 = 7
naked-single ==> r1c3 = 6
naked-single ==> r1c7 = 4
naked-single ==> r7c3 = 7
naked-single ==> r7c7 = 6
naked-single ==> r4c9 = 8
naked-single ==> r4c7 = 7
naked-single ==> r9c7 = 8
naked-single ==> r9c8 = 9
naked-single ==> r3c8 = 8
naked-single ==> r3c4 = 9
naked-single ==> r2c4 = 8
naked-single ==> r2c3 = 9
naked-single ==> r8c3 = 8
naked-single ==> r8c8 = 7
naked-single ==> r9c4 = 7
naked-single ==> r8c9 = 9
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = NQ
826593417
749835162
432967581
654319728
195278346
273681954
987124635
318456279
561742893
Puzzle :
init-time = 3.48s, solve time = 3.56s, total-time = 7.05s
nb-facts=<Fact-17089>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
