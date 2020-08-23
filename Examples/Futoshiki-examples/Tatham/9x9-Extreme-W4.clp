
(solve-tatham 9
"2,6,4,0D,0,0,0D,7LR,0,0,0,0,0,0R,0,0L,0D,0,0R,0U,0,0,0U,0,0L,0,0,0D,0D,0,0U,0L,0R,0U,0U,0D,0,0,0R,0U,0,0,0D,0U,0L,0,0R,0,0D,0L,3,0D,0,0,0UD,0L,0U,0,6,0,0L,0D,0,0R,0,0R,0,0,0,0,0RD,0,0,0L,3U,0L,0,7,0,0R,0,"
)

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
264....7..........................................3.......6...............3..7...
------<>----><-->----<-----<->---->----<->-<----<----<-->->----><-<---->
--->-<>--<->---------<-<>-<<->---<-------------->-<->>---><<-->>--->----
8 givens, 552 candidates
entering BRT
asc[4]: r3c8<r4c8<r5c8<r5c9<r4c9 ==> r5c9 ≠ 9, r5c9 ≠ 3, r5c9 ≠ 2, r5c9 ≠ 1, r5c8 ≠ 9, r5c8 ≠ 8, r5c8 ≠ 2, r5c8 ≠ 1, r4c9 ≠ 4, r4c9 ≠ 3, r4c9 ≠ 2, r4c9 ≠ 1, r4c8 ≠ 9, r4c8 ≠ 8, r4c8 ≠ 1, r3c8 ≠ 9, r3c8 ≠ 8, r3c8 ≠ 6
asc[1]: r3c8<r2c8 ==> r2c8 ≠ 1
asc[2]: r7c4<r6c4<r6c5 ==> r7c4 ≠ 9, r7c4 ≠ 8, r6c5 ≠ 2, r6c5 ≠ 1, r6c4 ≠ 9, r6c4 ≠ 1
asc[3]: r3c4<r4c4<r5c4<r5c3 ==> r5c4 ≠ 9, r5c4 ≠ 2, r5c4 ≠ 1, r5c3 ≠ 2, r5c3 ≠ 1, r4c4 ≠ 9, r4c4 ≠ 8, r4c4 ≠ 1, r3c4 ≠ 9, r3c4 ≠ 8, r3c4 ≠ 7
asc[2]: r3c4<r4c4<r4c5 ==> r4c5 ≠ 2, r4c5 ≠ 1
asc[1]: r2c4<r1c4 ==> r2c4 ≠ 9, r1c4 ≠ 1
asc[1]: r6c3<r7c3 ==> r7c3 ≠ 1, r6c3 ≠ 9
asc[1]: r5c2<r4c2 ==> r5c2 ≠ 9, r4c2 ≠ 1
asc[2]: r2c2<r3c2<r3c1 ==> r3c2 ≠ 9, r3c2 ≠ 1, r3c1 ≠ 1, r2c2 ≠ 9, r2c2 ≠ 8
asc[2]: r6c1<r7c1<r7c2 ==> r7c2 ≠ 2, r7c2 ≠ 1, r7c1 ≠ 9, r7c1 ≠ 1, r6c1 ≠ 9, r6c1 ≠ 8
asc[1]: r5c1<r4c1 ==> r5c1 ≠ 9, r4c1 ≠ 1
asc[3]: r9c9<r9c8<r8c8<r7c8 ==> r9c9 ≠ 9, r9c9 ≠ 8, r9c8 ≠ 9, r9c8 ≠ 8, r9c8 ≠ 1, r8c8 ≠ 9, r8c8 ≠ 2, r8c8 ≠ 1, r7c8 ≠ 3, r7c8 ≠ 2, r7c8 ≠ 1
asc[1]: r9c1<r9c2 ==> r9c2 ≠ 1, r9c1 ≠ 9
asc[2]: r8c9<r8c8<r7c8 ==> r8c9 ≠ 9, r8c9 ≠ 8
asc[3]: r8c4<r8c3<r9c3<r9c4 ==> r8c4 ≠ 9, r8c4 ≠ 8, r8c4 ≠ 7, r8c3 ≠ 1
asc[3]: r8c2<r8c1<r7c1<r7c2 ==> r8c2 ≠ 9, r8c2 ≠ 8, r8c2 ≠ 7, r8c1 ≠ 9, r8c1 ≠ 8, r8c1 ≠ 1, r7c2 ≠ 3
asc[3]: r7c6<r7c7<r6c7<r5c7 ==> r7c7 ≠ 9, r7c7 ≠ 8, r7c7 ≠ 1, r7c6 ≠ 9, r7c6 ≠ 8, r6c7 ≠ 9, r6c7 ≠ 2, r6c7 ≠ 1, r5c7 ≠ 3, r5c7 ≠ 2, r5c7 ≠ 1
asc[1]: r6c3<r6c2 ==> r6c2 ≠ 1
asc[3]: r3c6<r3c7<r4c7<r4c6 ==> r4c7 ≠ 9, r4c7 ≠ 2, r4c7 ≠ 1, r4c6 ≠ 2, r4c6 ≠ 1, r3c7 ≠ 9, r3c7 ≠ 8, r3c7 ≠ 1, r3c6 ≠ 9, r3c6 ≠ 8
asc[3]: r2c6<r2c7<r1c7<r1c8 ==> r2c7 ≠ 9, r2c7 ≠ 8, r2c7 ≠ 1, r2c6 ≠ 9, r2c6 ≠ 8, r1c7 ≠ 1
asc[2]: r2c6<r2c5<r3c5 ==> r3c5 ≠ 2, r3c5 ≠ 1, r2c5 ≠ 9, r2c5 ≠ 1
naked-single ==> r8c3 = 2
naked-single ==> r8c4 = 1
hidden-single-in-a-column ==> r9c7 = 1
hidden-single-in-a-row ==> r4c3 = 1
str-asc[1]: r2c7<r1c7 ==> r2c7 ≠ 7, r2c7 ≠ 6, r2c7 ≠ 5
str-asc[1]: r2c6<r2c7 ==> r2c6 ≠ 6, r2c6 ≠ 5, r2c6 ≠ 4
str-asc[1]: r6c3<r6c2 ==> r6c2 ≠ 5, r6c2 ≠ 4, r6c2 ≠ 2
str-asc[1]: r6c7<r5c7 ==> r5c7 ≠ 4
str-asc[2]: r8c1<r7c1<r7c2 ==> r7c2 ≠ 4, r7c1 ≠ 3
str-asc[3]: r8c2<r8c1<r7c1<r7c2 ==> r8c1 ≠ 3, r7c2 ≠ 5, r7c1 ≠ 4
str-asc[2]: r8c9<r8c8<r7c8 ==> r8c8 ≠ 3, r7c8 ≠ 4
str-asc[1]: r9c1<r9c2 ==> r9c2 ≠ 4, r9c2 ≠ 2
str-asc[3]: r9c9<r9c8<r8c8<r7c8 ==> r9c8 ≠ 2
str-asc[1]: r9c8<r8c8 ==> r8c8 ≠ 4
str-asc[1]: r8c8<r7c8 ==> r7c8 ≠ 5
str-asc[1]: r9c9<r9c8 ==> r9c9 ≠ 6
str-asc[1]: r6c3<r7c3 ==> r7c3 ≠ 5
str-asc[2]: r3c4<r4c4<r4c5 ==> r4c5 ≠ 3, r4c4 ≠ 2
str-asc[2]: r4c4<r5c4<r5c3 ==> r5c4 ≠ 3
str-asc[2]: r7c4<r6c4<r6c5 ==> r6c4 ≠ 2
str-asc[1]: r6c4<r6c5 ==> r6c5 ≠ 4
str-asc[1]: r4c8<r5c8 ==> r4c8 ≠ 6
str-asc[1]: r3c8<r4c8 ==> r3c8 ≠ 5
Starting_init_links_with_<Fact-3449>
355 candidates, 2443 csp-links and 4133 links. Density = 6.58%
starting non trivial part of solution
Entering_level_W1_with_<Fact-13580>
Entering_relation_bivalue_with_<Fact-13581>
Entering_level_S2_with_<Fact-13606>
Entering_level_BC2_with_<Fact-13609>
Entering_level_W2_with_<Fact-13623>
whip[2]: c8n1{r3 r6} - c8n2{r6 .} ==> r3c8 ≠ 3, r3c8 ≠ 4
whip[2]: r3c8{n2 n1} - r3c6{n1 .} ==> r3c7 ≠ 2
str-asc[1]: r3c7<r4c7 ==> r4c7 ≠ 3
str-asc[1]: r4c7<r4c6 ==> r4c6 ≠ 4
whip[2]: r7c8{n8 n9} - r7c2{n9 .} ==> r7c1 ≠ 8
str-asc[2]: r8c2<r8c1<r7c1 ==> r8c1 ≠ 7
str-asc[1]: r6c1<r7c1 ==> r6c1 ≠ 7
whip[2]: r7c1{n5 n7} - r7c7{n7 .} ==> r7c6 ≠ 5
Entering_level_S3_with_<Fact-13967>
naked-triplets-in-a-row: r7{c2 c3 c8}{n9 n7 n8} ==> r7c9 ≠ 9, r7c9 ≠ 8, r7c9 ≠ 7, r7c7 ≠ 7, r7c4 ≠ 7, r7c1 ≠ 7
naked-single ==> r7c1 = 5
naked-single ==> r8c1 = 4
naked-single ==> r6c1 = 1
naked-single ==> r8c2 = 3
hidden-single-in-a-column ==> r3c8 = 1
str-asc[1]: r8c9<r8c8 ==> r8c8 ≠ 5
str-asc[1]: r5c1<r4c1 ==> r4c1 ≠ 3
str-asc[1]: r9c1<r9c2 ==> r9c2 ≠ 5
str-asc[1]: r7c6<r7c7 ==> r7c6 ≠ 4
naked-pairs-in-a-column: c6{r2 r7}{n1 n2} ==> r5c6 ≠ 2, r5c6 ≠ 1, r3c6 ≠ 2, r1c6 ≠ 1
str-asc[3]: r3c6<r3c7<r4c7<r4c6 ==> r4c7 ≠ 5, r4c7 ≠ 4, r4c6 ≠ 6, r4c6 ≠ 5, r3c7 ≠ 4, r3c7 ≠ 3
hidden-pairs-in-a-row: r5{n1 n2}{c2 c5} ==> r5c5 ≠ 9, r5c5 ≠ 8, r5c5 ≠ 7, r5c5 ≠ 5, r5c5 ≠ 4, r5c5 ≠ 3, r5c2 ≠ 8, r5c2 ≠ 7, r5c2 ≠ 5, r5c2 ≠ 4
x-wing-in-columns: n2{c6 c7}{r2 r7} ==> r7c9 ≠ 2, r7c4 ≠ 2, r2c9 ≠ 2, r2c8 ≠ 2, r2c5 ≠ 2, r2c4 ≠ 2, r2c2 ≠ 2
hidden-single-in-a-column ==> r3c4 = 2
str-asc[1]: r3c2<r3c1 ==> r3c1 ≠ 3
str-asc[1]: r2c4<r1c4 ==> r1c4 ≠ 3
str-asc[1]: r2c5<r3c5 ==> r3c5 ≠ 3
hidden-single-in-a-row ==> r3c9 = 3
whip[2]: c7n3{r2 r7} - c7n2{r7 .} ==> r2c7 ≠ 4
whip[2]: c2n5{r3 r4} - c2n4{r4 .} ==> r2c2 ≠ 7
whip[2]: r7c4{n4 n3} - r4c4{n3 .} ==> r5c4 ≠ 4
str-asc[1]: r5c4<r5c3 ==> r5c3 ≠ 5
naked-triplets-in-a-column: c2{r6 r7 r9}{n8 n7 n9} ==> r4c2 ≠ 9, r4c2 ≠ 8, r4c2 ≠ 7, r3c2 ≠ 8, r3c2 ≠ 7
str-asc[1]: r2c2<r3c2 ==> r2c2 ≠ 5
whip[2]: r3c2{n5 n4} - r3c6{n4 .} ==> r3c7 ≠ 5
str-asc[1]: r3c7<r4c7 ==> r4c7 ≠ 6
Entering_level_BC3_with_<Fact-14651>
biv-chain[3]: r7c9{n4 n1} - c6n1{r7 r2} - r2c2{n1 n4} ==> r2c9 ≠ 4
Entering_level_W3_with_<Fact-15037>
whip[3]: r5c9{n8 n4} - r7c9{n4 n1} - r1c9{n1 .} ==> r4c9 ≠ 5
whip[3]: r4n3{c4 c8} - r4n5{c8 c2} - r4n2{c2 .} ==> r4c4 ≠ 7
whip[3]: r4n3{c4 c8} - r4n5{c8 c2} - r4n2{c2 .} ==> r4c4 ≠ 6
whip[3]: r4n3{c4 c8} - r4n4{c8 c2} - r4n2{c2 .} ==> r4c4 ≠ 5
naked-pairs-in-a-column: c4{r4 r7}{n3 n4} ==> r9c4 ≠ 4, r6c4 ≠ 4, r2c4 ≠ 4, r2c4 ≠ 3
str-asc[1]: r2c4<r1c4 ==> r1c4 ≠ 5
str-asc[1]: r6c4<r6c5 ==> r6c5 ≠ 5
whip[2]: r9n4{c9 c5} - r9n2{c5 .} ==> r9c9 ≠ 5
Entering_level_S4_with_<Fact-16006>
naked-quads-in-a-row: r4{c1 c9 c6 c7}{n7 n6 n9 n8} ==> r4c5 ≠ 9, r4c5 ≠ 8, r4c5 ≠ 7
Entering_level_BC4_with_<Fact-16124>
biv-chain[4]: r7c4{n3 n4} - r7c9{n4 n1} - r1c9{n1 n5} - r1c7{n5 n3} ==> r7c7 ≠ 3
hidden-single-in-a-row ==> r7c4 = 3
naked-single ==> r4c4 = 4
naked-single ==> r4c5 = 5
naked-single ==> r4c2 = 2
naked-single ==> r4c8 = 3
naked-single ==> r5c2 = 1
naked-single ==> r2c2 = 4
naked-single ==> r3c2 = 5
naked-single ==> r5c5 = 2
hidden-single-in-a-row ==> r9c9 = 2
hidden-single-in-a-row ==> r6c8 = 2
hidden-single-in-a-column ==> r1c5 = 1
naked-single ==> r1c9 = 5
naked-single ==> r1c7 = 3
naked-single ==> r2c7 = 2
naked-single ==> r2c6 = 1
naked-single ==> r7c6 = 2
naked-single ==> r7c7 = 4
naked-single ==> r7c9 = 1
hidden-single-in-a-row ==> r6c9 = 4
hidden-single-in-a-column ==> r2c5 = 3
hidden-single-in-a-column ==> r5c1 = 3
str-asc[1]: r5c9<r4c9 ==> r4c9 ≠ 6
hidden-single-in-a-row ==> r4c1 = 6
naked-single ==> r9c1 = 8
naked-single ==> r9c2 = 9
naked-single ==> r9c5 = 4
hidden-single-in-a-row ==> r3c6 = 4
hidden-single-in-a-row ==> r5c8 = 4
hidden-single-in-a-row ==> r6c5 = 9
hidden-single-in-a-column ==> r1c4 = 9
naked-single ==> r1c6 = 8
naked-single ==> r4c6 = 9
hidden-single-in-a-column ==> r2c9 = 9
naked-single ==> r2c1 = 7
naked-single ==> r3c1 = 9
hidden-single-in-a-column ==> r7c8 = 9
hidden-single-in-a-column ==> r5c3 = 9
hidden-single-in-a-column ==> r8c7 = 9
hidden-single-in-a-row ==> r8c6 = 5
naked-single ==> r5c6 = 6
hidden-single-in-a-column ==> r8c9 = 6
naked-single ==> r8c8 = 8
naked-single ==> r8c5 = 7
naked-single ==> r3c5 = 8
str-asc[1]: r5c9<r4c9 ==> r5c9 ≠ 8, r4c9 ≠ 7
naked-single ==> r4c9 = 8
naked-single ==> r4c7 = 7
naked-single ==> r3c7 = 6
naked-single ==> r3c3 = 7
naked-single ==> r7c3 = 8
naked-single ==> r7c2 = 7
naked-single ==> r6c2 = 8
naked-single ==> r6c7 = 5
naked-single ==> r5c7 = 8
naked-single ==> r6c3 = 6
naked-single ==> r2c3 = 5
naked-single ==> r2c8 = 6
naked-single ==> r2c4 = 8
naked-single ==> r9c8 = 5
naked-single ==> r9c4 = 6
naked-single ==> r6c4 = 7
naked-single ==> r5c4 = 5
naked-single ==> r5c9 = 7
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = BC[4]
264918375
745831269
957284613
621459738
319526847
186793524
578362491
432175986
893647152
Puzzle :
init-time = 4.18s, solve time = 3.57s, total-time = 7.76s
nb-facts=<Fact-16278>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


