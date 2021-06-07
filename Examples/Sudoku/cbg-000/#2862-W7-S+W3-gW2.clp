#2862

     +-------+-------+-------+
     ! 1 . . ! . . 6 ! . . 9 ! 
     ! . . . ! . . . ! . . . ! 
     ! . 8 . ! 1 . . ! 5 6 . ! 
     +-------+-------+-------+
     ! . 3 . ! 6 . . ! 8 . 1 ! 
     ! . . . ! . . . ! . . 7 ! 
     ! . . . ! . . 8 ! 2 4 6 ! 
     +-------+-------+-------+
     ! . 4 . ! 9 . . ! . 2 . ! 
     ! 5 6 . ! 8 4 1 ! . . . ! 
     ! . . 7 ! . . 3 ! . . . ! 
     +-------+-------+-------+

1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3...
26 givens, SER = 3.8


;;; Using only Subsets:
(solve "1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = S
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2
26 givens, 206 candidates
entering BRT
naked-single ==> r8c9 = 3
hidden-single-in-a-row ==> r8c3 = 2
Starting_init_links_with_<Fact-3665>
191 candidates, 1155 csp-links and 1155 links. Density = 6.37%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-7932>
whip[1]: c9n5{r9 .} ==> r9c8 ≠ 5
whip[1]: r8n9{c8 .} ==> r9c8 ≠ 9, r9c7 ≠ 9
whip[1]: r8n7{c8 .} ==> r7c7 ≠ 7
whip[1]: r6n3{c5 .} ==> r5c5 ≠ 3, r5c4 ≠ 3
Entering_relation_bivalue_with_<Fact-7941>
Entering_level_S2_with_<Fact-8070>
hidden-pairs-in-a-row: r5{n6 n8}{c1 c3} ==> r5c3 ≠ 9, r5c3 ≠ 5, r5c3 ≠ 4, r5c3 ≠ 1, r5c1 ≠ 9, r5c1 ≠ 4, r5c1 ≠ 2
whip[1]: r5n4{c6 .} ==> r4c6 ≠ 4
Entering_level_S3_with_<Fact-8117>
naked-triplets-in-a-row: r9{c1 c2 c8}{n8 n9 n1} ==> r9c9 ≠ 8, r9c7 ≠ 1
swordfish-in-rows: n7{r3 r4 r7}{c6 c1 c5} ==> r6c5 ≠ 7, r6c1 ≠ 7, r2c6 ≠ 7, r2c5 ≠ 7, r2c1 ≠ 7, r1c5 ≠ 7
naked-single ==> r6c1 = 9
naked-single ==> r9c1 = 8
naked-single ==> r5c1 = 6
naked-single ==> r5c3 = 8
naked-single ==> r7c1 = 3
naked-single ==> r7c3 = 1
naked-single ==> r6c3 = 5
naked-single ==> r4c3 = 4
naked-single ==> r1c3 = 3
naked-single ==> r3c3 = 9
naked-single ==> r2c3 = 6
naked-single ==> r7c7 = 6
naked-single ==> r9c7 = 4
naked-single ==> r1c7 = 7
naked-single ==> r1c8 = 8
naked-single ==> r8c7 = 9
naked-single ==> r5c7 = 3
naked-single ==> r2c7 = 1
naked-single ==> r2c8 = 3
naked-single ==> r8c8 = 7
naked-single ==> r9c9 = 5
naked-single ==> r7c9 = 8
naked-single ==> r9c4 = 2
naked-single ==> r9c5 = 6
naked-single ==> r9c2 = 9
naked-single ==> r9c8 = 1
hidden-single-in-a-block ==> r3c5 = 3
naked-single ==> r6c5 = 1
naked-single ==> r6c2 = 7
naked-single ==> r4c1 = 2
naked-single ==> r2c1 = 4
naked-single ==> r2c9 = 2
naked-single ==> r2c2 = 5
naked-single ==> r1c2 = 2
naked-single ==> r1c5 = 5
naked-single ==> r1c4 = 4
naked-single ==> r5c4 = 5
naked-single ==> r5c8 = 9
naked-single ==> r4c8 = 5
naked-single ==> r5c5 = 2
naked-single ==> r5c6 = 4
naked-single ==> r7c5 = 7
naked-single ==> r4c5 = 9
naked-single ==> r2c5 = 8
naked-single ==> r4c6 = 7
naked-single ==> r3c6 = 2
naked-single ==> r7c6 = 5
naked-single ==> r2c4 = 7
naked-single ==> r2c6 = 9
naked-single ==> r3c9 = 4
naked-single ==> r3c1 = 7
naked-single ==> r5c2 = 1
naked-single ==> r6c4 = 3
PUZZLE 0 IS SOLVED. rating-type = S, MOST COMPLEX RULE TRIED = SHT
   123456789
   456789132
   789132564
   234697851
   618524397
   975318246
   341975628
   562841973
   897263415

nb-facts = <Fact-8199>
Puzzle 1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2 :
init-time = 0.2s, solve-time = 0.16s, total-time = 0.36s
nb-facts = <Fact-8199>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = S
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************




;;; Using only Whips:
(solve "1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2
26 givens, 206 candidates
entering BRT
naked-single ==> r8c9 = 3
hidden-single-in-a-row ==> r8c3 = 2
Starting_init_links_with_<Fact-3665>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+ 
   ! 1      257    345    ! 23457  23578  6      ! 347    378    9      ! 
   ! 234679 2579   34569  ! 23457  235789 24579  ! 1347   1378   248    ! 
   ! 23479  8      349    ! 1      2379   2479   ! 5      6      24     ! 
   +----------------------+----------------------+----------------------+ 
   ! 2479   3      459    ! 6      2579   24579  ! 8      59     1      ! 
   ! 24689  1259   145689 ! 2345   12359  2459   ! 39     359    7      ! 
   ! 79     1579   159    ! 357    13579  8      ! 2      4      6      ! 
   +----------------------+----------------------+----------------------+ 
   ! 38     4      138    ! 9      567    57     ! 167    2      58     ! 
   ! 5      6      2      ! 8      4      1      ! 79     79     3      ! 
   ! 89     19     7      ! 25     256    3      ! 1469   1589   458    ! 
   +----------------------+----------------------+----------------------+ 

191 candidates, 1155 csp-links and 1155 links. Density = 6.37%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-7932>
whip[1]: c9n5{r9 .} ==> r9c8 ≠ 5
whip[1]: r8n9{c8 .} ==> r9c8 ≠ 9, r9c7 ≠ 9
whip[1]: r8n7{c8 .} ==> r7c7 ≠ 7
whip[1]: r6n3{c5 .} ==> r5c5 ≠ 3, r5c4 ≠ 3

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+ 
   ! 1      257    345    ! 23457  23578  6      ! 347    378    9      ! 
   ! 234679 2579   34569  ! 23457  235789 24579  ! 1347   1378   248    ! 
   ! 23479  8      349    ! 1      2379   2479   ! 5      6      24     ! 
   +----------------------+----------------------+----------------------+ 
   ! 2479   3      459    ! 6      2579   24579  ! 8      59     1      ! 
   ! 24689  1259   145689 ! 245    1259   2459   ! 39     359    7      ! 
   ! 79     1579   159    ! 357    13579  8      ! 2      4      6      ! 
   +----------------------+----------------------+----------------------+ 
   ! 38     4      138    ! 9      567    57     ! 16     2      58     ! 
   ! 5      6      2      ! 8      4      1      ! 79     79     3      ! 
   ! 89     19     7      ! 25     256    3      ! 146    18     458    ! 
   +----------------------+----------------------+----------------------+ 

185 candidates.

Entering_level_W2_with_<Fact-7942>
whip[2]: r5n6{c1 c3} - r5n8{c3 .} ==> r5c1 ≠ 2, r5c1 ≠ 4, r5c1 ≠ 9
whip[2]: r5n6{c3 c1} - r5n8{c1 .} ==> r5c3 ≠ 1, r5c3 ≠ 4, r5c3 ≠ 5, r5c3 ≠ 9
whip[1]: r5n4{c6 .} ==> r4c6 ≠ 4
Entering_level_W3_with_<Fact-8425>
whip[3]: r9c8{n8 n1} - r9c2{n1 n9} - r9c1{n9 .} ==> r9c9 ≠ 8
whip[3]: r9c8{n1 n8} - r9c1{n8 n9} - r9c2{n9 .} ==> r9c7 ≠ 1
whip[3]: r4n7{c6 c1} - r3n7{c1 c6} - r7n7{c6 .} ==> r6c5 ≠ 7
whip[3]: r3n7{c6 c1} - c2n7{r2 r6} - c4n7{r6 .} ==> r2c6 ≠ 7
whip[3]: r3n7{c6 c1} - c2n7{r2 r6} - c4n7{r6 .} ==> r2c5 ≠ 7
whip[3]: c2n7{r2 r6} - c4n7{r6 r1} - b3n7{r1c7 .} ==> r2c1 ≠ 7
whip[3]: r3n7{c6 c1} - c2n7{r2 r6} - c4n7{r6 .} ==> r1c5 ≠ 7
whip[3]: r9n2{c5 c4} - r5n2{c4 c2} - r1n2{c2 .} ==> r4c5 ≠ 2
Entering_level_W4_with_<Fact-9526>
Entering_level_W5_with_<Fact-11862>
whip[5]: r4n2{c1 c6} - r4n7{c6 c5} - r7n7{c5 c6} - r3n7{c6 c1} - r6c1{n7 .} ==> r4c1 ≠ 9
whip[5]: r4c8{n9 n5} - r4c5{n5 n7} - r7n7{c5 c6} - r3n7{c6 c1} - r6c1{n7 .} ==> r4c3 ≠ 9
whip[3]: r9c2{n9 n1} - c3n1{r7 r6} - c3n9{r6 .} ==> r2c2 ≠ 9
Entering_level_W6_with_<Fact-17332>
whip[6]: c7n1{r2 r7} - b7n1{r7c3 r9c2} - r9n9{c2 c1} - r6c1{n9 n7} - c2n7{r6 r1} - c4n7{r1 .} ==> r2c7 ≠ 7
Entering_level_W7_with_<Fact-28996>
whip[7]: c3n6{r2 r5} - c3n8{r5 r7} - r7n1{c3 c7} - r2c7{n1 n3} - r5c7{n3 n9} - r4c8{n9 n5} - r4c3{n5 .} ==> r2c3 ≠ 4
whip[7]: r1n2{c5 c2} - c1n2{r3 r4} - r2n2{c1 c9} - r3c9{n2 n4} - c1n4{r3 r2} - c6n4{r2 r5} - c6n2{r5 .} ==> r3c5 ≠ 2
whip[7]: r4n2{c1 c6} - r4n7{c6 c5} - r7n7{c5 c6} - r3n7{c6 c1} - c1n2{r3 r2} - r2c2{n2 n5} - r1c2{n5 .} ==> r4c1 ≠ 4
hidden-single-in-a-block ==> r4c3 = 4
whip[4]: b5n4{r5c6 r5c4} - r1n4{c4 c7} - c7n7{r1 r8} - c7n9{r8 .} ==> r5c6 ≠ 9
whip[4]: r3c3{n9 n3} - r3c5{n3 n7} - c4n7{r1 r6} - r6c1{n7 .} ==> r3c1 ≠ 9
whip[5]: b3n7{r1c8 r2c8} - r2n1{c8 c7} - r7c7{n1 n6} - r9c7{n6 n4} - r1n4{c7 .} ==> r1c4 ≠ 7
whip[2]: c4n7{r6 r2} - r3n7{c5 .} ==> r6c1 ≠ 7
naked-single ==> r6c1 = 9
naked-single ==> r9c1 = 8
naked-single ==> r5c1 = 6
naked-single ==> r5c3 = 8
naked-single ==> r7c1 = 3
naked-single ==> r7c3 = 1
naked-single ==> r6c3 = 5
naked-single ==> r1c3 = 3
naked-single ==> r3c3 = 9
naked-single ==> r2c3 = 6
naked-single ==> r7c7 = 6
naked-single ==> r9c7 = 4
naked-single ==> r1c7 = 7
naked-single ==> r1c8 = 8
naked-single ==> r8c7 = 9
naked-single ==> r5c7 = 3
naked-single ==> r2c7 = 1
naked-single ==> r2c8 = 3
naked-single ==> r8c8 = 7
naked-single ==> r9c9 = 5
naked-single ==> r7c9 = 8
naked-single ==> r9c4 = 2
naked-single ==> r9c5 = 6
naked-single ==> r9c2 = 9
naked-single ==> r9c8 = 1
hidden-single-in-a-block ==> r3c5 = 3
naked-single ==> r6c5 = 1
naked-single ==> r6c2 = 7
naked-single ==> r4c1 = 2
naked-single ==> r2c1 = 4
naked-single ==> r2c9 = 2
naked-single ==> r2c2 = 5
naked-single ==> r1c2 = 2
naked-single ==> r1c5 = 5
naked-single ==> r1c4 = 4
naked-single ==> r5c4 = 5
naked-single ==> r5c8 = 9
naked-single ==> r4c8 = 5
naked-single ==> r5c5 = 2
naked-single ==> r5c6 = 4
naked-single ==> r7c5 = 7
naked-single ==> r4c5 = 9
naked-single ==> r2c5 = 8
naked-single ==> r4c6 = 7
naked-single ==> r3c6 = 2
naked-single ==> r7c6 = 5
naked-single ==> r2c4 = 7
naked-single ==> r2c6 = 9
naked-single ==> r3c9 = 4
naked-single ==> r3c1 = 7
naked-single ==> r5c2 = 1
naked-single ==> r6c4 = 3
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[7]
   123456789
   456789132
   789132564
   234697851
   618524397
   975318246
   341975628
   562841973
   897263415

nb-facts = <Fact-41451>
Puzzle 1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2 :
init-time = 0.19s, solve-time = 11.61s, total-time = 11.8s
nb-facts = <Fact-41451>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************




;;; Using Subsets and Whips (whips do not appear):
(solve "1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2
26 givens, 206 candidates
entering BRT
naked-single ==> r8c9 = 3
hidden-single-in-a-row ==> r8c3 = 2
Starting_init_links_with_<Fact-3665>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+ 
   ! 1      257    345    ! 23457  23578  6      ! 347    378    9      ! 
   ! 234679 2579   34569  ! 23457  235789 24579  ! 1347   1378   248    ! 
   ! 23479  8      349    ! 1      2379   2479   ! 5      6      24     ! 
   +----------------------+----------------------+----------------------+ 
   ! 2479   3      459    ! 6      2579   24579  ! 8      59     1      ! 
   ! 24689  1259   145689 ! 2345   12359  2459   ! 39     359    7      ! 
   ! 79     1579   159    ! 357    13579  8      ! 2      4      6      ! 
   +----------------------+----------------------+----------------------+ 
   ! 38     4      138    ! 9      567    57     ! 167    2      58     ! 
   ! 5      6      2      ! 8      4      1      ! 79     79     3      ! 
   ! 89     19     7      ! 25     256    3      ! 1469   1589   458    ! 
   +----------------------+----------------------+----------------------+ 

191 candidates, 1155 csp-links and 1155 links. Density = 6.37%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-7932>
whip[1]: c9n5{r9 .} ==> r9c8 ≠ 5
whip[1]: r8n9{c8 .} ==> r9c8 ≠ 9, r9c7 ≠ 9
whip[1]: r8n7{c8 .} ==> r7c7 ≠ 7
whip[1]: r6n3{c5 .} ==> r5c5 ≠ 3, r5c4 ≠ 3

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+ 
   ! 1      257    345    ! 23457  23578  6      ! 347    378    9      ! 
   ! 234679 2579   34569  ! 23457  235789 24579  ! 1347   1378   248    ! 
   ! 23479  8      349    ! 1      2379   2479   ! 5      6      24     ! 
   +----------------------+----------------------+----------------------+ 
   ! 2479   3      459    ! 6      2579   24579  ! 8      59     1      ! 
   ! 24689  1259   145689 ! 245    1259   2459   ! 39     359    7      ! 
   ! 79     1579   159    ! 357    13579  8      ! 2      4      6      ! 
   +----------------------+----------------------+----------------------+ 
   ! 38     4      138    ! 9      567    57     ! 16     2      58     ! 
   ! 5      6      2      ! 8      4      1      ! 79     79     3      ! 
   ! 89     19     7      ! 25     256    3      ! 146    18     458    ! 
   +----------------------+----------------------+----------------------+ 

185 candidates.

Entering_relation_bivalue_with_<Fact-7941>
Entering_level_S2_with_<Fact-8070>
hidden-pairs-in-a-row: r5{n6 n8}{c1 c3} ==> r5c3 ≠ 9, r5c3 ≠ 5, r5c3 ≠ 4, r5c3 ≠ 1, r5c1 ≠ 9, r5c1 ≠ 4, r5c1 ≠ 2
whip[1]: r5n4{c6 .} ==> r4c6 ≠ 4
Entering_level_W2_with_<Fact-8118>
Entering_level_S3_with_<Fact-8545>
naked-triplets-in-a-row: r9{c1 c2 c8}{n8 n9 n1} ==> r9c9 ≠ 8, r9c7 ≠ 1
swordfish-in-rows: n7{r3 r4 r7}{c6 c1 c5} ==> r6c5 ≠ 7, r6c1 ≠ 7, r2c6 ≠ 7, r2c5 ≠ 7, r2c1 ≠ 7, r1c5 ≠ 7
naked-single ==> r6c1 = 9
naked-single ==> r9c1 = 8
naked-single ==> r5c1 = 6
naked-single ==> r5c3 = 8
naked-single ==> r7c1 = 3
naked-single ==> r7c3 = 1
naked-single ==> r6c3 = 5
naked-single ==> r4c3 = 4
naked-single ==> r1c3 = 3
naked-single ==> r3c3 = 9
naked-single ==> r2c3 = 6
naked-single ==> r7c7 = 6
naked-single ==> r9c7 = 4
naked-single ==> r1c7 = 7
naked-single ==> r1c8 = 8
naked-single ==> r8c7 = 9
naked-single ==> r5c7 = 3
naked-single ==> r2c7 = 1
naked-single ==> r2c8 = 3
naked-single ==> r8c8 = 7
naked-single ==> r9c9 = 5
naked-single ==> r7c9 = 8
naked-single ==> r9c4 = 2
naked-single ==> r9c5 = 6
naked-single ==> r9c2 = 9
naked-single ==> r9c8 = 1
hidden-single-in-a-block ==> r3c5 = 3
naked-single ==> r6c5 = 1
naked-single ==> r6c2 = 7
naked-single ==> r4c1 = 2
naked-single ==> r2c1 = 4
naked-single ==> r2c9 = 2
naked-single ==> r2c2 = 5
naked-single ==> r1c2 = 2
naked-single ==> r1c5 = 5
naked-single ==> r1c4 = 4
naked-single ==> r5c4 = 5
naked-single ==> r5c8 = 9
naked-single ==> r4c8 = 5
naked-single ==> r5c5 = 2
naked-single ==> r5c6 = 4
naked-single ==> r7c5 = 7
naked-single ==> r4c5 = 9
naked-single ==> r2c5 = 8
naked-single ==> r4c6 = 7
naked-single ==> r3c6 = 2
naked-single ==> r7c6 = 5
naked-single ==> r2c4 = 7
naked-single ==> r2c6 = 9
naked-single ==> r3c9 = 4
naked-single ==> r3c1 = 7
naked-single ==> r5c2 = 1
naked-single ==> r6c4 = 3
PUZZLE 0 IS SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = SHT
   123456789
   456789132
   789132564
   234697851
   618524397
   975318246
   341975628
   562841973
   897263415

nb-facts = <Fact-8672>
Puzzle 1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2 :
init-time = 0.2s, solve-time = 0.39s, total-time = 0.6s
nb-facts = <Fact-8672>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************




;;; Using g-whips:
(solve "1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = gW
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2
26 givens, 206 candidates
entering BRT
naked-single ==> r8c9 = 3
hidden-single-in-a-row ==> r8c3 = 2
Starting_init_links_with_<Fact-3665>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+ 
   ! 1      257    345    ! 23457  23578  6      ! 347    378    9      ! 
   ! 234679 2579   34569  ! 23457  235789 24579  ! 1347   1378   248    ! 
   ! 23479  8      349    ! 1      2379   2479   ! 5      6      24     ! 
   +----------------------+----------------------+----------------------+ 
   ! 2479   3      459    ! 6      2579   24579  ! 8      59     1      ! 
   ! 24689  1259   145689 ! 2345   12359  2459   ! 39     359    7      ! 
   ! 79     1579   159    ! 357    13579  8      ! 2      4      6      ! 
   +----------------------+----------------------+----------------------+ 
   ! 38     4      138    ! 9      567    57     ! 167    2      58     ! 
   ! 5      6      2      ! 8      4      1      ! 79     79     3      ! 
   ! 89     19     7      ! 25     256    3      ! 1469   1589   458    ! 
   +----------------------+----------------------+----------------------+ 

191 candidates, 1155 csp-links and 1155 links. Density = 6.37%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-7932>
whip[1]: c9n5{r9 .} ==> r9c8 ≠ 5
whip[1]: r8n9{c8 .} ==> r9c8 ≠ 9, r9c7 ≠ 9
whip[1]: r8n7{c8 .} ==> r7c7 ≠ 7
whip[1]: r6n3{c5 .} ==> r5c5 ≠ 3, r5c4 ≠ 3

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+ 
   ! 1      257    345    ! 23457  23578  6      ! 347    378    9      ! 
   ! 234679 2579   34569  ! 23457  235789 24579  ! 1347   1378   248    ! 
   ! 23479  8      349    ! 1      2379   2479   ! 5      6      24     ! 
   +----------------------+----------------------+----------------------+ 
   ! 2479   3      459    ! 6      2579   24579  ! 8      59     1      ! 
   ! 24689  1259   145689 ! 245    1259   2459   ! 39     359    7      ! 
   ! 79     1579   159    ! 357    13579  8      ! 2      4      6      ! 
   +----------------------+----------------------+----------------------+ 
   ! 38     4      138    ! 9      567    57     ! 16     2      58     ! 
   ! 5      6      2      ! 8      4      1      ! 79     79     3      ! 
   ! 89     19     7      ! 25     256    3      ! 146    18     458    ! 
   +----------------------+----------------------+----------------------+ 

185 candidates.

Entering_level_W2_with_<Fact-7942>
whip[2]: r5n6{c1 c3} - r5n8{c3 .} ==> r5c1 ≠ 2, r5c1 ≠ 4, r5c1 ≠ 9
whip[2]: r5n6{c3 c1} - r5n8{c1 .} ==> r5c3 ≠ 1, r5c3 ≠ 4, r5c3 ≠ 5, r5c3 ≠ 9
whip[1]: r5n4{c6 .} ==> r4c6 ≠ 4
initialising g-labels, label-glabel-glinks and label-in-glabel, starting with <Fact-8424>
, starting with <Fact-8479>
152 g-candidates, 837 csp-glinks and 486 non-csp glinks
Entering_level_gW2_with_<Fact-9824>
g-whip[2]: r3n7{c1 c456} - c4n7{r1 .} ==> r6c1 ≠ 7
naked-single ==> r6c1 = 9
naked-single ==> r9c1 = 8
naked-single ==> r5c1 = 6
naked-single ==> r5c3 = 8
naked-single ==> r7c1 = 3
naked-single ==> r7c3 = 1
naked-single ==> r6c3 = 5
naked-single ==> r4c3 = 4
naked-single ==> r1c3 = 3
naked-single ==> r3c3 = 9
naked-single ==> r2c3 = 6
naked-single ==> r7c7 = 6
naked-single ==> r9c2 = 9
naked-single ==> r9c8 = 1
naked-single ==> r9c7 = 4
naked-single ==> r1c7 = 7
naked-single ==> r1c8 = 8
naked-single ==> r2c8 = 3
naked-single ==> r2c7 = 1
naked-single ==> r8c7 = 9
naked-single ==> r5c7 = 3
naked-single ==> r8c8 = 7
naked-single ==> r9c9 = 5
naked-single ==> r7c9 = 8
naked-single ==> r9c4 = 2
naked-single ==> r9c5 = 6
hidden-single-in-a-block ==> r3c5 = 3
hidden-single-in-a-block ==> r6c4 = 3
hidden-single-in-a-column ==> r2c4 = 7
hidden-single-in-a-block ==> r3c1 = 7
naked-single ==> r4c1 = 2
naked-single ==> r2c1 = 4
naked-single ==> r2c9 = 2
naked-single ==> r2c2 = 5
naked-single ==> r1c2 = 2
naked-single ==> r1c5 = 5
naked-single ==> r1c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r5c4 = 5
naked-single ==> r5c8 = 9
naked-single ==> r4c8 = 5
naked-single ==> r5c6 = 4
naked-single ==> r7c5 = 7
naked-single ==> r4c5 = 9
naked-single ==> r2c5 = 8
naked-single ==> r4c6 = 7
naked-single ==> r6c5 = 1
naked-single ==> r5c5 = 2
naked-single ==> r6c2 = 7
naked-single ==> r7c6 = 5
naked-single ==> r2c6 = 9
naked-single ==> r3c9 = 4
naked-single ==> r5c2 = 1
PUZZLE 0 IS SOLVED. rating-type = gW, MOST COMPLEX RULE TRIED = gW[2]
   123456789
   456789132
   789132564
   234697851
   618524397
   975318246
   341975628
   562841973
   897263415

nb-facts = <Fact-10003>
Puzzle 1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3... 41065; W7; S+W3; gW2 :
init-time = 0.2s, solve-time = 0.78s, total-time = 0.98s
nb-facts = <Fact-10003>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = gW
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************



Notice that the g-whip[2] can be applied immediately after the Singles and it provides a 1-step solution.



-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

As the CLIPS Sudoku solver has Subsets, this puzzle can also be solved by CLIPS:
(CLIPS-solve-string  3 "1....6..9..........8.1..56..3.6..8.1........7.....8246.4.9...2.56.841.....7..3...")

The puzzle is:

   1 * *  * * 6  * * 9
   * * *  * * *  * * *
   * 8 *  1 * *  5 6 *

   * 3 *  6 * *  8 * 1
   * * *  * * *  * * 7
   * * *  * * 8  2 4 6

   * 4 *  9 * *  * 2 *
   5 6 *  8 4 1  * * *
   * * 7  * * 3  * * *

The solution is:

   1 2 3  4 5 6  7 8 9
   4 5 6  7 8 9  1 3 2
   7 8 9  1 3 2  5 6 4

   2 3 4  6 9 7  8 5 1
   6 1 8  5 2 4  3 9 7
   9 7 5  3 1 8  2 4 6

   3 4 1  9 7 5  6 2 8
   5 6 2  8 4 1  9 7 3
   8 9 7  2 6 3  4 1 5

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line
   Locked Candidate Multiple Lines
   Naked Pairs
   Hidden Pairs
   X Wing
   Naked Triples
   XY-Wing
   Swordfish

CLIPS time: init = 0.0025s; solve = 0.23s; total = 0.23s


Notice that the solve time (with no printing of intermediate resolution states) is shorter for SudoRules (but init time is longer, because SudoRules elaborates information that might be useful for more complex rules):
SudoRules time: init-time = 0.2s, solve-time = 0.16s, total-time = 0.36s
