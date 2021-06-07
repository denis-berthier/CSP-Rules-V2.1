


(solve-tatham 9
    "0,0L,0,0,0,0D,0,0L,0,0R,0UR,0D,0,0R,0R,0R,0R,0,0D,0,0L,0L,0L,0,0R,0D,0D,0,0D,0DL,0,0,0,1,0,0,0R,0,0L,0,0R,0,3,0U,0U,0U,7,0,0,0,0L,0,0,0,0,0,0U,0,0L,0,0L,0L,0L,0D,0,0L,0L,0U,0U,0,0R,0U,0R,0,6,0,0,8,0L,0R,0,"
)


***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.................................1........3...7...........................6..8...
<-----<->>-->>>>-<<<-->--<------><-->-------<------<-<<<-<<---->>----<->
-->-<--><-->----->->-<----------------<->-----<-----------><------><--<-
5 givens, 608 candidates
entering BRT
asc[1]: r4c9<r5c9 ==> r5c9 ≠ 1, r4c9 ≠ 9
asc[1]: r4c9<r3c9 ==> r3c9 ≠ 1
asc[1]: r4c8<r5c8 ==> r5c8 ≠ 1, r4c8 ≠ 9
asc[2]: r4c8<r3c8<r3c7 ==> r4c8 ≠ 8, r3c8 ≠ 9, r3c8 ≠ 1, r3c7 ≠ 2
asc[1]: r7c6<r8c6 ==> r8c6 ≠ 1, r7c6 ≠ 9
asc[1]: r6c3<r7c3 ==> r7c3 ≠ 1, r6c3 ≠ 9
asc[2]: r5c2<r4c2<r4c3 ==> r5c2 ≠ 9, r5c2 ≠ 8, r4c3 ≠ 2, r4c2 ≠ 9
asc[1]: r4c1<r3c1 ==> r4c1 ≠ 9, r3c1 ≠ 1
asc[1]: r9c9<r9c8 ==> r9c9 ≠ 9, r9c8 ≠ 1
asc[2]: r9c2<r9c1<r8c1 ==> r9c2 ≠ 9, r9c1 ≠ 9, r9c1 ≠ 1, r8c1 ≠ 2, r8c1 ≠ 1
asc[2]: r8c2<r8c3<r8c4 ==> r8c4 ≠ 2, r8c4 ≠ 1, r8c3 ≠ 9, r8c3 ≠ 1, r8c2 ≠ 9, r8c2 ≠ 8
asc[5]: r7c6<r7c7<r7c8<r7c9<r8c9<r8c8 ==> r8c9 ≠ 9, r8c9 ≠ 4, r8c9 ≠ 3, r8c9 ≠ 2, r8c9 ≠ 1, r8c8 ≠ 5, r8c8 ≠ 4, r8c8 ≠ 3, r8c8 ≠ 2, r8c8 ≠ 1, r7c9 ≠ 9, r7c9 ≠ 8, r7c9 ≠ 3, r7c9 ≠ 2, r7c9 ≠ 1, r7c8 ≠ 9, r7c8 ≠ 8, r7c8 ≠ 7, r7c8 ≠ 2, r7c8 ≠ 1, r7c7 ≠ 9, r7c7 ≠ 8, r7c7 ≠ 7, r7c7 ≠ 6, r7c6 ≠ 7, r7c6 ≠ 6, r7c6 ≠ 5
asc[2]: r7c4<r7c5<r8c5 ==> r8c5 ≠ 2, r8c5 ≠ 1, r7c5 ≠ 9, r7c5 ≠ 1, r7c4 ≠ 9, r7c4 ≠ 8
asc[1]: r6c5<r6c6 ==> r6c6 ≠ 1, r6c5 ≠ 9
asc[1]: r5c6<r5c5 ==> r5c6 ≠ 9, r5c5 ≠ 1
asc[2]: r5c2<r5c3<r4c3 ==> r5c3 ≠ 9, r5c3 ≠ 1
asc[2]: r5c2<r5c1<r6c1 ==> r6c1 ≠ 2, r6c1 ≠ 1, r5c1 ≠ 9, r5c1 ≠ 1
asc[4]: r3c2<r3c3<r2c3<r2c2<r2c1 ==> r3c3 ≠ 9, r3c3 ≠ 8, r3c3 ≠ 7, r3c3 ≠ 1, r3c2 ≠ 9, r3c2 ≠ 8, r3c2 ≠ 6, r2c3 ≠ 9, r2c3 ≠ 8, r2c3 ≠ 2, r2c3 ≠ 1, r2c2 ≠ 9, r2c2 ≠ 3, r2c2 ≠ 2, r2c2 ≠ 1, r2c1 ≠ 4, r2c1 ≠ 3, r2c1 ≠ 2, r2c1 ≠ 1
asc[3]: r3c2<r3c3<r3c4<r3c5 ==> r3c5 ≠ 3, r3c5 ≠ 2, r3c5 ≠ 1, r3c4 ≠ 9, r3c4 ≠ 2, r3c4 ≠ 1
asc[4]: r2c9<r2c8<r2c7<r2c6<r1c6 ==> r2c9 ≠ 9, r2c9 ≠ 8, r2c9 ≠ 7, r2c9 ≠ 6, r2c8 ≠ 9, r2c8 ≠ 8, r2c8 ≠ 7, r2c8 ≠ 1, r2c7 ≠ 9, r2c7 ≠ 8, r2c7 ≠ 2, r2c6 ≠ 9, r2c6 ≠ 3, r2c6 ≠ 2, r2c6 ≠ 1, r1c6 ≠ 4, r1c6 ≠ 3, r1c6 ≠ 2, r1c6 ≠ 1
asc[4]: r2c9<r2c8<r2c7<r2c6<r2c5 ==> r2c5 ≠ 4, r2c5 ≠ 3, r2c5 ≠ 2, r2c5 ≠ 1
asc[1]: r1c7<r1c8 ==> r1c8 ≠ 1, r1c7 ≠ 9
asc[3]: r1c1<r1c2<r2c2<r2c1 ==> r1c2 ≠ 9, r1c2 ≠ 8, r1c2 ≠ 1, r1c1 ≠ 9, r1c1 ≠ 8, r1c1 ≠ 7
naked-single ==> r9c7 = 9
hidden-single-in-a-row ==> r8c2 = 1
hidden-single-in-a-row ==> r3c6 = 1
hidden-single-in-a-row ==> r5c4 = 1
hidden-single-in-a-row ==> r2c9 = 1
hidden-single-in-a-row ==> r9c5 = 1
hidden-single-in-a-row ==> r7c1 = 1
hidden-single-in-a-row ==> r1c3 = 1
hidden-single-in-a-row ==> r6c8 = 1
hidden-single-in-a-column ==> r7c2 = 9
hidden-single-in-a-column ==> r4c3 = 9
str-asc[3]: r1c1<r1c2<r2c2<r2c1 ==> r1c2 ≠ 2
str-asc[1]: r1c1<r1c2 ==> r1c1 ≠ 6
str-asc[1]: r1c7<r1c8 ==> r1c8 ≠ 2
str-asc[2]: r2c7<r2c6<r2c5 ==> r2c6 ≠ 4, r2c5 ≠ 5
str-asc[1]: r2c7<r2c6 ==> r2c7 ≠ 7
str-asc[1]: r2c8<r2c7 ==> r2c8 ≠ 6
str-asc[1]: r2c6<r1c6 ==> r1c6 ≠ 5
str-asc[3]: r3c2<r3c3<r3c4<r3c5 ==> r3c5 ≠ 4, r3c4 ≠ 3, r3c3 ≠ 2
str-asc[1]: r3c2<r3c3 ==> r3c2 ≠ 5
str-asc[3]: r3c3<r2c3<r2c2<r2c1 ==> r2c3 ≠ 3, r2c2 ≠ 4, r2c1 ≠ 5
str-asc[2]: r5c2<r5c1<r6c1 ==> r6c1 ≠ 3, r5c1 ≠ 2
str-asc[1]: r5c1<r6c1 ==> r6c1 ≠ 4
str-asc[1]: r5c2<r5c3 ==> r5c3 ≠ 2
str-asc[1]: r5c6<r5c5 ==> r5c5 ≠ 2
str-asc[1]: r6c5<r6c6 ==> r6c6 ≠ 2
str-asc[2]: r7c4<r7c5<r8c5 ==> r8c5 ≠ 3, r7c5 ≠ 2
str-asc[5]: r7c6<r7c7<r7c8<r7c9<r8c9<r8c8 ==> r8c9 ≠ 5, r8c8 ≠ 6, r7c9 ≠ 4, r7c8 ≠ 3, r7c7 ≠ 2
str-asc[1]: r7c7<r7c8 ==> r7c8 ≠ 4
str-asc[3]: r7c8<r7c9<r8c9<r8c8 ==> r8c9 ≠ 6, r8c8 ≠ 7, r7c9 ≠ 5
str-asc[2]: r9c2<r9c1<r8c1 ==> r9c1 ≠ 2, r8c1 ≠ 3
str-asc[1]: r9c9<r9c8 ==> r9c9 ≠ 7, r9c8 ≠ 2
str-asc[1]: r4c1<r3c1 ==> r3c1 ≠ 2
str-asc[1]: r5c2<r4c2 ==> r4c2 ≠ 2
str-asc[1]: r6c3<r7c3 ==> r7c3 ≠ 2, r6c3 ≠ 8
str-asc[1]: r7c6<r8c6 ==> r8c6 ≠ 2
str-asc[1]: r3c8<r3c7 ==> r3c8 ≠ 8
str-asc[1]: r4c8<r3c8 ==> r4c8 ≠ 7, r3c8 ≠ 2
str-asc[1]: r4c8<r5c8 ==> r5c8 ≠ 2
str-asc[1]: r4c9<r3c9 ==> r3c9 ≠ 2
hidden-single-in-a-row ==> r3c2 = 2
str-asc[1]: r5c2<r5c1 ==> r5c1 ≠ 4
str-asc[1]: r5c1<r6c1 ==> r6c1 ≠ 5
str-asc[1]: r5c2<r5c3 ==> r5c3 ≠ 4
str-asc[1]: r5c2<r4c2 ==> r4c2 ≠ 4, r4c2 ≠ 3
str-asc[1]: r9c2<r9c1 ==> r9c1 ≠ 3
str-asc[1]: r9c1<r8c1 ==> r8c1 ≠ 4
str-asc[1]: r4c9<r5c9 ==> r5c9 ≠ 2
hidden-single-in-a-row ==> r5c6 = 2
hidden-single-in-a-row ==> r7c4 = 2
hidden-single-in-a-row ==> r2c8 = 2
hidden-single-in-a-row ==> r2c4 = 3
hidden-single-in-a-row ==> r9c9 = 2
str-asc[1]: r4c9<r3c9 ==> r3c9 ≠ 3
str-asc[1]: r4c8<r3c8 ==> r3c8 ≠ 3
str-asc[1]: r3c8<r3c7 ==> r3c7 ≠ 4
str-asc[1]: r7c6<r8c6 ==> r8c6 ≠ 3
hidden-single-in-a-row ==> r8c3 = 3
hidden-single-in-a-row ==> r3c1 = 3
naked-single ==> r4c1 = 2
hidden-single-in-a-column ==> r6c3 = 2
hidden-single-in-a-column ==> r1c5 = 2
hidden-single-in-a-column ==> r8c7 = 2
str-asc[1]: r1c7<r1c8 ==> r1c8 ≠ 4, r1c8 ≠ 3
str-asc[1]: r6c5<r6c6 ==> r6c6 ≠ 3
str-asc[1]: r1c1<r1c2 ==> r1c2 ≠ 4, r1c2 ≠ 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-column ==> r5c2 = 4
hidden-single-in-a-column ==> r4c8 = 3
hidden-single-in-a-column ==> r7c6 = 3
hidden-single-in-a-column ==> r6c5 = 3
hidden-single-in-a-column ==> r1c9 = 3
str-asc[1]: r7c5<r8c5 ==> r8c5 ≠ 4
str-asc[1]: r4c9<r3c9 ==> r3c9 ≠ 4
str-asc[2]: r1c2<r2c2<r2c1 ==> r2c2 ≠ 5, r2c1 ≠ 6
str-asc[2]: r3c3<r3c4<r3c5 ==> r3c5 ≠ 5, r3c4 ≠ 4
str-asc[1]: r3c3<r2c3 ==> r2c3 ≠ 4
hidden-single-in-a-row ==> r2c7 = 4
naked-single ==> r7c7 = 5
naked-single ==> r7c8 = 6
naked-single ==> r7c9 = 7
naked-single ==> r8c9 = 8
naked-single ==> r8c8 = 9
str-asc[1]: r1c7<r1c8 ==> r1c8 ≠ 5, r1c7 ≠ 8
str-asc[1]: r9c1<r8c1 ==> r9c1 ≠ 7
str-asc[1]: r7c5<r8c5 ==> r7c5 ≠ 8
naked-single ==> r7c5 = 4
naked-single ==> r7c3 = 8
hidden-single-in-a-column ==> r3c3 = 4
hidden-single-in-a-column ==> r9c8 = 4
naked-single ==> r9c1 = 5
naked-single ==> r1c1 = 4
naked-single ==> r9c4 = 7
str-asc[1]: r5c1<r6c1 ==> r6c1 ≠ 6
Starting_init_links_with_<Fact-3675>
147 candidates, 374 csp-links and 1931 links. Density = 17.99%
starting non trivial part of solution
Entering_level_W1_with_<Fact-5192>
Entering_relation_bivalue_with_<Fact-5193>
Entering_level_S2_with_<Fact-5258>
x-wing-in-rows: n9{r3 r5}{c5 c9} ==> r6c9 ≠ 9, r2c5 ≠ 9
hidden-single-in-a-row ==> r2c1 = 9
naked-single ==> r6c1 = 8
naked-single ==> r6c7 = 6
naked-single ==> r1c7 = 7
naked-single ==> r1c8 = 8
naked-single ==> r3c7 = 8
hidden-single-in-a-column ==> r4c4 = 8
hidden-single-in-a-column ==> r2c2 = 8
hidden-single-in-a-column ==> r5c5 = 8
hidden-single-in-a-column ==> r3c5 = 9
hidden-single-in-a-row ==> r3c8 = 7
naked-single ==> r5c8 = 5
naked-single ==> r5c3 = 7
naked-single ==> r2c3 = 5
naked-single ==> r5c1 = 6
naked-single ==> r5c9 = 9
naked-single ==> r8c1 = 7
str-asc[1]: r2c6<r2c5 ==> r2c6 ≠ 7, r2c5 ≠ 6
naked-single ==> r2c5 = 7
naked-single ==> r2c6 = 6
naked-single ==> r1c6 = 9
hidden-single-in-a-column ==> r6c4 = 9
hidden-single-in-a-column ==> r8c4 = 4
naked-single ==> r8c6 = 5
naked-single ==> r6c6 = 4
naked-single ==> r4c6 = 7
naked-single ==> r6c9 = 5
naked-single ==> r3c9 = 6
naked-single ==> r3c4 = 5
naked-single ==> r1c4 = 6
naked-single ==> r1c2 = 5
naked-single ==> r4c2 = 6
naked-single ==> r4c5 = 5
naked-single ==> r4c9 = 4
naked-single ==> r8c5 = 6
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = SHP
451629783
985376421
324591876
269857134
647182359
872934615
198243567
713465298
536718942
Puzzle :
init-time = 2.0s, solve time = 1.24s, total-time = 3.24s
nb-facts=<Fact-5304>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
