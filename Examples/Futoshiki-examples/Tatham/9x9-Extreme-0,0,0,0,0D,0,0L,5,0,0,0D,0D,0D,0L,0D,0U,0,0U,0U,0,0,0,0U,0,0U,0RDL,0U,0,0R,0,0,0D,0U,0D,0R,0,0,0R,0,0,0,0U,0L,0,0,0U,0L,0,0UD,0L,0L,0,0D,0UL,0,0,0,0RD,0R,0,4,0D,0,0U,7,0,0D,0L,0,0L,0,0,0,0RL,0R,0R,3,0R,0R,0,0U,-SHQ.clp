


(solve-tatham 9
    "0,0,0,0,0D,0,0L,5,0,0,0D,0D,0D,0L,0D,0U,0,0U,0U,0,0,0,0U,0,0U,0RDL,0U,0,0R,0,0,0D,0U,0D,0R,0,0,0R,0,0,0,0U,0L,0,0,0U,0L,0,0UD,0L,0L,0,0D,0UL,0,0,0,0RD,0R,0,4,0D,0,0U,7,0,0D,0L,0,0L,0,0,0,0RL,0R,0R,3,0R,0R,0,0U,"
)

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.......5....................................................4...7...........3....
-----<-----<----------<>->----->->---<--<--<<--<--->>------<-<--<>>>->>-
-<--<-<-->------->------->--<>>>><->-----><<----<<->------>-->>-<<--<--<
4 givens, 629 candidates
entering BRT
asc[1]: r8c9<r9c9 ==> r9c9 ≠ 1, r8c9 ≠ 9
asc[1]: r5c9<r6c9 ==> r6c9 ≠ 1, r5c9 ≠ 9
asc[3]: r1c9<r2c9<r3c9<r3c8 ==> r3c9 ≠ 9, r3c9 ≠ 2, r3c9 ≠ 1, r3c8 ≠ 3, r3c8 ≠ 2, r3c8 ≠ 1, r2c9 ≠ 9, r2c9 ≠ 8, r2c9 ≠ 1, r1c9 ≠ 9, r1c9 ≠ 8, r1c9 ≠ 7
asc[3]: r8c8<r7c8<r6c8<r6c9 ==> r8c8 ≠ 9, r8c8 ≠ 8, r7c8 ≠ 9, r7c8 ≠ 8, r7c8 ≠ 1, r6c9 ≠ 3, r6c9 ≠ 2, r6c8 ≠ 9, r6c8 ≠ 2, r6c8 ≠ 1
asc[4]: r3c6<r4c6<r5c6<r5c7<r4c7 ==> r5c7 ≠ 9, r5c7 ≠ 3, r5c7 ≠ 2, r5c7 ≠ 1, r5c6 ≠ 9, r5c6 ≠ 8, r5c6 ≠ 2, r5c6 ≠ 1, r4c7 ≠ 3, r4c7 ≠ 2, r4c7 ≠ 1, r4c6 ≠ 9, r4c6 ≠ 8, r4c6 ≠ 7, r4c6 ≠ 1, r3c6 ≠ 9, r3c6 ≠ 8, r3c6 ≠ 7, r3c6 ≠ 6
asc[1]: r3c6<r2c6 ==> r2c6 ≠ 1
asc[1]: r5c5<r4c5 ==> r5c5 ≠ 9, r4c5 ≠ 1
asc[3]: r5c4<r6c4<r6c5<r6c6 ==> r6c6 ≠ 3, r6c6 ≠ 2, r6c6 ≠ 1, r6c5 ≠ 9, r6c5 ≠ 2, r6c5 ≠ 1, r6c4 ≠ 9, r6c4 ≠ 8, r6c4 ≠ 1, r5c4 ≠ 9, r5c4 ≠ 8, r5c4 ≠ 7
asc[3]: r3c4<r2c4<r2c5<r3c5 ==> r3c5 ≠ 2, r3c5 ≠ 1, r3c4 ≠ 9, r3c4 ≠ 8, r3c4 ≠ 7, r2c5 ≠ 9, r2c5 ≠ 2, r2c5 ≠ 1, r2c4 ≠ 9, r2c4 ≠ 8, r2c4 ≠ 1
asc[3]: r3c4<r2c4<r2c5<r1c5 ==> r1c5 ≠ 2, r1c5 ≠ 1
asc[1]: r3c3<r2c3 ==> r3c3 ≠ 9, r2c3 ≠ 1
asc[1]: r3c2<r2c2 ==> r3c2 ≠ 9, r2c2 ≠ 1
asc[1]: r7c1<r8c1 ==> r8c1 ≠ 1, r7c1 ≠ 9
asc[2]: r5c1<r6c1<r6c2 ==> r6c2 ≠ 2, r6c2 ≠ 1, r6c1 ≠ 9, r6c1 ≠ 1, r5c1 ≠ 9, r5c1 ≠ 8
asc[1]: r2c1<r3c1 ==> r3c1 ≠ 1, r2c1 ≠ 9
asc[2]: r9c8<r9c7<r9c6 ==> r9c8 ≠ 9, r9c8 ≠ 8, r9c7 ≠ 9, r9c7 ≠ 1, r9c6 ≠ 2, r9c6 ≠ 1
asc[6]: r9c5<r9c4<r8c4<r7c4<r6c4<r6c5<r6c6 ==> r9c4 ≠ 9, r9c4 ≠ 8, r9c4 ≠ 7, r9c4 ≠ 6, r9c4 ≠ 5, r8c4 ≠ 9, r8c4 ≠ 8, r8c4 ≠ 6, r8c4 ≠ 2, r8c4 ≠ 1, r7c4 ≠ 9, r7c4 ≠ 8, r7c4 ≠ 7, r7c4 ≠ 3, r7c4 ≠ 2, r7c4 ≠ 1, r6c6 ≠ 6, r6c6 ≠ 5, r6c6 ≠ 4, r6c5 ≠ 5, r6c5 ≠ 4, r6c4 ≠ 4, r6c4 ≠ 3, r6c4 ≠ 2
asc[3]: r9c5<r9c4<r8c4<r8c5 ==> r8c5 ≠ 2, r8c5 ≠ 1
asc[3]: r9c5<r9c4<r9c3<r9c2 ==> r9c3 ≠ 9, r9c3 ≠ 2, r9c3 ≠ 1, r9c2 ≠ 2, r9c2 ≠ 1
asc[1]: r9c1<r9c2 ==> r9c1 ≠ 9
asc[1]: r8c6<r8c7 ==> r8c7 ≠ 1, r8c6 ≠ 9
asc[5]: r7c6<r7c5<r7c4<r6c4<r6c5<r6c6 ==> r7c6 ≠ 9, r7c6 ≠ 8, r7c6 ≠ 7, r7c6 ≠ 6, r7c6 ≠ 5, r7c5 ≠ 9, r7c5 ≠ 8, r7c5 ≠ 7, r7c5 ≠ 6, r7c5 ≠ 1
asc[1]: r5c3<r5c2 ==> r5c3 ≠ 9, r5c2 ≠ 1
asc[2]: r4c9<r4c8<r3c8 ==> r4c9 ≠ 9, r4c9 ≠ 8, r4c8 ≠ 9, r4c8 ≠ 1
asc[1]: r4c3<r4c2 ==> r4c3 ≠ 9, r4c2 ≠ 1
asc[4]: r1c6<r1c7<r2c7<r3c7<r3c8 ==> r3c8 ≠ 4, r3c7 ≠ 9, r3c7 ≠ 3, r3c7 ≠ 2, r3c7 ≠ 1, r2c7 ≠ 9, r2c7 ≠ 8, r2c7 ≠ 2, r2c7 ≠ 1, r1c7 ≠ 9, r1c7 ≠ 8, r1c7 ≠ 7, r1c7 ≠ 1, r1c6 ≠ 9, r1c6 ≠ 8, r1c6 ≠ 7, r1c6 ≠ 6
naked-single ==> r9c4 = 4
naked-single ==> r8c4 = 5
naked-single ==> r7c4 = 6
naked-single ==> r6c4 = 7
naked-single ==> r6c5 = 8
naked-single ==> r6c6 = 9
hidden-single-in-a-column ==> r6c7 = 1
hidden-single-in-a-column ==> r5c5 = 1
str-asc[1]: r5c3<r5c2 ==> r5c2 ≠ 2
str-asc[1]: r9c3<r9c2 ==> r9c2 ≠ 5
str-asc[1]: r9c7<r9c6 ==> r9c7 ≠ 8
str-asc[1]: r9c8<r9c7 ==> r9c8 ≠ 7
str-asc[1]: r6c1<r6c2 ==> r6c1 ≠ 6
str-asc[1]: r5c1<r6c1 ==> r6c1 ≠ 2, r5c1 ≠ 7, r5c1 ≠ 6, r5c1 ≠ 5
hidden-single-in-a-row ==> r6c3 = 2
str-asc[1]: r5c3<r5c2 ==> r5c2 ≠ 3
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 3
str-asc[1]: r2c5<r1c5 ==> r1c5 ≠ 4
str-asc[1]: r3c4<r2c4 ==> r3c4 ≠ 3
str-asc[1]: r2c5<r3c5 ==> r3c5 ≠ 4
str-asc[1]: r5c7<r4c7 ==> r4c7 ≠ 5
str-asc[1]: r6c8<r6c9 ==> r6c8 ≠ 6
str-asc[2]: r8c8<r7c8<r6c8 ==> r8c8 ≠ 6, r8c8 ≠ 4, r8c8 ≠ 3, r7c8 ≠ 7
str-asc[1]: r5c9<r6c9 ==> r5c9 ≠ 8, r5c9 ≠ 7, r5c9 ≠ 6
Starting_init_links_with_<Fact-3565>
349 candidates, 2340 csp-links and 4264 links. Density = 7.02%
starting non trivial part of solution
Entering_level_W1_with_<Fact-13320>
Entering_relation_bivalue_with_<Fact-13321>
Entering_level_S2_with_<Fact-13362>
naked-pairs-in-a-column: c4{r2 r5}{n2 n3} ==> r4c4 ≠ 3, r4c4 ≠ 2, r3c4 ≠ 2, r1c4 ≠ 3, r1c4 ≠ 2
naked-single ==> r3c4 = 1
str-asc[1]: r3c2<r2c2 ==> r2c2 ≠ 2
str-asc[1]: r3c3<r2c3 ==> r2c3 ≠ 3
str-asc[1]: r3c6<r2c6 ==> r2c6 ≠ 2
str-asc[1]: r3c6<r4c6 ==> r4c6 ≠ 2
str-asc[1]: r4c6<r5c6 ==> r5c6 ≠ 3
x-wing-in-rows: n1{r2 r9}{c1 c8} ==> r8c8 ≠ 1, r7c1 ≠ 1, r4c1 ≠ 1, r1c1 ≠ 1
naked-single ==> r8c8 = 2
naked-single ==> r7c8 = 3
naked-single ==> r6c8 = 4
hidden-single-in-a-row ==> r6c1 = 3
naked-single ==> r5c1 = 2
naked-single ==> r5c4 = 3
naked-single ==> r2c4 = 2
str-asc[1]: r2c9<r3c9 ==> r3c9 ≠ 3
str-asc[1]: r5c3<r5c2 ==> r5c2 ≠ 4
str-asc[1]: r7c1<r8c1 ==> r8c1 ≠ 4
str-asc[1]: r4c8<r3c8 ==> r3c8 ≠ 6
Entering_level_BC2_with_<Fact-13460>
Entering_level_W2_with_<Fact-13520>
whip[2]: r1c5{n7 n9} - r3c5{n9 .} ==> r2c5 ≠ 7
whip[2]: r4c2{n8 n9} - r4c4{n9 .} ==> r4c3 ≠ 8
whip[2]: r5c3{n8 n4} - r5c9{n4 .} ==> r5c2 ≠ 5
whip[2]: r5c6{n7 n4} - r5c9{n4 .} ==> r5c7 ≠ 5
str-asc[1]: r5c7<r4c7 ==> r4c7 ≠ 6
Entering_level_S3_with_<Fact-13925>
Entering_level_BC3_with_<Fact-13928>
biv-chain[3]: c2n1{r1 r7} - r7c6{n1 n2} - r3n2{c6 c2} ==> r1c2 ≠ 2
Entering_level_W3_with_<Fact-13968>
whip[3]: r9c8{n6 n1} - r9c1{n1 n5} - r9c3{n5 .} ==> r9c2 ≠ 6
whip[2]: r9c2{n8 n9} - r2c2{n9 .} ==> r3c2 ≠ 8
whip[3]: r8c7{n6 n9} - r8c5{n9 n6} - r8c1{n6 .} ==> r8c6 ≠ 8
whip[3]: r8c5{n6 n9} - r8c7{n9 n8} - r8c1{n8 .} ==> r8c6 ≠ 6
whip[3]: r4c8{n7 n8} - r4c7{n8 n9} - r4c4{n9 .} ==> r4c9 ≠ 7
whip[3]: r2c7{n5 n7} - r3c7{n6 n8} - r5c7{n8 .} ==> r1c7 ≠ 6
str-asc[1]: r1c6<r1c7 ==> r1c6 ≠ 4, r1c6 ≠ 3
naked-pairs-in-a-column: c6{r1 r7}{n1 n2} ==> r8c6 ≠ 1, r3c6 ≠ 2
hidden-single-in-a-row ==> r3c2 = 2
str-asc[4]: r3c6<r4c6<r5c6<r5c7<r4c7 ==> r5c6 ≠ 4, r4c6 ≠ 3
str-asc[1]: r3c6<r2c6 ==> r2c6 ≠ 3
str-asc[1]: r8c6<r8c7 ==> r8c7 ≠ 3
x-wing-in-columns: n1{c2 c6}{r1 r7} ==> r7c9 ≠ 1, r7c3 ≠ 1, r1c9 ≠ 1, r1c3 ≠ 1
whip[2]: r8c6{n4 n3} - r3c6{n3 .} ==> r4c6 ≠ 4, r2c6 ≠ 4
str-asc[1]: r4c6<r5c6 ==> r5c6 ≠ 5
str-asc[1]: r5c6<r5c7 ==> r5c7 ≠ 6
str-asc[1]: r5c7<r4c7 ==> r4c7 ≠ 7
naked-pairs-in-a-row: r4{c4 c7}{n8 n9} ==> r4c8 ≠ 8, r4c5 ≠ 9, r4c2 ≠ 9, r4c2 ≠ 8, r4c1 ≠ 9, r4c1 ≠ 8
str-asc[1]: r4c3<r4c2 ==> r4c3 ≠ 7, r4c3 ≠ 6
hidden-pairs-in-a-row: r5{n4 n5}{c3 c9} ==> r5c3 ≠ 8, r5c3 ≠ 7, r5c3 ≠ 6
hidden-pairs-in-a-column: c6{n3 n4}{r3 r8} ==> r3c6 ≠ 5
whip[2]: r4c6{n5 n6} - r4c2{n6 .} ==> r4c3 ≠ 5
whip[2]: r5c7{n7 n8} - r3c7{n8 .} ==> r2c7 ≠ 7
whip[2]: r4n3{c3 c9} - r4n1{c9 .} ==> r4c3 ≠ 4
naked-triplets-in-a-row: r8{c1 c5 c7}{n8 n6 n9} ==> r8c9 ≠ 8, r8c9 ≠ 6, r8c3 ≠ 9, r8c3 ≠ 8, r8c3 ≠ 6
whip[3]: r3c3{n8 n3} - r8c3{n3 n1} - r4c3{n1 .} ==> r2c3 ≠ 4
whip[3]: c7n3{r2 r1} - c7n2{r1 r9} - c7n5{r9 .} ==> r2c7 ≠ 6
whip[3]: r8c5{n6 n9} - r3c5{n9 n7} - r1c5{n7 .} ==> r2c5 ≠ 6
Entering_level_S4_with_<Fact-15691>
jellyfish-in-columns: n9{c1 c5 c4 c7}{r8 r3 r1 r4} ==> r3c8 ≠ 9, r1c3 ≠ 9, r1c2 ≠ 9
str-asc[4]: r1c6<r1c7<r2c7<r3c7<r3c8 ==> r3c7 ≠ 8
str-asc[2]: r2c9<r3c9<r3c8 ==> r3c9 ≠ 8, r2c9 ≠ 7
str-asc[1]: r1c9<r2c9 ==> r1c9 ≠ 6
hidden-pairs-in-a-column: c9{n8 n9}{r7 r9} ==> r9c9 ≠ 7, r9c9 ≠ 6, r9c9 ≠ 5, r9c9 ≠ 2, r7c9 ≠ 7, r7c9 ≠ 5, r7c9 ≠ 2
hidden-single-in-a-column ==> r3c9 = 7
naked-single ==> r3c8 = 8
hidden-single-in-a-row ==> r9c7 = 2
naked-single ==> r1c7 = 3
naked-single ==> r2c7 = 5
naked-single ==> r2c5 = 4
naked-single ==> r3c7 = 6
naked-single ==> r9c8 = 1
hidden-single-in-a-row ==> r2c1 = 1
hidden-single-in-a-column ==> r5c7 = 7
naked-single ==> r5c6 = 6
naked-single ==> r4c6 = 5
naked-single ==> r5c8 = 9
naked-single ==> r5c2 = 8
naked-single ==> r9c2 = 9
naked-single ==> r9c9 = 8
naked-single ==> r7c9 = 9
naked-single ==> r9c6 = 7
naked-single ==> r2c6 = 8
hidden-single-in-a-column ==> r2c3 = 9
hidden-single-in-a-row ==> r2c8 = 7
naked-single ==> r4c8 = 6
hidden-pairs-in-a-column: c3{n7 n8}{r1 r7} ==> r7c3 ≠ 5, r1c3 ≠ 6, r1c3 ≠ 4
hidden-single-in-a-column ==> r9c3 = 6
naked-single ==> r9c1 = 5
str-asc[1]: r7c1<r8c1 ==> r8c1 ≠ 6
hidden-single-in-a-column ==> r1c1 = 6
hidden-single-in-a-column ==> r8c5 = 6
biv-chain[3]: r2c9{n3 n6} - r6c9{n6 n5} - r5c9{n5 n4} ==> r1c9 ≠ 4
naked-single ==> r1c9 = 2
naked-single ==> r1c6 = 1
naked-single ==> r1c2 = 4
naked-single ==> r4c2 = 3
naked-single ==> r2c2 = 6
naked-single ==> r2c9 = 3
naked-single ==> r6c2 = 5
naked-single ==> r6c9 = 6
naked-single ==> r7c2 = 1
naked-single ==> r4c3 = 1
naked-single ==> r4c9 = 4
naked-single ==> r4c1 = 7
naked-single ==> r4c5 = 2
naked-single ==> r7c5 = 5
naked-single ==> r3c5 = 9
naked-single ==> r1c5 = 7
naked-single ==> r1c3 = 8
naked-single ==> r1c4 = 9
naked-single ==> r4c4 = 8
naked-single ==> r4c7 = 9
naked-single ==> r8c7 = 8
naked-single ==> r8c1 = 9
naked-single ==> r7c3 = 7
naked-single ==> r3c1 = 4
naked-single ==> r3c6 = 3
naked-single ==> r3c3 = 5
naked-single ==> r5c3 = 4
naked-single ==> r8c3 = 3
naked-single ==> r8c6 = 4
naked-single ==> r7c1 = 8
naked-single ==> r5c9 = 5
naked-single ==> r8c9 = 1
naked-single ==> r7c6 = 2
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = SHQ
648971352
169248573
425193687
731825964
284316795
352789146
817652439
973564821
596437218
Puzzle :
init-time = 3.97s, solve time = 4.02s, total-time = 7.99s
nb-facts=<Fact-17003>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


