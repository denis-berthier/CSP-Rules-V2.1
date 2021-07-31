http://forum.enjoysudoku.com/tatooine-moisture-farm-t38903.html

+-------+-------+-------+
! . . . ! . . . ! . . . !
! . . 9 ! 8 . . ! . . 7 !
! . 6 . ! . 5 . ! . 4 . !
+-------+-------+-------+
! . 5 . ! . 3 . ! . 6 . !
! . . 7 ! 9 . . ! . . 8 !
! . . . ! . . 4 ! . . . !
+-------+-------+-------+
! . . . ! . . . ! . . . !
! . . 8 ! 2 . . ! . . 9 !
! . 4 2 ! . 6 . ! . 5 . !
+-------+-------+-------+
...........98....7.6..5..4..5..3..6...79....8.....4..............82....9.42.6..5.
SER = 6.8


Using only Subsets and Finned Subsets:

(solve "...........98....7.6..5..4..5..3..6...79....8.....4..............82....9.42.6..5.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = SFin
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...........98....7.6..5..4..5..3..6...79....8.....4..............82....9.42.6..5.
20 givens, 263 candidates
entering BRT
Starting_init_links_with_<Fact-3714>

Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 1234578 12378   1345    ! 13467   12479   123679  ! 1235689 12389   12356   !
   ! 12345   123     9       ! 8       124     1236    ! 12356   123     7       !
   ! 12378   6       13      ! 137     5       12379   ! 12389   4       123     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       14      ! 17      3       1278    ! 12479   6       124     !
   ! 12346   123     7       ! 9       12      1256    ! 12345   123     8       !
   ! 123689  12389   136     ! 1567    1278    4       ! 123579  12379   1235    !
   +-------------------------+-------------------------+-------------------------+
   ! 135679  1379    1356    ! 13457   14789   135789  ! 1234678 12378   12346   !
   ! 13567   137     8       ! 2       147     1357    ! 13467   137     9       !
   ! 1379    4       2       ! 137     6       13789   ! 1378    5       13      !
   +-------------------------+-------------------------+-------------------------+

263 candidates, 2099 csp-links and 2099 links. Density = 6.09%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-11555>
Entering_relation_bivalue_with_<Fact-11556>
Entering_level_S2_with_<Fact-11633>
hidden-pairs-in-a-block: b5{n5 n6}{r5c6 r6c4} ==> r6c4 ≠ 7, r6c4 ≠ 1, r5c6 ≠ 2, r5c6 ≠ 1
Entering_level_S3_with_<Fact-11645>
naked-triplets-in-a-row: r5{c2 c5 c8}{n3 n2 n1} ==> r5c7 ≠ 3, r5c7 ≠ 2, r5c7 ≠ 1, r5c1 ≠ 3, r5c1 ≠ 2, r5c1 ≠ 1
naked-triplets-in-a-column: c4{r3 r4 r9}{n3 n7 n1} ==> r7c4 ≠ 7, r7c4 ≠ 3, r7c4 ≠ 1, r1c4 ≠ 7, r1c4 ≠ 3, r1c4 ≠ 1
swordfish-in-columns: n6{c3 c4 c9}{r7 r6 r1} ==> r7c7 ≠ 6, r7c1 ≠ 6, r6c1 ≠ 6, r1c7 ≠ 6, r1c6 ≠ 6
swordfish-in-columns: n9{c2 c5 c8}{r6 r7 r1} ==> r7c6 ≠ 9, r7c1 ≠ 9, r6c7 ≠ 9, r6c1 ≠ 9, r1c7 ≠ 9, r1c6 ≠ 9
swordfish-in-columns: n4{c3 c4 c9}{r4 r1 r7} ==> r7c7 ≠ 4, r7c5 ≠ 4, r4c7 ≠ 4, r4c1 ≠ 4, r1c5 ≠ 4, r1c1 ≠ 4
hidden-pairs-in-a-block: b9{n4 n6}{r7c9 r8c7} ==> r8c7 ≠ 7, r8c7 ≠ 3, r8c7 ≠ 1, r7c9 ≠ 3, r7c9 ≠ 2, r7c9 ≠ 1
swordfish-in-rows: n8{r3 r4 r9}{c7 c1 c6} ==> r7c7 ≠ 8, r7c6 ≠ 8, r6c1 ≠ 8, r1c7 ≠ 8, r1c1 ≠ 8
hidden-pairs-in-a-block: b3{n8 n9}{r1c8 r3c7} ==> r3c7 ≠ 3, r3c7 ≠ 2, r3c7 ≠ 1, r1c8 ≠ 3, r1c8 ≠ 2, r1c8 ≠ 1
hidden-pairs-in-a-block: b4{n8 n9}{r4c1 r6c2} ==> r6c2 ≠ 3, r6c2 ≠ 2, r6c2 ≠ 1, r4c1 ≠ 2, r4c1 ≠ 1
hidden-pairs-in-a-block: b8{n8 n9}{r7c5 r9c6} ==> r9c6 ≠ 7, r9c6 ≠ 3, r9c6 ≠ 1, r7c5 ≠ 7, r7c5 ≠ 1
swordfish-in-rows: n5{r2 r5 r8}{c1 c7 c6} ==> r7c6 ≠ 5, r7c1 ≠ 5, r6c7 ≠ 5, r1c7 ≠ 5, r1c1 ≠ 5
hidden-pairs-in-a-block: b1{n4 n5}{r1c3 r2c1} ==> r2c1 ≠ 3, r2c1 ≠ 2, r2c1 ≠ 1, r1c3 ≠ 3, r1c3 ≠ 1
hidden-pairs-in-a-block: b3{n5 n6}{r1c9 r2c7} ==> r2c7 ≠ 3, r2c7 ≠ 2, r2c7 ≠ 1, r1c9 ≠ 3, r1c9 ≠ 2, r1c9 ≠ 1
hidden-pairs-in-a-block: b7{n5 n6}{r7c3 r8c1} ==> r8c1 ≠ 7, r8c1 ≠ 3, r8c1 ≠ 1, r7c3 ≠ 3, r7c3 ≠ 1
swordfish-in-columns: n3{c3 c4 c9}{r6 r3 r9} ==> r9c7 ≠ 3, r9c1 ≠ 3, r6c8 ≠ 3, r6c7 ≠ 3, r6c1 ≠ 3, r3c6 ≠ 3, r3c1 ≠ 3
x-wing-in-columns: n3{c1 c7}{r1 r7} ==> r7c8 ≠ 3, r7c6 ≠ 3, r7c2 ≠ 3, r1c6 ≠ 3, r1c2 ≠ 3
hidden-triplets-in-a-column: c6{n3 n5 n6}{r2 r8 r5} ==> r8c6 ≠ 7, r8c6 ≠ 1, r2c6 ≠ 2, r2c6 ≠ 1
hidden-triplets-in-a-row: r6{n3 n5 n6}{c3 c9 c4} ==> r6c9 ≠ 2, r6c9 ≠ 1, r6c3 ≠ 1
swordfish-in-columns: n1{c3 c4 c9}{r4 r3 r9} ==> r9c7 ≠ 1, r9c1 ≠ 1, r4c7 ≠ 1, r4c6 ≠ 1, r3c6 ≠ 1, r3c1 ≠ 1
hidden-pairs-in-a-row: r9{n1 n3}{c4 c9} ==> r9c4 ≠ 7
swordfish-in-columns: n1{c1 c6 c7}{r6 r7 r1} ==> r7c8 ≠ 1, r7c2 ≠ 1, r6c8 ≠ 1, r6c5 ≠ 1, r1c5 ≠ 1, r1c2 ≠ 1
naked-pairs-in-a-block: b7{r7c2 r9c1}{n7 n9} ==> r8c2 ≠ 7, r7c1 ≠ 7
naked-triplets-in-a-column: c2{r2 r5 r8}{n1 n2 n3} ==> r1c2 ≠ 2
Entering_level_S4_with_<Fact-12695>
finned-jellyfish-in-rows: n7{r9 r6 r8 r3}{c1 c7 c8 c5} ==> r1c5 ≠ 7
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
CURRENT RESOLUTION STATE:
   1237      78        45        46        29        127       123       89        56
   45        123       9         8         124       36        56        123       7
   278       6         13        137       5         279       89        4         123
   89        5         14        17        3         278       279       6         124
   46        123       7         9         12        56        45        123       8
   12        89        36        56        278       4         127       279       35
   13        79        56        45        89        17        1237      278       46
   56        13        8         2         147       35        46        137       9
   79        4         2         13        6         89        78        5         13

Puzzle ...........98....7.6..5..4..5..3..6...79....8.....4..............82....9.42.6..5. :
init-time = 0.19s, solve-time = 0.3s, total-time = 0.49s
nb-facts = 0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = SFin
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************



Adding bivalue-chains:

(solve-sukaku-list
   1237      78        45        46        29        127       123       89        56
   45        123       9         8         124       36        56        123       7
   278       6         13        137       5         279       89        4         123
   89        5         14        17        3         278       279       6         124
   46        123       7         9         12        56        45        123       8
   12        89        36        56        278       4         127       279       35
   13        79        56        45        89        17        1237      278       46
   56        13        8         2         147       35        46        137       9
   79        4         2         13        6         89        78        5         13
)
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = BC+SFin
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3597>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5364>
Entering_relation_bivalue_with_<Fact-5365>
Entering_level_S2_with_<Fact-5690>
Entering_level_BC2_with_<Fact-5770>
Entering_level_S3_with_<Fact-8007>
Entering_level_BC3_with_<Fact-8745>
biv-chain[3]: r3c3{n1 n3} - c4n3{r3 r9} - r9n1{c4 c9} ==> r3c9 ≠ 1
biv-chain[3]: r3c9{n2 n3} - c7n3{r1 r7} - b9n2{r7c7 r7c8} ==> r2c8 ≠ 2
biv-chain[2]: r2n2{c5 c2} - b4n2{r5c2 r6c1} ==> r6c5 ≠ 2
biv-chain[3]: r2c8{n1 n3} - r1n3{c7 c1} - r3c3{n3 n1} ==> r2c2 ≠ 1
biv-chain[3]: r2c2{n2 n3} - r1n3{c1 c7} - b3n2{r1c7 r3c9} ==> r3c1 ≠ 2
naked-pairs-in-a-block: b1{r1c2 r3c1}{n7 n8} ==> r1c1 ≠ 7
biv-chain[3]: c4n7{r4 r3} - r3c1{n7 n8} - r4n8{c1 c6} ==> r4c6 ≠ 7
biv-chain[3]: r4c6{n2 n8} - r6c5{n8 n7} - r4n7{c4 c7} ==> r4c7 ≠ 2
x-wing-in-rows: n2{r3 r4}{c6 c9} ==> r1c6 ≠ 2
naked-pairs-in-a-column: c6{r1 r7}{n1 n7} ==> r3c6 ≠ 7
naked-pairs-in-a-block: b2{r1c5 r3c6}{n2 n9} ==> r2c5 ≠ 2
hidden-single-in-a-row ==> r2c2 = 2
hidden-single-in-a-column ==> r6c1 = 2
hidden-single-in-a-row ==> r6c7 = 1
hidden-single-in-a-block ==> r2c8 = 1
naked-single ==> r2c5 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r1c1 = 1
naked-single ==> r1c6 = 7
naked-single ==> r1c2 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c7 = 3
naked-single ==> r3c6 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r4c9 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c6 = 6
naked-single ==> r5c1 = 4
naked-single ==> r7c9 = 6
naked-single ==> r7c3 = 5
naked-single ==> r7c4 = 4
naked-single ==> r8c1 = 6
naked-single ==> r8c7 = 4
naked-single ==> r7c5 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r9c1 = 9
naked-single ==> r4c1 = 8
naked-single ==> r9c7 = 7
naked-single ==> r4c7 = 9
naked-single ==> r8c8 = 3
naked-single ==> r5c8 = 2
naked-single ==> r8c2 = 1
naked-single ==> r8c5 = 7
naked-single ==> r6c5 = 8
naked-single ==> r8c6 = 5
naked-single ==> r9c9 = 1
naked-single ==> r9c4 = 3
naked-single ==> r5c5 = 1
naked-single ==> r3c7 = 8
naked-single ==> r6c8 = 7
naked-single ==> r3c1 = 7
naked-single ==> r6c2 = 9
naked-single ==> r3c4 = 1
naked-single ==> r7c6 = 1
naked-single ==> r7c1 = 3
naked-single ==> r3c9 = 2
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r5c2 = 3
naked-single ==> r2c7 = 6
naked-single ==> r6c9 = 3
naked-single ==> r2c6 = 3
naked-single ==> r6c4 = 5
naked-single ==> r2c1 = 5
PUZZLE 0 IS SOLVED. rating-type = BC+SFin, MOST COMPLEX RULE TRIED = BC[3]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-10465>
Puzzle (1237 78 45 46 29 127 123 89 56 45 123 9 8 124 36 56 123 7 278 6 13 137 5 279 89 4 123 89 5 14 17 3 278 279 6 124 46 123 7 9 12 56 45 123 8 12 89 36 56 278 4 127 279 35 13 79 56 45 89 17 1237 278 46 56 13 8 2 147 35 46 137 9 79 4 2 13 6 89 78 5 13) :
init-time = 0.01s, solve-time = 0.3s, total-time = 0.32s
nb-facts = <Fact-10465>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = BC+SFin
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************




---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

18 W1-ANTI-BACKDOORS FOUND:
n6r8c7 n4r8c5 n5r8c1 n4r7c9 n5r7c4 n6r7c3 n5r6c9 n6r6c4 n4r5c7 n5r5c6 n6r5c1 n4r4c3 n5r2c7 n6r2c6 n4r2c1 n6r1c9 n4r1c4 n5r1c3
computation time = 28.3s


(defglobal ?*RS* = (create$
    1237      78        45        46        29        127       123       89        56
    45        123       9         8         124       36        56        123       7
    278       6         13        137       5         279       89        4         123
    89        5         14        17        3         278       279       6         124
    46        123       7         9         12        56        45        123       8
    12        89        36        56        278       4         127       279       35
    13        79        56        45        89        17        1237      278       46
    56        13        8         2         147       35        46        137       9
    79        4         2         13        6         89        78        5         13

))

(find-sukaku-1-steppers-among-cands
    ?*RS*
    (list-of-nirjck-to-list-of-labels
        n6r8c7 n4r8c5 n5r8c1 n4r7c9 n5r7c4 n6r7c3 n5r6c9 n6r6c4 n4r5c7 n5r5c6 n6r5c1 n4r4c3 n5r2c7 n6r2c6 n4r2c1 n6r1c9 n4r1c4 n5r1c3
    )
)
- or with a single step. There are many possibilities. Here are the simplest ones:
1) Using a bivalue-chain [5]
[code]biv-chain[5]: r2n6{c7 c6} - b2n3{r2c6 r3c4} - c4n7{r3 r4} - c5n7{r6 r8} - r8n4{c5 c7} ==> r8c7 ≠ 6
stte[/code]
[code]biv-chain[5]: r8c6{n5 n3} - b2n3{r2c6 r3c4} - c4n7{r3 r4} - c5n7{r6 r8} - b8n4{r8c5 r7c4} ==> r7c4 ≠ 5
stte[/code]
[code]biv-chain[5]: c5n4{r2 r8} - c5n7{r8 r6} - c4n7{r4 r3} - b2n3{r3c4 r2c6} - b2n6{r2c6 r1c4} ==> r1c4 ≠ 4
stte[/code]
2) Using a z-chain[4]:
[code]z-chain[4]: b8n7{r8c5 r7c6} - b8n1{r7c6 r9c4} - r4c4{n1 n7} - c5n7{r6 .} ==> r8c5 ≠ 4
stte[/code]

