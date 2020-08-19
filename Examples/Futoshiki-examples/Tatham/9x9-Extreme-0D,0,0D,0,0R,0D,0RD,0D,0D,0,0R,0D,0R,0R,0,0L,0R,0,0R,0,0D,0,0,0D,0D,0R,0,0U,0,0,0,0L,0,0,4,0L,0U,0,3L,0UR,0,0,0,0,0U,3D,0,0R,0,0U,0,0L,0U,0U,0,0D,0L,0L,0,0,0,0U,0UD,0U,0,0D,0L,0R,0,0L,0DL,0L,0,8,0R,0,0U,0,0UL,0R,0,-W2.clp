


(solve-tatham 9
    "0D,0,0D,0,0R,0D,0RD,0D,0D,0,0R,0D,0R,0R,0,0L,0R,0,0R,0,0D,0,0,0D,0D,0R,0,0U,0,0,0,0L,0,0,4,0L,0U,0,3L,0UR,0,0,0,0,0U,3D,0,0R,0,0U,0,0L,0U,0U,0,0D,0L,0L,0,0,0,0U,0UD,0U,0,0D,0L,0R,0,0L,0DL,0L,0,8,0R,0,0U,0,0UL,0R,0,"
)

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..................................4...3......3...........................8.......
---->->-->->><->>------>---<---<-<->------>--<---<<-------<-><<<-->--<->
>-<<-><------->->>>---->---<--------<--<>->----->->----<>---<<->>--<<<>-
4 givens, 631 candidates
entering BRT
asc[1]: r2c9<r1c9 ==> r2c9 ≠ 9, r1c9 ≠ 1
asc[2]: r5c8<r6c8<r7c8 ==> r7c8 ≠ 2, r7c8 ≠ 1, r6c8 ≠ 9, r6c8 ≠ 1, r5c8 ≠ 9, r5c8 ≠ 8
asc[1]: r4c7<r3c7 ==> r4c7 ≠ 9, r3c7 ≠ 1
asc[1]: r4c6<r3c6 ==> r4c6 ≠ 9, r3c6 ≠ 1
asc[2]: r2c6<r1c6<r1c5 ==> r2c6 ≠ 9, r2c6 ≠ 8, r1c6 ≠ 9, r1c6 ≠ 1, r1c5 ≠ 2, r1c5 ≠ 1
asc[1]: r5c5<r6c5 ==> r6c5 ≠ 1, r5c5 ≠ 9
asc[1]: r4c4<r5c4 ==> r5c4 ≠ 1, r4c4 ≠ 9
asc[3]: r4c3<r3c3<r2c3<r1c3 ==> r4c3 ≠ 9, r4c3 ≠ 8, r4c3 ≠ 7, r3c3 ≠ 9, r3c3 ≠ 8, r3c3 ≠ 1, r2c3 ≠ 9, r2c3 ≠ 2, r2c3 ≠ 1, r1c3 ≠ 2, r1c3 ≠ 1
asc[3]: r4c3<r3c3<r2c3<r2c2 ==> r2c2 ≠ 3, r2c2 ≠ 2, r2c2 ≠ 1
asc[3]: r8c2<r7c2<r7c3<r7c4 ==> r8c2 ≠ 9, r8c2 ≠ 7, r7c4 ≠ 3, r7c4 ≠ 2, r7c4 ≠ 1, r7c3 ≠ 9, r7c3 ≠ 2, r7c3 ≠ 1, r7c2 ≠ 9, r7c2 ≠ 1
asc[1]: r7c1<r8c1 ==> r8c1 ≠ 1
asc[1]: r2c1<r1c1 ==> r2c1 ≠ 9, r1c1 ≠ 1
asc[4]: r9c9<r9c8<r8c8<r8c9<r7c9 ==> r9c9 ≠ 9, r9c9 ≠ 7, r9c9 ≠ 6, r9c8 ≠ 9, r9c8 ≠ 7, r9c8 ≠ 1, r8c9 ≠ 9, r8c9 ≠ 3, r8c9 ≠ 2, r8c9 ≠ 1, r8c8 ≠ 9, r8c8 ≠ 8, r8c8 ≠ 2, r8c8 ≠ 1, r7c9 ≠ 4, r7c9 ≠ 3, r7c9 ≠ 2, r7c9 ≠ 1
asc[1]: r9c6<r9c7 ==> r9c7 ≠ 1, r9c6 ≠ 9
asc[3]: r9c4<r9c3<r8c3<r8c4 ==> r9c4 ≠ 9, r9c4 ≠ 7, r9c3 ≠ 9, r9c3 ≠ 1, r8c4 ≠ 3, r8c4 ≠ 2, r8c4 ≠ 1, r8c3 ≠ 9, r8c3 ≠ 2, r8c3 ≠ 1
asc[2]: r8c6<r8c7<r9c7 ==> r9c7 ≠ 2, r8c7 ≠ 9, r8c7 ≠ 1, r8c6 ≠ 9, r8c6 ≠ 8
asc[4]: r8c6<r8c7<r8c8<r8c9<r7c9 ==> r8c7 ≠ 8, r8c7 ≠ 7, r8c6 ≠ 7, r8c6 ≠ 6
asc[2]: r8c6<r8c5<r9c5 ==> r9c5 ≠ 2, r9c5 ≠ 1, r8c5 ≠ 9, r8c5 ≠ 1
asc[1]: r6c6<r6c7 ==> r6c7 ≠ 1, r6c6 ≠ 9
asc[1]: r6c4<r6c3 ==> r6c4 ≠ 9, r6c3 ≠ 1
asc[4]: r4c8<r4c9<r5c9<r6c9<r7c9 ==> r6c9 ≠ 9, r6c9 ≠ 2, r6c9 ≠ 1, r5c9 ≠ 9, r5c9 ≠ 8, r5c9 ≠ 2, r5c9 ≠ 1, r4c9 ≠ 9, r4c9 ≠ 8, r4c9 ≠ 7
asc[1]: r4c4<r4c5 ==> r4c5 ≠ 1
asc[1]: r3c9<r3c8 ==> r3c9 ≠ 9, r3c8 ≠ 1
asc[3]: r3c2<r3c1<r4c1<r5c1 ==> r5c1 ≠ 2, r5c1 ≠ 1, r4c1 ≠ 9, r4c1 ≠ 2, r4c1 ≠ 1, r3c2 ≠ 9, r3c2 ≠ 7, r3c1 ≠ 9, r3c1 ≠ 8, r3c1 ≠ 1
asc[3]: r2c9<r2c8<r1c8<r1c7 ==> r2c9 ≠ 8, r2c9 ≠ 7, r2c8 ≠ 9, r2c8 ≠ 8, r2c8 ≠ 1, r1c8 ≠ 9, r1c8 ≠ 2, r1c8 ≠ 1, r1c7 ≠ 3, r1c7 ≠ 2, r1c7 ≠ 1
asc[2]: r2c6<r2c7<r1c7 ==> r2c7 ≠ 9, r2c7 ≠ 1
asc[2]: r2c6<r2c5<r2c4 ==> r2c5 ≠ 9, r2c5 ≠ 1, r2c4 ≠ 2, r2c4 ≠ 1
hidden-single-in-a-column ==> r5c8 = 1
naked-single ==> r5c2 = 2
hidden-single-in-a-column ==> r4c3 = 1
hidden-single-in-a-column ==> r7c7 = 1
naked-single ==> r7c1 = 2
hidden-single-in-a-column ==> r3c5 = 1
str-asc[1]: r4c1<r5c1 ==> r5c1 ≠ 5, r5c1 ≠ 4
str-asc[1]: r3c9<r3c8 ==> r3c8 ≠ 2
str-asc[1]: r4c4<r4c5 ==> r4c5 ≠ 2
str-asc[2]: r5c9<r6c9<r7c9 ==> r7c9 ≠ 5, r6c9 ≠ 4
str-asc[3]: r4c9<r5c9<r6c9<r7c9 ==> r7c9 ≠ 7, r7c9 ≠ 6, r6c9 ≠ 6, r6c9 ≠ 5, r5c9 ≠ 5, r5c9 ≠ 4
str-asc[1]: r5c5<r5c4 ==> r5c4 ≠ 4
str-asc[1]: r8c3<r8c4 ==> r8c4 ≠ 4
str-asc[1]: r7c3<r7c4 ==> r7c4 ≠ 4
str-asc[1]: r2c3<r2c2 ==> r2c2 ≠ 4
str-asc[1]: r2c3<r1c3 ==> r1c3 ≠ 4
str-asc[1]: r5c5<r6c5 ==> r6c5 ≠ 4, r6c5 ≠ 2
str-asc[1]: r4c6<r3c6 ==> r3c6 ≠ 2
str-asc[1]: r4c7<r3c7 ==> r3c7 ≠ 2
valley[3]: r2c4>r2c5>r2c6<r2c7 ==> r2c6 ≠ 7
str-valley[4]: r8c5>r8c6<r8c7<r8c8<r8c9 ==> r8c6 ≠ 5
Starting_init_links_with_<Fact-3589>
405 candidates, 3076 csp-links and 5288 links. Density = 6.46%
starting non trivial part of solution
Entering_level_W1_with_<Fact-16576>
whip[1]: r8n2{c7 .} ==> r8c6 ≠ 4, r8c6 ≠ 3
Entering_relation_bivalue_with_<Fact-16579>
Entering_level_S2_with_<Fact-16612>
x-wing-in-columns: n1{c1 c9}{r2 r9} ==> r9c6 ≠ 1, r9c4 ≠ 1, r2c6 ≠ 1
str-asc[1]: r2c6<r2c5 ==> r2c5 ≠ 2
hidden-single-in-a-column ==> r8c5 = 2
naked-single ==> r8c6 = 1
str-asc[1]: r6c6<r6c7 ==> r6c7 ≠ 2
str-asc[1]: r8c2<r7c2 ==> r7c2 ≠ 3
str-asc[1]: r7c2<r7c3 ==> r7c3 ≠ 4
str-asc[1]: r7c3<r7c4 ==> r7c4 ≠ 5
str-asc[1]: r8c7<r8c8 ==> r8c8 ≠ 3
str-asc[1]: r8c8<r8c9 ==> r8c9 ≠ 5, r8c9 ≠ 4
str-hill[4]: r4c9<r5c9<r6c9<r7c9>r8c9 ==> r7c9 ≠ 8
naked-single ==> r7c9 = 9
hidden-single-in-a-column ==> r3c8 = 9
hidden-single-in-a-column ==> r5c6 = 9
str-asc[3]: r3c2<r3c1<r4c1<r5c1 ==> r4c1 ≠ 8, r3c2 ≠ 6, r3c1 ≠ 7
str-asc[1]: r5c5<r5c4 ==> r5c5 ≠ 8
str-asc[1]: r4c4<r5c4 ==> r4c4 ≠ 8
str-asc[1]: r4c6<r3c6 ==> r4c6 ≠ 8
str-asc[1]: r4c7<r3c7 ==> r4c7 ≠ 8
hidden-single-in-a-row ==> r4c5 = 8
hidden-single-in-a-row ==> r4c2 = 9
hidden-single-in-a-row ==> r2c4 = 9
hidden-single-in-a-row ==> r8c1 = 9
str-asc[1]: r2c1<r1c1 ==> r2c1 ≠ 8
str-asc[2]: r9c3<r8c3<r8c4 ==> r9c3 ≠ 7, r8c3 ≠ 8
str-asc[2]: r9c4<r9c3<r8c3 ==> r9c4 ≠ 6, r9c3 ≠ 2
str-asc[1]: r9c3<r8c3 ==> r8c3 ≠ 4
str-asc[1]: r8c3<r8c4 ==> r8c4 ≠ 5
str-asc[2]: r3c3<r2c3<r2c2 ==> r3c3 ≠ 7, r3c3 ≠ 6, r2c3 ≠ 8, r2c3 ≠ 7
hidden-single-in-a-row ==> r2c7 = 8
naked-single ==> r1c7 = 9
hidden-single-in-a-column ==> r6c3 = 9
hidden-single-in-a-column ==> r3c3 = 2
hidden-single-in-a-column ==> r9c5 = 9
hidden-single-in-a-column ==> r4c7 = 2
str-asc[1]: r4c6<r3c6 ==> r3c6 ≠ 3
str-asc[1]: r5c5<r6c5 ==> r5c5 ≠ 7
str-asc[2]: r2c6<r1c6<r1c5 ==> r2c6 ≠ 6, r1c6 ≠ 8, r1c6 ≠ 7, r1c6 ≠ 2, r1c5 ≠ 3
str-asc[1]: r6c6<r6c7 ==> r6c6 ≠ 8, r6c6 ≠ 7
str-asc[1]: r9c6<r9c7 ==> r9c6 ≠ 7
str-asc[1]: r8c7<r9c7 ==> r9c7 ≠ 3
str-asc[3]: r8c2<r7c2<r7c3<r7c4 ==> r8c2 ≠ 6, r7c3 ≠ 8, r7c2 ≠ 7
hidden-single-in-a-column ==> r1c3 = 8
hidden-single-in-a-column ==> r5c1 = 8
str-asc[1]: r4c4<r5c4 ==> r4c4 ≠ 7
str-asc[1]: r2c1<r1c1 ==> r2c1 ≠ 7
str-asc[2]: r2c9<r2c8<r1c8 ==> r2c9 ≠ 6, r2c8 ≠ 7
str-asc[1]: r6c8<r7c8 ==> r6c8 ≠ 8
hidden-single-in-a-column ==> r7c8 = 8
hidden-single-in-a-column ==> r3c6 = 8
str-asc[3]: r8c2<r7c2<r7c3<r7c4 ==> r8c2 ≠ 5, r7c3 ≠ 7, r7c2 ≠ 6
hidden-single-in-a-column ==> r8c3 = 7
naked-single ==> r8c4 = 8
naked-single ==> r8c9 = 6
naked-single ==> r4c9 = 5
naked-single ==> r5c9 = 7
naked-single ==> r6c9 = 8
naked-single ==> r8c8 = 5
str-asc[1]: r9c9<r9c8 ==> r9c9 ≠ 4, r9c9 ≠ 3
str-asc[1]: r2c9<r1c9 ==> r2c9 ≠ 4
str-asc[1]: r5c5<r5c4 ==> r5c5 ≠ 6
str-asc[1]: r4c4<r5c4 ==> r4c4 ≠ 6
naked-single ==> r4c4 = 3
Entering_level_BC2_with_<Fact-16874>
Entering_level_W2_with_<Fact-16974>
whip[2]: r1c1{n6 n7} - r4c1{n7 .} ==> r2c1 ≠ 6
whip[2]: c8n7{r1 r6} - c8n6{r6 .} ==> r1c8 ≠ 3
whip[2]: r1c8{n6 n7} - r1c5{n7 .} ==> r1c6 ≠ 6
str-asc[1]: r2c6<r1c6 ==> r2c6 ≠ 5
whip[2]: c9n4{r1 r3} - c9n3{r3 .} ==> r1c9 ≠ 2
hidden-single-in-a-row ==> r1c4 = 2
hidden-single-in-a-column ==> r6c4 = 1
hidden-single-in-a-column ==> r1c2 = 1
str-asc[1]: r9c4<r9c3 ==> r9c3 ≠ 4
hidden-single-in-a-column ==> r2c3 = 4
naked-pairs-in-a-column: c9{r1 r3}{n3 n4} ==> r2c9 ≠ 3
hidden-pairs-in-a-column: c2{n6 n7}{r2 r6} ==> r6c2 ≠ 5, r6c2 ≠ 4, r2c2 ≠ 5
whip[1]: r6n4{c7 .} ==> r6c6 ≠ 5, r6c6 ≠ 6
x-wing-in-columns: n3{c2 c7}{r3 r8} ==> r3c9 ≠ 3
naked-single ==> r3c9 = 4
naked-single ==> r1c9 = 3
hidden-single-in-a-column ==> r9c4 = 4
hidden-single-in-a-column ==> r1c1 = 4
naked-single ==> r1c6 = 5
naked-single ==> r2c1 = 1
naked-single ==> r2c9 = 2
naked-single ==> r2c6 = 3
naked-single ==> r2c8 = 6
naked-single ==> r1c8 = 7
naked-single ==> r1c5 = 6
naked-single ==> r6c8 = 2
naked-single ==> r6c6 = 4
naked-single ==> r9c8 = 3
naked-single ==> r2c2 = 7
naked-single ==> r2c5 = 5
naked-single ==> r5c5 = 4
naked-single ==> r6c5 = 7
naked-single ==> r7c5 = 3
naked-single ==> r6c2 = 6
naked-single ==> r6c7 = 5
naked-single ==> r5c7 = 6
naked-single ==> r5c4 = 5
naked-single ==> r9c7 = 7
naked-single ==> r3c7 = 3
naked-single ==> r3c2 = 5
naked-single ==> r3c1 = 6
naked-single ==> r3c4 = 7
naked-single ==> r7c4 = 6
naked-single ==> r7c3 = 5
naked-single ==> r9c3 = 6
naked-single ==> r9c6 = 2
naked-single ==> r7c6 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 7
naked-single ==> r9c1 = 5
naked-single ==> r7c2 = 4
naked-single ==> r8c2 = 3
naked-single ==> r8c7 = 4
naked-single ==> r9c9 = 1
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[2]
418265973
174953862
652718394
791386245
823549617
369174528
245637189
937821456
586492731
Puzzle :
init-time = 2.56s, solve time = 3.25s, total-time = 5.81s
nb-facts=<Fact-17496>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
