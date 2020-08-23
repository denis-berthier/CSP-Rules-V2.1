


(solve-tatham 9
    "0,0,0,0L,0,0L,0,0R,0D,0D,4D,0,0,0,0,0UL,0U,0,0D,0R,0,0R,0,0,0UD,0,0,0,0,0R,0URD,0R,0,0L,0,0L,8,0R,0,0L,0D,0R,0,0,0UD,0,0U,0,0,0,0,0DL,0,0D,0UR,0D,9,0,0,0,0L,0U,0L,2,0,0RL,0R,0,0,0R,8,0,0R,7,0U,0L,0U,0,0L,0R,0,"
)


***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..........4.........................8...................9......2......8..7.......
--<-<-->-----<--->->------>>><-<-><-->-------<-->----<-<-<>>-->->-<--<->
->>--<--->--<->--------<--<>-------->--<--------<<>-->--<----<-->--<>>--
6 givens, 586 candidates
entering BRT
asc[3]: r2c9<r1c9<r1c8<r2c8 ==> r2c9 ≠ 9, r2c9 ≠ 8, r2c9 ≠ 7, r2c8 ≠ 3, r2c8 ≠ 2, r2c8 ≠ 1, r1c9 ≠ 9, r1c9 ≠ 8, r1c9 ≠ 1, r1c8 ≠ 9, r1c8 ≠ 2, r1c8 ≠ 1
asc[4]: r6c8<r7c8<r7c9<r6c9<r5c9 ==> r7c9 ≠ 8, r7c9 ≠ 2, r7c9 ≠ 1, r7c8 ≠ 7, r7c8 ≠ 1, r6c9 ≠ 9, r6c9 ≠ 3, r6c9 ≠ 2, r6c9 ≠ 1, r6c8 ≠ 9, r6c8 ≠ 7, r6c8 ≠ 6, r5c9 ≠ 4, r5c9 ≠ 3, r5c9 ≠ 2, r5c9 ≠ 1
asc[2]: r1c7<r2c7<r3c7 ==> r3c7 ≠ 2, r3c7 ≠ 1, r2c7 ≠ 9, r2c7 ≠ 1, r1c7 ≠ 9, r1c7 ≠ 8
asc[1]: r8c5<r9c5 ==> r9c5 ≠ 1, r8c5 ≠ 9
asc[1]: r6c5<r5c5 ==> r6c5 ≠ 9, r5c5 ≠ 1
asc[2]: r8c2<r7c2<r7c1 ==> r8c2 ≠ 9, r7c2 ≠ 1, r7c1 ≠ 1
asc[1]: r6c1<r7c1 ==> r6c1 ≠ 9
asc[2]: r4c1<r3c1<r2c1 ==> r4c1 ≠ 9, r3c1 ≠ 9, r3c1 ≠ 1, r2c1 ≠ 1
asc[1]: r9c9<r9c8 ==> r9c9 ≠ 9, r9c8 ≠ 1
asc[1]: r9c6<r9c7 ==> r9c7 ≠ 1, r9c6 ≠ 9
asc[4]: r8c5<r8c4<r8c3<r9c3<r9c4 ==> r9c4 ≠ 4, r9c4 ≠ 3, r9c4 ≠ 2, r9c4 ≠ 1, r9c3 ≠ 3, r9c3 ≠ 2, r9c3 ≠ 1, r8c5 ≠ 7, r8c5 ≠ 6, r8c4 ≠ 9, r8c4 ≠ 7, r8c4 ≠ 1, r8c3 ≠ 1
asc[2]: r7c6<r7c7<r6c7 ==> r7c7 ≠ 1, r7c6 ≠ 8, r6c7 ≠ 2, r6c7 ≠ 1
asc[1]: r6c6<r6c7 ==> r6c6 ≠ 9
asc[1]: r5c7<r5c6 ==> r5c7 ≠ 9, r5c6 ≠ 1
asc[3]: r5c3<r5c4<r4c4<r4c3 ==> r5c4 ≠ 9, r5c4 ≠ 1, r5c3 ≠ 7, r4c4 ≠ 9, r4c4 ≠ 2, r4c4 ≠ 1, r4c3 ≠ 3, r4c3 ≠ 2, r4c3 ≠ 1
asc[2]: r5c3<r5c2<r6c2 ==> r6c2 ≠ 2, r6c2 ≠ 1, r5c2 ≠ 9, r5c2 ≠ 1
asc[2]: r4c8<r4c9<r5c9 ==> r4c9 ≠ 9, r4c9 ≠ 1, r4c8 ≠ 9
asc[2]: r4c6<r4c7<r3c7 ==> r4c7 ≠ 9, r4c7 ≠ 1, r4c6 ≠ 9, r4c6 ≠ 8
asc[3]: r4c6<r4c5<r4c4<r4c3 ==> r4c6 ≠ 7, r4c5 ≠ 9, r4c5 ≠ 8, r4c5 ≠ 1
asc[3]: r3c5<r3c4<r4c4<r4c3 ==> r3c5 ≠ 9, r3c5 ≠ 8, r3c5 ≠ 7, r3c4 ≠ 9, r3c4 ≠ 8, r3c4 ≠ 1
asc[2]: r3c3<r3c2<r2c2 ==> r3c3 ≠ 8, r3c2 ≠ 1
asc[2]: r2c6<r2c7<r3c7 ==> r2c6 ≠ 9, r2c6 ≠ 8
asc[1]: r1c5<r1c6 ==> r1c6 ≠ 1, r1c5 ≠ 9
asc[1]: r1c3<r1c4 ==> r1c4 ≠ 1
naked-single ==> r9c1 = 9
naked-single ==> r8c7 = 9
hidden-single-in-a-row ==> r4c2 = 9
hidden-single-in-a-row ==> r6c4 = 9
hidden-single-in-a-row ==> r1c6 = 9
str-asc[1]: r1c3<r1c4 ==> r1c3 ≠ 8
str-asc[1]: r2c7<r3c7 ==> r2c7 ≠ 8
str-asc[1]: r2c6<r2c7 ==> r2c6 ≠ 7
str-asc[1]: r3c3<r3c2 ==> r3c3 ≠ 7, r3c3 ≠ 6, r3c3 ≠ 5, r3c3 ≠ 4, r3c3 ≠ 3
str-asc[1]: r4c4<r4c3 ==> r4c4 ≠ 8
str-asc[2]: r3c5<r3c4<r4c4 ==> r3c5 ≠ 6, r3c4 ≠ 7
str-asc[2]: r4c5<r4c4<r4c3 ==> r4c5 ≠ 7
str-asc[1]: r4c6<r4c5 ==> r4c6 ≠ 6
str-asc[1]: r4c7<r3c7 ==> r4c7 ≠ 8
str-asc[1]: r5c3<r5c2 ==> r5c3 ≠ 6
str-asc[2]: r5c4<r4c4<r4c3 ==> r5c4 ≠ 7
str-asc[1]: r5c7<r5c6 ==> r5c7 ≠ 7
str-asc[1]: r6c6<r6c7 ==> r6c6 ≠ 8
str-asc[1]: r7c7<r6c7 ==> r7c7 ≠ 8
str-asc[1]: r7c6<r7c7 ==> r7c6 ≠ 7
str-asc[1]: r9c3<r9c4 ==> r9c3 ≠ 8
str-asc[2]: r8c2<r8c3<r9c3 ==> r8c3 ≠ 7, r8c3 ≠ 6, r8c2 ≠ 6, r8c2 ≠ 5
str-asc[3]: r8c4<r8c3<r9c3<r9c4 ==> r9c4 ≠ 5, r9c3 ≠ 4, r8c4 ≠ 6, r8c3 ≠ 3
str-asc[1]: r8c5<r8c4 ==> r8c5 ≠ 5
str-asc[2]: r8c4<r8c3<r9c3 ==> r8c4 ≠ 5
str-asc[1]: r8c5<r8c4 ==> r8c5 ≠ 4
str-asc[1]: r9c6<r9c7 ==> r9c6 ≠ 8
hidden-single-in-a-column ==> r3c6 = 8
str-asc[2]: r2c6<r2c7<r3c7 ==> r2c7 ≠ 7, r2c6 ≠ 6
str-asc[2]: r4c6<r4c7<r3c7 ==> r4c7 ≠ 7
str-asc[1]: r9c9<r9c8 ==> r9c9 ≠ 8, r9c9 ≠ 6
str-asc[1]: r3c1<r2c1 ==> r3c1 ≠ 7, r2c1 ≠ 3
str-asc[1]: r4c1<r3c1 ==> r4c1 ≠ 7, r4c1 ≠ 6
str-asc[1]: r6c1<r7c1 ==> r6c1 ≠ 7
str-asc[1]: r7c2<r7c1 ==> r7c2 ≠ 8
str-asc[2]: r1c7<r2c7<r3c7 ==> r1c7 ≠ 7, r1c7 ≠ 6
str-asc[1]: r1c9<r1c8 ==> r1c9 ≠ 7
str-asc[1]: r2c9<r1c9 ==> r2c9 ≠ 6
hill[3]: r1c7<r2c7<r3c7>r4c7 ==> r3c7 ≠ 3
str-valley[4]: r4c3>r4c4>r4c5>r4c6<r4c7 ==> r4c6 ≠ 5
str-valley[2]: r5c2>r5c3<r5c4 ==> r5c3 ≠ 5
str-hill[2]: r3c4<r4c4>r5c4 ==> r4c4 ≠ 3
str-asc[1]: r4c4<r4c3 ==> r4c3 ≠ 4
Starting_init_links_with_<Fact-3574>
368 candidates, 2602 csp-links and 4508 links. Density = 6.68%
starting non trivial part of solution
Entering_level_W1_with_<Fact-14413>
whip[1]: c9n8{r6 .} ==> r5c9 ≠ 7, r5c9 ≠ 5, r5c9 ≠ 6
naked-single ==> r5c9 = 9
hidden-single-in-a-row ==> r3c8 = 9
hidden-single-in-a-row ==> r2c5 = 9
str-asc[3]: r2c9<r1c9<r1c8<r2c8 ==> r2c9 ≠ 5, r1c9 ≠ 6, r1c8 ≠ 7
str-asc[1]: r6c5<r5c5 ==> r6c5 ≠ 8, r6c5 ≠ 7
Entering_relation_bivalue_with_<Fact-14433>
Entering_level_S2_with_<Fact-14476>
naked-pairs-in-a-row: r8{c2 c5}{n1 n3} ==> r8c9 ≠ 3, r8c9 ≠ 1, r8c6 ≠ 3, r8c6 ≠ 1, r8c4 ≠ 3
naked-single ==> r8c4 = 4
naked-single ==> r8c3 = 5
naked-single ==> r9c3 = 6
naked-single ==> r9c4 = 8
hidden-single-in-a-row ==> r2c3 = 8
str-valley[4]: r4c3>r4c4>r4c5>r4c6<r4c7 ==> r4c6 ≠ 4
naked-single ==> r4c3 = 7
hidden-single-in-a-row ==> r4c9 = 8
hidden-single-in-a-row ==> r7c5 = 8
hidden-single-in-a-row ==> r1c2 = 8
hidden-single-in-a-column ==> r8c2 = 1
naked-single ==> r8c5 = 3
hidden-single-in-a-row ==> r6c7 = 8
str-asc[2]: r5c3<r5c2<r6c2 ==> r5c2 ≠ 6
str-asc[3]: r6c8<r7c8<r7c9<r6c9 ==> r7c9 ≠ 7, r7c8 ≠ 6, r6c8 ≠ 5
str-asc[2]: r3c5<r3c4<r4c4 ==> r3c5 ≠ 5, r3c4 ≠ 6
str-asc[2]: r4c6<r4c5<r4c4 ==> r4c5 ≠ 6
str-asc[2]: r5c3<r5c4<r4c4 ==> r5c4 ≠ 6
str-valley[2]: r5c2>r5c3<r5c4 ==> r5c3 ≠ 4
str-asc[1]: r9c6<r9c7 ==> r9c6 ≠ 5
str-asc[1]: r9c9<r9c8 ==> r9c9 ≠ 5
x-wing-in-rows: n7{r6 r8}{c6 c9} ==> r5c6 ≠ 7, r3c9 ≠ 7
hidden-single-in-a-row ==> r3c7 = 7
str-asc[1]: r7c6<r7c7 ==> r7c6 ≠ 6
str-asc[1]: r5c7<r5c6 ==> r5c7 ≠ 6
Entering_level_BC2_with_<Fact-14578>
Entering_level_W2_with_<Fact-14622>
whip[2]: r3c2{n3 n2} - r5c2{n2 .} ==> r6c2 ≠ 3
whip[2]: r3c3{n2 n1} - r3c5{n1 .} ==> r3c4 ≠ 2
whip[2]: r5c2{n3 n5} - r5c4{n5 .} ==> r5c3 ≠ 3
naked-pairs-in-a-column: c3{r3 r5}{n1 n2} ==> r6c3 ≠ 2, r6c3 ≠ 1, r1c3 ≠ 2, r1c3 ≠ 1
str-asc[1]: r1c3<r1c4 ==> r1c4 ≠ 3, r1c4 ≠ 2
whip[2]: r5c3{n2 n1} - r5c7{n1 .} ==> r5c6 ≠ 2
whip[2]: c5n7{r5 r1} - c5n6{r1 .} ==> r5c5 ≠ 2, r5c5 ≠ 4, r5c5 ≠ 5
whip[2]: r6c9{n6 n7} - r8c9{n7 .} ==> r7c9 ≠ 6
str-asc[2]: r6c8<r7c8<r7c9 ==> r7c8 ≠ 5, r6c8 ≠ 4
whip[2]: r9c5{n4 n5} - r9c7{n5 .} ==> r9c6 ≠ 4
whip[2]: r9c5{n4 n5} - r9c8{n5 .} ==> r9c9 ≠ 4
Entering_level_S3_with_<Fact-15076>
swordfish-in-rows: n1{r2 r7 r9}{c9 c4 c6} ==> r6c6 ≠ 1, r4c6 ≠ 1, r3c9 ≠ 1
str-asc[1]: r4c6<r4c5 ==> r4c5 ≠ 2
str-asc[1]: r4c6<r4c7 ==> r4c7 ≠ 2
naked-pairs-in-a-column: c5{r4 r9}{n4 n5} ==> r6c5 ≠ 5, r6c5 ≠ 4, r3c5 ≠ 4, r1c5 ≠ 5, r1c5 ≠ 4
naked-pairs-in-a-row: r3{c3 c5}{n1 n2} ==> r3c9 ≠ 2, r3c2 ≠ 2
naked-single ==> r3c2 = 3
naked-single ==> r3c4 = 5
naked-single ==> r4c4 = 6
naked-single ==> r1c4 = 7
hidden-single-in-a-column ==> r5c5 = 7
hidden-single-in-a-column ==> r2c8 = 7
hidden-single-in-a-column ==> r7c1 = 7
str-asc[2]: r4c1<r3c1<r2c1 ==> r4c1 ≠ 5, r3c1 ≠ 6
naked-single ==> r3c1 = 4
naked-single ==> r3c9 = 6
naked-single ==> r8c9 = 7
naked-single ==> r8c6 = 6
hidden-single-in-a-row ==> r5c8 = 6
hidden-single-in-a-row ==> r6c6 = 7
str-asc[2]: r2c9<r1c9<r1c8 ==> r1c9 ≠ 5
str-asc[1]: r5c7<r5c6 ==> r5c7 ≠ 5
str-asc[1]: r7c9<r6c9 ==> r7c9 ≠ 5
hidden-single-in-a-column ==> r6c9 = 5
naked-single ==> r6c2 = 6
hidden-single-in-a-column ==> r1c5 = 6
hidden-single-in-a-column ==> r2c1 = 6
hidden-single-in-a-column ==> r1c1 = 5
hidden-single-in-a-row ==> r1c7 = 1
hidden-single-in-a-row ==> r1c9 = 2
naked-single ==> r2c9 = 1
naked-single ==> r9c9 = 3
naked-single ==> r7c9 = 4
hidden-single-in-a-column ==> r5c6 = 4
hidden-single-in-a-row ==> r5c2 = 5
naked-single ==> r7c2 = 2
naked-single ==> r7c8 = 3
naked-single ==> r1c8 = 4
naked-single ==> r1c3 = 3
naked-single ==> r6c3 = 4
naked-single ==> r9c8 = 5
naked-single ==> r9c5 = 4
naked-single ==> r4c5 = 5
naked-single ==> r9c7 = 2
naked-single ==> r5c7 = 3
naked-single ==> r2c7 = 5
naked-single ==> r7c7 = 6
naked-single ==> r4c7 = 4
naked-single ==> r5c4 = 2
naked-single ==> r2c4 = 3
naked-single ==> r2c6 = 2
naked-single ==> r4c6 = 3
naked-single ==> r4c1 = 1
naked-single ==> r4c8 = 2
naked-single ==> r6c8 = 1
naked-single ==> r6c5 = 2
naked-single ==> r3c5 = 1
naked-single ==> r3c3 = 2
naked-single ==> r6c1 = 3
naked-single ==> r5c3 = 1
naked-single ==> r9c6 = 1
naked-single ==> r7c6 = 5
naked-single ==> r7c4 = 1
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = SHT
583769142
648392571
432518796
197653428
851274369
364927815
729185634
215436987
976841253
Puzzle :
init-time = 3.04s, solve time = 2.89s, total-time = 5.93s
nb-facts=<Fact-15179>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
