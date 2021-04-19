http://forum.enjoysudoku.com/chironex-fleckeri-ser-9-4-t38888.html

+-------+-------+-------+
| . . 9 | . 8 7 | 6 . . |
| 5 4 . | . . . | . . 7 |
| . . . | . . . | . . 3 |
+-------+-------+-------+
| . 7 . | . . . | . . . |
| . . 8 | . 2 9 | . . . |
| . . 5 | . . 6 | 2 . . |
+-------+-------+-------+
| . . . | . 9 2 | 8 . . |
| . 9 . | . . 8 | . 7 . |
| . . . | 7 . . | . 1 . |
+-------+-------+-------+
..9.876..54......7........3.7.........8.29.....5..62......928...9...8.7....7...1.
SER=9.4
Author: Mith

The puzzle is in T&E(1) and could therefore be solved by braids. However, SER 9.4 means it will be on the hard side of a solution with whips/braids (e.g. it has no solution in W14), so I preferred trying with g-whips.
See the second part for a much simpler solution using Subsets and Finned Fish. This is one of the rare examples where they change drastically the rating.


--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

Using no Subsets (only whips and g-whips), a solution is found in gW9:

(solve "..9.876..54......7........3.7.........8.29.....5..62......928...9...8.7....7...1.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = gW
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
..9.876..54......7........3.7.........8.29.....5..62......928...9...8.7....7...1.
23 givens, 242 candidates
entering BRT
hidden-single-in-a-row ==> r6c5 = 7
hidden-single-in-a-row ==> r5c7 = 7
hidden-single-in-a-row ==> r2c8 = 8
Starting_init_links_with_<Fact-3700>

Starting non trivial part of solution.
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 123    123    9      ! 12345  8      7      ! 6      245    1245   !
   ! 5      4      1236   ! 12369  136    13     ! 19     8      7      !
   ! 12678  1268   1267   ! 124569 1456   145    ! 1459   2459   3      !
   +----------------------+----------------------+----------------------+
   ! 123469 7      12346  ! 13458  1345   1345   ! 13459  34569  145689 !
   ! 1346   136    8      ! 1345   2      9      ! 7      3456   1456   !
   ! 1349   13     5      ! 1348   7      6      ! 2      349    1489   !
   +----------------------+----------------------+----------------------+
   ! 13467  1356   13467  ! 13456  9      2      ! 8      3456   456    !
   ! 12346  9      12346  ! 13456  13456  8      ! 345    7      2456   !
   ! 23468  23568  2346   ! 7      3456   345    ! 3459   1      24569  !
   +----------------------+----------------------+----------------------+

230 candidates, 1649 csp-links and 1649 links. Density = 6.26%

Entering_level_W1_with_<Fact-9829>
whip[1]: c8n2{r3 .} ==> r1c9 ≠ 2
Entering_relation_bivalue_with_<Fact-9832>
Entering_level_BC2_with_<Fact-9907>
Entering_level_Z2_with_<Fact-10038>
Entering_level_tW2_with_<Fact-10349>
Entering_level_W2_with_<Fact-10350>
initialising g-labels, label-glabel-glinks and label-in-glabel, starting with <Fact-10351>
, starting with <Fact-10406>
234 g-candidates, 1359 csp-glinks and 792 non-csp glinks
Entering_level_gW2_with_<Fact-12441>
Entering_level_BC3_with_<Fact-12813>
Entering_level_Z3_with_<Fact-12942>
z-chain[3]: c4n9{r3 r2} - r2n2{c4 c3} - r2n6{c3 .} ==> r3c4 ≠ 6
Entering_level_tW3_with_<Fact-13386>
Entering_level_W3_with_<Fact-13832>
Entering_level_gW3_with_<Fact-13833>
Entering_level_BC4_with_<Fact-14490>
biv-chain[4]: r2n2{c3 c4} - r2n9{c4 c7} - b9n9{r9c7 r9c9} - b9n2{r9c9 r8c9} ==> r8c3 ≠ 2
Entering_level_Z4_with_<Fact-14693>
Entering_level_tW4_with_<Fact-15084>
t-whip[4]: r9n9{c9 c7} - r2n9{c7 c4} - r2n2{c4 c3} - c2n2{r3 .} ==> r9c9 ≠ 2
hidden-single-in-a-block ==> r8c9 = 2
Entering_level_W4_with_<Fact-15830>
whip[4]: c3n4{r9 r4} - c6n4{r4 r3} - c7n4{r3 r8} - c5n4{r8 .} ==> r9c1 ≠ 4
Entering_level_gW4_with_<Fact-15854>
Entering_level_BC5_with_<Fact-16769>
biv-chain[5]: r9n9{c9 c7} - r2n9{c7 c4} - r2n2{c4 c3} - b4n2{r4c3 r4c1} - b4n9{r4c1 r6c1} ==> r6c9 ≠ 9
Entering_level_Z5_with_<Fact-17154>
Entering_level_tW5_with_<Fact-17426>
Entering_level_W5_with_<Fact-18228>
Entering_level_gW5_with_<Fact-18229>
g-whip[5]: c3n4{r9 r4} - b5n4{r4c6 r456c4} - b8n4{r8c4 r9c456} - c7n4{r9 r3} - b2n4{r3c4 .} ==> r8c1 ≠ 4
g-whip[5]: r7n1{c3 c4} - b5n1{r6c4 r4c456} - c7n1{r4 r123} - r1n1{c9 c2} - b4n1{r5c2 .} ==> r8c1 ≠ 1
Entering_level_BC6_with_<Fact-20013>
Entering_level_Z6_with_<Fact-20014>
Entering_level_tW6_with_<Fact-20191>
t-whip[6]: b9n6{r7c9 r9c9} - r9n9{c9 c7} - r2n9{c7 c4} - r2n2{c4 c3} - c2n2{r3 r9} - c2n5{r9 .} ==> r7c2 ≠ 6
Entering_level_W6_with_<Fact-21509>
Entering_level_gW6_with_<Fact-21510>
Entering_level_BC7_with_<Fact-23994>
Entering_level_Z7_with_<Fact-23995>
Entering_level_tW7_with_<Fact-24077>
Entering_level_W7_with_<Fact-25891>
whip[7]: r9n8{c1 c2} - b7n2{r9c2 r9c3} - r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - r9n6{c9 c5} - b2n6{r2c5 .} ==> r9c1 ≠ 3
whip[7]: r9n8{c2 c1} - b7n2{r9c1 r9c3} - r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - r9n6{c9 c5} - b2n6{r2c5 .} ==> r9c2 ≠ 3
whip[7]: r9n8{c2 c1} - b7n2{r9c1 r9c3} - r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - r9n6{c9 c5} - b2n6{r2c5 .} ==> r9c2 ≠ 5
hidden-single-in-a-block ==> r7c2 = 5
t-whip[5]: b9n5{r9c7 r9c9} - r9n9{c9 c7} - b3n9{r3c7 r3c8} - c8n2{r3 r1} - b3n5{r1c8 .} ==> r4c7 ≠ 5
Entering_level_gW7_with_<Fact-30454>
g-whip[7]: r2n9{c4 c7} - r9n9{c7 c9} - b9n6{r9c9 r7c789} - c4n6{r7 r8} - r8c1{n6 n3} - c3n3{r9 r4} - b5n3{r4c4 .} ==> r2c4 ≠ 3
g-whip[7]: r4n2{c1 c3} - r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - b9n6{r9c9 r7c789} - c4n6{r7 r8} - r8c1{n6 .} ==> r4c1 ≠ 3
g-whip[7]: r7c9{n6 n4} - r7c8{n4 n3} - b6n3{r4c8 r4c7} - b5n3{r4c5 r456c4} - b2n3{r1c4 r2c456} - c3n3{r2 r789} - r8c1{n3 .} ==> r7c1 ≠ 6
g-whip[7]: r7c9{n6 n4} - r7c8{n4 n3} - b6n3{r4c8 r4c7} - b5n3{r4c5 r456c4} - b2n3{r1c4 r2c456} - c3n3{r2 r789} - r8c1{n3 .} ==> r7c3 ≠ 6
Entering_level_BC8_with_<Fact-37567>
Entering_level_Z8_with_<Fact-37568>
Entering_level_tW8_with_<Fact-37611>
Entering_level_W8_with_<Fact-40424>
Entering_level_gW8_with_<Fact-40425>
g-whip[8]: r9n9{c9 c7} - r2n9{c7 c4} - c4n6{r2 r789} - r9n6{c5 c123} - r8c1{n6 n3} - c7n3{r8 r4} - c3n3{r4 r2} - r2n2{c3 .} ==> r9c9 ≠ 5
whip[1]: b9n5{r9c7 .} ==> r3c7 ≠ 5
g-whip[8]: r9n9{c9 c7} - r2n9{c7 c4} - c4n6{r2 r789} - r9n6{c5 c123} - r8c1{n6 n3} - c7n3{r8 r4} - c3n3{r4 r2} - r2n2{c3 .} ==> r9c9 ≠ 4
whip[8]: r4n2{c3 c1} - c1n4{r4 r7} - r7c9{n4 n6} - r4n6{c9 c8} - r7c8{n6 n3} - b6n3{r4c8 r4c7} - r4n9{c7 c9} - r9c9{n9 .} ==> r4c3 ≠ 4
whip[1]: c3n4{r9 .} ==> r7c1 ≠ 4
g-whip[8]: b5n4{r4c6 r456c4} - r1n4{c4 c9} - r7c9{n4 n6} - r7c8{n6 n3} - r6c8{n3 n9} - r4n9{c9 c1} - r4n6{c1 c3} - r4n2{c3 .} ==> r4c8 ≠ 4
g-whip[8]: c1n9{r6 r4} - r4n2{c1 c3} - r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - b9n6{r9c9 r7c789} - c4n6{r7 r8} - r8c1{n6 .} ==> r6c1 ≠ 3
Entering_level_BC9_with_<Fact-56903>
Entering_level_Z9_with_<Fact-56904>
Entering_level_tW9_with_<Fact-56915>
Entering_level_W9_with_<Fact-62139>
Entering_level_gW9_with_<Fact-62140>
g-whip[9]: r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - b9n6{r9c9 r7c789} - c4n6{r7 r8} - r8c1{n6 n3} - r1c1{n3 n1} - r7c1{n1 n7} - r3n7{c1 .} ==> r3c3 ≠ 2
g-whip[9]: r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - b9n6{r9c9 r7c789} - c4n6{r7 r8} - r8c1{n6 n3} - c3n3{r9 r4} - r4n2{c3 c1} - r1c1{n2 .} ==> r2c3 ≠ 1
whip[5]: r2n1{c6 c7} - r2n9{c7 c4} - r2n2{c4 c3} - r1c2{n2 n3} - r1c1{n3 .} ==> r1c4 ≠ 1
g-whip[9]: r3n8{c2 c1} - r9n8{c1 c2} - c2n2{r9 r1} - r2c3{n2 n3} - b2n3{r2c5 r1c4} - b5n3{r5c4 r4c456} - b6n3{r4c7 r456c8} - r7n3{c8 c1} - c1n7{r7 .} ==> r3c2 ≠ 6
t-whip[4]: c2n6{r5 r9} - r9n8{c2 c1} - b7n2{r9c1 r9c3} - r4n2{c3 .} ==> r4c1 ≠ 6
whip[5]: c2n6{r5 r9} - r8c1{n6 n3} - r1n3{c1 c4} - r7n3{c4 c8} - r6n3{c8 .} ==> r5c2 ≠ 3
t-whip[6]: c2n6{r5 r9} - r9n8{c2 c1} - b7n2{r9c1 r9c3} - r4n2{c3 c1} - c1n9{r4 r6} - c1n4{r6 .} ==> r5c1 ≠ 6
t-whip[6]: r4n6{c9 c3} - b1n6{r3c3 r3c1} - r8c1{n6 n3} - b4n3{r5c1 r6c2} - r1n3{c2 c4} - r5n3{c4 .} ==> r5c8 ≠ 6
whip[6]: b1n6{r3c3 r3c1} - r8c1{n6 n3} - c3n3{r7 r2} - b2n3{r2c5 r1c4} - r7n3{c4 c8} - c8n6{r7 .} ==> r4c3 ≠ 6
hidden-single-in-a-block ==> r5c2 = 6
whip[7]: r7n7{c3 c1} - r7n1{c1 c4} - b7n1{r7c3 r8c3} - r4c3{n1 n2} - r2c3{n2 n6} - c4n6{r2 r8} - r8c1{n6 .} ==> r7c3 ≠ 3
g-whip[4]: b5n3{r4c6 r456c4} - b2n3{r1c4 r2c456} - c3n3{r2 r789} - r7n3{c1 .} ==> r4c8 ≠ 3
g-whip[4]: c7n3{r4 r789} - r7n3{c8 c1} - r1n3{c1 c2} - b4n3{r6c2 .} ==> r4c4 ≠ 3
g-whip[4]: b5n3{r6c4 r4c456} - c7n3{r4 r9} - c3n3{r9 r2} - b2n3{r2c5 .} ==> r8c4 ≠ 3
g-whip[7]: r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - b9n6{r9c9 r7c789} - c4n6{r7 r8} - c1n6{r8 r9} - c1n8{r9 .} ==> r3c1 ≠ 2
t-whip[8]: c1n8{r9 r3} - r3n7{c1 c3} - r3n6{c3 c5} - b1n6{r3c1 r2c3} - r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - r9n6{c9 .} ==> r9c1 ≠ 2
whip[5]: r9c2{n2 n8} - r9c1{n8 n6} - r8c1{n6 n3} - r1c1{n3 n1} - r3c2{n1 .} ==> r1c2 ≠ 2
biv-chain[2]: r6c2{n1 n3} - r1c2{n3 n1} ==> r3c2 ≠ 1
t-whip[8]: r3n5{c6 c8} - c8n2{r3 r1} - c1n2{r1 r4} - c1n9{r4 r6} - c8n9{r6 r4} - r4n6{c8 c9} - r7c9{n6 n4} - r1n4{c9 .} ==> r1c4 ≠ 5
whip[1]: r1n5{c9 .} ==> r3c8 ≠ 5
whip[8]: r3n7{c1 c3} - r3n6{c3 c5} - b1n6{r3c1 r2c3} - r2n2{c3 c4} - r2n9{c4 c7} - r9n9{c7 c9} - r9n6{c9 c1} - c1n8{r9 .} ==> r3c1 ≠ 1
t-whip[8]: b1n1{r1c2 r3c3} - r3n7{c3 c1} - c1n8{r3 r9} - c1n6{r9 r8} - r3n6{c1 c5} - r9n6{c5 c9} - r9n9{c9 c7} - r2c7{n9 .} ==> r1c9 ≠ 1
whip[1]: c9n1{r6 .} ==> r4c7 ≠ 1
whip[1]: r1n1{c2 .} ==> r3c3 ≠ 1
t-whip[4]: r6c2{n3 n1} - b1n1{r1c2 r1c1} - c1n2{r1 r4} - r4c3{n2 .} ==> r5c1 ≠ 3
t-whip[6]: r5c1{n4 n1} - r6c2{n1 n3} - r4c3{n3 n2} - c1n2{r4 r1} - r1n3{c1 c4} - r5n3{c4 .} ==> r5c8 ≠ 4
whip[7]: c1n2{r4 r1} - r2n2{c3 c4} - r2n9{c4 c7} - r4c7{n9 n3} - b4n3{r4c3 r6c2} - r1n3{c2 c4} - r5n3{c4 .} ==> r4c1 ≠ 4
t-whip[7]: c1n4{r5 r6} - c1n9{r6 r4} - c1n2{r4 r1} - b1n1{r1c1 r1c2} - r1n3{c2 c4} - r5n3{c4 c8} - r4c7{n3 .} ==> r5c9 ≠ 4
whip[8]: c1n2{r4 r1} - b1n1{r1c1 r1c2} - r1n3{c2 c4} - r5n3{c4 c8} - r7n3{c8 c1} - r7n7{c1 c3} - r7n1{c3 c4} - b5n1{r4c4 .} ==> r4c1 ≠ 1
whip[8]: r3c3{n6 n7} - r3c1{n7 n8} - r9c1{n8 n6} - r8c1{n6 n3} - c3n3{r8 r4} - c7n3{r4 r9} - c6n3{r9 r2} - c5n3{r2 .} ==> r2c3 ≠ 6
whip[1]: r2n6{c5 .} ==> r3c5 ≠ 6
biv-chain[2]: b1n7{r3c1 r3c3} - b1n6{r3c3 r3c1} ==> r3c1 ≠ 8
hidden-single-in-a-block ==> r3c2 = 8
naked-single ==> r9c2 = 2
hidden-single-in-a-block ==> r9c1 = 8
whip[8]: r7c9{n4 n6} - r7c8{n6 n3} - r5n3{c8 c4} - r6n3{c4 c2} - r1n3{c2 c1} - r8c1{n3 n6} - r3n6{c1 c3} - c3n7{r3 .} ==> r7c3 ≠ 4
g-whip[3]: b5n4{r6c4 r4c456} - c7n4{r4 r789} - r7n4{c9 .} ==> r3c4 ≠ 4
g-whip[3]: b2n4{r1c4 r3c456} - c7n4{r3 r789} - r7n4{c9 .} ==> r4c4 ≠ 4
g-whip[3]: b5n4{r4c6 r456c4} - r1n4{c4 c8} - r7n4{c8 .} ==> r4c9 ≠ 4
whip[4]: r1n4{c9 c4} - r7n4{c4 c9} - b6n4{r6c9 r4c7} - b5n4{r4c5 .} ==> r3c8 ≠ 4
whip[8]: r2c3{n2 n3} - b2n3{r2c5 r1c4} - r5n3{c4 c8} - r7n3{c8 c1} - r8c1{n3 n6} - c4n6{r8 r7} - r7c9{n6 n4} - r7c8{n4 .} ==> r2c4 ≠ 2
hidden-single-in-a-row ==> r2c3 = 2
hidden-single-in-a-column ==> r4c1 = 2
hidden-single-in-a-block ==> r6c1 = 9
hidden-single-in-a-block ==> r5c1 = 4
whip[1]: r2n3{c6 .} ==> r1c4 ≠ 3
biv-chain[4]: b3n5{r1c9 r1c8} - c8n2{r1 r3} - c8n9{r3 r4} - r4n6{c8 c9} ==> r4c9 ≠ 5
whip[4]: c3n3{r9 r4} - c7n3{r4 r9} - c6n3{r9 r2} - c5n3{r2 .} ==> r8c1 ≠ 3
naked-single ==> r8c1 = 6
naked-single ==> r3c1 = 7
naked-single ==> r3c3 = 6
hidden-single-in-a-column ==> r7c3 = 7
biv-chain[2]: r7n1{c4 c1} - c3n1{r8 r4} ==> r4c4 ≠ 1
whip[2]: c3n1{r8 r4} - b5n1{r4c5 .} ==> r8c4 ≠ 1
biv-chain[3]: b7n4{r9c3 r8c3} - r8c4{n4 n5} - b9n5{r8c7 r9c7} ==> r9c7 ≠ 4
biv-chain[3]: r5n1{c9 c4} - b8n1{r7c4 r8c5} - c3n1{r8 r4} ==> r4c9 ≠ 1
z-chain[3]: r8c4{n4 n5} - r9c6{n5 n3} - r9c3{n3 .} ==> r9c5 ≠ 4
z-chain[3]: b8n1{r7c4 r8c5} - c3n1{r8 r4} - c6n1{r4 .} ==> r3c4 ≠ 1
z-chain[3]: b8n1{r7c4 r8c5} - c3n1{r8 r4} - c6n1{r4 .} ==> r2c4 ≠ 1
g-whip[3]: b5n4{r6c4 r4c456} - c7n4{r4 r3} - b2n4{r3c5 .} ==> r8c4 ≠ 4
naked-single ==> r8c4 = 5
naked-single ==> r4c4 = 8
hidden-single-in-a-block ==> r6c9 = 8
hidden-single-in-a-block ==> r5c9 = 1
naked-single ==> r5c4 = 3
naked-single ==> r5c8 = 5
hidden-single-in-a-block ==> r1c9 = 5
hidden-single-in-a-column ==> r7c9 = 4
naked-single ==> r8c7 = 3
naked-single ==> r7c8 = 6
naked-single ==> r4c8 = 9
naked-single ==> r3c8 = 2
naked-single ==> r1c8 = 4
naked-single ==> r1c4 = 2
naked-single ==> r6c8 = 3
naked-single ==> r6c2 = 1
naked-single ==> r1c2 = 3
naked-single ==> r1c1 = 1
naked-single ==> r7c1 = 3
naked-single ==> r9c3 = 4
naked-single ==> r8c3 = 1
naked-single ==> r8c5 = 4
naked-single ==> r9c6 = 3
naked-single ==> r2c6 = 1
naked-single ==> r2c7 = 9
naked-single ==> r2c4 = 6
naked-single ==> r2c5 = 3
naked-single ==> r3c7 = 1
naked-single ==> r9c7 = 5
naked-single ==> r3c5 = 5
naked-single ==> r3c6 = 4
naked-single ==> r4c6 = 5
naked-single ==> r4c5 = 1
naked-single ==> r9c5 = 6
naked-single ==> r4c3 = 3
naked-single ==> r6c4 = 4
naked-single ==> r3c4 = 9
naked-single ==> r4c7 = 4
naked-single ==> r4c9 = 6
naked-single ==> r7c4 = 1
naked-single ==> r9c9 = 9
PUZZLE 0 IS SOLVED. rating-type = gW, MOST COMPLEX RULE TRIED = gW[9]
   139287645
   542631987
   786954123
   273815496
   468329751
   915476238
   357192864
   691548372
   824763519

nb-facts = <Fact-215248>
Puzzle ..9.876..54......7........3.7.........8.29.....5..62......928...9...8.7....7...1. :
init-time = 0.19s, solve-time = 4m 40.26s, total-time = 4m 40.45s
nb-facts = <Fact-215248>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = gW
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************






--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

Using Subsets plus Finned-Fish, the solution is much simpler (SFin+W4 is enough):

(solve "..9.876..54......7........3.7.........8.29.....5..62......928...9...8.7....7...1.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
..9.876..54......7........3.7.........8.29.....5..62......928...9...8.7....7...1.
23 givens, 242 candidates
entering BRT
hidden-single-in-a-row ==> r6c5 = 7
hidden-single-in-a-row ==> r5c7 = 7
hidden-single-in-a-row ==> r2c8 = 8
Starting_init_links_with_<Fact-3700>

Starting non trivial part of solution.
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 123    123    9      ! 12345  8      7      ! 6      245    1245   !
   ! 5      4      1236   ! 12369  136    13     ! 19     8      7      !
   ! 12678  1268   1267   ! 124569 1456   145    ! 1459   2459   3      !
   +----------------------+----------------------+----------------------+
   ! 123469 7      12346  ! 13458  1345   1345   ! 13459  34569  145689 !
   ! 1346   136    8      ! 1345   2      9      ! 7      3456   1456   !
   ! 1349   13     5      ! 1348   7      6      ! 2      349    1489   !
   +----------------------+----------------------+----------------------+
   ! 13467  1356   13467  ! 13456  9      2      ! 8      3456   456    !
   ! 12346  9      12346  ! 13456  13456  8      ! 345    7      2456   !
   ! 23468  23568  2346   ! 7      3456   345    ! 3459   1      24569  !
   +----------------------+----------------------+----------------------+

230 candidates, 1649 csp-links and 1649 links. Density = 6.26%

Entering_level_W1_with_<Fact-9829>
whip[1]: c8n2{r3 .} ==> r1c9 ≠ 2
Entering_relation_bivalue_with_<Fact-9832>
Entering_level_S2_with_<Fact-9907>
Entering_level_BC2_with_<Fact-9951>
Entering_level_Z2_with_<Fact-10082>
Entering_level_tW2_with_<Fact-10393>
Entering_level_W2_with_<Fact-10394>
Entering_level_S3_with_<Fact-10395>
Entering_level_BC3_with_<Fact-10403>
Entering_level_Z3_with_<Fact-10532>
z-chain[3]: c4n9{r3 r2} - r2n2{c4 c3} - r2n6{c3 .} ==> r3c4 ≠ 6
Entering_level_tW3_with_<Fact-10957>
Entering_level_W3_with_<Fact-11403>
Entering_level_S4_with_<Fact-11404>
finned-jellyfish-in-rows: n4{r6 r1 r5 r7}{c9 c8 c4 c1} ==> r9c1 ≠ 4, r8c1 ≠ 4
finned-jellyfish-in-rows: n3{r6 r5 r1 r7}{c8 c4 c2 c1} ==> r9c2 ≠ 3, r9c1 ≠ 3, r8c1 ≠ 3
finned-jellyfish-in-rows: n1{r6 r5 r1 r7}{c4 c9 c2 c1} ==> r8c1 ≠ 1
Entering_level_BC4_with_<Fact-11895>
biv-chain[4]: r2n2{c3 c4} - r2n9{c4 c7} - b9n9{r9c7 r9c9} - b9n2{r9c9 r8c9} ==> r8c3 ≠ 2
Entering_level_Z4_with_<Fact-12091>
z-chain[4]: r8c1{n6 n2} - r4n2{c1 c3} - r2n2{c3 c4} - c4n6{r2 .} ==> r8c5 ≠ 6
Entering_level_tW4_with_<Fact-12561>
t-whip[4]: r9n9{c9 c7} - r2n9{c7 c4} - r2n2{c4 c3} - c2n2{r3 .} ==> r9c9 ≠ 2
hidden-single-in-a-block ==> r8c9 = 2
naked-single ==> r8c1 = 6
biv-chain[4]: r9n9{c9 c7} - r2n9{c7 c4} - c4n6{r2 r7} - r9n6{c5 c9} ==> r9c9 ≠ 4, r9c9 ≠ 5
biv-chain[4]: r2c7{n1 n9} - b9n9{r9c7 r9c9} - r9n6{c9 c5} - c4n6{r7 r2} ==> r2c4 ≠ 1
biv-chain[4]: r2n9{c4 c7} - b9n9{r9c7 r9c9} - r9n6{c9 c5} - c4n6{r7 r2} ==> r2c4 ≠ 2, r2c4 ≠ 3
hidden-single-in-a-row ==> r2c3 = 2
hidden-single-in-a-column ==> r9c2 = 2
naked-single ==> r9c1 = 8
hidden-single-in-a-block ==> r3c2 = 8
hidden-single-in-a-block ==> r3c3 = 6
hidden-single-in-a-block ==> r3c1 = 7
hidden-single-in-a-block ==> r7c3 = 7
hidden-single-in-a-block ==> r5c2 = 6
hidden-single-in-a-column ==> r4c1 = 2
hidden-single-in-a-block ==> r6c1 = 9
hidden-single-in-a-block ==> r7c2 = 5
whip[1]: b9n5{r9c7 .} ==> r3c7 ≠ 5, r4c7 ≠ 5
whip[1]: b1n1{r1c2 .} ==> r1c4 ≠ 1, r1c9 ≠ 1
whip[1]: c9n1{r6 .} ==> r4c7 ≠ 1
whip[1]: r2n3{c6 .} ==> r1c4 ≠ 3
biv-chain[2]: r7n1{c4 c1} - c3n1{r8 r4} ==> r4c4 ≠ 1
whip[2]: c3n1{r8 r4} - b5n1{r4c5 .} ==> r8c4 ≠ 1
z-chain[3]: b8n1{r7c4 r8c5} - c3n1{r8 r4} - c6n1{r4 .} ==> r3c4 ≠ 1
whip[3]: c3n1{r4 r8} - b8n1{r8c5 r7c4} - b5n1{r5c4 .} ==> r4c9 ≠ 1
biv-chain[3]: c9n1{r5 r6} - r6c2{n1 n3} - r6c8{n3 n4} ==> r5c9 ≠ 4
jellyfish-in-columns: n3{c3 c5 c6 c7}{r4 r8 r2 r9} ==> r8c4 ≠ 3, r4c8 ≠ 3, r4c4 ≠ 3
z-chain[3]: r8c4{n4 n5} - r9c6{n5 n3} - r9c3{n3 .} ==> r9c5 ≠ 4
jellyfish-in-columns: n4{c3 c5 c6 c7}{r4 r8 r3 r9} ==> r8c4 ≠ 4, r4c9 ≠ 4, r4c8 ≠ 4, r4c4 ≠ 4, r3c8 ≠ 4, r3c4 ≠ 4
naked-single ==> r8c4 = 5
naked-single ==> r4c4 = 8
hidden-single-in-a-block ==> r6c9 = 8
hidden-single-in-a-block ==> r5c9 = 1
hidden-single-in-a-row ==> r5c8 = 5
hidden-single-in-a-block ==> r1c9 = 5
hidden-single-in-a-column ==> r7c9 = 4
naked-single ==> r8c7 = 3
naked-single ==> r7c8 = 6
naked-single ==> r4c8 = 9
naked-single ==> r3c8 = 2
naked-single ==> r1c8 = 4
naked-single ==> r1c4 = 2
naked-single ==> r6c8 = 3
naked-single ==> r6c2 = 1
naked-single ==> r1c2 = 3
naked-single ==> r1c1 = 1
naked-single ==> r7c1 = 3
naked-single ==> r5c1 = 4
naked-single ==> r4c3 = 3
naked-single ==> r5c4 = 3
naked-single ==> r7c4 = 1
naked-single ==> r8c5 = 4
naked-single ==> r8c3 = 1
naked-single ==> r9c6 = 3
naked-single ==> r2c6 = 1
naked-single ==> r2c7 = 9
naked-single ==> r2c4 = 6
naked-single ==> r2c5 = 3
naked-single ==> r3c7 = 1
naked-single ==> r9c7 = 5
naked-single ==> r3c5 = 5
naked-single ==> r3c6 = 4
naked-single ==> r4c6 = 5
naked-single ==> r4c5 = 1
naked-single ==> r9c5 = 6
naked-single ==> r9c3 = 4
naked-single ==> r6c4 = 4
naked-single ==> r3c4 = 9
naked-single ==> r4c7 = 4
naked-single ==> r4c9 = 6
naked-single ==> r9c9 = 9
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = tW[4]
   139287645
   542631987
   786954123
   273815496
   468329751
   915476238
   357192864
   691548372
   824763519

nb-facts = <Fact-19533>
Puzzle ..9.876..54......7........3.7.........8.29.....5..62......928...9...8.7....7...1. :
init-time = 0.2s, solve-time = 4.0s, total-time = 4.21s
nb-facts = <Fact-19533>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
