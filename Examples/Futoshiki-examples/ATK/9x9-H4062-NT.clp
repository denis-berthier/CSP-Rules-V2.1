



->>>-><<
<---<---
--<-<--<
-<->->--
--------
<->-->--
-->-<<--
<->-<->>
-<------

->>>-><<<---<-----<-<--<-<->->----------<->-->---->-<<--<->-<->>-<------



--<<--<>
-<----<-
-<----->
->----->
--------
--<-->-<
>-----<<
>--<-<<-
<-----<>


--<<--<>-<----<--<----->->----->----------<-->-<>-----<<>--<-<<-<-----<>



(solve 9
"................................................................................." 
"->>>-><<<---<-----<-<--<-<->->----------<->-->---->-<<--<->-<->>-<------"
"--<<--<>-<----<--<----->->----->----------<-->-<>-----<<>--<-<<-<-----<>"
)


Solved with Naked Triplets:

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.................................................................................
->>>-><<<---<-----<-<--<-<->->----------<->-->---->-<<--<->-<->>-<------
--<<--<>-<----<--<----->->----->----------<-->-<>-----<<>--<-<<-<-----<>
0 givens, 729 candidates
entering BRT
asc[4]: r9c9<r8c9<r8c8<r8c7<r9c7 ==> r9c9 ≠ 9, r9c9 ≠ 8, r9c9 ≠ 7, r9c9 ≠ 6, r9c7 ≠ 4, r9c7 ≠ 3, r9c7 ≠ 2, r9c7 ≠ 1, r8c9 ≠ 9, r8c9 ≠ 8, r8c9 ≠ 7, r8c9 ≠ 1, r8c8 ≠ 9, r8c8 ≠ 8, r8c8 ≠ 2, r8c8 ≠ 1, r8c7 ≠ 9, r8c7 ≠ 3, r8c7 ≠ 2, r8c7 ≠ 1
asc[4]: r7c9<r8c9<r8c8<r8c7<r9c7 ==> r7c9 ≠ 9, r7c9 ≠ 8, r7c9 ≠ 7, r7c9 ≠ 6
asc[4]: r6c8<r7c8<r8c8<r8c7<r9c7 ==> r7c8 ≠ 9, r7c8 ≠ 8, r7c8 ≠ 7, r7c8 ≠ 1, r6c8 ≠ 9, r6c8 ≠ 8, r6c8 ≠ 7, r6c8 ≠ 6
asc[1]: r4c8<r5c8 ==> r5c8 ≠ 1, r4c8 ≠ 9
asc[3]: r2c8<r1c8<r1c9<r2c9 ==> r2c9 ≠ 3, r2c9 ≠ 2, r2c9 ≠ 1, r2c8 ≠ 9, r2c8 ≠ 8, r2c8 ≠ 7, r1c9 ≠ 9, r1c9 ≠ 2, r1c9 ≠ 1, r1c8 ≠ 9, r1c8 ≠ 8, r1c8 ≠ 1
asc[4]: r2c7<r1c7<r1c8<r1c9<r2c9 ==> r2c9 ≠ 4, r2c7 ≠ 9, r2c7 ≠ 8, r2c7 ≠ 7, r2c7 ≠ 6, r1c9 ≠ 3, r1c8 ≠ 2, r1c7 ≠ 9, r1c7 ≠ 8, r1c7 ≠ 7, r1c7 ≠ 1
asc[2]: r2c7<r1c7<r1c6 ==> r1c6 ≠ 2, r1c6 ≠ 1
asc[2]: r9c4<r8c4<r8c3 ==> r9c4 ≠ 9, r9c4 ≠ 8, r8c4 ≠ 9, r8c4 ≠ 1, r8c3 ≠ 2, r8c3 ≠ 1
asc[3]: r2c3<r3c3<r3c4<r2c4 ==> r3c4 ≠ 9, r3c4 ≠ 2, r3c4 ≠ 1, r3c3 ≠ 9, r3c3 ≠ 8, r3c3 ≠ 1, r2c4 ≠ 3, r2c4 ≠ 2, r2c4 ≠ 1, r2c3 ≠ 9, r2c3 ≠ 8, r2c3 ≠ 7
asc[1]: r7c2<r8c2 ==> r8c2 ≠ 1, r7c2 ≠ 9
asc[2]: r9c1<r8c1<r8c2 ==> r9c1 ≠ 9, r9c1 ≠ 8, r8c2 ≠ 2, r8c1 ≠ 9, r8c1 ≠ 1
asc[2]: r7c1<r8c1<r8c2 ==> r7c1 ≠ 9, r7c1 ≠ 8
asc[2]: r3c1<r4c1<r5c1 ==> r5c1 ≠ 2, r5c1 ≠ 1, r4c1 ≠ 9, r4c1 ≠ 1, r3c1 ≠ 9, r3c1 ≠ 8
asc[2]: r9c2<r9c3<r8c3 ==> r9c3 ≠ 9, r9c3 ≠ 1, r9c2 ≠ 9, r9c2 ≠ 8
asc[2]: r8c5<r8c6<r9c6 ==> r9c6 ≠ 2, r9c6 ≠ 1, r8c6 ≠ 9, r8c6 ≠ 1, r8c5 ≠ 9, r8c5 ≠ 8
asc[2]: r7c5<r7c6<r6c6 ==> r7c6 ≠ 9, r7c6 ≠ 1, r7c5 ≠ 9, r7c5 ≠ 8, r6c6 ≠ 2, r6c6 ≠ 1
asc[4]: r7c5<r7c6<r7c7<r8c7<r9c7 ==> r7c7 ≠ 9, r7c7 ≠ 8, r7c7 ≠ 2, r7c7 ≠ 1, r7c6 ≠ 8, r7c6 ≠ 7, r7c5 ≠ 7, r7c5 ≠ 6
asc[1]: r7c4<r7c3 ==> r7c4 ≠ 9, r7c3 ≠ 1
asc[1]: r6c7<r6c6 ==> r6c7 ≠ 9
asc[1]: r6c4<r6c3 ==> r6c4 ≠ 9, r6c3 ≠ 1
asc[1]: r6c1<r6c2 ==> r6c2 ≠ 1, r6c1 ≠ 9
asc[1]: r4c7<r4c6 ==> r4c7 ≠ 9, r4c6 ≠ 1
asc[1]: r4c5<r4c4 ==> r4c5 ≠ 9, r4c4 ≠ 1
asc[1]: r4c2<r4c3 ==> r4c3 ≠ 1, r4c2 ≠ 9
asc[1]: r3c8<r3c9 ==> r3c9 ≠ 1, r3c8 ≠ 9
asc[2]: r3c5<r3c6<r4c6 ==> r4c6 ≠ 2, r3c6 ≠ 9, r3c6 ≠ 1, r3c5 ≠ 9, r3c5 ≠ 8
asc[1]: r2c5<r2c6 ==> r2c6 ≠ 1, r2c5 ≠ 9
asc[2]: r2c1<r2c2<r3c2 ==> r3c2 ≠ 2, r3c2 ≠ 1, r2c2 ≠ 9, r2c2 ≠ 1, r2c1 ≠ 9, r2c1 ≠ 8
asc[3]: r1c5<r1c4<r1c3<r1c2 ==> r1c5 ≠ 9, r1c5 ≠ 8, r1c5 ≠ 7, r1c4 ≠ 9, r1c4 ≠ 8, r1c4 ≠ 1, r1c3 ≠ 9, r1c3 ≠ 2, r1c3 ≠ 1, r1c2 ≠ 3, r1c2 ≠ 2, r1c2 ≠ 1
hidden-single-in-a-row ==> r8c5 = 1
hidden-single-in-a-row ==> r1c1 = 1
hidden-single-in-a-column ==> r5c1 = 9
hidden-single-in-a-column ==> r9c8 = 9
hidden-single-in-a-column ==> r6c5 = 9
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-row ==> r3c8 = 1
hidden-single-in-a-row ==> r7c3 = 9
hidden-single-in-a-row ==> r8c2 = 9
hidden-single-in-a-row ==> r1c6 = 9
hidden-single-in-a-column ==> r5c6 = 1
hidden-single-in-a-column ==> r2c3 = 1
str-asc[1]: r1c3<r1c2 ==> r1c3 ≠ 8
str-asc[2]: r1c5<r1c4<r1c3 ==> r1c5 ≠ 6, r1c4 ≠ 7, r1c4 ≠ 2, r1c3 ≠ 3
str-asc[1]: r1c3<r1c2 ==> r1c2 ≠ 4
str-asc[1]: r2c2<r3c2 ==> r2c2 ≠ 8
str-asc[1]: r2c1<r2c2 ==> r2c2 ≠ 2, r2c1 ≠ 7
str-asc[1]: r2c2<r3c2 ==> r3c2 ≠ 3
str-asc[1]: r2c5<r2c6 ==> r2c6 ≠ 2, r2c5 ≠ 8
str-asc[1]: r3c6<r4c6 ==> r3c6 ≠ 8
str-asc[1]: r3c5<r3c6 ==> r3c6 ≠ 2, r3c5 ≠ 7
str-asc[1]: r3c6<r4c6 ==> r4c6 ≠ 3
str-asc[1]: r4c2<r4c3 ==> r4c2 ≠ 8
str-asc[1]: r4c5<r4c4 ==> r4c4 ≠ 2
str-asc[1]: r4c7<r4c6 ==> r4c7 ≠ 8
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 2, r6c1 ≠ 8
str-asc[1]: r6c4<r6c3 ==> r6c4 ≠ 8
str-asc[1]: r6c7<r6c6 ==> r6c7 ≠ 8
str-asc[1]: r8c7<r9c7 ==> r8c7 ≠ 8
str-asc[3]: r7c5<r7c6<r7c7<r8c7 ==> r8c7 ≠ 4, r7c7 ≠ 7, r7c7 ≠ 3, r7c6 ≠ 6, r7c6 ≠ 2, r7c5 ≠ 5
hidden-single-in-a-column ==> r8c6 = 2
str-asc[3]: r7c6<r7c7<r8c7<r9c7 ==> r9c7 ≠ 5
str-asc[1]: r7c6<r6c6 ==> r6c6 ≠ 3
str-asc[1]: r9c3<r8c3 ==> r9c3 ≠ 8
str-asc[1]: r9c2<r9c3 ==> r9c2 ≠ 7
str-asc[1]: r3c1<r4c1 ==> r4c1 ≠ 2
str-asc[1]: r8c4<r8c3 ==> r8c4 ≠ 8, r8c3 ≠ 3
str-asc[1]: r9c4<r8c4 ==> r9c4 ≠ 7
str-asc[1]: r2c7<r1c7 ==> r1c7 ≠ 2
hidden-single-in-a-row ==> r1c5 = 2
str-asc[1]: r2c5<r2c6 ==> r2c6 ≠ 3
str-asc[1]: r3c5<r3c6 ==> r3c6 ≠ 3
str-asc[1]: r3c6<r4c6 ==> r4c6 ≠ 4
str-asc[1]: r4c5<r4c4 ==> r4c4 ≠ 3
str-asc[1]: r7c5<r7c6 ==> r7c6 ≠ 3
hidden-single-in-a-column ==> r9c6 = 3
str-asc[3]: r7c6<r7c7<r8c7<r9c7 ==> r9c7 ≠ 6, r8c7 ≠ 5, r7c7 ≠ 4
str-asc[1]: r7c6<r6c6 ==> r6c6 ≠ 4
str-asc[3]: r1c7<r1c8<r1c9<r2c9 ==> r2c9 ≠ 5, r1c9 ≠ 4, r1c8 ≠ 3
str-asc[1]: r4c8<r5c8 ==> r5c8 ≠ 2, r4c8 ≠ 8
hidden-single-in-a-column ==> r5c8 = 8
hidden-single-in-a-column ==> r9c7 = 8
hidden-single-in-a-column ==> r4c5 = 8
naked-single ==> r4c4 = 9
hidden-single-in-a-row ==> r2c9 = 9
hidden-single-in-a-column ==> r8c1 = 8
hidden-single-in-a-column ==> r6c3 = 8
hidden-single-in-a-column ==> r2c6 = 8
str-asc[2]: r3c3<r3c4<r2c4 ==> r3c4 ≠ 8, r3c4 ≠ 7, r3c3 ≠ 7, r3c3 ≠ 6
hidden-single-in-a-column ==> r7c4 = 8
str-asc[1]: r6c1<r6c2 ==> r6c1 ≠ 7
str-asc[1]: r6c7<r6c6 ==> r6c7 ≠ 7
str-asc[2]: r9c2<r9c3<r8c3 ==> r9c3 ≠ 7, r9c2 ≠ 6
str-asc[2]: r9c4<r8c4<r8c3 ==> r9c4 ≠ 6, r8c4 ≠ 7
str-asc[1]: r3c1<r4c1 ==> r3c1 ≠ 7
str-asc[1]: r4c2<r4c3 ==> r4c2 ≠ 7
str-asc[1]: r4c7<r4c6 ==> r4c7 ≠ 7
str-asc[2]: r3c5<r3c6<r4c6 ==> r3c6 ≠ 7, r3c5 ≠ 6
str-asc[1]: r8c8<r8c7 ==> r8c8 ≠ 7
str-asc[2]: r6c8<r7c8<r8c8 ==> r8c8 ≠ 3, r7c8 ≠ 6, r7c8 ≠ 2, r6c8 ≠ 5
str-asc[2]: r8c9<r8c8<r8c7 ==> r8c9 ≠ 6
str-asc[1]: r7c9<r8c9 ==> r7c9 ≠ 5
str-asc[3]: r9c9<r8c9<r8c8<r8c7 ==> r9c9 ≠ 5
Starting_init_links_with_<Fact-3807>
283 candidates, 1577 csp-links and 3420 links. Density = 8.57%
starting non trivial part of solution
Entering_level_W1_with_<Fact-10276>
Entering_relation_bivalue_with_<Fact-10277>
Entering_level_S2_with_<Fact-10320>
hidden-pairs-in-a-row: r3{n7 n8}{c2 c9} ==> r3c9 ≠ 6, r3c9 ≠ 5, r3c9 ≠ 4, r3c9 ≠ 3, r3c9 ≠ 2, r3c2 ≠ 6, r3c2 ≠ 5, r3c2 ≠ 4
Entering_level_BC2_with_<Fact-10337>
Entering_level_W2_with_<Fact-10389>
whip[2]: r1c7{n5 n6} - r7c7{n6 .} ==> r2c7 ≠ 5
whip[2]: r3c6{n6 n4} - r7c6{n4 .} ==> r4c6 ≠ 5
whip[2]: r4c6{n6 n7} - r4c3{n7 .} ==> r4c2 ≠ 6
whip[2]: r8c3{n6 n7} - r8c7{n7 .} ==> r8c4 ≠ 6
str-asc[1]: r9c4<r8c4 ==> r9c4 ≠ 5
Entering_level_S3_with_<Fact-10734>
naked-triplets-in-a-row: r7{c5 c6 c8}{n3 n4 n5} ==> r7c9 ≠ 4, r7c9 ≠ 3, r7c7 ≠ 5, r7c2 ≠ 5, r7c2 ≠ 4, r7c2 ≠ 3, r7c1 ≠ 5, r7c1 ≠ 4, r7c1 ≠ 3
naked-single ==> r7c7 = 6
naked-single ==> r8c7 = 7
str-asc[2]: r9c2<r9c3<r8c3 ==> r9c3 ≠ 6, r9c2 ≠ 5
hidden-pairs-in-a-row: r9{n6 n7}{c1 c5} ==> r9c5 ≠ 5, r9c5 ≠ 4, r9c1 ≠ 5, r9c1 ≠ 4, r9c1 ≠ 2
hidden-single-in-a-row ==> r9c3 = 5
naked-single ==> r8c3 = 6
str-asc[2]: r6c8<r7c8<r8c8 ==> r7c8 ≠ 5, r6c8 ≠ 4
hidden-single-in-a-row ==> r7c6 = 5
hidden-single-in-a-column ==> r3c6 = 4
naked-single ==> r3c5 = 3
naked-single ==> r3c3 = 2
naked-single ==> r7c5 = 4
naked-single ==> r7c8 = 3
naked-single ==> r6c8 = 2
str-asc[1]: r2c8<r1c8 ==> r1c8 ≠ 4
str-asc[1]: r1c8<r1c9 ==> r1c9 ≠ 5
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 3
str-asc[1]: r3c1<r4c1 ==> r4c1 ≠ 5, r4c1 ≠ 4, r4c1 ≠ 3
str-asc[1]: r3c4<r2c4 ==> r2c4 ≠ 5, r2c4 ≠ 4
str-asc[2]: r7c9<r8c9<r8c8 ==> r8c9 ≠ 5
str-asc[1]: r9c9<r8c9 ==> r9c9 ≠ 4
naked-pairs-in-a-column: c9{r7 r9}{n1 n2} ==> r6c9 ≠ 1, r5c9 ≠ 2, r4c9 ≠ 2, r4c9 ≠ 1
naked-pairs-in-a-column: c1{r4 r9}{n6 n7} ==> r7c1 ≠ 7, r6c1 ≠ 6, r3c1 ≠ 6, r2c1 ≠ 6
naked-single ==> r3c1 = 5
naked-single ==> r3c4 = 6
naked-single ==> r2c4 = 7
naked-single ==> r7c1 = 2
naked-single ==> r7c9 = 1
naked-single ==> r7c2 = 7
naked-single ==> r3c2 = 8
naked-single ==> r3c9 = 7
naked-single ==> r9c9 = 2
hidden-single-in-a-column ==> r5c4 = 2
hidden-single-in-a-column ==> r4c2 = 2
hidden-single-in-a-column ==> r9c2 = 1
naked-single ==> r9c4 = 4
naked-single ==> r8c4 = 5
naked-single ==> r1c4 = 3
naked-single ==> r6c4 = 1
naked-single ==> r8c8 = 4
naked-single ==> r8c9 = 3
hidden-single-in-a-column ==> r4c7 = 1
hidden-single-in-a-row ==> r4c3 = 3
hidden-single-in-a-row ==> r4c9 = 4
hidden-single-in-a-row ==> r4c8 = 5
naked-single ==> r2c8 = 6
naked-single ==> r1c8 = 7
naked-single ==> r1c3 = 4
naked-single ==> r1c7 = 5
naked-single ==> r1c2 = 6
naked-single ==> r5c3 = 7
naked-single ==> r1c9 = 8
naked-single ==> r2c5 = 5
naked-single ==> r5c5 = 6
naked-single ==> r5c9 = 5
naked-single ==> r6c9 = 6
naked-single ==> r6c6 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 7
naked-single ==> r9c1 = 6
naked-single ==> r9c5 = 7
hidden-single-in-a-column ==> r6c2 = 5
hidden-single-in-a-column ==> r2c7 = 2
str-asc[1]: r2c1<r2c2 ==> r2c2 ≠ 3, r2c1 ≠ 4
naked-single ==> r2c1 = 3
naked-single ==> r6c1 = 4
naked-single ==> r6c7 = 3
naked-single ==> r5c7 = 4
naked-single ==> r5c2 = 3
naked-single ==> r2c2 = 4
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = NT
164329578
341758269
582634917
723986154
937261485
458197326
279845631
896512743
615473892
Puzzle :
init-time = 5.25s, solve time = 2.9s, total-time = 8.15s
nb-facts=<Fact-10911>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



