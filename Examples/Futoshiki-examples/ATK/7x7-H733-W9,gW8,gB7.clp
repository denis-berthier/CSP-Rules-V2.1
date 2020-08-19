

Even small puzzles can be hard


<--<<-
->->>-
--<>>-
----->
>>--<-
<-<---
-><---

<--<<-->->>---<>>------>>>--<-<-<----><---


----->
-<----
------
>-----
------
-----<
>->---

----->-<---------->----------------<>->---




(solve 7
"................................................."
"<--<<-->->>---<>>------>>>--<-<-<----><---"
"----->-<---------->----------------<>->---"
)


With whips:

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.................................................
<--<<-->->>---<>>------>>>--<-<-<----><---
----->-<---------->----------------<>->---
0 givens, 343 candidates
entering BRT
asc[1]: r4c7<r3c7 ==> r4c7 ≠ 7, r3c7 ≠ 1
asc[1]: r2c7<r1c7 ==> r2c7 ≠ 7, r1c7 ≠ 1
asc[1]: r6c6<r7c6 ==> r7c6 ≠ 1, r6c6 ≠ 7
asc[2]: r7c1<r6c1<r6c2 ==> r7c1 ≠ 7, r7c1 ≠ 6, r6c2 ≠ 2, r6c2 ≠ 1, r6c1 ≠ 7, r6c1 ≠ 1
asc[1]: r7c3<r7c4 ==> r7c4 ≠ 1, r7c3 ≠ 7
asc[1]: r7c3<r7c2 ==> r7c2 ≠ 1
asc[1]: r6c3<r6c4 ==> r6c4 ≠ 1, r6c3 ≠ 7
asc[1]: r5c5<r5c6 ==> r5c6 ≠ 1, r5c5 ≠ 7
asc[2]: r5c3<r5c2<r5c1 ==> r5c3 ≠ 7, r5c3 ≠ 6, r5c2 ≠ 7, r5c2 ≠ 1, r5c1 ≠ 2, r5c1 ≠ 1
asc[1]: r4c7<r4c6 ==> r4c6 ≠ 1
asc[2]: r3c6<r3c5<r3c4 ==> r3c6 ≠ 7, r3c6 ≠ 6, r3c5 ≠ 7, r3c5 ≠ 1, r3c4 ≠ 2, r3c4 ≠ 1
asc[1]: r3c3<r3c4 ==> r3c3 ≠ 7
asc[5]: r2c6<r2c5<r2c4<r1c4<r1c5<r1c6 ==> r2c6 ≠ 7, r2c6 ≠ 6, r2c6 ≠ 5, r2c6 ≠ 4, r2c6 ≠ 3, r2c5 ≠ 7, r2c5 ≠ 6, r2c5 ≠ 5, r2c5 ≠ 4, r2c5 ≠ 1, r2c4 ≠ 7, r2c4 ≠ 6, r2c4 ≠ 5, r2c4 ≠ 2, r2c4 ≠ 1, r1c6 ≠ 5, r1c6 ≠ 4, r1c6 ≠ 3, r1c6 ≠ 2, r1c6 ≠ 1, r1c5 ≠ 7, r1c5 ≠ 4, r1c5 ≠ 3, r1c5 ≠ 2, r1c5 ≠ 1, r1c4 ≠ 7, r1c4 ≠ 6, r1c4 ≠ 3, r1c4 ≠ 2, r1c4 ≠ 1
asc[2]: r2c3<r2c2<r3c2 ==> r3c2 ≠ 2, r3c2 ≠ 1, r2c3 ≠ 7, r2c3 ≠ 6, r2c2 ≠ 7, r2c2 ≠ 1
asc[1]: r1c1<r1c2 ==> r1c2 ≠ 1, r1c1 ≠ 7
hidden-single-in-a-column ==> r4c2 = 1
hidden-single-in-a-column ==> r5c4 = 1
hidden-single-in-a-row ==> r2c1 = 7
str-asc[1]: r4c7<r4c6 ==> r4c6 ≠ 2
str-asc[1]: r5c2<r5c1 ==> r5c2 ≠ 6
str-asc[1]: r5c3<r5c2 ==> r5c3 ≠ 5, r5c2 ≠ 2
str-asc[1]: r5c2<r5c1 ==> r5c1 ≠ 3
str-asc[1]: r5c5<r5c6 ==> r5c6 ≠ 2
str-asc[1]: r4c7<r3c7 ==> r3c7 ≠ 2
valley[2]: r7c2>r7c3<r7c4 ==> r7c3 ≠ 6
hill[3]: r3c3<r3c4>r3c5>r3c6 ==> r3c4 ≠ 3
Starting_init_links_with_<Fact-1763>
234 candidates, 1543 csp-links and 2134 links. Density = 7.83%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8154>
Entering_relation_bivalue_with_<Fact-8155>
Entering_level_S2_with_<Fact-8178>
Entering_level_BC2_with_<Fact-8181>
Entering_level_W2_with_<Fact-8199>
whip[2]: r1c6{n6 n7} - r1c2{n7 .} ==> r1c1 ≠ 6
whip[2]: r1c6{n6 n7} - r7c6{n7 .} ==> r6c6 ≠ 6
whip[2]: r6c6{n5 n1} - r2c6{n1 .} ==> r7c6 ≠ 2
whip[2]: r2n6{c2 c7} - r2n5{c7 .} ==> r2c2 ≠ 2, r2c2 ≠ 3, r2c2 ≠ 4
str-asc[1]: r2c2<r3c2 ==> r3c2 ≠ 5, r3c2 ≠ 4, r3c2 ≠ 3
whip[2]: r3c2{n6 n7} - r3c4{n7 .} ==> r3c5 ≠ 6, r3c3 ≠ 6
str-asc[1]: r3c6<r3c5 ==> r3c6 ≠ 5
Entering_level_S3_with_<Fact-8505>
Entering_level_BC3_with_<Fact-8508>
Entering_level_W3_with_<Fact-8522>
whip[3]: r4c6{n6 n7} - r5n7{c6 c7} - r3c7{n7 .} ==> r4c7 ≠ 6
whip[3]: r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 .} ==> r1c2 ≠ 6
whip[3]: r1c2{n5 n7} - r1c6{n7 n6} - r1c5{n6 .} ==> r1c1 ≠ 5
whip[3]: r1n1{c1 c3} - r1n3{c3 c7} - r1n2{c7 .} ==> r1c1 ≠ 4
whip[3]: r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n2 .} ==> r1c2 ≠ 7
whip[3]: r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n2 .} ==> r3c7 ≠ 7
whip[3]: c2n2{r1 r7} - r7c3{n5 n1} - r1n1{c3 .} ==> r1c1 ≠ 2
whip[3]: r1c1{n1 n3} - c2n2{r1 r7} - r7c3{n2 .} ==> r7c1 ≠ 1
str-asc[1]: r7c1<r6c1 ==> r6c1 ≠ 2
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 3
whip[3]: r1c1{n1 n3} - c2n2{r1 r7} - r7c3{n2 .} ==> r1c3 ≠ 1
hidden-single-in-a-row ==> r1c1 = 1
Entering_level_S4_with_<Fact-8890>
Entering_level_BC4_with_<Fact-8903>
Entering_level_W4_with_<Fact-8917>
Entering_level_BC5_with_<Fact-9153>
Entering_level_W5_with_<Fact-9165>
whip[5]: c5n1{r7 r6} - c5n7{r6 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 .} ==> r7c5 ≠ 5
whip[5]: c5n1{r6 r7} - c5n7{r7 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 .} ==> r6c5 ≠ 5
whip[5]: r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 n6} - c3n6{r1 r4} - c3n7{r4 .} ==> r6c2 ≠ 6
whip[5]: r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - c3n7{r1 r4} - c3n6{r4 .} ==> r6c4 ≠ 4
whip[5]: c2n2{r1 r7} - c2n3{r7 r5} - c2n4{r5 r6} - r6c1{n6 n3} - r7c1{n3 .} ==> r1c2 ≠ 5
Entering_level_BC6_with_<Fact-9443>
Entering_level_W6_with_<Fact-9453>
whip[6]: c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 n5} - r1c4{n5 n4} - r2n4{c4 c7} - r1c7{n2 .} ==> r4c3 ≠ 4
whip[6]: r2c4{n3 n4} - r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - c3n7{r1 r4} - c3n6{r4 .} ==> r6c4 ≠ 3
Entering_level_BC7_with_<Fact-9735>
Entering_level_W7_with_<Fact-9743>
whip[7]: r6c2{n5 n7} - r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 n6} - c3n6{r1 r4} - c3n7{r4 .} ==> r6c1 ≠ 6
str-asc[1]: r7c1<r6c1 ==> r7c1 ≠ 5
Entering_level_BC8_with_<Fact-10074>
Entering_level_W8_with_<Fact-10080>
whip[8]: c5n1{r7 r6} - c5n7{r6 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 n5} - r1c4{n5 n4} - r2c4{n4 n3} - r2c5{n3 .} ==> r7c5 ≠ 2
whip[8]: c5n1{r6 r7} - c5n7{r7 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 n5} - r1c4{n5 n4} - r2c4{n4 n3} - r2c5{n3 .} ==> r6c5 ≠ 2
Entering_level_BC9_with_<Fact-10452>
Entering_level_W9_with_<Fact-10454>
whip[9]: c2n2{r1 r7} - c2n3{r7 r5} - r5c3{n4 n2} - r1n2{c3 c7} - r2c7{n6 n1} - r2c6{n1 n2} - r6n2{c6 c4} - r6c3{n6 n1} - r7c3{n1 .} ==> r1c2 ≠ 4
whip[8]: r2c7{n6 n1} - r2c6{n1 n2} - r2c5{n2 n3} - r2c4{n3 n4} - r1n4{c4 c3} - c3n7{r1 r4} - c3n6{r4 r6} - r6n2{c3 .} ==> r1c7 ≠ 2
whip[4]: r1n2{c3 c2} - r1n3{c2 c7} - r2n5{c7 c2} - r2n6{c2 .} ==> r1c3 ≠ 5
whip[5]: c3n7{r4 r1} - r1n2{c3 c2} - r1n3{c2 c7} - r2n5{c7 c2} - r2n6{c2 .} ==> r4c3 ≠ 5
whip[6]: r1n2{c3 c2} - r1n3{c2 c7} - r1n4{c7 c4} - r2n4{c4 c3} - r2n5{c3 c2} - r2n6{c2 .} ==> r1c3 ≠ 6
whip[6]: r2n6{c2 c7} - r1c7{n6 n7} - c3n7{r1 r4} - c3n6{r4 r6} - r6c4{n6 n7} - r3n7{c4 .} ==> r3c2 ≠ 6
naked-single ==> r3c2 = 7
str-asc[1]: r6c1<r6c2 ==> r6c1 ≠ 5
str-asc[1]: r7c1<r6c1 ==> r7c1 ≠ 4
whip[6]: c3n6{r6 r4} - c3n7{r4 r1} - r1n2{c3 c2} - r1n3{c2 c7} - r1n4{c7 c4} - r2n4{c4 .} ==> r6c3 ≠ 4
whip[6]: c3n6{r6 r4} - c3n7{r4 r1} - r1n2{c3 c2} - r1n3{c2 c7} - r2n5{c7 c2} - r2n6{c2 .} ==> r6c3 ≠ 5
whip[6]: r2c6{n2 n1} - r3n1{c6 c3} - c3n5{r3 r7} - c2n2{r7 r1} - c2n3{r1 r5} - r5c3{n3 .} ==> r2c3 ≠ 2
whip[6]: r1n2{c3 c2} - r1n3{c2 c7} - r1n4{c7 c4} - r2n4{c4 c3} - r2n5{c3 c2} - r2n6{c2 .} ==> r1c3 ≠ 7
hidden-single-in-a-column ==> r4c3 = 7
hidden-single-in-a-column ==> r6c3 = 6
naked-single ==> r6c4 = 7
str-valley[2]: r7c2>r7c3<r7c4 ==> r7c3 ≠ 5
hidden-single-in-a-column ==> r7c5 = 7
hidden-single-in-a-column ==> r6c5 = 1
biv-chain[3]: c7n1{r7 r2} - r2c6{n1 n2} - r6n2{c6 c7} ==> r7c7 ≠ 2
biv-chain[4]: c3n5{r2 r3} - r3n1{c3 c6} - r2c6{n1 n2} - r2c5{n2 n3} ==> r2c3 ≠ 3
biv-chain[5]: c3n5{r2 r3} - r3n1{c3 c6} - r2c6{n1 n2} - r2c5{n2 n3} - r2c4{n3 n4} ==> r2c3 ≠ 4
whip[4]: c4n2{r4 r7} - r7c3{n2 n1} - c7n1{r7 r2} - r2n4{c7 .} ==> r4c4 ≠ 4
whip[4]: r2n4{c7 c4} - r1n4{c4 c3} - r1n2{c3 c2} - r1n3{c2 .} ==> r2c7 ≠ 5
whip[4]: r2n4{c7 c4} - r1n4{c4 c3} - r1n2{c3 c2} - r1n3{c2 .} ==> r2c7 ≠ 6
hidden-single-in-a-row ==> r2c2 = 6
hidden-single-in-a-row ==> r2c3 = 5
whip[4]: r2n4{c4 c7} - r1n4{c7 c3} - r1n2{c3 c2} - r1n3{c2 .} ==> r3c4 ≠ 4
whip[4]: r2n4{c4 c7} - r1n4{c7 c3} - r1n2{c3 c2} - r1n3{c2 .} ==> r7c4 ≠ 4
biv-chain[5]: r2n4{c7 c4} - r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - c7n7{r1 r5} ==> r5c7 ≠ 4
whip[5]: c4n2{r4 r7} - c4n3{r7 r2} - r2n4{c4 c7} - c7n1{r2 r7} - r7c3{n1 .} ==> r4c4 ≠ 5
whip[5]: c4n2{r4 r7} - c4n3{r7 r2} - r2n4{c4 c7} - c7n1{r2 r7} - r7c3{n1 .} ==> r4c4 ≠ 6
whip[2]: r4c4{n3 n2} - r4c7{n2 .} ==> r4c6 ≠ 3
whip[5]: r4c7{n5 n2} - r4c4{n2 n3} - r2n3{c4 c5} - r2n2{c5 c6} - r6n2{c6 .} ==> r3c7 ≠ 3
whip[3]: r3n1{c6 c3} - r3n2{c3 c1} - r3n3{c1 .} ==> r3c6 ≠ 4
whip[3]: r6c6{n5 n2} - r2c6{n2 n1} - r3c6{n1 .} ==> r7c6 ≠ 3
whip[3]: r7c2{n4 n5} - r7c4{n5 n6} - r7c6{n6 .} ==> r7c3 ≠ 4
whip[4]: r3c4{n6 n5} - r1c4{n5 n4} - r2n4{c4 c7} - r3c7{n4 .} ==> r3c1 ≠ 6
whip[4]: c7n7{r5 r1} - r1c6{n7 n6} - c5n6{r1 r4} - c1n6{r4 .} ==> r5c7 ≠ 6
whip[5]: r4c6{n5 n6} - c1n6{r4 r5} - c1n5{r5 r3} - r3c4{n5 n6} - r3c7{n6 .} ==> r4c7 ≠ 5
whip[5]: r7c1{n3 n2} - c4n2{r7 r4} - r4c7{n2 n4} - r2n4{c7 c4} - c4n3{r2 .} ==> r7c7 ≠ 3
whip[5]: r2n4{c7 c4} - r1c4{n4 n5} - r3c4{n5 n6} - c7n6{r3 r1} - r1c5{n6 .} ==> r7c7 ≠ 4
biv-chain[2]: r7n4{c6 c2} - r6c2{n4 n5} ==> r6c6 ≠ 5
whip[5]: r7n4{c6 c2} - r6c2{n4 n5} - r5c2{n5 n3} - r5c3{n3 n2} - r5c5{n2 .} ==> r5c6 ≠ 4
whip[5]: c4n2{r7 r4} - c4n3{r4 r2} - r2n4{c4 c7} - r1n3{c7 c2} - c2n2{r1 .} ==> r7c3 ≠ 3
whip[4]: r3n1{c6 c3} - r7c3{n1 n2} - c1n2{r7 r4} - c4n2{r4 .} ==> r3c6 ≠ 2
biv-chain[3]: r3c6{n3 n1} - r2c6{n1 n2} - r2c5{n2 n3} ==> r3c5 ≠ 3
biv-chain[5]: r6n2{c7 c6} - r2c6{n2 n1} - r3n1{c6 c3} - r7c3{n1 n2} - c4n2{r7 r4} ==> r4c7 ≠ 2
whip[5]: c1n6{r4 r5} - c1n5{r5 r3} - r3c4{n5 n6} - r3c7{n6 n4} - r4c7{n4 .} ==> r4c1 ≠ 3
whip[5]: r4c7{n3 n4} - r2n4{c7 c4} - r1n4{c4 c3} - r1n2{c3 c2} - r1n3{c2 .} ==> r6c7 ≠ 3
biv-chain[4]: r7c3{n1 n2} - r7c1{n2 n3} - r6n3{c1 c6} - r3c6{n3 n1} ==> r3c3 ≠ 1
hidden-single-in-a-column ==> r7c3 = 1
hidden-single-in-a-column ==> r2c7 = 1
naked-single ==> r2c6 = 2
naked-single ==> r2c5 = 3
naked-single ==> r2c4 = 4
naked-single ==> r1c4 = 5
naked-single ==> r1c5 = 6
naked-single ==> r1c6 = 7
naked-single ==> r3c4 = 6
hidden-single-in-a-column ==> r7c7 = 6
hidden-single-in-a-column ==> r5c7 = 7
hidden-single-in-a-column ==> r6c7 = 2
hidden-single-in-a-column ==> r3c7 = 5
hidden-single-in-a-row ==> r6c2 = 5
hidden-single-in-a-row ==> r7c6 = 5
hidden-single-in-a-row ==> r7c2 = 4
naked-single ==> r5c2 = 3
naked-single ==> r1c2 = 2
naked-single ==> r5c3 = 2
naked-single ==> r5c6 = 6
naked-single ==> r4c6 = 4
naked-single ==> r4c7 = 3
naked-single ==> r1c7 = 4
naked-single ==> r1c3 = 3
naked-single ==> r3c3 = 4
naked-single ==> r3c5 = 2
naked-single ==> r3c1 = 3
naked-single ==> r6c1 = 4
naked-single ==> r5c1 = 5
naked-single ==> r5c5 = 4
naked-single ==> r7c1 = 2
naked-single ==> r4c1 = 6
naked-single ==> r7c4 = 3
naked-single ==> r3c6 = 1
naked-single ==> r4c5 = 5
naked-single ==> r4c4 = 2
naked-single ==> r6c6 = 3
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[9]
1235674
7654321
3746215
6172543
5321467
4567132
2413756
Puzzle :
init-time = 0.26s, solve time = 5.94s, total-time = 6.2s
nb-facts=<Fact-14006>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