Details of calculations:

===> 18 candidates to try.
Trying candidate 687
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22745>
Entering_level_BC4_with_<Fact-22806>
Entering_level_Z4_with_<Fact-119765>
Entering_level_W4_with_<Fact-120129>
Entering_level_BC5_with_<Fact-120495>
biv-chain[5]: r2n6{c7 c6} - b2n3{r2c6 r3c4} - c4n7{r3 r4} - c5n7{r6 r8} - r8n4{c5 c7} ==> r8c7 ≠ 6
naked-single ==> r8c7 = 4
naked-single ==> r5c7 = 5
naked-single ==> r2c7 = 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r6c4 = 5
naked-single ==> r7c4 = 4
naked-single ==> r2c1 = 5
naked-single ==> r8c1 = 6
naked-single ==> r5c1 = 4
naked-single ==> r7c3 = 5
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r9c9 = 1
naked-single ==> r6c1 = 2
naked-single ==> r5c2 = 3
naked-single ==> r8c2 = 1
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r7c1 = 3
naked-single ==> r8c5 = 7
naked-single ==> r7c6 = 1
naked-single ==> r8c8 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r6c5 = 8
naked-single ==> r2c6 = 3
naked-single ==> r5c6 = 6
naked-single ==> r6c9 = 3
naked-single ==> r7c9 = 6
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = BC[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-303952>
solve-time = 12.3s
nb-facts=<Fact-303952>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 485
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22737>
Entering_level_BC4_with_<Fact-22792>
Entering_level_Z4_with_<Fact-119751>
z-chain[4]: b8n7{r8c5 r7c6} - b8n1{r7c6 r9c4} - r4c4{n1 n7} - c5n7{r6 .} ==> r8c5 ≠ 4
hidden-single-in-a-block ==> r7c4 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r2c1 = 5
naked-single ==> r8c1 = 6
naked-single ==> r5c1 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c6 = 6
naked-single ==> r7c3 = 5
naked-single ==> r8c7 = 4
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r9c9 = 1
naked-single ==> r6c1 = 2
naked-single ==> r5c2 = 3
naked-single ==> r8c2 = 1
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r7c1 = 3
naked-single ==> r8c5 = 7
naked-single ==> r7c6 = 1
naked-single ==> r8c8 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r6c5 = 8
naked-single ==> r2c7 = 6
naked-single ==> r6c9 = 3
naked-single ==> r2c6 = 3
naked-single ==> r6c4 = 5
naked-single ==> r7c9 = 6
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = z-chain[4]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-120123>
solve-time = 1.73s
nb-facts=<Fact-120123>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 581
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22745>
Entering_level_BC4_with_<Fact-22806>
Entering_level_Z4_with_<Fact-119765>
Entering_level_W4_with_<Fact-120122>
Entering_level_BC5_with_<Fact-120479>
Entering_level_Z5_with_<Fact-720456>
Entering_level_W5_with_<Fact-722382>
whip[5]: r8c6{n5 n3} - r9c4{n3 n1} - r7c6{n1 n7} - c5n7{r8 r6} - r4c4{n7 .} ==> r8c1 ≠ 5
naked-single ==> r8c1 = 6
naked-single ==> r5c1 = 4
naked-single ==> r2c1 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r6c9 = 3
naked-single ==> r6c3 = 6
naked-single ==> r9c9 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r7c9 = 6
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r5c6 = 6
naked-single ==> r7c4 = 4
naked-single ==> r2c6 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c8 = 2
naked-single ==> r5c5 = 1
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c3 = 3
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r6c1 = 2
naked-single ==> r7c1 = 3
naked-single ==> r8c2 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r8c8 = 3
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c2 = 3
naked-single ==> r8c5 = 7
naked-single ==> r6c4 = 5
naked-single ==> r2c7 = 6
naked-single ==> r4c3 = 1
naked-single ==> r5c7 = 5
naked-single ==> r7c3 = 5
naked-single ==> r8c7 = 4
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-723552>
solve-time = 12.4s
nb-facts=<Fact-723552>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 479
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7939>
Entering_level_BC3_with_<Fact-7940>
Entering_level_Z3_with_<Fact-22681>
Entering_level_W3_with_<Fact-22736>
Entering_level_BC4_with_<Fact-22789>
Entering_level_Z4_with_<Fact-119748>
Entering_level_W4_with_<Fact-120067>
Entering_level_BC5_with_<Fact-120388>
Entering_level_Z5_with_<Fact-720365>
Entering_level_W5_with_<Fact-722168>
whip[5]: r8n4{c7 c5} - c5n7{r8 r6} - r4c4{n7 n1} - b8n1{r9c4 r7c6} - b8n7{r7c6 .} ==> r7c9 ≠ 4
naked-single ==> r7c9 = 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r2c6 = 3
naked-single ==> r8c6 = 5
naked-single ==> r5c6 = 6
naked-single ==> r5c1 = 4
naked-single ==> r5c7 = 5
naked-single ==> r7c4 = 4
naked-single ==> r8c1 = 6
naked-single ==> r6c4 = 5
naked-single ==> r2c1 = 5
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c2 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r7c1 = 3
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r7c7 = 2
naked-single ==> r8c5 = 7
naked-single ==> r8c8 = 3
naked-single ==> r9c9 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r8c2 = 1
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r6c1 = 2
naked-single ==> r2c7 = 6
naked-single ==> r6c9 = 3
naked-single ==> r7c3 = 5
naked-single ==> r8c7 = 4
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-722615>
solve-time = 12.49s
nb-facts=<Fact-722615>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 574
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7941>
Entering_level_BC3_with_<Fact-7942>
Entering_level_Z3_with_<Fact-22683>
Entering_level_W3_with_<Fact-22753>
Entering_level_BC4_with_<Fact-22821>
Entering_level_Z4_with_<Fact-119780>
Entering_level_W4_with_<Fact-120165>
Entering_level_BC5_with_<Fact-120554>
biv-chain[5]: r8c6{n5 n3} - b2n3{r2c6 r3c4} - c4n7{r3 r4} - c5n7{r6 r8} - b8n4{r8c5 r7c4} ==> r7c4 ≠ 5
naked-single ==> r7c4 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r2c1 = 5
naked-single ==> r8c1 = 6
naked-single ==> r5c1 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c6 = 6
naked-single ==> r7c3 = 5
naked-single ==> r8c7 = 4
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r9c9 = 1
naked-single ==> r6c1 = 2
naked-single ==> r5c2 = 3
naked-single ==> r8c2 = 1
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r7c1 = 3
naked-single ==> r8c5 = 7
naked-single ==> r7c6 = 1
naked-single ==> r8c8 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r6c5 = 8
naked-single ==> r2c7 = 6
naked-single ==> r6c9 = 3
naked-single ==> r2c6 = 3
naked-single ==> r6c4 = 5
naked-single ==> r7c9 = 6
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = BC[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-247776>
solve-time = 11.68s
nb-facts=<Fact-247776>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 673
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22742>
Entering_level_BC4_with_<Fact-22800>
Entering_level_Z4_with_<Fact-119759>
Entering_level_W4_with_<Fact-120103>
Entering_level_BC5_with_<Fact-120445>
Entering_level_Z5_with_<Fact-720422>
Entering_level_W5_with_<Fact-722340>
Entering_level_BC6_with_<Fact-724272>
Entering_level_Z6_with_<Fact-4160783>
Entering_level_W6_with_<Fact-4170651>
whip[6]: r8c1{n6 n5} - r8c6{n5 n3} - r9c4{n3 n1} - r7c6{n1 n7} - c5n7{r8 r6} - r4c4{n7 .} ==> r7c3 ≠ 6
naked-single ==> r7c3 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r2c7 = 6
naked-single ==> r8c7 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c6 = 6
naked-single ==> r5c1 = 4
naked-single ==> r7c9 = 6
naked-single ==> r6c9 = 3
naked-single ==> r6c3 = 6
naked-single ==> r9c9 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r2c6 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c8 = 2
naked-single ==> r5c5 = 1
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c3 = 3
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r6c1 = 2
naked-single ==> r7c1 = 3
naked-single ==> r8c2 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r8c8 = 3
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c2 = 3
naked-single ==> r8c5 = 7
naked-single ==> r6c4 = 5
naked-single ==> r2c1 = 5
naked-single ==> r4c3 = 1
naked-single ==> r7c4 = 4
naked-single ==> r8c1 = 6
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[6]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-4171504>
solve-time = 1m 33.46s
nb-facts=<Fact-4171504>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 569
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22738>
Entering_level_BC4_with_<Fact-22792>
Entering_level_Z4_with_<Fact-119751>
Entering_level_W4_with_<Fact-120073>
Entering_level_BC5_with_<Fact-120393>
Entering_level_Z5_with_<Fact-720370>
Entering_level_W5_with_<Fact-722189>
Entering_level_BC6_with_<Fact-724018>
Entering_level_Z6_with_<Fact-4160529>
Entering_level_W6_with_<Fact-4170010>
whip[6]: r5c7{n5 n4} - r8n4{c7 c5} - c5n7{r8 r6} - r4c4{n7 n1} - b8n1{r9c4 r7c6} - b8n7{r7c6 .} ==> r6c9 ≠ 5
naked-single ==> r6c9 = 3
naked-single ==> r6c3 = 6
naked-single ==> r5c1 = 4
naked-single ==> r2c1 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r2c6 = 3
naked-single ==> r8c6 = 5
naked-single ==> r5c6 = 6
naked-single ==> r7c4 = 4
naked-single ==> r7c9 = 6
naked-single ==> r8c7 = 4
naked-single ==> r2c7 = 6
naked-single ==> r8c1 = 6
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c2 = 3
naked-single ==> r8c2 = 1
naked-single ==> r7c1 = 3
naked-single ==> r8c5 = 7
naked-single ==> r7c6 = 1
naked-single ==> r8c8 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r6c1 = 2
naked-single ==> r5c7 = 5
naked-single ==> r6c4 = 5
naked-single ==> r7c3 = 5
naked-single ==> r9c9 = 1
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[6]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-4170785>
solve-time = 1m 46.93s
nb-facts=<Fact-4170785>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 664
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22742>
Entering_level_BC4_with_<Fact-22800>
Entering_level_Z4_with_<Fact-119759>
Entering_level_W4_with_<Fact-120097>
Entering_level_BC5_with_<Fact-120433>
Entering_level_Z5_with_<Fact-720410>
Entering_level_W5_with_<Fact-722273>
whip[5]: c6n6{r5 r2} - b2n3{r2c6 r3c4} - r9c4{n3 n1} - r7c6{n1 n7} - b2n7{r1c6 .} ==> r6c4 ≠ 6
naked-single ==> r6c4 = 5
naked-single ==> r5c6 = 6
naked-single ==> r2c6 = 3
naked-single ==> r8c6 = 5
naked-single ==> r8c1 = 6
naked-single ==> r7c3 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r2c7 = 6
naked-single ==> r2c1 = 5
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c2 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r7c1 = 3
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r7c7 = 2
naked-single ==> r8c5 = 7
naked-single ==> r8c8 = 3
naked-single ==> r9c9 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r8c2 = 1
naked-single ==> r4c9 = 4
naked-single ==> r5c7 = 5
naked-single ==> r7c9 = 6
naked-single ==> r9c4 = 3
naked-single ==> r6c1 = 2
naked-single ==> r8c7 = 4
naked-single ==> r5c1 = 4
naked-single ==> r6c9 = 3
naked-single ==> r7c4 = 4
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-722966>
solve-time = 14.38s
nb-facts=<Fact-722966>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 457
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22745>
Entering_level_BC4_with_<Fact-22806>
Entering_level_Z4_with_<Fact-119765>
Entering_level_W4_with_<Fact-120121>
Entering_level_BC5_with_<Fact-120479>
Entering_level_Z5_with_<Fact-720456>
Entering_level_W5_with_<Fact-722484>
whip[5]: r8n4{c7 c5} - c5n7{r8 r6} - r4c4{n7 n1} - b8n1{r9c4 r7c6} - b8n7{r7c6 .} ==> r5c7 ≠ 4
naked-single ==> r5c7 = 5
naked-single ==> r2c7 = 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r6c4 = 5
naked-single ==> r7c4 = 4
naked-single ==> r7c9 = 6
naked-single ==> r7c3 = 5
naked-single ==> r8c1 = 6
naked-single ==> r5c1 = 4
naked-single ==> r2c1 = 5
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r9c9 = 1
naked-single ==> r6c1 = 2
naked-single ==> r5c2 = 3
naked-single ==> r8c2 = 1
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r7c1 = 3
naked-single ==> r8c5 = 7
naked-single ==> r7c6 = 1
naked-single ==> r8c8 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r6c5 = 8
naked-single ==> r2c6 = 3
naked-single ==> r8c7 = 4
naked-single ==> r5c6 = 6
naked-single ==> r6c9 = 3
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-723364>
solve-time = 15.25s
nb-facts=<Fact-723364>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 556
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22745>
Entering_level_BC4_with_<Fact-22806>
Entering_level_Z4_with_<Fact-119765>
Entering_level_W4_with_<Fact-120116>
Entering_level_BC5_with_<Fact-120467>
Entering_level_Z5_with_<Fact-720444>
Entering_level_W5_with_<Fact-722321>
whip[5]: r8c6{n5 n3} - r9c4{n3 n1} - r7c6{n1 n7} - c5n7{r8 r6} - r4c4{n7 .} ==> r5c6 ≠ 5
naked-single ==> r5c6 = 6
naked-single ==> r2c6 = 3
naked-single ==> r8c6 = 5
naked-single ==> r7c4 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r2c1 = 5
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r7c3 = 5
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c2 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r7c1 = 3
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r7c7 = 2
naked-single ==> r8c5 = 7
naked-single ==> r8c8 = 3
naked-single ==> r9c9 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r8c2 = 1
naked-single ==> r4c9 = 4
naked-single ==> r5c7 = 5
naked-single ==> r9c4 = 3
naked-single ==> r6c1 = 2
naked-single ==> r2c7 = 6
naked-single ==> r8c7 = 4
naked-single ==> r6c9 = 3
naked-single ==> r7c9 = 6
naked-single ==> r8c1 = 6
naked-single ==> r5c1 = 4
naked-single ==> r6c4 = 5
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-723012>
solve-time = 15.26s
nb-facts=<Fact-723012>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 651
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7941>
Entering_level_BC3_with_<Fact-7942>
Entering_level_Z3_with_<Fact-22683>
Entering_level_W3_with_<Fact-22748>
Entering_level_BC4_with_<Fact-22811>
Entering_level_Z4_with_<Fact-119770>
Entering_level_W4_with_<Fact-120145>
Entering_level_BC5_with_<Fact-120518>
Entering_level_Z5_with_<Fact-720495>
Entering_level_W5_with_<Fact-722590>
whip[5]: c6n6{r5 r2} - b2n3{r2c6 r3c4} - r9c4{n3 n1} - r7c6{n1 n7} - b2n7{r1c6 .} ==> r5c1 ≠ 6
naked-single ==> r5c1 = 4
naked-single ==> r2c1 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r6c9 = 3
naked-single ==> r6c3 = 6
naked-single ==> r7c3 = 5
naked-single ==> r7c4 = 4
naked-single ==> r7c9 = 6
naked-single ==> r8c7 = 4
naked-single ==> r9c9 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r5c6 = 6
naked-single ==> r2c6 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c8 = 2
naked-single ==> r5c5 = 1
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c3 = 3
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r6c1 = 2
naked-single ==> r7c1 = 3
naked-single ==> r8c2 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r8c8 = 3
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c2 = 3
naked-single ==> r8c5 = 7
naked-single ==> r6c4 = 5
naked-single ==> r2c7 = 6
naked-single ==> r8c1 = 6
naked-single ==> r4c3 = 1
naked-single ==> r5c7 = 5
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-724082>
solve-time = 16.35s
nb-facts=<Fact-724082>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 443
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7938>
Entering_level_BC3_with_<Fact-7939>
Entering_level_Z3_with_<Fact-22680>
Entering_level_W3_with_<Fact-22723>
Entering_level_BC4_with_<Fact-22764>
Entering_level_Z4_with_<Fact-119723>
Entering_level_W4_with_<Fact-119985>
Entering_level_BC5_with_<Fact-120245>
Entering_level_Z5_with_<Fact-720222>
Entering_level_W5_with_<Fact-721745>
Entering_level_BC6_with_<Fact-723282>
Entering_level_Z6_with_<Fact-4159793>
Entering_level_W6_with_<Fact-4168072>
whip[6]: r5c1{n4 n6} - c6n6{r5 r2} - b2n3{r2c6 r3c4} - r9c4{n3 n1} - r7c6{n1 n7} - b2n7{r1c6 .} ==> r4c3 ≠ 4
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r5c1 = 4
naked-single ==> r2c1 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r6c9 = 3
naked-single ==> r9c9 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r7c9 = 6
naked-single ==> r8c7 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r5c6 = 6
naked-single ==> r7c4 = 4
naked-single ==> r2c6 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c2 = 3
naked-single ==> r8c2 = 1
naked-single ==> r7c1 = 3
naked-single ==> r8c5 = 7
naked-single ==> r7c6 = 1
naked-single ==> r8c8 = 3
naked-single ==> r5c8 = 2
naked-single ==> r5c5 = 1
naked-single ==> r2c7 = 6
naked-single ==> r8c1 = 6
naked-single ==> r5c7 = 5
naked-single ==> r6c4 = 5
naked-single ==> r7c3 = 5
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r6c1 = 2
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[6]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-4169425>
solve-time = 1m 54.34s
nb-facts=<Fact-4169425>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 527
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22743>
Entering_level_BC4_with_<Fact-22802>
Entering_level_Z4_with_<Fact-119761>
Entering_level_W4_with_<Fact-120120>
Entering_level_BC5_with_<Fact-120477>
Entering_level_Z5_with_<Fact-720454>
Entering_level_W5_with_<Fact-722431>
whip[5]: r2n6{c7 c6} - b2n3{r2c6 r3c4} - r9c4{n3 n1} - r7c6{n1 n7} - b2n7{r1c6 .} ==> r2c7 ≠ 5
naked-single ==> r2c7 = 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r6c4 = 5
naked-single ==> r5c6 = 6
naked-single ==> r5c1 = 4
naked-single ==> r5c7 = 5
naked-single ==> r7c4 = 4
naked-single ==> r7c9 = 6
naked-single ==> r7c3 = 5
naked-single ==> r8c1 = 6
naked-single ==> r2c1 = 5
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r9c9 = 1
naked-single ==> r6c1 = 2
naked-single ==> r5c2 = 3
naked-single ==> r8c2 = 1
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r7c1 = 3
naked-single ==> r8c5 = 7
naked-single ==> r7c6 = 1
naked-single ==> r8c8 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r6c5 = 8
naked-single ==> r6c9 = 3
naked-single ==> r2c6 = 3
naked-single ==> r8c7 = 4
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-724216>
solve-time = 16.5s
nb-facts=<Fact-724216>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 626
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22746>
Entering_level_BC4_with_<Fact-22808>
Entering_level_Z4_with_<Fact-119767>
Entering_level_W4_with_<Fact-120122>
whip[4]: b2n3{r2c6 r3c4} - r9c4{n3 n1} - r7c6{n1 n7} - b2n7{r1c6 .} ==> r2c6 ≠ 6
naked-single ==> r2c6 = 3
naked-single ==> r8c6 = 5
naked-single ==> r5c6 = 6
naked-single ==> r5c1 = 4
naked-single ==> r2c1 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r6c9 = 3
naked-single ==> r6c3 = 6
naked-single ==> r7c3 = 5
naked-single ==> r9c9 = 1
naked-single ==> r3c9 = 2
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c8 = 2
naked-single ==> r5c5 = 1
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c3 = 3
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r6c1 = 2
naked-single ==> r7c1 = 3
naked-single ==> r8c2 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r8c8 = 3
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c2 = 3
naked-single ==> r8c5 = 7
naked-single ==> r4c9 = 4
naked-single ==> r7c9 = 6
naked-single ==> r8c7 = 4
naked-single ==> r9c4 = 3
naked-single ==> r2c7 = 6
naked-single ==> r4c3 = 1
naked-single ==> r5c7 = 5
naked-single ==> r6c4 = 5
naked-single ==> r7c4 = 4
naked-single ==> r8c1 = 6
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[4]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-120515>
solve-time = 2.51s
nb-facts=<Fact-120515>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 421
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7939>
Entering_level_BC3_with_<Fact-7940>
Entering_level_Z3_with_<Fact-22681>
Entering_level_W3_with_<Fact-22736>
Entering_level_BC4_with_<Fact-22789>
Entering_level_Z4_with_<Fact-119748>
Entering_level_W4_with_<Fact-120069>
Entering_level_BC5_with_<Fact-120392>
Entering_level_Z5_with_<Fact-720369>
Entering_level_W5_with_<Fact-722198>
whip[5]: c5n4{r2 r8} - c5n7{r8 r6} - r4c4{n7 n1} - b8n1{r9c4 r7c6} - b8n7{r7c6 .} ==> r2c1 ≠ 4
naked-single ==> r2c1 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r6c9 = 3
naked-single ==> r6c3 = 6
naked-single ==> r5c1 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c6 = 6
naked-single ==> r7c3 = 5
naked-single ==> r7c4 = 4
naked-single ==> r7c9 = 6
naked-single ==> r8c7 = 4
naked-single ==> r9c9 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r2c6 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c8 = 2
naked-single ==> r5c5 = 1
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c3 = 3
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r6c1 = 2
naked-single ==> r7c1 = 3
naked-single ==> r8c2 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r8c8 = 3
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c2 = 3
naked-single ==> r8c5 = 7
naked-single ==> r6c4 = 5
naked-single ==> r4c3 = 1
naked-single ==> r2c7 = 6
naked-single ==> r8c1 = 6
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-723563>
solve-time = 16.42s
nb-facts=<Fact-723563>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 619
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22743>
Entering_level_BC4_with_<Fact-22802>
Entering_level_Z4_with_<Fact-119761>
Entering_level_W4_with_<Fact-120114>
Entering_level_BC5_with_<Fact-120465>
Entering_level_Z5_with_<Fact-720442>
Entering_level_W5_with_<Fact-722391>
whip[5]: r2n6{c7 c6} - b2n3{r2c6 r3c4} - r9c4{n3 n1} - r7c6{n1 n7} - b2n7{r1c6 .} ==> r1c9 ≠ 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r2c6 = 3
naked-single ==> r8c6 = 5
naked-single ==> r5c6 = 6
naked-single ==> r5c1 = 4
naked-single ==> r5c7 = 5
naked-single ==> r7c4 = 4
naked-single ==> r7c9 = 6
naked-single ==> r7c3 = 5
naked-single ==> r8c7 = 4
naked-single ==> r8c1 = 6
naked-single ==> r6c4 = 5
naked-single ==> r2c1 = 5
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c2 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r7c1 = 3
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r7c7 = 2
naked-single ==> r8c5 = 7
naked-single ==> r8c8 = 3
naked-single ==> r9c9 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r8c2 = 1
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r6c1 = 2
naked-single ==> r2c7 = 6
naked-single ==> r6c9 = 3
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-722861>
solve-time = 16.59s
nb-facts=<Fact-722861>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 414
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22745>
Entering_level_BC4_with_<Fact-22806>
Entering_level_Z4_with_<Fact-119765>
Entering_level_W4_with_<Fact-120127>
Entering_level_BC5_with_<Fact-120491>
biv-chain[5]: c5n4{r2 r8} - c5n7{r8 r6} - c4n7{r4 r3} - b2n3{r3c4 r2c6} - b2n6{r2c6 r1c4} ==> r1c4 ≠ 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r1c3 = 4
naked-single ==> r2c1 = 5
naked-single ==> r8c1 = 6
naked-single ==> r5c1 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c6 = 6
naked-single ==> r7c3 = 5
naked-single ==> r7c4 = 4
naked-single ==> r7c9 = 6
naked-single ==> r8c7 = 4
naked-single ==> r4c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r6c3 = 6
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r9c9 = 1
naked-single ==> r6c1 = 2
naked-single ==> r5c2 = 3
naked-single ==> r8c2 = 1
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r7c1 = 3
naked-single ==> r8c5 = 7
naked-single ==> r7c6 = 1
naked-single ==> r8c8 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r5c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c5 = 1
naked-single ==> r6c5 = 8
naked-single ==> r2c7 = 6
naked-single ==> r6c9 = 3
naked-single ==> r2c6 = 3
naked-single ==> r6c4 = 5
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = BC[5]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-477845>
solve-time = 41.09s
nb-facts=<Fact-477845>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

Trying candidate 513
, 146 candidates
entering BRT
Starting_init_links_with_<Fact-3598>

Resolution state after Singles:
   +----------------+----------------+----------------+
   ! 1237 78   45   ! 46   29   127  ! 123  89   56   !
   ! 45   123  9    ! 8    124  36   ! 56   123  7    !
   ! 278  6    13   ! 137  5    279  ! 89   4    123  !
   +----------------+----------------+----------------+
   ! 89   5    14   ! 17   3    278  ! 279  6    124  !
   ! 46   123  7    ! 9    12   56   ! 45   123  8    !
   ! 12   89   36   ! 56   278  4    ! 127  279  35   !
   +----------------+----------------+----------------+
   ! 13   79   56   ! 45   89   17   ! 1237 278  46   !
   ! 56   13   8    ! 2    147  35   ! 46   137  9    !
   ! 79   4    2    ! 13   6    89   ! 78   5    13   !
   +----------------+----------------+----------------+

146 candidates, 451 csp-links and 451 links. Density = 4.26%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-5365>
Entering_relation_bivalue_with_<Fact-5366>
Entering_level_BC2_with_<Fact-5691>
Entering_level_Z2_with_<Fact-7928>
Entering_level_W2_with_<Fact-7940>
Entering_level_BC3_with_<Fact-7941>
Entering_level_Z3_with_<Fact-22682>
Entering_level_W3_with_<Fact-22743>
Entering_level_BC4_with_<Fact-22802>
Entering_level_Z4_with_<Fact-119761>
Entering_level_W4_with_<Fact-120114>
Entering_level_BC5_with_<Fact-120465>
Entering_level_Z5_with_<Fact-720442>
Entering_level_W5_with_<Fact-722420>
Entering_level_BC6_with_<Fact-724412>
Entering_level_Z6_with_<Fact-4160923>
Entering_level_W6_with_<Fact-4171094>
whip[6]: r2c1{n5 n4} - c5n4{r2 r8} - c5n7{r8 r6} - r4c4{n7 n1} - b8n1{r9c4 r7c6} - b8n7{r7c6 .} ==> r1c3 ≠ 5
naked-single ==> r1c3 = 4
naked-single ==> r1c4 = 6
naked-single ==> r1c9 = 5
naked-single ==> r2c7 = 6
naked-single ==> r8c7 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c6 = 6
naked-single ==> r5c1 = 4
naked-single ==> r7c9 = 6
naked-single ==> r7c3 = 5
naked-single ==> r7c4 = 4
naked-single ==> r8c1 = 6
naked-single ==> r6c9 = 3
naked-single ==> r6c3 = 6
naked-single ==> r9c9 = 1
naked-single ==> r3c9 = 2
naked-single ==> r4c9 = 4
naked-single ==> r9c4 = 3
naked-single ==> r8c6 = 5
naked-single ==> r2c6 = 3
naked-single ==> r2c8 = 1
naked-single ==> r1c7 = 3
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r5c8 = 2
naked-single ==> r5c5 = 1
naked-single ==> r4c4 = 7
naked-single ==> r3c4 = 1
naked-single ==> r3c3 = 3
naked-single ==> r4c7 = 9
naked-single ==> r3c7 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c5 = 2
naked-single ==> r1c6 = 7
naked-single ==> r1c1 = 1
naked-single ==> r6c1 = 2
naked-single ==> r7c1 = 3
naked-single ==> r8c2 = 1
naked-single ==> r1c2 = 8
naked-single ==> r6c2 = 9
naked-single ==> r7c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c5 = 9
naked-single ==> r9c6 = 8
naked-single ==> r4c6 = 2
naked-single ==> r9c1 = 9
naked-single ==> r3c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r6c5 = 8
naked-single ==> r3c1 = 7
naked-single ==> r9c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r8c8 = 3
naked-single ==> r4c1 = 8
naked-single ==> r6c8 = 7
naked-single ==> r5c2 = 3
naked-single ==> r8c5 = 7
naked-single ==> r6c4 = 5
naked-single ==> r2c1 = 5
naked-single ==> r4c3 = 1
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[6]
   184627395
   529843617
   763159842
   851732964
   437916528
   296584173
   375491286
   618275439
   942368751

nb-facts = <Fact-4172080>
solve-time = 2m 4.73s
nb-facts=<Fact-4172080>

   1         8         4         6         2         7         3         9         5
   5         2         9         8         4         3         6         1         7
   7         6         3         1         5         9         8         4         2
   8         5         1         7         3         2         9         6         4
   4         3         7         9         1         6         5         2         8
   2         9         6         5         8         4         1         7         3
   3         7         5         4         9         1         2         8         6
   6         1         8         2         7         5         4         3         9
   9         4         2         3         6         8         7         5         1

computation time = 10m 44.86s
list of 1-steppers:
(687 485 581 479 574 673 569 664 457 556 651 443 527 626 421 619 414 513)


Leren: n1r3c3 an additional W1-anti-backdoor????
(solve "...........98....7.63.5..4..5..3..6...79....8.....4..............82....9.42.6..5.")
no!!!
