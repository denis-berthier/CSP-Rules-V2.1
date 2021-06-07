


-><<-->>
-->>--->
------>-
--->->--
--><->>>
>----->-
----->--
><-<<---
>-<--->>

-><<-->>-->>--->------>---->->----><->>>>----->------>--><-<<--->-<--->>




-<-->->-
-<------
>>---->-
-->>>>--
-----<<-
------>-
>>->-->-
---><---
->-<->>-



-<-->->--<------>>---->--->>>>-------<<------->->>->-->----><---->-<->>-




(solve 9
"................................................................................." 
"-><<-->>-->>--->------>---->->----><->>>>----->------>--><-<<--->-<--->>" 
"-<-->->--<------>>---->--->>>>-------<<------->->>->-->----><---->-<->>-")



Solved with Naked-Quads:

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.................................................................................
-><<-->>-->>--->------>---->->----><->>>>----->------>--><-<<--->-<--->>
-<-->->--<------>>---->--->>>>-------<<------->->>->-->----><---->-<->>-
0 givens, 729 candidates
entering BRT
asc[2]: r8c9<r7c9<r6c9 ==> r8c9 ≠ 9, r8c9 ≠ 8, r7c9 ≠ 9, r7c9 ≠ 1, r6c9 ≠ 2, r6c9 ≠ 1
asc[4]: r4c9<r5c9<r5c8<r6c8<r6c7 ==> r6c8 ≠ 9, r6c8 ≠ 3, r6c8 ≠ 2, r6c8 ≠ 1, r6c7 ≠ 4, r6c7 ≠ 3, r6c7 ≠ 2, r6c7 ≠ 1, r5c9 ≠ 9, r5c9 ≠ 8, r5c9 ≠ 7, r5c9 ≠ 1, r5c8 ≠ 9, r5c8 ≠ 8, r5c8 ≠ 2, r5c8 ≠ 1, r4c9 ≠ 9, r4c9 ≠ 8, r4c9 ≠ 7, r4c9 ≠ 6
asc[3]: r4c9<r5c9<r5c8<r4c8 ==> r4c8 ≠ 3, r4c8 ≠ 2, r4c8 ≠ 1
asc[5]: r4c9<r5c9<r5c8<r5c7<r4c7<r4c6 ==> r5c9 ≠ 6, r5c8 ≠ 7, r5c7 ≠ 9, r5c7 ≠ 8, r5c7 ≠ 3, r5c7 ≠ 2, r5c7 ≠ 1, r4c9 ≠ 5, r4c7 ≠ 9, r4c7 ≠ 4, r4c7 ≠ 3, r4c7 ≠ 2, r4c7 ≠ 1, r4c6 ≠ 5, r4c6 ≠ 4, r4c6 ≠ 3, r4c6 ≠ 2, r4c6 ≠ 1
asc[4]: r4c9<r5c9<r5c8<r5c7<r5c6 ==> r5c6 ≠ 4, r5c6 ≠ 3, r5c6 ≠ 2, r5c6 ≠ 1
asc[2]: r3c9<r2c9<r2c8 ==> r3c9 ≠ 9, r3c9 ≠ 8, r2c9 ≠ 9, r2c9 ≠ 1, r2c8 ≠ 2, r2c8 ≠ 1
asc[2]: r8c7<r7c7<r7c6 ==> r8c7 ≠ 9, r8c7 ≠ 8, r7c7 ≠ 9, r7c7 ≠ 1, r7c6 ≠ 2, r7c6 ≠ 1
asc[4]: r6c5<r7c5<r8c5<r8c6<r7c6 ==> r8c6 ≠ 9, r8c6 ≠ 3, r8c6 ≠ 2, r8c6 ≠ 1, r8c5 ≠ 9, r8c5 ≠ 8, r8c5 ≠ 2, r8c5 ≠ 1, r7c6 ≠ 4, r7c6 ≠ 3, r7c5 ≠ 9, r7c5 ≠ 8, r7c5 ≠ 7, r7c5 ≠ 1, r6c5 ≠ 9, r6c5 ≠ 8, r6c5 ≠ 7, r6c5 ≠ 6
asc[4]: r7c4<r6c4<r5c4<r4c4<r3c4 ==> r7c4 ≠ 9, r7c4 ≠ 8, r7c4 ≠ 7, r7c4 ≠ 6, r6c4 ≠ 9, r6c4 ≠ 8, r6c4 ≠ 7, r6c4 ≠ 1, r5c4 ≠ 9, r5c4 ≠ 8, r5c4 ≠ 2, r5c4 ≠ 1, r4c4 ≠ 9, r4c4 ≠ 3, r4c4 ≠ 2, r4c4 ≠ 1, r3c4 ≠ 4, r3c4 ≠ 3, r3c4 ≠ 2, r3c4 ≠ 1
asc[3]: r7c4<r6c4<r5c4<r5c5 ==> r5c5 ≠ 3, r5c5 ≠ 2, r5c5 ≠ 1
asc[3]: r7c4<r6c4<r5c4<r5c3 ==> r5c3 ≠ 3, r5c3 ≠ 2, r5c3 ≠ 1
asc[4]: r3c3<r2c3<r1c3<r1c4<r1c5 ==> r3c3 ≠ 9, r3c3 ≠ 8, r3c3 ≠ 7, r3c3 ≠ 6, r2c3 ≠ 9, r2c3 ≠ 8, r2c3 ≠ 7, r2c3 ≠ 1, r1c5 ≠ 4, r1c5 ≠ 3, r1c5 ≠ 2, r1c5 ≠ 1, r1c4 ≠ 9, r1c4 ≠ 3, r1c4 ≠ 2, r1c4 ≠ 1, r1c3 ≠ 9, r1c3 ≠ 8, r1c3 ≠ 2, r1c3 ≠ 1
asc[3]: r3c3<r2c3<r1c3<r1c2 ==> r1c2 ≠ 3, r1c2 ≠ 2, r1c2 ≠ 1
asc[1]: r2c2<r3c2 ==> r3c2 ≠ 1, r2c2 ≠ 9
asc[1]: r2c1<r3c1 ==> r3c1 ≠ 1, r2c1 ≠ 9
asc[2]: r9c9<r9c8<r9c7 ==> r9c9 ≠ 9, r9c9 ≠ 8, r9c8 ≠ 9, r9c8 ≠ 1, r9c7 ≠ 2, r9c7 ≠ 1
asc[1]: r9c3<r9c4 ==> r9c4 ≠ 1, r9c3 ≠ 9
asc[1]: r9c2<r9c1 ==> r9c2 ≠ 9, r9c1 ≠ 1
asc[3]: r8c4<r8c5<r8c6<r7c6 ==> r8c4 ≠ 9, r8c4 ≠ 8, r8c4 ≠ 7
asc[2]: r8c2<r8c3<r7c3 ==> r8c3 ≠ 9, r8c3 ≠ 1, r8c2 ≠ 9, r8c2 ≠ 8, r7c3 ≠ 2, r7c3 ≠ 1
asc[2]: r8c2<r8c1<r7c1 ==> r8c1 ≠ 9, r8c1 ≠ 1, r7c1 ≠ 2, r7c1 ≠ 1
asc[2]: r6c2<r6c1<r5c1 ==> r6c2 ≠ 9, r6c2 ≠ 8, r6c1 ≠ 9, r6c1 ≠ 1, r5c1 ≠ 2, r5c1 ≠ 1
asc[2]: r4c5<r4c4<r3c4 ==> r4c5 ≠ 9, r4c5 ≠ 8
asc[3]: r3c8<r3c7<r2c7<r1c7 ==> r3c8 ≠ 9, r3c8 ≠ 8, r3c8 ≠ 7, r3c7 ≠ 9, r3c7 ≠ 8, r3c7 ≠ 1, r2c7 ≠ 9, r2c7 ≠ 2, r2c7 ≠ 1, r1c7 ≠ 3, r1c7 ≠ 2, r1c7 ≠ 1
asc[5]: r2c5<r2c4<r2c3<r1c3<r1c4<r1c5 ==> r2c5 ≠ 9, r2c5 ≠ 8, r2c5 ≠ 7, r2c5 ≠ 6, r2c5 ≠ 5, r2c4 ≠ 9, r2c4 ≠ 8, r2c4 ≠ 7, r2c4 ≠ 6, r2c4 ≠ 1, r2c3 ≠ 2, r1c5 ≠ 5, r1c4 ≠ 4, r1c3 ≠ 3
asc[4]: r2c5<r2c4<r2c3<r1c3<r1c2 ==> r1c2 ≠ 4
asc[2]: r1c9<r1c8<r1c7 ==> r1c9 ≠ 9, r1c9 ≠ 8, r1c8 ≠ 9, r1c8 ≠ 1
hidden-single-in-a-row ==> r8c8 = 9
hidden-single-in-a-row ==> r2c6 = 9
hidden-single-in-a-column ==> r8c7 = 1
hidden-single-in-a-column ==> r7c4 = 1
hidden-single-in-a-column ==> r3c8 = 1
hidden-single-in-a-column ==> r6c9 = 9
hidden-single-in-a-row ==> r5c2 = 1
hidden-single-in-a-row ==> r5c9 = 2
naked-single ==> r4c9 = 1
str-asc[2]: r1c9<r1c8<r1c7 ==> r1c8 ≠ 3, r1c8 ≠ 2, r1c7 ≠ 4
str-asc[2]: r6c2<r6c1<r5c1 ==> r6c1 ≠ 2, r5c1 ≠ 3
str-asc[2]: r8c2<r8c1<r7c1 ==> r8c1 ≠ 2, r7c1 ≠ 3
str-asc[2]: r8c2<r8c3<r7c3 ==> r8c3 ≠ 2, r7c3 ≠ 3
str-asc[1]: r8c6<r7c6 ==> r8c6 ≠ 8
str-asc[2]: r8c4<r8c5<r8c6 ==> r8c5 ≠ 7, r8c4 ≠ 6
str-asc[1]: r9c2<r9c1 ==> r9c1 ≠ 2
str-asc[2]: r9c9<r9c8<r9c7 ==> r9c8 ≠ 3, r9c8 ≠ 2, r9c7 ≠ 4, r9c7 ≠ 3
hidden-single-in-a-column ==> r7c8 = 2
hidden-single-in-a-column ==> r3c7 = 2
str-asc[3]: r3c3<r2c3<r1c3<r1c2 ==> r2c3 ≠ 3, r1c3 ≠ 4, r1c2 ≠ 5
str-asc[1]: r1c3<r1c4 ==> r1c4 ≠ 5
str-asc[1]: r1c4<r1c5 ==> r1c5 ≠ 6
str-asc[3]: r7c5<r8c5<r8c6<r7c6 ==> r8c6 ≠ 4, r8c5 ≠ 3, r7c6 ≠ 5, r7c5 ≠ 6
str-asc[1]: r6c5<r7c5 ==> r6c5 ≠ 5
str-asc[1]: r7c7<r7c6 ==> r7c7 ≠ 8
str-asc[1]: r2c9<r2c8 ==> r2c9 ≠ 8, r2c8 ≠ 3
hidden-single-in-a-column ==> r5c8 = 3
hidden-single-in-a-column ==> r7c9 = 8
str-asc[3]: r8c4<r8c5<r8c6<r7c6 ==> r8c6 ≠ 7, r8c5 ≠ 6, r8c4 ≠ 5
str-asc[2]: r6c5<r7c5<r8c5 ==> r7c5 ≠ 5, r6c5 ≠ 4
str-asc[1]: r7c7<r7c6 ==> r7c7 ≠ 7
str-asc[1]: r5c4<r5c3 ==> r5c3 ≠ 4
str-asc[1]: r5c4<r5c5 ==> r5c5 ≠ 4
str-asc[1]: r5c4<r4c4 ==> r4c4 ≠ 4
str-asc[1]: r4c4<r3c4 ==> r3c4 ≠ 5
str-asc[1]: r3c9<r2c9 ==> r3c9 ≠ 7, r2c9 ≠ 3
str-asc[1]: r2c9<r2c8 ==> r2c8 ≠ 4
str-asc[1]: r4c7<r4c6 ==> r4c7 ≠ 8
str-asc[1]: r5c7<r4c7 ==> r5c7 ≠ 7
str-asc[1]: r6c8<r6c7 ==> r6c8 ≠ 8
valley[3]: r1c2>r1c3<r1c4<r1c5 ==> r1c3 ≠ 7
str-asc[3]: r2c5<r2c4<r2c3<r1c3 ==> r2c5 ≠ 4, r2c4 ≠ 5, r2c3 ≠ 6
str-asc[1]: r3c3<r2c3 ==> r3c3 ≠ 5
str-valley[2]: r8c1>r8c2<r8c3 ==> r8c2 ≠ 7
Starting_init_links_with_<Fact-3788>
363 candidates, 2526 csp-links and 4542 links. Density = 6.91%
starting non trivial part of solution
Entering_level_W1_with_<Fact-14255>
Entering_relation_bivalue_with_<Fact-14256>
Entering_level_S2_with_<Fact-14291>
hidden-pairs-in-a-row: r1{n1 n2}{c1 c6} ==> r1c6 ≠ 8, r1c6 ≠ 7, r1c6 ≠ 6, r1c6 ≠ 5, r1c6 ≠ 4, r1c6 ≠ 3, r1c1 ≠ 9, r1c1 ≠ 8, r1c1 ≠ 7, r1c1 ≠ 6, r1c1 ≠ 5, r1c1 ≠ 4, r1c1 ≠ 3
hidden-single-in-a-row ==> r1c9 = 3
hidden-single-in-a-row ==> r1c8 = 4
str-asc[1]: r6c8<r6c7 ==> r6c7 ≠ 5
str-asc[1]: r9c8<r9c7 ==> r9c7 ≠ 5
str-asc[1]: r3c9<r2c9 ==> r2c9 ≠ 4
str-asc[1]: r2c9<r2c8 ==> r2c8 ≠ 5
Entering_level_BC2_with_<Fact-14321>
Entering_level_W2_with_<Fact-14357>
whip[2]: r3c3{n4 n3} - r8c3{n3 .} ==> r7c3 ≠ 4
whip[2]: r8n2{c2 c4} - r8n3{c4 .} ==> r8c2 ≠ 4, r8c2 ≠ 5, r8c2 ≠ 6
whip[2]: r8c2{n3 n2} - r2c2{n2 .} ==> r3c2 ≠ 3
Entering_level_S3_with_<Fact-14714>
Entering_level_BC3_with_<Fact-14717>
Entering_level_W3_with_<Fact-14737>
whip[3]: r8n8{c3 c1} - r7c1{n7 n9} - r7c3{n9 .} ==> r8c3 ≠ 7
whip[3]: r2c3{n5 n4} - r8c3{n4 n3} - r3c3{n3 .} ==> r7c3 ≠ 5
whip[3]: r8n8{c1 c3} - r7c3{n7 n9} - r7c1{n9 .} ==> r8c1 ≠ 7
hidden-single-in-a-row ==> r8c9 = 7
str-asc[1]: r3c9<r2c9 ==> r3c9 ≠ 6
whip[3]: r5c4{n6 n7} - r4c4{n7 n8} - r1c4{n8 .} ==> r6c4 ≠ 6
Entering_level_S4_with_<Fact-15241>
naked-quads-in-a-column: c6{r4 r5 r8 r7}{n7 n8 n5 n6} ==> r9c6 ≠ 8, r9c6 ≠ 7, r9c6 ≠ 6, r9c6 ≠ 5, r6c6 ≠ 8, r6c6 ≠ 7, r6c6 ≠ 6, r6c6 ≠ 5, r3c6 ≠ 8, r3c6 ≠ 7, r3c6 ≠ 6, r3c6 ≠ 5
naked-pairs-in-a-row: r3{c3 c6}{n3 n4} ==> r3c9 ≠ 4, r3c5 ≠ 4, r3c5 ≠ 3, r3c2 ≠ 4, r3c1 ≠ 4, r3c1 ≠ 3
naked-single ==> r3c9 = 5
naked-single ==> r2c9 = 6
naked-single ==> r9c9 = 4
naked-quads-in-a-row: r4{c4 c6 c7 c8}{n8 n7 n6 n5} ==> r4c5 ≠ 7, r4c5 ≠ 6, r4c5 ≠ 5, r4c3 ≠ 8, r4c3 ≠ 7, r4c3 ≠ 6, r4c3 ≠ 5, r4c2 ≠ 8, r4c2 ≠ 7, r4c2 ≠ 6, r4c2 ≠ 5, r4c1 ≠ 8, r4c1 ≠ 7, r4c1 ≠ 6, r4c1 ≠ 5
naked-quads-in-a-column: c5{r2 r4 r7 r6}{n1 n2 n4 n3} ==> r9c5 ≠ 3, r9c5 ≠ 2, r9c5 ≠ 1, r8c5 ≠ 4
naked-single ==> r8c5 = 5
naked-single ==> r8c6 = 6
naked-single ==> r7c6 = 7
naked-single ==> r4c6 = 8
naked-single ==> r5c6 = 5
naked-single ==> r5c7 = 4
str-asc[2]: r5c4<r4c4<r3c4 ==> r4c4 ≠ 6, r4c4 ≠ 5, r3c4 ≠ 7, r3c4 ≠ 6
naked-single ==> r4c4 = 7
naked-single ==> r5c4 = 6
naked-single ==> r1c4 = 8
naked-single ==> r1c5 = 9
naked-single ==> r3c4 = 9
hidden-single-in-a-column ==> r9c7 = 9
str-asc[1]: r9c2<r9c1 ==> r9c2 ≠ 8
str-asc[1]: r2c1<r3c1 ==> r2c1 ≠ 8
str-asc[1]: r2c2<r3c2 ==> r2c2 ≠ 8
hidden-single-in-a-column ==> r3c2 = 8
str-asc[1]: r2c1<r3c1 ==> r2c1 ≠ 7
str-asc[1]: r9c3<r9c4 ==> r9c3 ≠ 8, r9c3 ≠ 7, r9c3 ≠ 6, r9c3 ≠ 5
str-asc[1]: r2c7<r1c7 ==> r2c7 ≠ 8, r2c7 ≠ 7
hidden-single-in-a-column ==> r6c7 = 8
hidden-single-in-a-column ==> r1c7 = 7
naked-single ==> r1c2 = 6
naked-single ==> r1c3 = 5
naked-single ==> r2c3 = 4
naked-single ==> r3c3 = 3
naked-single ==> r3c6 = 4
naked-single ==> r8c3 = 8
naked-single ==> r7c3 = 9
naked-single ==> r4c3 = 2
naked-single ==> r9c3 = 1
naked-single ==> r5c3 = 7
naked-single ==> r5c5 = 8
naked-single ==> r5c1 = 9
naked-single ==> r6c3 = 6
hidden-single-in-a-row ==> r4c2 = 9
hidden-single-in-a-column ==> r9c1 = 8
hidden-single-in-a-column ==> r2c8 = 8
hidden-single-in-a-row ==> r2c2 = 7
str-asc[1]: r2c5<r2c4 ==> r2c5 ≠ 3
naked-pairs-in-a-column: c1{r4 r8}{n3 n4} ==> r7c1 ≠ 4, r6c1 ≠ 4, r6c1 ≠ 3, r2c1 ≠ 3
naked-pairs-in-a-row: r6{c1 c8}{n5 n7} ==> r6c4 ≠ 5, r6c2 ≠ 5
hidden-single-in-a-column ==> r9c4 = 5
hidden-single-in-a-column ==> r7c2 = 5
naked-single ==> r7c1 = 6
naked-single ==> r3c1 = 7
naked-single ==> r3c5 = 6
naked-single ==> r9c5 = 7
naked-single ==> r9c8 = 6
naked-single ==> r4c8 = 5
naked-single ==> r4c7 = 6
naked-single ==> r6c8 = 7
naked-single ==> r6c1 = 5
naked-single ==> r7c7 = 3
naked-single ==> r2c7 = 5
naked-single ==> r7c5 = 4
naked-single ==> r4c5 = 3
naked-single ==> r4c1 = 4
naked-single ==> r8c1 = 3
naked-single ==> r8c2 = 2
naked-single ==> r8c4 = 4
naked-single ==> r9c2 = 3
naked-single ==> r6c2 = 4
naked-single ==> r9c6 = 2
naked-single ==> r1c6 = 1
naked-single ==> r1c1 = 2
naked-single ==> r2c1 = 1
naked-single ==> r2c5 = 2
naked-single ==> r2c4 = 3
naked-single ==> r6c4 = 2
naked-single ==> r6c5 = 1
naked-single ==> r6c6 = 3
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = NQ
265891743
174329586
783964215
492738651
917685432
546213879
659147328
328456197
831572964
Puzzle :
init-time = 4.96s, solve time = 7.98s, total-time = 12.94s
nb-facts=<Fact-15959>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