with g-whips:

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = gW+S
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.................................................
<--<<-->->>---<>>------>>>--<-<-<----><---
----->-<---------->----------------<>->---
0 givens, 343 candidates
entering BRT
asc[1]: r4c7<r3c7 ==> r4c7 ≠ 7, r3c7 ≠ 1
asc[1]: r2c7<r1c7 ==> r2c7 ≠ 7, r1c7 ≠ 1
asc[1]: r6c6<r7c6 ==> r7c6 ≠ 1, r6c6 ≠ 7
asc[2]: r7c1<r6c1<r6c2 ==> r7c1 ≠ 7, r7c1 ≠ 6, r6c2 ≠ 2, r6c2 ≠ 1, r6c1 ≠ 7, r6c1 ≠ 1
asc[1]: r7c3<r7c4 ==> r7c4 ≠ 1, r7c3 ≠ 7
asc[1]: r7c3<r7c2 ==> r7c2 ≠ 1
asc[1]: r6c3<r6c4 ==> r6c4 ≠ 1, r6c3 ≠ 7
asc[1]: r5c5<r5c6 ==> r5c6 ≠ 1, r5c5 ≠ 7
asc[2]: r5c3<r5c2<r5c1 ==> r5c3 ≠ 7, r5c3 ≠ 6, r5c2 ≠ 7, r5c2 ≠ 1, r5c1 ≠ 2, r5c1 ≠ 1
asc[1]: r4c7<r4c6 ==> r4c6 ≠ 1
asc[2]: r3c6<r3c5<r3c4 ==> r3c6 ≠ 7, r3c6 ≠ 6, r3c5 ≠ 7, r3c5 ≠ 1, r3c4 ≠ 2, r3c4 ≠ 1
asc[1]: r3c3<r3c4 ==> r3c3 ≠ 7
asc[5]: r2c6<r2c5<r2c4<r1c4<r1c5<r1c6 ==> r2c6 ≠ 7, r2c6 ≠ 6, r2c6 ≠ 5, r2c6 ≠ 4, r2c6 ≠ 3, r2c5 ≠ 7, r2c5 ≠ 6, r2c5 ≠ 5, r2c5 ≠ 4, r2c5 ≠ 1, r2c4 ≠ 7, r2c4 ≠ 6, r2c4 ≠ 5, r2c4 ≠ 2, r2c4 ≠ 1, r1c6 ≠ 5, r1c6 ≠ 4, r1c6 ≠ 3, r1c6 ≠ 2, r1c6 ≠ 1, r1c5 ≠ 7, r1c5 ≠ 4, r1c5 ≠ 3, r1c5 ≠ 2, r1c5 ≠ 1, r1c4 ≠ 7, r1c4 ≠ 6, r1c4 ≠ 3, r1c4 ≠ 2, r1c4 ≠ 1
asc[2]: r2c3<r2c2<r3c2 ==> r3c2 ≠ 2, r3c2 ≠ 1, r2c3 ≠ 7, r2c3 ≠ 6, r2c2 ≠ 7, r2c2 ≠ 1
asc[1]: r1c1<r1c2 ==> r1c2 ≠ 1, r1c1 ≠ 7
hidden-single-in-a-column ==> r4c2 = 1
hidden-single-in-a-column ==> r5c4 = 1
hidden-single-in-a-row ==> r2c1 = 7
str-asc[1]: r4c7<r4c6 ==> r4c6 ≠ 2
str-asc[1]: r5c2<r5c1 ==> r5c2 ≠ 6
str-asc[1]: r5c3<r5c2 ==> r5c3 ≠ 5, r5c2 ≠ 2
str-asc[1]: r5c2<r5c1 ==> r5c1 ≠ 3
str-asc[1]: r5c5<r5c6 ==> r5c6 ≠ 2
str-asc[1]: r4c7<r3c7 ==> r3c7 ≠ 2
valley[2]: r7c2>r7c3<r7c4 ==> r7c3 ≠ 6
hill[3]: r3c3<r3c4>r3c5>r3c6 ==> r3c4 ≠ 3
Starting_init_links_with_<Fact-1763>
234 candidates, 1543 csp-links and 2134 links. Density = 7.83%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8154>
Entering_relation_bivalue_with_<Fact-8155>
Entering_level_S2_with_<Fact-8178>
Entering_level_BC2_with_<Fact-8181>
Entering_level_W2_with_<Fact-8199>
whip[2]: r1c6{n6 n7} - r1c2{n7 .} ==> r1c1 ≠ 6
whip[2]: r1c6{n6 n7} - r7c6{n7 .} ==> r6c6 ≠ 6
whip[2]: r6c6{n5 n1} - r2c6{n1 .} ==> r7c6 ≠ 2
whip[2]: r2n6{c2 c7} - r2n5{c7 .} ==> r2c2 ≠ 2, r2c2 ≠ 3, r2c2 ≠ 4
str-asc[1]: r2c2<r3c2 ==> r3c2 ≠ 5, r3c2 ≠ 4, r3c2 ≠ 3
whip[2]: r3c2{n6 n7} - r3c4{n7 .} ==> r3c5 ≠ 6, r3c3 ≠ 6
str-asc[1]: r3c6<r3c5 ==> r3c6 ≠ 5
initialising g-labels, label-glabel-glinks and label-in-glabel, starting with <Fact-8505>
Entering_level_gW2_with_<Fact-10360>
Entering_level_S3_with_<Fact-10368>
Entering_level_BC3_with_<Fact-10371>
Entering_level_W3_with_<Fact-10385>
whip[3]: r4c6{n6 n7} - r5n7{c6 c7} - r3c7{n7 .} ==> r4c7 ≠ 6
whip[3]: r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 .} ==> r1c2 ≠ 6
whip[3]: r1c2{n5 n7} - r1c6{n7 n6} - r1c5{n6 .} ==> r1c1 ≠ 5
whip[3]: r1n1{c1 c3} - r1n3{c3 c7} - r1n2{c7 .} ==> r1c1 ≠ 4
whip[3]: r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n2 .} ==> r1c2 ≠ 7
whip[3]: r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n2 .} ==> r3c7 ≠ 7
whip[3]: c2n2{r1 r7} - r7c3{n5 n1} - r1n1{c3 .} ==> r1c1 ≠ 2
whip[3]: r1c1{n1 n3} - c2n2{r1 r7} - r7c3{n2 .} ==> r7c1 ≠ 1
str-asc[1]: r7c1<r6c1 ==> r6c1 ≠ 2
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 3
whip[3]: r1c1{n1 n3} - c2n2{r1 r7} - r7c3{n2 .} ==> r1c3 ≠ 1
hidden-single-in-a-row ==> r1c1 = 1
Entering_level_gW3_with_<Fact-10753>
Entering_level_S4_with_<Fact-10765>
Entering_level_BC4_with_<Fact-10778>
Entering_level_W4_with_<Fact-10792>
Entering_level_gW4_with_<Fact-11028>
Entering_level_BC5_with_<Fact-11041>
Entering_level_W5_with_<Fact-11053>
whip[5]: c5n1{r7 r6} - c5n7{r6 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 .} ==> r7c5 ≠ 5
whip[5]: c5n1{r6 r7} - c5n7{r7 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 .} ==> r6c5 ≠ 5
whip[5]: r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 n6} - c3n6{r1 r4} - c3n7{r4 .} ==> r6c2 ≠ 6
whip[5]: r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - c3n7{r1 r4} - c3n6{r4 .} ==> r6c4 ≠ 4
whip[5]: c2n2{r1 r7} - c2n3{r7 r5} - c2n4{r5 r6} - r6c1{n6 n3} - r7c1{n3 .} ==> r1c2 ≠ 5
Entering_level_gW5_with_<Fact-11331>
g-whip[5]: r1c5{n5 n6} - r1c6{n6 n7} - r1c7{n7 n5-} - r2n5{c7 c2} - r2n6{c2 .} ==> r1c3 ≠ 5
Entering_level_BC6_with_<Fact-11365>
Entering_level_W6_with_<Fact-11375>
whip[6]: c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 n5} - r1c4{n5 n4} - r2n4{c4 c7} - r1c7{n2 .} ==> r4c3 ≠ 4
whip[6]: r2c4{n3 n4} - r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - c3n7{r1 r4} - c3n6{r4 .} ==> r6c4 ≠ 3
Entering_level_gW6_with_<Fact-11652>
Entering_level_BC7_with_<Fact-11695>
Entering_level_W7_with_<Fact-11703>
whip[7]: r6c2{n5 n7} - r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 n6} - c3n6{r1 r4} - c3n7{r4 .} ==> r6c1 ≠ 6
str-asc[1]: r7c1<r6c1 ==> r7c1 ≠ 5
Entering_level_gW7_with_<Fact-12032>
g-whip[7]: r2c5{n3 n2} - r2c6{n2 n1} - r2c7{n1 n3+} - r1n3{c7 c2} - c2n2{r1 r7} - r7c3{n5 n1} - r3n1{c3 .} ==> r2c3 ≠ 3
Entering_level_BC8_with_<Fact-12177>
Entering_level_W8_with_<Fact-12183>
whip[8]: c5n1{r7 r6} - c5n7{r6 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 n5} - r1c4{n5 n4} - r2c4{n4 n3} - r2c5{n3 .} ==> r7c5 ≠ 2
whip[8]: c5n1{r6 r7} - c5n7{r7 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 n5} - r1c4{n5 n4} - r2c4{n4 n3} - r2c5{n3 .} ==> r6c5 ≠ 2
Entering_level_gW8_with_<Fact-12551>
g-whip[8]: r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - r1c7{n7 n5-} - r2n6{c7 c2} - r2n5{c2 c3} - r2n4{c3 c7} - r1c7{n2 .} ==> r7c4 ≠ 4
g-whip[8]: r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - r1c7{n7 n5-} - r2n6{c7 c2} - r2n5{c2 c3} - r2n4{c3 c7} - r1c7{n2 .} ==> r4c4 ≠ 4
g-whip[8]: r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - r1c7{n7 n5-} - r2n6{c7 c2} - r2n5{c2 c3} - r2n4{c3 c7} - r1c7{n2 .} ==> r3c4 ≠ 4
g-whip[8]: r2c5{n2 n3} - r2c4{n3 n4} - r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - r1c7{n7 n5-} - r2n5{c7 c2} - r2n6{c2 .} ==> r2c3 ≠ 2
g-whip[8]: r1c5{n6 n5} - r1c4{n5 n4} - r2c4{n4 n3} - r2c5{n3 n2} - r2c6{n2 n1} - r2c7{n1 n3+} - r1n2{c7 c2} - r1n3{c2 .} ==> r1c3 ≠ 6
whip[6]: r2n6{c2 c7} - r1c7{n6 n7} - c3n7{r1 r4} - c3n6{r4 r6} - r6c4{n6 n7} - r3n7{c4 .} ==> r3c2 ≠ 6
naked-single ==> r3c2 = 7
str-asc[1]: r6c1<r6c2 ==> r6c1 ≠ 5
str-asc[1]: r7c1<r6c1 ==> r7c1 ≠ 4
whip[7]: c3n6{r4 r6} - c4n2{r6 r7} - c4n3{r7 r2} - r2c5{n3 n2} - r2c6{n2 n1} - r3n1{c6 c3} - r7c3{n1 .} ==> r4c4 ≠ 6
whip[7]: c3n6{r6 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 n5} - r1c4{n5 n4} - r2n4{c4 c7} - r1c7{n2 .} ==> r6c3 ≠ 4
whip[7]: r7c2{n5 n6} - r2n6{c2 c7} - r1c7{n2 n7} - c3n7{r1 r4} - c3n6{r4 r6} - r6c4{n6 n7} - r7c4{n7 .} ==> r7c3 ≠ 5
whip[7]: r7c1{n2 n3} - r6c1{n3 n4} - r6c2{n4 n5} - r2c2{n5 n6} - r7c2{n6 n4} - r5c2{n4 n3} - r5c3{n3 .} ==> r7c3 ≠ 2
whip[8]: r3c7{n5 n6} - r3c4{n6 n5} - c1n5{r3 r5} - c5n5{r5 r1} - r1n6{c5 c6} - r5n6{c6 c5} - r5c6{n3 n7} - r4c6{n7 .} ==> r4c7 ≠ 5
whip[8]: r7c1{n2 n3} - r7c3{n3 n1} - r3n1{c3 c6} - r2c6{n1 n2} - r2c5{n2 n3} - c4n3{r2 r4} - c4n2{r4 r6} - r6c3{n2 .} ==> r7c2 ≠ 2
hidden-single-in-a-column ==> r1c2 = 2
whip[4]: c3n7{r4 r1} - r1n3{c3 c7} - r2n5{c7 c2} - r2n6{c2 .} ==> r4c3 ≠ 5
whip[5]: c3n6{r6 r4} - c3n7{r4 r1} - r1n3{c3 c7} - r2n5{c7 c2} - r2n6{c2 .} ==> r6c3 ≠ 5
biv-chain[5]: c3n5{r2 r3} - r3n1{c3 c6} - r2c6{n1 n2} - r2c5{n2 n3} - r2c4{n3 n4} ==> r2c3 ≠ 4
whip[3]: r1n3{c3 c7} - r1n4{c7 c4} - r2n4{c4 .} ==> r1c3 ≠ 7
hidden-single-in-a-column ==> r4c3 = 7
hidden-single-in-a-column ==> r6c3 = 6
naked-single ==> r6c4 = 7
hidden-single-in-a-column ==> r7c5 = 7
hidden-single-in-a-column ==> r6c5 = 1
biv-chain[3]: c7n1{r7 r2} - r2c6{n1 n2} - r6n2{c6 c7} ==> r7c7 ≠ 2
whip[3]: r1n3{c7 c3} - r1n4{c3 c4} - r2n4{c4 .} ==> r2c7 ≠ 6
hidden-single-in-a-row ==> r2c2 = 6
whip[3]: r1n3{c7 c3} - r1n4{c3 c4} - r2n4{c4 .} ==> r2c7 ≠ 5
hidden-single-in-a-row ==> r2c3 = 5
biv-chain[4]: r6n2{c7 c6} - r2c6{n2 n1} - r3n1{c6 c3} - c3n2{r3 r5} ==> r5c7 ≠ 2
whip[4]: r1n3{c3 c7} - r2n4{c7 c4} - c4n3{r2 r4} - c4n2{r4 .} ==> r7c3 ≠ 3
whip[4]: c7n1{r2 r7} - r7c3{n1 n4} - c4n2{r7 r4} - c4n3{r4 .} ==> r2c7 ≠ 3
whip[4]: r3n1{c6 c3} - r7c3{n1 n4} - r7n2{c4 c1} - r3n2{c1 .} ==> r3c6 ≠ 4
whip[3]: r6c6{n5 n2} - r2c6{n2 n1} - r3c6{n1 .} ==> r7c6 ≠ 3
whip[3]: r7c3{n1 n4} - r7n2{c4 c1} - r7n3{c1 .} ==> r7c7 ≠ 1
hidden-single-in-a-column ==> r2c7 = 1
naked-single ==> r2c6 = 2
naked-single ==> r2c5 = 3
naked-single ==> r2c4 = 4
naked-single ==> r1c4 = 5
naked-single ==> r1c5 = 6
naked-single ==> r1c6 = 7
naked-single ==> r3c4 = 6
str-valley[2]: r7c2>r7c3<r7c4 ==> r7c3 ≠ 4
naked-single ==> r7c3 = 1
hidden-single-in-a-row ==> r3c6 = 1
hidden-single-in-a-column ==> r5c7 = 7
hidden-single-in-a-column ==> r7c7 = 6
hidden-single-in-a-row ==> r6c7 = 2
hidden-single-in-a-column ==> r3c7 = 5
str-asc[1]: r4c7<r4c6 ==> r4c6 ≠ 3
str-asc[1]: r6c6<r7c6 ==> r6c6 ≠ 5
hidden-single-in-a-row ==> r6c2 = 5
hidden-single-in-a-row ==> r7c6 = 5
hidden-single-in-a-row ==> r7c2 = 4
naked-single ==> r5c2 = 3
naked-single ==> r5c3 = 2
hidden-single-in-a-column ==> r6c6 = 3
naked-single ==> r6c1 = 4
str-asc[1]: r5c5<r5c6 ==> r5c6 ≠ 4
naked-single ==> r5c6 = 6
naked-single ==> r4c6 = 4
naked-single ==> r4c7 = 3
naked-single ==> r1c7 = 4
naked-single ==> r1c3 = 3
naked-single ==> r3c3 = 4
naked-single ==> r3c5 = 2
naked-single ==> r3c1 = 3
naked-single ==> r7c1 = 2
naked-single ==> r7c4 = 3
naked-single ==> r4c5 = 5
naked-single ==> r4c1 = 6
naked-single ==> r5c5 = 4
naked-single ==> r4c4 = 2
naked-single ==> r5c1 = 5
PUZZLE SOLVED. rating-type = gW+S, MOST COMPLEX RULE TRIED = gW[8]
1235674
7654321
3746215
6172543
5321467
4567132
2413756
Puzzle :
init-time = 0.27s, solve time = 5.67s, total-time = 5.94s
nb-facts=<Fact-15681>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = gW+S
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