Or with whips[3]:
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.................................................................................
->>>-><<<---<-----<-<--<-<->->----------<->-->---->-<<--<->-<->>-<------
--<<--<>-<----<--<----->->----->----------<-->-<>-----<<>--<-<<-<-----<>
0 givens, 729 candidates
entering BRT
asc[4]: r9c9<r8c9<r8c8<r8c7<r9c7 ==> r9c9 ≠ 9, r9c9 ≠ 8, r9c9 ≠ 7, r9c9 ≠ 6, r9c7 ≠ 4, r9c7 ≠ 3, r9c7 ≠ 2, r9c7 ≠ 1, r8c9 ≠ 9, r8c9 ≠ 8, r8c9 ≠ 7, r8c9 ≠ 1, r8c8 ≠ 9, r8c8 ≠ 8, r8c8 ≠ 2, r8c8 ≠ 1, r8c7 ≠ 9, r8c7 ≠ 3, r8c7 ≠ 2, r8c7 ≠ 1
asc[4]: r7c9<r8c9<r8c8<r8c7<r9c7 ==> r7c9 ≠ 9, r7c9 ≠ 8, r7c9 ≠ 7, r7c9 ≠ 6
asc[4]: r6c8<r7c8<r8c8<r8c7<r9c7 ==> r7c8 ≠ 9, r7c8 ≠ 8, r7c8 ≠ 7, r7c8 ≠ 1, r6c8 ≠ 9, r6c8 ≠ 8, r6c8 ≠ 7, r6c8 ≠ 6
asc[1]: r4c8<r5c8 ==> r5c8 ≠ 1, r4c8 ≠ 9
asc[3]: r2c8<r1c8<r1c9<r2c9 ==> r2c9 ≠ 3, r2c9 ≠ 2, r2c9 ≠ 1, r2c8 ≠ 9, r2c8 ≠ 8, r2c8 ≠ 7, r1c9 ≠ 9, r1c9 ≠ 2, r1c9 ≠ 1, r1c8 ≠ 9, r1c8 ≠ 8, r1c8 ≠ 1
asc[4]: r2c7<r1c7<r1c8<r1c9<r2c9 ==> r2c9 ≠ 4, r2c7 ≠ 9, r2c7 ≠ 8, r2c7 ≠ 7, r2c7 ≠ 6, r1c9 ≠ 3, r1c8 ≠ 2, r1c7 ≠ 9, r1c7 ≠ 8, r1c7 ≠ 7, r1c7 ≠ 1
asc[2]: r2c7<r1c7<r1c6 ==> r1c6 ≠ 2, r1c6 ≠ 1
asc[2]: r9c4<r8c4<r8c3 ==> r9c4 ≠ 9, r9c4 ≠ 8, r8c4 ≠ 9, r8c4 ≠ 1, r8c3 ≠ 2, r8c3 ≠ 1
asc[3]: r2c3<r3c3<r3c4<r2c4 ==> r3c4 ≠ 9, r3c4 ≠ 2, r3c4 ≠ 1, r3c3 ≠ 9, r3c3 ≠ 8, r3c3 ≠ 1, r2c4 ≠ 3, r2c4 ≠ 2, r2c4 ≠ 1, r2c3 ≠ 9, r2c3 ≠ 8, r2c3 ≠ 7
asc[1]: r7c2<r8c2 ==> r8c2 ≠ 1, r7c2 ≠ 9
asc[2]: r9c1<r8c1<r8c2 ==> r9c1 ≠ 9, r9c1 ≠ 8, r8c2 ≠ 2, r8c1 ≠ 9, r8c1 ≠ 1
asc[2]: r7c1<r8c1<r8c2 ==> r7c1 ≠ 9, r7c1 ≠ 8
asc[2]: r3c1<r4c1<r5c1 ==> r5c1 ≠ 2, r5c1 ≠ 1, r4c1 ≠ 9, r4c1 ≠ 1, r3c1 ≠ 9, r3c1 ≠ 8
asc[2]: r9c2<r9c3<r8c3 ==> r9c3 ≠ 9, r9c3 ≠ 1, r9c2 ≠ 9, r9c2 ≠ 8
asc[2]: r8c5<r8c6<r9c6 ==> r9c6 ≠ 2, r9c6 ≠ 1, r8c6 ≠ 9, r8c6 ≠ 1, r8c5 ≠ 9, r8c5 ≠ 8
asc[2]: r7c5<r7c6<r6c6 ==> r7c6 ≠ 9, r7c6 ≠ 1, r7c5 ≠ 9, r7c5 ≠ 8, r6c6 ≠ 2, r6c6 ≠ 1
asc[4]: r7c5<r7c6<r7c7<r8c7<r9c7 ==> r7c7 ≠ 9, r7c7 ≠ 8, r7c7 ≠ 2, r7c7 ≠ 1, r7c6 ≠ 8, r7c6 ≠ 7, r7c5 ≠ 7, r7c5 ≠ 6
asc[1]: r7c4<r7c3 ==> r7c4 ≠ 9, r7c3 ≠ 1
asc[1]: r6c7<r6c6 ==> r6c7 ≠ 9
asc[1]: r6c4<r6c3 ==> r6c4 ≠ 9, r6c3 ≠ 1
asc[1]: r6c1<r6c2 ==> r6c2 ≠ 1, r6c1 ≠ 9
asc[1]: r4c7<r4c6 ==> r4c7 ≠ 9, r4c6 ≠ 1
asc[1]: r4c5<r4c4 ==> r4c5 ≠ 9, r4c4 ≠ 1
asc[1]: r4c2<r4c3 ==> r4c3 ≠ 1, r4c2 ≠ 9
asc[1]: r3c8<r3c9 ==> r3c9 ≠ 1, r3c8 ≠ 9
asc[2]: r3c5<r3c6<r4c6 ==> r4c6 ≠ 2, r3c6 ≠ 9, r3c6 ≠ 1, r3c5 ≠ 9, r3c5 ≠ 8
asc[1]: r2c5<r2c6 ==> r2c6 ≠ 1, r2c5 ≠ 9
asc[2]: r2c1<r2c2<r3c2 ==> r3c2 ≠ 2, r3c2 ≠ 1, r2c2 ≠ 9, r2c2 ≠ 1, r2c1 ≠ 9, r2c1 ≠ 8
asc[3]: r1c5<r1c4<r1c3<r1c2 ==> r1c5 ≠ 9, r1c5 ≠ 8, r1c5 ≠ 7, r1c4 ≠ 9, r1c4 ≠ 8, r1c4 ≠ 1, r1c3 ≠ 9, r1c3 ≠ 2, r1c3 ≠ 1, r1c2 ≠ 3, r1c2 ≠ 2, r1c2 ≠ 1
hidden-single-in-a-row ==> r8c5 = 1
hidden-single-in-a-row ==> r1c1 = 1
hidden-single-in-a-column ==> r5c1 = 9
hidden-single-in-a-column ==> r9c8 = 9
hidden-single-in-a-column ==> r6c5 = 9
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-row ==> r3c8 = 1
hidden-single-in-a-row ==> r7c3 = 9
hidden-single-in-a-row ==> r8c2 = 9
hidden-single-in-a-row ==> r1c6 = 9
hidden-single-in-a-column ==> r5c6 = 1
hidden-single-in-a-column ==> r2c3 = 1
str-asc[1]: r1c3<r1c2 ==> r1c3 ≠ 8
str-asc[2]: r1c5<r1c4<r1c3 ==> r1c5 ≠ 6, r1c4 ≠ 7, r1c4 ≠ 2, r1c3 ≠ 3
str-asc[1]: r1c3<r1c2 ==> r1c2 ≠ 4
str-asc[1]: r2c2<r3c2 ==> r2c2 ≠ 8
str-asc[1]: r2c1<r2c2 ==> r2c2 ≠ 2, r2c1 ≠ 7
str-asc[1]: r2c2<r3c2 ==> r3c2 ≠ 3
str-asc[1]: r2c5<r2c6 ==> r2c6 ≠ 2, r2c5 ≠ 8
str-asc[1]: r3c6<r4c6 ==> r3c6 ≠ 8
str-asc[1]: r3c5<r3c6 ==> r3c6 ≠ 2, r3c5 ≠ 7
str-asc[1]: r3c6<r4c6 ==> r4c6 ≠ 3
str-asc[1]: r4c2<r4c3 ==> r4c2 ≠ 8
str-asc[1]: r4c5<r4c4 ==> r4c4 ≠ 2
str-asc[1]: r4c7<r4c6 ==> r4c7 ≠ 8
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 2, r6c1 ≠ 8
str-asc[1]: r6c4<r6c3 ==> r6c4 ≠ 8
str-asc[1]: r6c7<r6c6 ==> r6c7 ≠ 8
str-asc[1]: r8c7<r9c7 ==> r8c7 ≠ 8
str-asc[3]: r7c5<r7c6<r7c7<r8c7 ==> r8c7 ≠ 4, r7c7 ≠ 7, r7c7 ≠ 3, r7c6 ≠ 6, r7c6 ≠ 2, r7c5 ≠ 5
hidden-single-in-a-column ==> r8c6 = 2
str-asc[3]: r7c6<r7c7<r8c7<r9c7 ==> r9c7 ≠ 5
str-asc[1]: r7c6<r6c6 ==> r6c6 ≠ 3
str-asc[1]: r9c3<r8c3 ==> r9c3 ≠ 8
str-asc[1]: r9c2<r9c3 ==> r9c2 ≠ 7
str-asc[1]: r3c1<r4c1 ==> r4c1 ≠ 2
str-asc[1]: r8c4<r8c3 ==> r8c4 ≠ 8, r8c3 ≠ 3
str-asc[1]: r9c4<r8c4 ==> r9c4 ≠ 7
str-asc[1]: r2c7<r1c7 ==> r1c7 ≠ 2
hidden-single-in-a-row ==> r1c5 = 2
str-asc[1]: r2c5<r2c6 ==> r2c6 ≠ 3
str-asc[1]: r3c5<r3c6 ==> r3c6 ≠ 3
str-asc[1]: r3c6<r4c6 ==> r4c6 ≠ 4
str-asc[1]: r4c5<r4c4 ==> r4c4 ≠ 3
str-asc[1]: r7c5<r7c6 ==> r7c6 ≠ 3
hidden-single-in-a-column ==> r9c6 = 3
str-asc[3]: r7c6<r7c7<r8c7<r9c7 ==> r9c7 ≠ 6, r8c7 ≠ 5, r7c7 ≠ 4
str-asc[1]: r7c6<r6c6 ==> r6c6 ≠ 4
str-asc[3]: r1c7<r1c8<r1c9<r2c9 ==> r2c9 ≠ 5, r1c9 ≠ 4, r1c8 ≠ 3
str-asc[1]: r4c8<r5c8 ==> r5c8 ≠ 2, r4c8 ≠ 8
hidden-single-in-a-column ==> r5c8 = 8
hidden-single-in-a-column ==> r9c7 = 8
hidden-single-in-a-column ==> r4c5 = 8
naked-single ==> r4c4 = 9
hidden-single-in-a-row ==> r2c9 = 9
hidden-single-in-a-column ==> r8c1 = 8
hidden-single-in-a-column ==> r6c3 = 8
hidden-single-in-a-column ==> r2c6 = 8
str-asc[2]: r3c3<r3c4<r2c4 ==> r3c4 ≠ 8, r3c4 ≠ 7, r3c3 ≠ 7, r3c3 ≠ 6
hidden-single-in-a-column ==> r7c4 = 8
str-asc[1]: r6c1<r6c2 ==> r6c1 ≠ 7
str-asc[1]: r6c7<r6c6 ==> r6c7 ≠ 7
str-asc[2]: r9c2<r9c3<r8c3 ==> r9c3 ≠ 7, r9c2 ≠ 6
str-asc[2]: r9c4<r8c4<r8c3 ==> r9c4 ≠ 6, r8c4 ≠ 7
str-asc[1]: r3c1<r4c1 ==> r3c1 ≠ 7
str-asc[1]: r4c2<r4c3 ==> r4c2 ≠ 7
str-asc[1]: r4c7<r4c6 ==> r4c7 ≠ 7
str-asc[2]: r3c5<r3c6<r4c6 ==> r3c6 ≠ 7, r3c5 ≠ 6
str-asc[1]: r8c8<r8c7 ==> r8c8 ≠ 7
str-asc[2]: r6c8<r7c8<r8c8 ==> r8c8 ≠ 3, r7c8 ≠ 6, r7c8 ≠ 2, r6c8 ≠ 5
str-asc[2]: r8c9<r8c8<r8c7 ==> r8c9 ≠ 6
str-asc[1]: r7c9<r8c9 ==> r7c9 ≠ 5
str-asc[3]: r9c9<r8c9<r8c8<r8c7 ==> r9c9 ≠ 5
Starting_init_links_with_<Fact-3807>
283 candidates, 1577 csp-links and 3420 links. Density = 8.57%
starting non trivial part of solution
Entering_level_W1_with_<Fact-10276>
Entering_relation_bivalue_with_<Fact-10277>
Entering_level_BC2_with_<Fact-10320>
biv-chain[2]: r3n7{c2 c9} - r3n8{c9 c2} ==> r3c2 ≠ 4, r3c2 ≠ 5, r3c2 ≠ 6
biv-chain[2]: r3n7{c9 c2} - r3n8{c2 c9} ==> r3c9 ≠ 2, r3c9 ≠ 3, r3c9 ≠ 4, r3c9 ≠ 5, r3c9 ≠ 6
Entering_level_W2_with_<Fact-10382>
whip[2]: r1c7{n5 n6} - r7c7{n6 .} ==> r2c7 ≠ 5
whip[2]: r3c6{n6 n4} - r7c6{n4 .} ==> r4c6 ≠ 5
whip[2]: r4c6{n6 n7} - r4c3{n7 .} ==> r4c2 ≠ 6
whip[2]: r8c3{n6 n7} - r8c7{n7 .} ==> r8c4 ≠ 6
str-asc[1]: r9c4<r8c4 ==> r9c4 ≠ 5
Entering_level_BC3_with_<Fact-10727>
Entering_level_W3_with_<Fact-10765>
whip[3]: r9c2{n5 n1} - r9c9{n1 n4} - r9c4{n4 .} ==> r9c3 ≠ 2
str-asc[1]: r9c3<r8c3 ==> r8c3 ≠ 4
whip[2]: r8n4{c9 c4} - r8n3{c4 .} ==> r8c9 ≠ 5
str-asc[1]: r7c9<r8c9 ==> r7c9 ≠ 4
str-asc[1]: r9c9<r8c9 ==> r9c9 ≠ 4
whip[3]: r7n1{c9 c2} - r7n7{c2 c1} - r7n2{c1 .} ==> r7c9 ≠ 3
biv-chain[2]: r7c9{n2 n1} - r9c9{n1 n2} ==> r4c9 ≠ 2, r5c9 ≠ 2, r6c9 ≠ 2
biv-chain[2]: r9c9{n1 n2} - r7c9{n2 n1} ==> r4c9 ≠ 1, r6c9 ≠ 1
whip[3]: r7c6{n5 n4} - r7c8{n4 n3} - r7c5{n3 .} ==> r7c7 ≠ 5
naked-single ==> r7c7 = 6
naked-single ==> r8c7 = 7
str-asc[2]: r9c2<r9c3<r8c3 ==> r9c3 ≠ 6, r9c2 ≠ 5
biv-chain[2]: r9n6{c5 c1} - r9n7{c1 c5} ==> r9c5 ≠ 4, r9c5 ≠ 5
biv-chain[2]: r9n7{c1 c5} - r9n6{c5 c1} ==> r9c1 ≠ 2, r9c1 ≠ 4, r9c1 ≠ 5
hidden-single-in-a-row ==> r9c3 = 5
naked-single ==> r8c3 = 6
str-asc[2]: r6c8<r7c8<r8c8 ==> r7c8 ≠ 5, r6c8 ≠ 4
biv-chain[2]: r7c8{n4 n3} - r7c5{n3 n4} ==> r7c1 ≠ 4, r7c2 ≠ 4, r7c6 ≠ 4
naked-single ==> r7c6 = 5
hidden-single-in-a-column ==> r3c6 = 4
naked-single ==> r3c5 = 3
naked-single ==> r3c3 = 2
naked-single ==> r7c5 = 4
naked-single ==> r7c8 = 3
naked-single ==> r6c8 = 2
str-asc[1]: r2c8<r1c8 ==> r1c8 ≠ 4
str-asc[1]: r1c8<r1c9 ==> r1c9 ≠ 5
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 3
str-asc[1]: r3c1<r4c1 ==> r4c1 ≠ 5, r4c1 ≠ 4, r4c1 ≠ 3
str-asc[1]: r3c4<r2c4 ==> r2c4 ≠ 5, r2c4 ≠ 4
biv-chain[2]: r4n2{c7 c2} - r4n1{c2 c7} ==> r4c7 ≠ 3, r4c7 ≠ 4, r4c7 ≠ 5
biv-chain[2]: r4n1{c2 c7} - r4n2{c7 c2} ==> r4c2 ≠ 3, r4c2 ≠ 4, r4c2 ≠ 5
biv-chain[2]: c1n4{r6 r2} - c1n3{r2 r6} ==> r6c1 ≠ 5, r6c1 ≠ 6
biv-chain[2]: c1n3{r2 r6} - c1n4{r6 r2} ==> r2c1 ≠ 2, r2c1 ≠ 5, r2c1 ≠ 6, r2c2 ≠ 3
hidden-single-in-a-column ==> r5c2 = 3
hidden-single-in-a-column ==> r4c3 = 3
hidden-single-in-a-column ==> r3c1 = 5
naked-single ==> r3c4 = 6
naked-single ==> r2c4 = 7
hidden-single-in-a-column ==> r7c1 = 2
naked-single ==> r7c9 = 1
naked-single ==> r7c2 = 7
naked-single ==> r3c2 = 8
naked-single ==> r3c9 = 7
naked-single ==> r9c9 = 2
hidden-single-in-a-column ==> r4c2 = 2
naked-single ==> r4c7 = 1
hidden-single-in-a-row ==> r6c4 = 1
naked-single ==> r9c4 = 4
naked-single ==> r8c4 = 5
naked-single ==> r1c4 = 3
naked-single ==> r5c4 = 2
naked-single ==> r8c8 = 4
naked-single ==> r8c9 = 3
naked-single ==> r9c2 = 1
hidden-single-in-a-row ==> r4c9 = 4
hidden-single-in-a-row ==> r4c8 = 5
naked-single ==> r2c8 = 6
naked-single ==> r1c8 = 7
naked-single ==> r1c3 = 4
naked-single ==> r1c7 = 5
naked-single ==> r1c2 = 6
naked-single ==> r5c7 = 4
naked-single ==> r6c7 = 3
naked-single ==> r2c7 = 2
naked-single ==> r6c1 = 4
naked-single ==> r2c1 = 3
naked-single ==> r6c2 = 5
naked-single ==> r2c2 = 4
naked-single ==> r6c9 = 6
naked-single ==> r5c9 = 5
naked-single ==> r6c6 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 7
naked-single ==> r9c1 = 6
naked-single ==> r9c5 = 7
naked-single ==> r5c5 = 6
naked-single ==> r5c3 = 7
naked-single ==> r1c9 = 8
naked-single ==> r2c5 = 5
PUZZLE SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[3]
164329578
341758269
582634917
723986154
937261485
458197326
279845631
896512743
615473892
Puzzle :
init-time = 2.97s, solve time = 2.61s, total-time = 5.58s
nb-facts=<Fact-11359>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

