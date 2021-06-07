

-->---
-->-<>
------
----<<
-<>->>
->--->
---<--

-->----->-<>----------<<-<>->>->--->---<--


-<--<-
>--<--
----<-
------
------
-<----
------

-<--<->--<------<--------------<----------




(solve 7
"....4...................6......................5."
"-->----->-<>----------<<-<>->>->--->---<--" 
"-<--<->--<------<--------------<----------")

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
....4...................6......................5.
-->----->-<>----------<<-<>->>->--->---<--
-<--<->--<------<--------------<----------
3 givens, 286 candidates
entering BRT
asc[4]: r4c2<r5c2<r5c3<r6c3<r6c2 ==> r6c3 ≠ 7, r6c3 ≠ 3, r6c3 ≠ 2, r6c3 ≠ 1, r6c2 ≠ 4, r6c2 ≠ 3, r6c2 ≠ 2, r6c2 ≠ 1, r5c3 ≠ 7, r5c3 ≠ 6, r5c3 ≠ 2, r5c3 ≠ 1, r5c2 ≠ 7, r5c2 ≠ 6, r5c2 ≠ 5, r5c2 ≠ 1, r4c2 ≠ 7, r4c2 ≠ 5, r4c2 ≠ 4
asc[1]: r2c2<r1c2 ==> r2c2 ≠ 7, r1c2 ≠ 1
asc[1]: r5c1<r6c1 ==> r6c1 ≠ 1, r5c1 ≠ 7
asc[1]: r2c1<r3c1 ==> r3c1 ≠ 1, r2c1 ≠ 7
asc[1]: r7c4<r7c5 ==> r7c5 ≠ 1, r7c4 ≠ 7
asc[1]: r6c7<r6c6 ==> r6c7 ≠ 7, r6c6 ≠ 1
asc[2]: r5c7<r5c6<r5c5 ==> r5c7 ≠ 7, r5c7 ≠ 6, r5c6 ≠ 7, r5c6 ≠ 1, r5c5 ≠ 2, r5c5 ≠ 1
asc[3]: r5c4<r5c3<r6c3<r6c2 ==> r5c4 ≠ 7, r5c4 ≠ 5
asc[2]: r4c5<r4c6<r4c7 ==> r4c7 ≠ 2, r4c7 ≠ 1, r4c6 ≠ 7, r4c6 ≠ 1, r4c5 ≠ 7
asc[2]: r2c7<r2c6<r3c6 ==> r3c6 ≠ 2, r3c6 ≠ 1, r2c7 ≠ 7, r2c7 ≠ 6, r2c6 ≠ 7, r2c6 ≠ 1
asc[2]: r2c5<r2c6<r3c6 ==> r2c5 ≠ 7, r2c5 ≠ 6
asc[1]: r2c4<r2c3 ==> r2c4 ≠ 7, r2c3 ≠ 1
asc[1]: r1c4<r1c3 ==> r1c4 ≠ 7, r1c3 ≠ 1
hidden-single-in-a-row ==> r5c5 = 7
hidden-single-in-a-row ==> r2c3 = 7
hidden-single-in-a-column ==> r1c6 = 1
str-asc[1]: r1c4<r1c3 ==> r1c3 ≠ 2
str-asc[1]: r4c5<r4c6 ==> r4c5 ≠ 5
hill[2]: r2c5<r2c6>r2c7 ==> r2c6 ≠ 2
str-asc[1]: r2c6<r3c6 ==> r3c6 ≠ 3
Starting_init_links_with_<Fact-1671>
206 candidates, 1233 csp-links and 1692 links. Density = 8.01%
starting non trivial part of solution
Entering_level_W1_with_<Fact-6726>
Entering_relation_bivalue_with_<Fact-6727>
Entering_level_S2_with_<Fact-6736>
x-wing-in-columns: n7{c4 c6}{r3 r6} ==> r6c2 ≠ 7, r6c1 ≠ 7, r3c7 ≠ 7, r3c2 ≠ 7, r3c1 ≠ 7
str-asc[1]: r2c1<r3c1 ==> r2c1 ≠ 6
str-asc[1]: r5c1<r6c1 ==> r5c1 ≠ 6
hidden-single-in-a-row ==> r5c6 = 6
hidden-single-in-a-row ==> r2c2 = 6
naked-single ==> r1c2 = 7
naked-single ==> r6c2 = 5
naked-single ==> r6c3 = 4
naked-single ==> r5c3 = 3
naked-single ==> r5c2 = 2
naked-single ==> r4c2 = 1
naked-single ==> r5c4 = 1
str-asc[1]: r5c1<r6c1 ==> r6c1 ≠ 3, r6c1 ≠ 2
naked-single ==> r6c1 = 6
str-asc[1]: r2c1<r3c1 ==> r2c1 ≠ 5
str-asc[1]: r7c4<r7c5 ==> r7c5 ≠ 2
str-asc[1]: r4c5<r4c6 ==> r4c6 ≠ 2
hidden-single-in-a-column ==> r6c6 = 2
naked-single ==> r6c7 = 1
naked-single ==> r6c5 = 3
naked-single ==> r4c5 = 2
naked-single ==> r4c3 = 5
naked-single ==> r1c3 = 6
naked-single ==> r6c4 = 7
naked-single ==> r7c5 = 6
hidden-single-in-a-row ==> r3c7 = 6
hidden-single-in-a-row ==> r3c6 = 7
str-asc[1]: r2c7<r2c6 ==> r2c7 ≠ 5, r2c7 ≠ 4
str-asc[1]: r4c6<r4c7 ==> r4c7 ≠ 3
str-asc[1]: r2c5<r2c6 ==> r2c5 ≠ 5
naked-single ==> r2c5 = 1
naked-single ==> r3c5 = 5
hidden-single-in-a-column ==> r7c1 = 1
naked-single ==> r7c3 = 2
naked-single ==> r3c3 = 1
hidden-single-in-a-column ==> r4c1 = 7
naked-single ==> r4c7 = 4
naked-single ==> r4c6 = 3
naked-single ==> r2c6 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c1 = 4
hidden-single-in-a-column ==> r1c1 = 5
hidden-single-in-a-column ==> r2c4 = 5
hidden-single-in-a-column ==> r7c7 = 7
str-asc[1]: r2c1<r3c1 ==> r3c1 ≠ 2, r2c1 ≠ 3
naked-single ==> r2c1 = 2
naked-single ==> r2c7 = 3
naked-single ==> r1c7 = 2
naked-single ==> r1c4 = 3
naked-single ==> r7c4 = 4
naked-single ==> r3c4 = 2
naked-single ==> r7c2 = 3
naked-single ==> r3c2 = 4
naked-single ==> r3c1 = 3
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = SHP
5763412
2675143
3412576
7156234
4231765
6547321
1324657
Puzzle :
init-time = 0.49s, solve time = 0.51s, total-time = 1.0s
nb-facts=<Fact-6812>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