But requires whips[11] if Subsets are not active:


***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.................................................................................
-><<-->>-->>--->------>---->->----><->>>>----->------>--><-<<--->-<--->>
-<-->->--<------>>---->--->>>>-------<<------->->>->-->----><---->-<->>-
0 givens, 729 candidates
entering BRT
asc[2]: r8c9<r7c9<r6c9 ==> r8c9 ≠ 9, r8c9 ≠ 8, r7c9 ≠ 9, r7c9 ≠ 1, r6c9 ≠ 2, r6c9 ≠ 1
asc[4]: r4c9<r5c9<r5c8<r6c8<r6c7 ==> r6c8 ≠ 9, r6c8 ≠ 3, r6c8 ≠ 2, r6c8 ≠ 1, r6c7 ≠ 4, r6c7 ≠ 3, r6c7 ≠ 2, r6c7 ≠ 1, r5c9 ≠ 9, r5c9 ≠ 8, r5c9 ≠ 7, r5c9 ≠ 1, r5c8 ≠ 9, r5c8 ≠ 8, r5c8 ≠ 2, r5c8 ≠ 1, r4c9 ≠ 9, r4c9 ≠ 8, r4c9 ≠ 7, r4c9 ≠ 6
asc[3]: r4c9<r5c9<r5c8<r4c8 ==> r4c8 ≠ 3, r4c8 ≠ 2, r4c8 ≠ 1
asc[5]: r4c9<r5c9<r5c8<r5c7<r4c7<r4c6 ==> r5c9 ≠ 6, r5c8 ≠ 7, r5c7 ≠ 9, r5c7 ≠ 8, r5c7 ≠ 3, r5c7 ≠ 2, r5c7 ≠ 1, r4c9 ≠ 5, r4c7 ≠ 9, r4c7 ≠ 4, r4c7 ≠ 3, r4c7 ≠ 2, r4c7 ≠ 1, r4c6 ≠ 5, r4c6 ≠ 4, r4c6 ≠ 3, r4c6 ≠ 2, r4c6 ≠ 1
asc[4]: r4c9<r5c9<r5c8<r5c7<r5c6 ==> r5c6 ≠ 4, r5c6 ≠ 3, r5c6 ≠ 2, r5c6 ≠ 1
asc[2]: r3c9<r2c9<r2c8 ==> r3c9 ≠ 9, r3c9 ≠ 8, r2c9 ≠ 9, r2c9 ≠ 1, r2c8 ≠ 2, r2c8 ≠ 1
asc[2]: r8c7<r7c7<r7c6 ==> r8c7 ≠ 9, r8c7 ≠ 8, r7c7 ≠ 9, r7c7 ≠ 1, r7c6 ≠ 2, r7c6 ≠ 1
asc[4]: r6c5<r7c5<r8c5<r8c6<r7c6 ==> r8c6 ≠ 9, r8c6 ≠ 3, r8c6 ≠ 2, r8c6 ≠ 1, r8c5 ≠ 9, r8c5 ≠ 8, r8c5 ≠ 2, r8c5 ≠ 1, r7c6 ≠ 4, r7c6 ≠ 3, r7c5 ≠ 9, r7c5 ≠ 8, r7c5 ≠ 7, r7c5 ≠ 1, r6c5 ≠ 9, r6c5 ≠ 8, r6c5 ≠ 7, r6c5 ≠ 6
asc[4]: r7c4<r6c4<r5c4<r4c4<r3c4 ==> r7c4 ≠ 9, r7c4 ≠ 8, r7c4 ≠ 7, r7c4 ≠ 6, r6c4 ≠ 9, r6c4 ≠ 8, r6c4 ≠ 7, r6c4 ≠ 1, r5c4 ≠ 9, r5c4 ≠ 8, r5c4 ≠ 2, r5c4 ≠ 1, r4c4 ≠ 9, r4c4 ≠ 3, r4c4 ≠ 2, r4c4 ≠ 1, r3c4 ≠ 4, r3c4 ≠ 3, r3c4 ≠ 2, r3c4 ≠ 1
asc[3]: r7c4<r6c4<r5c4<r5c5 ==> r5c5 ≠ 3, r5c5 ≠ 2, r5c5 ≠ 1
asc[3]: r7c4<r6c4<r5c4<r5c3 ==> r5c3 ≠ 3, r5c3 ≠ 2, r5c3 ≠ 1
asc[4]: r3c3<r2c3<r1c3<r1c4<r1c5 ==> r3c3 ≠ 9, r3c3 ≠ 8, r3c3 ≠ 7, r3c3 ≠ 6, r2c3 ≠ 9, r2c3 ≠ 8, r2c3 ≠ 7, r2c3 ≠ 1, r1c5 ≠ 4, r1c5 ≠ 3, r1c5 ≠ 2, r1c5 ≠ 1, r1c4 ≠ 9, r1c4 ≠ 3, r1c4 ≠ 2, r1c4 ≠ 1, r1c3 ≠ 9, r1c3 ≠ 8, r1c3 ≠ 2, r1c3 ≠ 1
asc[3]: r3c3<r2c3<r1c3<r1c2 ==> r1c2 ≠ 3, r1c2 ≠ 2, r1c2 ≠ 1
asc[1]: r2c2<r3c2 ==> r3c2 ≠ 1, r2c2 ≠ 9
asc[1]: r2c1<r3c1 ==> r3c1 ≠ 1, r2c1 ≠ 9
asc[2]: r9c9<r9c8<r9c7 ==> r9c9 ≠ 9, r9c9 ≠ 8, r9c8 ≠ 9, r9c8 ≠ 1, r9c7 ≠ 2, r9c7 ≠ 1
asc[1]: r9c3<r9c4 ==> r9c4 ≠ 1, r9c3 ≠ 9
asc[1]: r9c2<r9c1 ==> r9c2 ≠ 9, r9c1 ≠ 1
asc[3]: r8c4<r8c5<r8c6<r7c6 ==> r8c4 ≠ 9, r8c4 ≠ 8, r8c4 ≠ 7
asc[2]: r8c2<r8c3<r7c3 ==> r8c3 ≠ 9, r8c3 ≠ 1, r8c2 ≠ 9, r8c2 ≠ 8, r7c3 ≠ 2, r7c3 ≠ 1
asc[2]: r8c2<r8c1<r7c1 ==> r8c1 ≠ 9, r8c1 ≠ 1, r7c1 ≠ 2, r7c1 ≠ 1
asc[2]: r6c2<r6c1<r5c1 ==> r6c2 ≠ 9, r6c2 ≠ 8, r6c1 ≠ 9, r6c1 ≠ 1, r5c1 ≠ 2, r5c1 ≠ 1
asc[2]: r4c5<r4c4<r3c4 ==> r4c5 ≠ 9, r4c5 ≠ 8
asc[3]: r3c8<r3c7<r2c7<r1c7 ==> r3c8 ≠ 9, r3c8 ≠ 8, r3c8 ≠ 7, r3c7 ≠ 9, r3c7 ≠ 8, r3c7 ≠ 1, r2c7 ≠ 9, r2c7 ≠ 2, r2c7 ≠ 1, r1c7 ≠ 3, r1c7 ≠ 2, r1c7 ≠ 1
asc[5]: r2c5<r2c4<r2c3<r1c3<r1c4<r1c5 ==> r2c5 ≠ 9, r2c5 ≠ 8, r2c5 ≠ 7, r2c5 ≠ 6, r2c5 ≠ 5, r2c4 ≠ 9, r2c4 ≠ 8, r2c4 ≠ 7, r2c4 ≠ 6, r2c4 ≠ 1, r2c3 ≠ 2, r1c5 ≠ 5, r1c4 ≠ 4, r1c3 ≠ 3
asc[4]: r2c5<r2c4<r2c3<r1c3<r1c2 ==> r1c2 ≠ 4
asc[2]: r1c9<r1c8<r1c7 ==> r1c9 ≠ 9, r1c9 ≠ 8, r1c8 ≠ 9, r1c8 ≠ 1
hidden-single-in-a-row ==> r8c8 = 9
hidden-single-in-a-row ==> r2c6 = 9
hidden-single-in-a-column ==> r8c7 = 1
hidden-single-in-a-column ==> r7c4 = 1
hidden-single-in-a-column ==> r3c8 = 1
hidden-single-in-a-column ==> r6c9 = 9
hidden-single-in-a-row ==> r5c2 = 1
hidden-single-in-a-row ==> r5c9 = 2
naked-single ==> r4c9 = 1
str-asc[2]: r1c9<r1c8<r1c7 ==> r1c8 ≠ 3, r1c8 ≠ 2, r1c7 ≠ 4
str-asc[2]: r6c2<r6c1<r5c1 ==> r6c1 ≠ 2, r5c1 ≠ 3
str-asc[2]: r8c2<r8c1<r7c1 ==> r8c1 ≠ 2, r7c1 ≠ 3
str-asc[2]: r8c2<r8c3<r7c3 ==> r8c3 ≠ 2, r7c3 ≠ 3
str-asc[1]: r8c6<r7c6 ==> r8c6 ≠ 8
str-asc[2]: r8c4<r8c5<r8c6 ==> r8c5 ≠ 7, r8c4 ≠ 6
str-asc[1]: r9c2<r9c1 ==> r9c1 ≠ 2
str-asc[2]: r9c9<r9c8<r9c7 ==> r9c8 ≠ 3, r9c8 ≠ 2, r9c7 ≠ 4, r9c7 ≠ 3
hidden-single-in-a-column ==> r7c8 = 2
hidden-single-in-a-column ==> r3c7 = 2
str-asc[3]: r3c3<r2c3<r1c3<r1c2 ==> r2c3 ≠ 3, r1c3 ≠ 4, r1c2 ≠ 5
str-asc[1]: r1c3<r1c4 ==> r1c4 ≠ 5
str-asc[1]: r1c4<r1c5 ==> r1c5 ≠ 6
str-asc[3]: r7c5<r8c5<r8c6<r7c6 ==> r8c6 ≠ 4, r8c5 ≠ 3, r7c6 ≠ 5, r7c5 ≠ 6
str-asc[1]: r6c5<r7c5 ==> r6c5 ≠ 5
str-asc[1]: r7c7<r7c6 ==> r7c7 ≠ 8
str-asc[1]: r2c9<r2c8 ==> r2c9 ≠ 8, r2c8 ≠ 3
hidden-single-in-a-column ==> r5c8 = 3
hidden-single-in-a-column ==> r7c9 = 8
str-asc[3]: r8c4<r8c5<r8c6<r7c6 ==> r8c6 ≠ 7, r8c5 ≠ 6, r8c4 ≠ 5
str-asc[2]: r6c5<r7c5<r8c5 ==> r7c5 ≠ 5, r6c5 ≠ 4
str-asc[1]: r7c7<r7c6 ==> r7c7 ≠ 7
str-asc[1]: r5c4<r5c3 ==> r5c3 ≠ 4
str-asc[1]: r5c4<r5c5 ==> r5c5 ≠ 4
str-asc[1]: r5c4<r4c4 ==> r4c4 ≠ 4
str-asc[1]: r4c4<r3c4 ==> r3c4 ≠ 5
str-asc[1]: r3c9<r2c9 ==> r3c9 ≠ 7, r2c9 ≠ 3
str-asc[1]: r2c9<r2c8 ==> r2c8 ≠ 4
str-asc[1]: r4c7<r4c6 ==> r4c7 ≠ 8
str-asc[1]: r5c7<r4c7 ==> r5c7 ≠ 7
str-asc[1]: r6c8<r6c7 ==> r6c8 ≠ 8
valley[3]: r1c2>r1c3<r1c4<r1c5 ==> r1c3 ≠ 7
str-asc[3]: r2c5<r2c4<r2c3<r1c3 ==> r2c5 ≠ 4, r2c4 ≠ 5, r2c3 ≠ 6
str-asc[1]: r3c3<r2c3 ==> r3c3 ≠ 5
str-valley[2]: r8c1>r8c2<r8c3 ==> r8c2 ≠ 7
Starting_init_links_with_<Fact-3788>
363 candidates, 2526 csp-links and 4542 links. Density = 6.91%
starting non trivial part of solution
Entering_level_W1_with_<Fact-14255>
Entering_relation_bivalue_with_<Fact-14256>
Entering_level_BC2_with_<Fact-14291>
biv-chain[2]: r1n1{c1 c6} - r1n2{c6 c1} ==> r1c1 ≠ 3, r1c1 ≠ 4, r1c1 ≠ 5, r1c1 ≠ 6, r1c1 ≠ 7, r1c1 ≠ 8, r1c1 ≠ 9
biv-chain[2]: r1n1{c6 c1} - r1n2{c1 c6} ==> r1c6 ≠ 3, r1c6 ≠ 4, r1c6 ≠ 5, r1c6 ≠ 6, r1c6 ≠ 7, r1c6 ≠ 8
hidden-single-in-a-row ==> r1c9 = 3
hidden-single-in-a-row ==> r1c8 = 4
str-asc[1]: r6c8<r6c7 ==> r6c7 ≠ 5
str-asc[1]: r9c8<r9c7 ==> r9c7 ≠ 5
str-asc[1]: r3c9<r2c9 ==> r2c9 ≠ 4
str-asc[1]: r2c9<r2c8 ==> r2c8 ≠ 5
Entering_level_W2_with_<Fact-14360>
whip[2]: r3c3{n4 n3} - r8c3{n3 .} ==> r7c3 ≠ 4
whip[2]: r8n2{c2 c4} - r8n3{c4 .} ==> r8c2 ≠ 4, r8c2 ≠ 5, r8c2 ≠ 6
whip[2]: r8c2{n3 n2} - r2c2{n2 .} ==> r3c2 ≠ 3
Entering_level_BC3_with_<Fact-14717>
Entering_level_W3_with_<Fact-14737>
whip[3]: r8n8{c3 c1} - r7c1{n7 n9} - r7c3{n9 .} ==> r8c3 ≠ 7
whip[3]: r2c3{n5 n4} - r8c3{n4 n3} - r3c3{n3 .} ==> r7c3 ≠ 5
whip[3]: r8n8{c1 c3} - r7c3{n7 n9} - r7c1{n9 .} ==> r8c1 ≠ 7
hidden-single-in-a-row ==> r8c9 = 7
str-asc[1]: r3c9<r2c9 ==> r3c9 ≠ 6
whip[3]: r5c4{n6 n7} - r4c4{n7 n8} - r1c4{n8 .} ==> r6c4 ≠ 6
Entering_level_BC4_with_<Fact-15237>
Entering_level_W4_with_<Fact-15247>
whip[4]: r8c6{n5 n6} - r7c6{n6 n7} - r5c6{n7 n8} - r4c6{n8 .} ==> r9c6 ≠ 5
whip[4]: r7c6{n7 n6} - r8c6{n6 n5} - r5c6{n5 n8} - r4c6{n8 .} ==> r9c6 ≠ 7
whip[4]: r7c6{n6 n7} - r4c6{n7 n8} - r5c6{n8 n5} - r8c6{n5 .} ==> r9c6 ≠ 6
whip[4]: r7c6{n7 n6} - r8c6{n6 n5} - r5c6{n5 n8} - r4c6{n8 .} ==> r6c6 ≠ 7
whip[4]: r7c6{n6 n7} - r4c6{n7 n8} - r5c6{n8 n5} - r8c6{n5 .} ==> r6c6 ≠ 6
whip[4]: r8c6{n5 n6} - r7c6{n6 n7} - r5c6{n7 n8} - r4c6{n8 .} ==> r6c6 ≠ 5
whip[4]: r4c4{n7 n8} - r4c6{n8 n6} - r4c8{n6 n5} - r4c7{n5 .} ==> r4c5 ≠ 7
whip[4]: r7c6{n7 n6} - r8c6{n6 n5} - r5c6{n5 n8} - r4c6{n8 .} ==> r3c6 ≠ 7
whip[4]: r7c6{n6 n7} - r4c6{n7 n8} - r5c6{n8 n5} - r8c6{n5 .} ==> r3c6 ≠ 6
whip[4]: r8c6{n5 n6} - r7c6{n6 n7} - r5c6{n7 n8} - r4c6{n8 .} ==> r3c6 ≠ 5
whip[4]: c4n9{r3 r9} - c4n8{r9 r1} - r1c5{n7 n9} - c7n9{r1 .} ==> r3c4 ≠ 7
whip[4]: c4n9{r3 r9} - c4n8{r9 r1} - c4n7{r1 r5} - r4c4{n5 .} ==> r3c4 ≠ 6
whip[4]: r2c4{n3 n4} - r2c3{n4 n5} - r1n5{c3 c7} - r2c7{n5 .} ==> r2c5 ≠ 3
whip[4]: r1c3{n6 n5} - r2c3{n5 n4} - r8c3{n4 n3} - r3c3{n3 .} ==> r7c3 ≠ 6
whip[3]: r7c3{n9 n7} - r8n8{c3 c1} - r7c1{n4 .} ==> r7c2 ≠ 9
Entering_level_BC5_with_<Fact-15792>
Entering_level_W5_with_<Fact-15800>
whip[5]: c9n4{r9 r3} - r3c3{n4 n3} - c6n3{r3 r6} - c6n2{r6 r1} - c6n1{r1 .} ==> r9c6 ≠ 4
whip[4]: c6n4{r6 r3} - c6n3{r3 r9} - c6n1{r9 r1} - c6n2{r1 .} ==> r6c6 ≠ 8
whip[4]: c6n4{r3 r6} - c6n3{r6 r9} - c6n1{r9 r1} - c6n2{r1 .} ==> r3c6 ≠ 8
biv-chain[2]: r3c6{n4 n3} - r3c3{n3 n4} ==> r3c1 ≠ 4, r3c2 ≠ 4, r3c5 ≠ 4, r3c9 ≠ 4
naked-single ==> r3c9 = 5
naked-single ==> r2c9 = 6
naked-single ==> r9c9 = 4
biv-chain[2]: r3c3{n3 n4} - r3c6{n4 n3} ==> r3c1 ≠ 3, r3c5 ≠ 3
whip[5]: r8n8{c3 c1} - r8n6{c1 c6} - r7c6{n6 n7} - r7c3{n7 n9} - r7c1{n9 .} ==> r8c3 ≠ 3
whip[5]: r8n8{c3 c1} - r8n6{c1 c6} - r7c6{n6 n7} - r7c3{n7 n9} - r7c1{n9 .} ==> r8c3 ≠ 4
whip[5]: r8n8{c3 c1} - r8n6{c1 c6} - r7c6{n6 n7} - r7c3{n7 n9} - r7c1{n9 .} ==> r8c3 ≠ 5
whip[5]: c7n3{r2 r7} - r7c5{n3 n4} - r8c5{n4 n5} - c6n5{r8 r5} - r5c7{n5 .} ==> r2c7 ≠ 4
whip[5]: c7n4{r5 r7} - c7n3{r7 r2} - r2c4{n3 n2} - r6c4{n2 n3} - r8c4{n3 .} ==> r5c4 ≠ 4
str-asc[2]: r5c4<r4c4<r3c4 ==> r4c4 ≠ 5
str-asc[1]: r5c4<r5c5 ==> r5c5 ≠ 5
str-asc[1]: r5c4<r5c3 ==> r5c3 ≠ 5
Entering_level_BC6_with_<Fact-16723>
Entering_level_W6_with_<Fact-16737>
Entering_level_BC7_with_<Fact-17058>
Entering_level_W7_with_<Fact-17060>
whip[7]: r6c2{n7 n2} - r6c5{n2 n1} - c3n1{r6 r9} - c3n2{r9 r4} - c3n3{r4 r3} - r3c6{n3 n4} - r6c6{n4 .} ==> r6c1 ≠ 3
str-asc[1]: r6c1<r5c1 ==> r5c1 ≠ 4
hidden-single-in-a-row ==> r5c7 = 4
whip[6]: r7c6{n7 n6} - r8c6{n6 n5} - r8c5{n5 n4} - r7n4{c5 c1} - r8n6{c1 c3} - r8n8{c3 .} ==> r7c2 ≠ 7
whip[7]: r1n5{c3 c7} - r2c7{n8 n3} - r7c7{n3 n6} - r4c7{n6 n7} - r4c6{n6 n8} - r4c4{n8 n6} - r4c8{n6 .} ==> r4c3 ≠ 5
Entering_level_BC8_with_<Fact-17545>
Entering_level_W8_with_<Fact-17547>
whip[8]: r8n8{c3 c1} - r7c1{n7 n9} - r7c3{n9 n7} - r7c6{n7 n6} - r4c6{n6 n7} - r4c4{n7 n6} - r4c8{n6 n5} - r4c7{n5 .} ==> r4c3 ≠ 8
Entering_level_BC9_with_<Fact-17892>
Entering_level_W9_with_<Fact-17894>
whip[9]: c7n3{r2 r7} - r7c5{n3 n4} - r8c5{n4 n5} - r8c6{n5 n6} - r7c6{n6 n7} - r4c6{n7 n8} - c8n8{r4 r9} - r9c7{n8 n9} - r1c7{n9 .} ==> r2c7 ≠ 8
Entering_level_BC10_with_<Fact-18460>
Entering_level_W10_with_<Fact-18462>
whip[10]: r1n5{c3 c7} - r2c7{n7 n3} - r7c7{n3 n6} - r4c7{n6 n7} - r4c6{n6 n8} - r4c4{n8 n6} - r5c4{n6 n5} - c6n5{r5 r8} - c5n5{r8 r4} - r4c8{n5 .} ==> r9c3 ≠ 5
Entering_level_BC11_with_<Fact-18742>
Entering_level_W11_with_<Fact-18744>
whip[11]: r7c6{n7 n6} - r8c6{n6 n5} - r8c5{n5 n4} - r7c5{n4 n3} - r7c7{n3 n5} - r4c7{n5 n6} - r4c4{n6 n8} - r4c8{n8 n5} - r4c5{n5 n2} - r6c5{n2 n1} - r2c5{n1 .} ==> r4c6 ≠ 7
whip[4]: r4c6{n6 n8} - r4c4{n8 n7} - r4c7{n7 n5} - r4c8{n5 .} ==> r4c1 ≠ 6
whip[4]: r4c6{n6 n8} - r4c4{n8 n7} - r4c7{n7 n5} - r4c8{n5 .} ==> r4c2 ≠ 6
whip[4]: r4c6{n6 n8} - r4c4{n8 n7} - r4c7{n7 n5} - r4c8{n5 .} ==> r4c3 ≠ 6
whip[4]: r4c6{n6 n8} - r4c4{n8 n7} - r4c7{n7 n5} - r4c8{n5 .} ==> r4c5 ≠ 6
whip[4]: r4c6{n8 n6} - r4c7{n6 n5} - r4c8{n5 n7} - r4c4{n7 .} ==> r4c1 ≠ 8
whip[4]: r4c6{n8 n6} - r4c7{n6 n5} - r4c8{n5 n7} - r4c4{n7 .} ==> r4c2 ≠ 8
whip[4]: r4c6{n8 n6} - r8c6{n6 n5} - r5c6{n5 n7} - r7c6{n7 .} ==> r9c6 ≠ 8
whip[4]: r4c4{n7 n8} - c6n8{r4 r5} - r5c3{n8 n9} - r5c5{n9 .} ==> r5c4 ≠ 7
whip[5]: r2c5{n2 n1} - r6c5{n1 n3} - r7c5{n3 n4} - r8c5{n4 n5} - r4c5{n5 .} ==> r9c5 ≠ 2
whip[5]: r2c5{n1 n2} - r6c5{n2 n3} - r7c5{n3 n4} - r8c5{n4 n5} - r4c5{n5 .} ==> r9c5 ≠ 1
whip[5]: r8c5{n5 n4} - r7c5{n4 n3} - r4c5{n3 n2} - r2c5{n2 n1} - r6c5{n1 .} ==> r9c5 ≠ 5
whip[3]: r8c6{n6 n5} - c5n5{r8 r4} - r4c7{n5 .} ==> r4c6 ≠ 6
naked-single ==> r4c6 = 8
whip[3]: r4c4{n7 n6} - r4c7{n6 n5} - r4c8{n5 .} ==> r4c3 ≠ 7
whip[3]: r4c4{n7 n6} - r4c7{n6 n5} - r4c8{n5 .} ==> r4c2 ≠ 7
whip[3]: r4c4{n7 n6} - r4c7{n6 n5} - r4c8{n5 .} ==> r4c1 ≠ 7
whip[4]: c8n8{r2 r9} - r9c7{n6 n9} - c4n9{r9 r3} - r3c1{n9 .} ==> r2c1 ≠ 8
whip[4]: r2n8{c8 c2} - r3c2{n8 n9} - c4n9{r3 r9} - r9c7{n9 .} ==> r9c8 ≠ 8
hidden-single-in-a-column ==> r2c8 = 8
whip[5]: r5c4{n6 n5} - c6n5{r5 r8} - c5n5{r8 r4} - r4c7{n5 n7} - r4c8{n7 .} ==> r4c4 ≠ 6
naked-single ==> r4c4 = 7
biv-chain[2]: r4c7{n5 n6} - r4c8{n6 n5} ==> r4c1 ≠ 5, r4c2 ≠ 5, r4c5 ≠ 5
hidden-single-in-a-column ==> r8c5 = 5
naked-single ==> r8c6 = 6
naked-single ==> r7c6 = 7
naked-single ==> r5c6 = 5
naked-single ==> r5c4 = 6
naked-single ==> r1c4 = 8
naked-single ==> r1c5 = 9
naked-single ==> r3c4 = 9
naked-single ==> r7c3 = 9
naked-single ==> r8c3 = 8
naked-single ==> r5c3 = 7
naked-single ==> r5c5 = 8
naked-single ==> r5c1 = 9
hidden-single-in-a-row ==> r4c2 = 9
hidden-single-in-a-row ==> r9c7 = 9
hidden-single-in-a-column ==> r6c7 = 8
str-asc[1]: r6c2<r6c1 ==> r6c2 ≠ 7
str-asc[1]: r9c2<r9c1 ==> r9c2 ≠ 8
hidden-single-in-a-column ==> r3c2 = 8
hidden-single-in-a-column ==> r9c1 = 8
str-asc[1]: r2c1<r3c1 ==> r2c1 ≠ 7
str-asc[1]: r9c3<r9c4 ==> r9c3 ≠ 6
str-asc[1]: r2c7<r1c7 ==> r2c7 ≠ 7
hidden-single-in-a-column ==> r1c7 = 7
naked-single ==> r1c2 = 6
naked-single ==> r1c3 = 5
naked-single ==> r2c3 = 4
naked-single ==> r3c3 = 3
naked-single ==> r3c6 = 4
naked-single ==> r4c3 = 2
naked-single ==> r9c3 = 1
naked-single ==> r6c3 = 6
hidden-single-in-a-row ==> r2c2 = 7
biv-chain[2]: c5n6{r9 r3} - c5n7{r3 r9} ==> r9c5 ≠ 3
biv-chain[2]: r8c1{n4 n3} - r4c1{n3 n4} ==> r6c1 ≠ 4, r7c1 ≠ 4
biv-chain[2]: r6c8{n5 n7} - r6c1{n7 n5} ==> r6c2 ≠ 5, r6c4 ≠ 5
hidden-single-in-a-column ==> r9c4 = 5
hidden-single-in-a-column ==> r7c2 = 5
naked-single ==> r7c1 = 6
naked-single ==> r3c1 = 7
naked-single ==> r3c5 = 6
naked-single ==> r9c5 = 7
naked-single ==> r9c8 = 6
naked-single ==> r4c8 = 5
naked-single ==> r4c7 = 6
naked-single ==> r6c8 = 7
naked-single ==> r6c1 = 5
naked-single ==> r7c7 = 3
naked-single ==> r2c7 = 5
naked-single ==> r7c5 = 4
naked-single ==> r4c5 = 3
naked-single ==> r4c1 = 4
naked-single ==> r8c1 = 3
naked-single ==> r8c2 = 2
naked-single ==> r8c4 = 4
naked-single ==> r9c2 = 3
naked-single ==> r6c2 = 4
naked-single ==> r9c6 = 2
naked-single ==> r1c6 = 1
naked-single ==> r1c1 = 2
naked-single ==> r2c1 = 1
naked-single ==> r2c5 = 2
naked-single ==> r2c4 = 3
naked-single ==> r6c4 = 2
naked-single ==> r6c5 = 1
naked-single ==> r6c6 = 3
PUZZLE SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[11]
265891743
174329586
783964215
492738651
917685432
546213879
659147328
328456197
831572964
Puzzle :
init-time = 1.9s, solve time = 7.69s, total-time = 9.59s
nb-facts=<Fact-19905>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