With g-braids:

***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = gB+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.................................................
<--<<-->->>---<>>------>>>--<-<-<----><---
----->-<---------->----------------<>->---
0 givens, 343 candidates
entering BRT
asc[1]: r4c7<r3c7 ==> r4c7 ≠ 7, r3c7 ≠ 1
asc[1]: r2c7<r1c7 ==> r2c7 ≠ 7, r1c7 ≠ 1
asc[1]: r6c6<r7c6 ==> r7c6 ≠ 1, r6c6 ≠ 7
asc[2]: r7c1<r6c1<r6c2 ==> r7c1 ≠ 7, r7c1 ≠ 6, r6c2 ≠ 2, r6c2 ≠ 1, r6c1 ≠ 7, r6c1 ≠ 1
asc[1]: r7c3<r7c4 ==> r7c4 ≠ 1, r7c3 ≠ 7
asc[1]: r7c3<r7c2 ==> r7c2 ≠ 1
asc[1]: r6c3<r6c4 ==> r6c4 ≠ 1, r6c3 ≠ 7
asc[1]: r5c5<r5c6 ==> r5c6 ≠ 1, r5c5 ≠ 7
asc[2]: r5c3<r5c2<r5c1 ==> r5c3 ≠ 7, r5c3 ≠ 6, r5c2 ≠ 7, r5c2 ≠ 1, r5c1 ≠ 2, r5c1 ≠ 1
asc[1]: r4c7<r4c6 ==> r4c6 ≠ 1
asc[2]: r3c6<r3c5<r3c4 ==> r3c6 ≠ 7, r3c6 ≠ 6, r3c5 ≠ 7, r3c5 ≠ 1, r3c4 ≠ 2, r3c4 ≠ 1
asc[1]: r3c3<r3c4 ==> r3c3 ≠ 7
asc[5]: r2c6<r2c5<r2c4<r1c4<r1c5<r1c6 ==> r2c6 ≠ 7, r2c6 ≠ 6, r2c6 ≠ 5, r2c6 ≠ 4, r2c6 ≠ 3, r2c5 ≠ 7, r2c5 ≠ 6, r2c5 ≠ 5, r2c5 ≠ 4, r2c5 ≠ 1, r2c4 ≠ 7, r2c4 ≠ 6, r2c4 ≠ 5, r2c4 ≠ 2, r2c4 ≠ 1, r1c6 ≠ 5, r1c6 ≠ 4, r1c6 ≠ 3, r1c6 ≠ 2, r1c6 ≠ 1, r1c5 ≠ 7, r1c5 ≠ 4, r1c5 ≠ 3, r1c5 ≠ 2, r1c5 ≠ 1, r1c4 ≠ 7, r1c4 ≠ 6, r1c4 ≠ 3, r1c4 ≠ 2, r1c4 ≠ 1
asc[2]: r2c3<r2c2<r3c2 ==> r3c2 ≠ 2, r3c2 ≠ 1, r2c3 ≠ 7, r2c3 ≠ 6, r2c2 ≠ 7, r2c2 ≠ 1
asc[1]: r1c1<r1c2 ==> r1c2 ≠ 1, r1c1 ≠ 7
hidden-single-in-a-column ==> r4c2 = 1
hidden-single-in-a-column ==> r5c4 = 1
hidden-single-in-a-row ==> r2c1 = 7
str-asc[1]: r4c7<r4c6 ==> r4c6 ≠ 2
str-asc[1]: r5c2<r5c1 ==> r5c2 ≠ 6
str-asc[1]: r5c3<r5c2 ==> r5c3 ≠ 5, r5c2 ≠ 2
str-asc[1]: r5c2<r5c1 ==> r5c1 ≠ 3
str-asc[1]: r5c5<r5c6 ==> r5c6 ≠ 2
str-asc[1]: r4c7<r3c7 ==> r3c7 ≠ 2
valley[2]: r7c2>r7c3<r7c4 ==> r7c3 ≠ 6
hill[3]: r3c3<r3c4>r3c5>r3c6 ==> r3c4 ≠ 3
Starting_init_links_with_<Fact-1763>
234 candidates, 1543 csp-links and 2134 links. Density = 7.83%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8154>
Entering_relation_bivalue_with_<Fact-8155>
Entering_level_S2_with_<Fact-8178>
Entering_level_BC2_with_<Fact-8181>
Entering_level_W2_with_<Fact-8199>
whip[2]: r1c6{n6 n7} - r1c2{n7 .} ==> r1c1 ≠ 6
whip[2]: r1c6{n6 n7} - r7c6{n7 .} ==> r6c6 ≠ 6
whip[2]: r6c6{n5 n1} - r2c6{n1 .} ==> r7c6 ≠ 2
whip[2]: r2n6{c2 c7} - r2n5{c7 .} ==> r2c2 ≠ 2, r2c2 ≠ 3, r2c2 ≠ 4
str-asc[1]: r2c2<r3c2 ==> r3c2 ≠ 5, r3c2 ≠ 4, r3c2 ≠ 3
whip[2]: r3c2{n6 n7} - r3c4{n7 .} ==> r3c5 ≠ 6, r3c3 ≠ 6
str-asc[1]: r3c6<r3c5 ==> r3c6 ≠ 5
initialising g-labels, label-glabel-glinks and label-in-glabel, starting with <Fact-8505>
Entering_level_gW2_with_<Fact-10360>
Entering_level_S3_with_<Fact-10368>
Entering_level_BC3_with_<Fact-10371>
Entering_level_W3_with_<Fact-10385>
whip[3]: r4c6{n6 n7} - r5n7{c6 c7} - r3c7{n7 .} ==> r4c7 ≠ 6
whip[3]: r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 .} ==> r1c2 ≠ 6
whip[3]: r1c2{n5 n7} - r1c6{n7 n6} - r1c5{n6 .} ==> r1c1 ≠ 5
whip[3]: r1n1{c1 c3} - r1n3{c3 c7} - r1n2{c7 .} ==> r1c1 ≠ 4
whip[3]: r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n2 .} ==> r1c2 ≠ 7
whip[3]: r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n2 .} ==> r3c7 ≠ 7
whip[3]: c2n2{r1 r7} - r7c3{n5 n1} - r1n1{c3 .} ==> r1c1 ≠ 2
whip[3]: r1c1{n1 n3} - c2n2{r1 r7} - r7c3{n2 .} ==> r7c1 ≠ 1
str-asc[1]: r7c1<r6c1 ==> r6c1 ≠ 2
str-asc[1]: r6c1<r6c2 ==> r6c2 ≠ 3
whip[3]: r1c1{n1 n3} - c2n2{r1 r7} - r7c3{n2 .} ==> r1c3 ≠ 1
hidden-single-in-a-row ==> r1c1 = 1
Entering_level_gW3_with_<Fact-10753>
Entering_level_B3_with_<Fact-10765>
Entering_level_gB3_with_<Fact-10853>
Entering_level_S4_with_<Fact-10870>
Entering_level_BC4_with_<Fact-10883>
Entering_level_W4_with_<Fact-10897>
Entering_level_gW4_with_<Fact-11133>
Entering_level_B4_with_<Fact-11146>
Entering_level_gB4_with_<Fact-11355>
Entering_level_BC5_with_<Fact-11423>
Entering_level_W5_with_<Fact-11435>
whip[5]: c5n1{r7 r6} - c5n7{r6 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 .} ==> r7c5 ≠ 5
whip[5]: c5n1{r6 r7} - c5n7{r7 r4} - c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 .} ==> r6c5 ≠ 5
whip[5]: r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 n6} - c3n6{r1 r4} - c3n7{r4 .} ==> r6c2 ≠ 6
whip[5]: r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - c3n7{r1 r4} - c3n6{r4 .} ==> r6c4 ≠ 4
whip[5]: c2n2{r1 r7} - c2n3{r7 r5} - c2n4{r5 r6} - r6c1{n6 n3} - r7c1{n3 .} ==> r1c2 ≠ 5
Entering_level_gW5_with_<Fact-11714>
g-whip[5]: r1c5{n5 n6} - r1c6{n6 n7} - r1c7{n7 n5-} - r2n5{c7 c2} - r2n6{c2 .} ==> r1c3 ≠ 5
Entering_level_B5_with_<Fact-11748>
Entering_level_gB5_with_<Fact-12077>
Entering_level_BC6_with_<Fact-12194>
Entering_level_W6_with_<Fact-12204>
whip[6]: c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 n5} - r1c4{n5 n4} - r2n4{c4 c7} - r1c7{n2 .} ==> r4c3 ≠ 4
whip[6]: r2c4{n3 n4} - r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - c3n7{r1 r4} - c3n6{r4 .} ==> r6c4 ≠ 3
Entering_level_gW6_with_<Fact-12481>
Entering_level_B6_with_<Fact-12524>
Entering_level_gB6_with_<Fact-13114>
g-braid[6]: c3n7{r4 r1} - r1c6{n7 n6} - r1c5{n6 n5} - r1c7{n6 n5-} - r2n5{c3 c2} - r2n6{c7 .} ==> r4c3 ≠ 5
Entering_level_BC7_with_<Fact-13402>
Entering_level_W7_with_<Fact-13410>
whip[7]: r6c2{n5 n7} - r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 n6} - c3n6{r1 r4} - c3n7{r4 .} ==> r6c1 ≠ 6
str-asc[1]: r7c1<r6c1 ==> r7c1 ≠ 5
Entering_level_gW7_with_<Fact-13765>
g-whip[7]: r2c5{n3 n2} - r2c6{n2 n1} - r2c7{n1 n3+} - r1n3{c7 c2} - c2n2{r1 r7} - r7c3{n5 n1} - r3n1{c3 .} ==> r2c3 ≠ 3
Entering_level_B7_with_<Fact-13985>
braid[7]: r3c2{n7 n6} - r2n6{c2 c7} - r1c7{n6 n7} - r1c6{n7 n6} - c3n7{r1 r4} - c3n6{r1 r6} - r6c4{n7 .} ==> r3c4 ≠ 7
hidden-single-in-a-row ==> r3c2 = 7
str-asc[1]: r6c1<r6c2 ==> r6c1 ≠ 5
str-asc[1]: r7c1<r6c1 ==> r7c1 ≠ 4
braid[4]: r7c1{n2 n3} - c2n2{r7 r1} - c2n3{r7 r5} - r5c3{n4 .} ==> r7c3 ≠ 2
braid[6]: r7c1{n2 n3} - r2c5{n2 n3} - c4n3{r7 r4} - c4n2{r7 r6} - c5n1{r7 r6} - r6c3{n6 .} ==> r7c5 ≠ 2
braid[7]: c3n7{r4 r1} - c3n6{r1 r6} - c4n2{r6 r7} - r7c1{n2 n3} - c2n2{r7 r1} - c2n3{r7 r5} - r5c3{n4 .} ==> r4c3 ≠ 2
Entering_level_gB7_with_<Fact-18083>
g-braid[7]: r1c6{n7 n6} - r1c5{n6 n5} - r1c4{n5 n4} - r1c7{n5 n4-} - r2n4{c4 c3} - r2n5{c3 c2} - r2n6{c7 .} ==> r1c3 ≠ 7
hidden-single-in-a-column ==> r4c3 = 7
hidden-pairs-in-a-column: c5{n1 n7}{r6 r7} ==> r7c5 ≠ 6, r7c5 ≠ 4, r7c5 ≠ 3, r6c5 ≠ 6, r6c5 ≠ 4, r6c5 ≠ 3, r6c5 ≠ 2
x-wing-in-columns: n7{c4 c5}{r6 r7} ==> r7c7 ≠ 7, r7c6 ≠ 7, r6c7 ≠ 7
whip[6]: c3n6{r6 r1} - r1c5{n6 n5} - r1c4{n5 n4} - r2n4{c4 c7} - r1n2{c7 c2} - r1n3{c2 .} ==> r6c3 ≠ 4
g-braid[6]: c3n6{r6 r1} - r1c6{n6 n7} - r1c5{n6 n5} - r1c7{n7 n5-} - r2n6{c7 c2} - r2n5{c7 .} ==> r6c3 ≠ 5
whip[6]: r2c6{n2 n1} - r3n1{c6 c3} - c3n5{r3 r7} - c2n2{r7 r1} - c2n3{r1 r5} - r5c3{n3 .} ==> r2c3 ≠ 2
biv-chain[7]: c3n6{r6 r1} - r1c5{n6 n5} - r1c4{n5 n4} - r2c4{n4 n3} - r2c5{n3 n2} - r2c6{n2 n1} - r3n1{c6 c3} ==> r6c3 ≠ 1
str-asc[1]: r6c3<r6c4 ==> r6c4 ≠ 2
whip[6]: c4n2{r4 r7} - c4n3{r7 r2} - r2c5{n3 n2} - r2c6{n2 n1} - r3n1{c6 c3} - r7c3{n1 .} ==> r4c4 ≠ 4
whip[6]: c4n2{r4 r7} - c4n3{r7 r2} - r2c5{n3 n2} - r2c6{n2 n1} - r3n1{c6 c3} - r7c3{n1 .} ==> r4c4 ≠ 5
whip[6]: c4n2{r4 r7} - c4n3{r7 r2} - r2c5{n3 n2} - r2c6{n2 n1} - r3n1{c6 c3} - r7c3{n1 .} ==> r4c4 ≠ 6
whip[2]: r4c4{n3 n2} - r4c7{n2 .} ==> r4c6 ≠ 3
whip[6]: r6c5{n1 n7} - c4n7{r6 r7} - c4n2{r7 r4} - c4n3{r4 r2} - r2c5{n3 n2} - r2c6{n2 .} ==> r6c6 ≠ 1
whip[3]: r6n7{c4 c5} - r6n1{c5 c7} - r6n6{c7 .} ==> r6c4 ≠ 5
whip[6]: r3n1{c6 c3} - r3n2{c3 c1} - r3n3{c1 c7} - r4c7{n5 n2} - c4n2{r4 r7} - r7c3{n3 .} ==> r3c6 ≠ 4
whip[3]: r6c6{n5 n2} - r2c6{n2 n1} - r3c6{n1 .} ==> r7c6 ≠ 3
braid[6]: r6c1{n4 n3} - r5c2{n5 n3} - c6n3{r6 r3} - r3n1{c6 c3} - r7c1{n3 n2} - r3n2{c6 .} ==> r5c1 ≠ 4
whip[4]: r1c5{n5 n6} - r1c6{n6 n7} - r5c6{n7 n6} - r5c1{n6 .} ==> r5c5 ≠ 5
braid[6]: r4c6{n5 n6} - r3c7{n5 n6} - c1n6{r4 r5} - c1n5{r5 r3} - c5n6{r5 r1} - c5n5{r4 .} ==> r4c7 ≠ 5
whip[7]: c2n2{r7 r1} - r1n3{c2 c7} - r2n6{c7 c2} - r2n5{c2 c3} - r2n4{c3 c4} - c4n3{r2 r4} - c4n2{r4 .} ==> r7c3 ≠ 3
g-whip[3]: r7c3{n1 n3+} - r7n3{c4 c1} - r7n2{c1 .} ==> r7c7 ≠ 1
whip[5]: r6c2{n5 n4} - r6c1{n4 n3} - r6c6{n3 n2} - r2c6{n2 n1} - c7n1{r2 .} ==> r6c7 ≠ 5
whip[3]: r6n5{c2 c6} - r7c6{n5 n6} - c2n6{r7 .} ==> r2c2 ≠ 5
naked-single ==> r2c2 = 6
str-asc[1]: r7c3<r7c2 ==> r7c3 ≠ 5
biv-chain[4]: r2n5{c3 c7} - c7n1{r2 r6} - c5n1{r6 r7} - r7c3{n1 n4} ==> r2c3 ≠ 4
biv-chain[4]: r2n4{c4 c7} - c7n1{r2 r6} - c5n1{r6 r7} - r7c3{n1 n4} ==> r7c4 ≠ 4
biv-chain[5]: c3n6{r6 r1} - r1c5{n6 n5} - r1c4{n5 n4} - r2n4{c4 c7} - c7n1{r2 r6} ==> r6c7 ≠ 6
biv-chain[5]: c4n7{r7 r6} - r6c5{n7 n1} - c7n1{r6 r2} - r2n4{c7 c4} - r1c4{n4 n5} ==> r7c4 ≠ 5
biv-chain[5]: r2n4{c7 c4} - r1c4{n4 n5} - r1c5{n5 n6} - r1c6{n6 n7} - c7n7{r1 r5} ==> r5c7 ≠ 4
whip[5]: r6c1{n3 n4} - r6c2{n4 n5} - r6c6{n5 n2} - r2c6{n2 n1} - c7n1{r2 .} ==> r6c7 ≠ 3
whip[5]: r2c7{n5 n1} - r6c7{n1 n4} - r6c1{n4 n3} - r7c1{n3 n2} - c2n2{r7 .} ==> r1c7 ≠ 2
whip[4]: c2n2{r1 r7} - c2n3{r7 r5} - r5c3{n4 n2} - r1n2{c3 .} ==> r1c2 ≠ 4
whip[4]: r2n4{c7 c4} - r1n4{c4 c3} - r1n2{c3 c2} - r1n3{c2 .} ==> r2c7 ≠ 5
hidden-single-in-a-row ==> r2c3 = 5
whip[4]: r2n4{c4 c7} - r1n4{c7 c3} - r1n2{c3 c2} - r1n3{c2 .} ==> r3c4 ≠ 4
whip[4]: r1n2{c3 c2} - r1n3{c2 c7} - r1n4{c7 c4} - r2n4{c4 .} ==> r1c3 ≠ 6
hidden-single-in-a-column ==> r6c3 = 6
naked-single ==> r6c4 = 7
naked-single ==> r6c5 = 1
naked-single ==> r7c5 = 7
hidden-single-in-a-column ==> r2c7 = 1
naked-single ==> r2c6 = 2
naked-single ==> r2c5 = 3
naked-single ==> r2c4 = 4
naked-single ==> r1c4 = 5
naked-single ==> r1c5 = 6
naked-single ==> r1c6 = 7
naked-single ==> r3c4 = 6
str-valley[2]: r7c2>r7c3<r7c4 ==> r7c3 ≠ 4
naked-single ==> r7c3 = 1
hidden-single-in-a-row ==> r3c6 = 1
hidden-single-in-a-column ==> r5c7 = 7
hidden-single-in-a-column ==> r7c7 = 6
hidden-single-in-a-column ==> r3c7 = 5
hidden-single-in-a-column ==> r4c5 = 5
hidden-single-in-a-column ==> r5c1 = 5
hidden-single-in-a-column ==> r4c1 = 6
naked-single ==> r4c6 = 4
naked-single ==> r7c6 = 5
naked-single ==> r6c6 = 3
naked-single ==> r5c6 = 6
naked-single ==> r6c1 = 4
naked-single ==> r6c2 = 5
naked-single ==> r6c7 = 2
naked-single ==> r4c7 = 3
naked-single ==> r1c7 = 4
naked-single ==> r4c4 = 2
naked-single ==> r7c4 = 3
naked-single ==> r7c1 = 2
naked-single ==> r3c1 = 3
naked-single ==> r7c2 = 4
naked-single ==> r5c2 = 3
naked-single ==> r1c2 = 2
naked-single ==> r1c3 = 3
naked-single ==> r5c3 = 2
naked-single ==> r3c3 = 4
naked-single ==> r3c5 = 2
naked-single ==> r5c5 = 4
PUZZLE SOLVED. rating-type = gB+S, MOST COMPLEX RULE TRIED = gB[7]
1235674
7654321
3746215
6172543
5321467
4567132
2413756
Puzzle :
init-time = 0.27s, solve time = 7m 28.31s, total-time = 7m 28.58s
nb-facts=<Fact-33969>
***********************************************************************************************
***  FutoRules 2.1.s based on CSP-Rules 2.1.s, config = gB+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
