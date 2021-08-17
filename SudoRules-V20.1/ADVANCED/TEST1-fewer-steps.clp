Leren #28

in which Wn?????
(solve-sudoku-with-fewer-steps-wrt-W1
    ".....46....8.....2...........52....8.6...1...7..3....56....84..4..9..1....2.5...."
)
1st run:
hidden-single-in-a-row ==> r9c4 = 4
hidden-single-in-a-row ==> r5c4 = 5
hidden-single-in-a-column ==> r3c3 = 6
hidden-single-in-a-column ==> r2c4 = 6
Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 12359   123579  1379    ! 178     123789  4       ! 6       135789  1379    !
   ! 1359    134579  8       ! 6       1379    3579    ! 3579    134579  2       !
   ! 12359   1234579 6       ! 178     123789  23579   ! 35789   1345789 13479   !
   +-------------------------+-------------------------+-------------------------+
   ! 139     1349    5       ! 2       4679    679     ! 379     134679  8       !
   ! 2389    6       349     ! 5       4789    1       ! 2379    23479   3479    !
   ! 7       12489   149     ! 3       4689    69      ! 29      12469   5       !
   +-------------------------+-------------------------+-------------------------+
   ! 6       13579   1379    ! 17      1237    8       ! 4       23579   379     !
   ! 4       3578    37      ! 9       2367    2367    ! 1       235678  367     !
   ! 1389    13789   2       ! 4       5       367     ! 3789    36789   3679    !
   +-------------------------+-------------------------+-------------------------+

244 candidates, 1877 csp-links and 1877 links. Density = 6.33%
Starting non trivial part of solution.
whip[1]: c9n6{r9 .} ==> r9c8 ≠ 6, r8c8 ≠ 6
whip[1]: r9n1{c2 .} ==> r7c3 ≠ 1, r7c2 ≠ 1
whip[1]: c7n2{r6 .} ==> r6c8 ≠ 2, r5c8 ≠ 2
whip[1]: c3n4{r6 .} ==> r6c2 ≠ 4, r4c2 ≠ 4
whip[1]: c9n1{r3 .} ==> r3c8 ≠ 1, r1c8 ≠ 1, r2c8 ≠ 1
whip[1]: c7n5{r3 .} ==> r3c8 ≠ 5, r1c8 ≠ 5, r2c8 ≠ 5
whip[1]: r1n5{c2 .} ==> r2c1 ≠ 5, r2c2 ≠ 5, r3c1 ≠ 5, r3c2 ≠ 5
hidden-single-in-a-column ==> r1c1 = 5
whip[1]: c4n8{r3 .} ==> r3c5 ≠ 8, r1c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 56 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 5      12379  1379   ! 178    12379  4      ! 6      3789   1379   !
   ! 139    13479  8      ! 6      1379   3579   ! 3579   3479   2      !
   ! 1239   123479 6      ! 178    12379  23579  ! 35789  34789  13479  !
   +----------------------+----------------------+----------------------+
   ! 139    139    5      ! 2      4679   679    ! 379    134679 8      !
   ! 2389   6      349    ! 5      4789   1      ! 2379   3479   3479   !
   ! 7      1289   149    ! 3      4689   69     ! 29     1469   5      !
   +----------------------+----------------------+----------------------+
   ! 6      3579   379    ! 17     1237   8      ! 4      23579  379    !
   ! 4      3578   37     ! 9      2367   2367   ! 1      23578  367    !
   ! 1389   13789  2      ! 4      5      367    ! 3789   3789   3679   !
   +----------------------+----------------------+----------------------+

There remains 218 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 218 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................................................................
erasable candidates computation time = 3m 30.54s
===> 49 candidates can be eliminated:
n1r1c2 n1r1c4 n1r1c5 n1r2c2 n2r3c6 n9r3c7 n3r3c9 n7r3c9 n9r3c9 n6r4c5 n7r4c5 n9r4c5 n3r4c8 n4r4c8 n7r4c8 n9r4c8 n2r5c1 n3r5c1 n9r5c1 n4r5c5 n8r5c5 n4r5c8 n1r6c2 n8r6c2 n9r6c2 n1r6c3 n9r6c3 n4r6c5 n6r6c5 n9r6c5 n4r6c8 n9r6c8 n3r7c2 n7r7c2 n9r7c2 n2r7c5 n3r7c8 n5r7c8 n7r7c8 n9r7c8 n3r8c2 n5r8c2 n7r8c2 n2r8c8 n3r8c8 n7r8c8 n8r8c8 n8r9c1 n8r9c2
===> Eliminating chosen candidate n5r7c8 and applying rules in W1, considered as "zero-step"
biv-chain[3]: r8n5{c8 c2} - r8n8{c2 c8} - b9n2{r8c8 r7c8} ==> r7c8 ≠ 5, r8c8 ≠ 2
hidden-single-in-a-block ==> r7c8 = 2
hidden-single-in-a-block ==> r8c8 = 5
hidden-single-in-a-block ==> r7c2 = 5
hidden-single-in-a-row ==> r8c2 = 8
hidden-single-in-a-block ==> r5c1 = 8
hidden-single-in-a-block ==> r6c2 = 2
naked-single ==> r6c7 = 9
naked-single ==> r6c6 = 6
hidden-single-in-a-column ==> r8c5 = 6
hidden-single-in-a-block ==> r8c6 = 2
hidden-single-in-a-block ==> r9c9 = 6
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-block ==> r6c8 = 1
naked-single ==> r6c3 = 4
naked-single ==> r6c5 = 8
hidden-single-in-a-column ==> r1c3 = 1
hidden-single-in-a-block ==> r3c9 = 1
hidden-single-in-a-block ==> r2c5 = 1
hidden-single-in-a-block ==> r7c4 = 1
hidden-single-in-a-column ==> r5c9 = 4
hidden-single-in-a-block ==> r4c5 = 4
hidden-single-in-a-block ==> r3c1 = 2
hidden-single-in-a-block ==> r1c5 = 2
hidden-single-in-a-block ==> r5c7 = 2
whip[1]: c4n7{r3 .} ==> r2c6 ≠ 7, r3c5 ≠ 7, r3c6 ≠ 7
whip[1]: c3n7{r8 .} ==> r9c2 ≠ 7
PUZZLE 0 IS NOT SOLVED. 32 VALUES MISSING.
Final resolution state:
   5         379       1         78        2         4         6         3789      379
   39        3479      8         6         1         359       357       3479      2
   2         3479      6         78        39        359       3578      34789     1
   139       139       5         2         4         79        37        6         8
   8         6         39        5         79        1         2         37        4
   7         2         4         3         8         6         9         1         5
   6         5         379       1         37        8         4         2         379
   4         8         37        9         6         2         1         5         37
   139       139       2         4         5         37        378       3789      6

solve-time = 0.2s
nb-facts = 0

   5         379       1         78        2         4         6         3789      379
   39        3479      8         6         1         359       357       3479      2
   2         3479      6         78        39        359       3578      34789     1
   139       139       5         2         4         79        37        6         8
   8         6         39        5         79        1         2         37        4
   7         2         4         3         8         6         9         1         5
   6         5         379       1         37        8         4         2         379
   4         8         37        9         6         2         1         5         37
   139       139       2         4         5         37        378       3789      6

best-step-computation-time = 3m 37.83s


There remains 91 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 91 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...........................................................................................
erasable candidates computation time = 21.81s
===> 20 candidates can be eliminated:
n7r2c7 n3r2c8 n3r3c5 n3r3c7 n7r3c7 n3r3c8 n9r3c8 n3r4c7 n3r5c3 n9r5c5 n7r5c8 n3r7c3 n7r7c5 n3r7c9 n7r7c9 n3r9c1 n3r9c2 n3r9c6 n3r9c8 n7r9c8
===> Eliminating chosen candidate n7r5c8 and applying rules in W1, considered as "zero-step"
whip[4]: r5n3{c8 c3} - r8n3{c3 c9} - r7n3{c9 c5} - c5n7{r7 .} ==> r5c8 ≠ 7
naked-single ==> r5c8 = 3
naked-single ==> r4c7 = 7
naked-single ==> r4c6 = 9
naked-single ==> r5c5 = 7
naked-single ==> r7c5 = 3
naked-single ==> r3c5 = 9
naked-single ==> r9c6 = 7
naked-single ==> r5c3 = 9
naked-single ==> r7c3 = 7
naked-single ==> r7c9 = 9
naked-single ==> r9c8 = 8
naked-single ==> r9c7 = 3
naked-single ==> r2c7 = 5
naked-single ==> r2c6 = 3
naked-single ==> r2c1 = 9
naked-single ==> r9c1 = 1
naked-single ==> r4c1 = 3
naked-single ==> r4c2 = 1
naked-single ==> r9c2 = 9
naked-single ==> r3c6 = 5
naked-single ==> r3c7 = 8
naked-single ==> r3c4 = 7
naked-single ==> r1c4 = 8
naked-single ==> r3c8 = 4
naked-single ==> r2c8 = 7
naked-single ==> r1c8 = 9
naked-single ==> r1c9 = 3
naked-single ==> r1c2 = 7
naked-single ==> r2c2 = 4
naked-single ==> r3c2 = 3
naked-single ==> r8c9 = 7
naked-single ==> r8c3 = 3
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[4]
   571824693
   948613572
   236795841
   315249768
   869571234
   724386915
   657138429
   483962157
   192457386

nb-facts = <Fact-44758>
solve-time = 0.15s
nb-facts = <Fact-44758>

   5         7         1         8         2         4         6         9         3
   9         4         8         6         1         3         5         7         2
   2         3         6         7         9         5         8         4         1
   3         1         5         2         4         9         7         6         8
   8         6         9         5         7         1         2         3         4
   7         2         4         3         8         6         9         1         5
   6         5         7         1         3         8         4         2         9
   4         8         3         9         6         2         1         5         7
   1         9         2         4         5         7         3         8         6

best-step-computation-time = 22.57s





---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

2nd run:

(find-sudoku-fewer-steps-wrt-W1
".....46....8.....2...........52....8.6...1...7..3....56....84..4..9..1....2.5....")
.....46....8.....2...........52....8.6...1...7..3....56....84..4..9..1....2.5....
hidden-single-in-a-row ==> r9c4 = 4
hidden-single-in-a-row ==> r5c4 = 5
hidden-single-in-a-column ==> r3c3 = 6
hidden-single-in-a-column ==> r2c4 = 6
Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 12359   123579  1379    ! 178     123789  4       ! 6       135789  1379    !
   ! 1359    134579  8       ! 6       1379    3579    ! 3579    134579  2       !
   ! 12359   1234579 6       ! 178     123789  23579   ! 35789   1345789 13479   !
   +-------------------------+-------------------------+-------------------------+
   ! 139     1349    5       ! 2       4679    679     ! 379     134679  8       !
   ! 2389    6       349     ! 5       4789    1       ! 2379    23479   3479    !
   ! 7       12489   149     ! 3       4689    69      ! 29      12469   5       !
   +-------------------------+-------------------------+-------------------------+
   ! 6       13579   1379    ! 17      1237    8       ! 4       23579   379     !
   ! 4       3578    37      ! 9       2367    2367    ! 1       235678  367     !
   ! 1389    13789   2       ! 4       5       367     ! 3789    36789   3679    !
   +-------------------------+-------------------------+-------------------------+

244 candidates, 1877 csp-links and 1877 links. Density = 6.33%
Starting non trivial part of solution.
whip[1]: c9n6{r9 .} ==> r9c8 ≠ 6, r8c8 ≠ 6
whip[1]: r9n1{c2 .} ==> r7c3 ≠ 1, r7c2 ≠ 1
whip[1]: c7n2{r6 .} ==> r6c8 ≠ 2, r5c8 ≠ 2
whip[1]: c3n4{r6 .} ==> r6c2 ≠ 4, r4c2 ≠ 4
whip[1]: c9n1{r3 .} ==> r3c8 ≠ 1, r1c8 ≠ 1, r2c8 ≠ 1
whip[1]: c7n5{r3 .} ==> r3c8 ≠ 5, r1c8 ≠ 5, r2c8 ≠ 5
whip[1]: r1n5{c2 .} ==> r2c1 ≠ 5, r2c2 ≠ 5, r3c1 ≠ 5, r3c2 ≠ 5
hidden-single-in-a-column ==> r1c1 = 5
whip[1]: c4n8{r3 .} ==> r3c5 ≠ 8, r1c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 56 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 5      12379  1379   ! 178    12379  4      ! 6      3789   1379   !
   ! 139    13479  8      ! 6      1379   3579   ! 3579   3479   2      !
   ! 1239   123479 6      ! 178    12379  23579  ! 35789  34789  13479  !
   +----------------------+----------------------+----------------------+
   ! 139    139    5      ! 2      4679   679    ! 379    134679 8      !
   ! 2389   6      349    ! 5      4789   1      ! 2379   3479   3479   !
   ! 7      1289   149    ! 3      4689   69     ! 29     1469   5      !
   +----------------------+----------------------+----------------------+
   ! 6      3579   379    ! 17     1237   8      ! 4      23579  379    !
   ! 4      3578   37     ! 9      2367   2367   ! 1      23578  367    !
   ! 1389   13789  2      ! 4      5      367    ! 3789   3789   3679   !
   +----------------------+----------------------+----------------------+

There remains 218 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 218 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................................................................
erasable candidates computation time = 3m 35.33s
===> 49 candidates can be eliminated:
n1r1c2 n1r1c4 n1r1c5 n1r2c2 n2r3c6 n9r3c7 n3r3c9 n7r3c9 n9r3c9 n6r4c5 n7r4c5 n9r4c5 n3r4c8 n4r4c8 n7r4c8 n9r4c8 n2r5c1 n3r5c1 n9r5c1 n4r5c5 n8r5c5 n4r5c8 n1r6c2 n8r6c2 n9r6c2 n1r6c3 n9r6c3 n4r6c5 n6r6c5 n9r6c5 n4r6c8 n9r6c8 n3r7c2 n7r7c2 n9r7c2 n2r7c5 n3r7c8 n5r7c8 n7r7c8 n9r7c8 n3r8c2 n5r8c2 n7r8c2 n2r8c8 n3r8c8 n7r8c8 n8r8c8 n8r9c1 n8r9c2
===> Eliminating chosen candidate n2r3c6 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r3n5{c6 c7} - c7n8{r3 r9} - c1n8{r9 r5} - c1n2{r5 r3} ==> r3c6 ≠ 2
hidden-single-in-a-column ==> r8c6 = 2
hidden-single-in-a-row ==> r7c8 = 2
hidden-single-in-a-block ==> r8c8 = 5
hidden-single-in-a-block ==> r7c2 = 5
hidden-single-in-a-row ==> r8c2 = 8
hidden-single-in-a-block ==> r5c1 = 8
hidden-single-in-a-block ==> r6c2 = 2
naked-single ==> r6c7 = 9
naked-single ==> r6c6 = 6
hidden-single-in-a-column ==> r8c5 = 6
hidden-single-in-a-block ==> r9c9 = 6
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-block ==> r6c8 = 1
naked-single ==> r6c3 = 4
naked-single ==> r6c5 = 8
hidden-single-in-a-column ==> r1c3 = 1
hidden-single-in-a-block ==> r3c9 = 1
hidden-single-in-a-block ==> r2c5 = 1
hidden-single-in-a-block ==> r7c4 = 1
hidden-single-in-a-column ==> r5c9 = 4
hidden-single-in-a-block ==> r4c5 = 4
hidden-single-in-a-block ==> r3c1 = 2
hidden-single-in-a-block ==> r1c5 = 2
hidden-single-in-a-block ==> r5c7 = 2
whip[1]: c4n7{r3 .} ==> r2c6 ≠ 7, r3c5 ≠ 7, r3c6 ≠ 7
whip[1]: c3n7{r8 .} ==> r9c2 ≠ 7
PUZZLE 0 IS NOT SOLVED. 32 VALUES MISSING.
Final resolution state:
   5         379       1         78        2         4         6         3789      379
   39        3479      8         6         1         359       357       3479      2
   2         3479      6         78        39        359       3578      34789     1
   139       139       5         2         4         79        37        6         8
   8         6         39        5         79        1         2         37        4
   7         2         4         3         8         6         9         1         5
   6         5         379       1         37        8         4         2         379
   4         8         37        9         6         2         1         5         37
   139       139       2         4         5         37        378       3789      6

solve-time = 0.25s
nb-facts = 0

   5         379       1         78        2         4         6         3789      379
   39        3479      8         6         1         359       357       3479      2
   2         3479      6         78        39        359       3578      34789     1
   139       139       5         2         4         79        37        6         8
   8         6         39        5         79        1         2         37        4
   7         2         4         3         8         6         9         1         5
   6         5         379       1         37        8         4         2         379
   4         8         37        9         6         2         1         5         37
   139       139       2         4         5         37        378       3789      6

best-step-computation-time = 3m 44.07s


There remains 91 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 91 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...........................................................................................
erasable candidates computation time = 24.78s
===> 20 candidates can be eliminated:
n7r2c7 n3r2c8 n3r3c5 n3r3c7 n7r3c7 n3r3c8 n9r3c8 n3r4c7 n3r5c3 n9r5c5 n7r5c8 n3r7c3 n7r7c5 n3r7c9 n7r7c9 n3r9c1 n3r9c2 n3r9c6 n3r9c8 n7r9c8
===> Eliminating chosen candidate n3r9c6 and applying rules in W1, considered as "zero-step"
whip[4]: c6n7{r9 r4} - r5c5{n7 n9} - r5c3{n9 n3} - b7n3{r7c3 .} ==> r9c6 ≠ 3
naked-single ==> r9c6 = 7
naked-single ==> r4c6 = 9
naked-single ==> r5c5 = 7
naked-single ==> r5c8 = 3
naked-single ==> r4c7 = 7
naked-single ==> r5c3 = 9
naked-single ==> r7c5 = 3
naked-single ==> r3c5 = 9
naked-single ==> r7c3 = 7
naked-single ==> r7c9 = 9
naked-single ==> r9c8 = 8
naked-single ==> r9c7 = 3
naked-single ==> r2c7 = 5
naked-single ==> r2c6 = 3
naked-single ==> r2c1 = 9
naked-single ==> r9c1 = 1
naked-single ==> r4c1 = 3
naked-single ==> r4c2 = 1
naked-single ==> r9c2 = 9
naked-single ==> r3c6 = 5
naked-single ==> r3c7 = 8
naked-single ==> r3c4 = 7
naked-single ==> r1c4 = 8
naked-single ==> r3c8 = 4
naked-single ==> r2c8 = 7
naked-single ==> r1c8 = 9
naked-single ==> r1c9 = 3
naked-single ==> r1c2 = 7
naked-single ==> r2c2 = 4
naked-single ==> r3c2 = 3
naked-single ==> r8c9 = 7
naked-single ==> r8c3 = 3
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[4]
   571824693
   948613572
   236795841
   315249768
   869571234
   724386915
   657138429
   483962157
   192457386

nb-facts = <Fact-44697>
solve-time = 0.18s
nb-facts = <Fact-44697>

   5         7         1         8         2         4         6         9         3
   9         4         8         6         1         3         5         7         2
   2         3         6         7         9         5         8         4         1
   3         1         5         2         4         9         7         6         8
   8         6         9         5         7         1         2         3         4
   7         2         4         3         8         6         9         1         5
   6         5         7         1         3         8         4         2         9
   4         8         3         9         6         2         1         5         7
   1         9         2         4         5         7         3         8         6

best-step-computation-time = 25.76s



Total computation time = 4m 10.29s
sequence-of-eliminations = n2r3c6 n3r9c6





---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

3rd run:

(find-sudoku-fewer-steps-wrt-W1
".....46....8.....2...........52....8.6...1...7..3....56....84..4..9..1....2.5....")
.....46....8.....2...........52....8.6...1...7..3....56....84..4..9..1....2.5....
hidden-single-in-a-row ==> r9c4 = 4
hidden-single-in-a-row ==> r5c4 = 5
hidden-single-in-a-column ==> r3c3 = 6
hidden-single-in-a-column ==> r2c4 = 6
Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 12359   123579  1379    ! 178     123789  4       ! 6       135789  1379    !
   ! 1359    134579  8       ! 6       1379    3579    ! 3579    134579  2       !
   ! 12359   1234579 6       ! 178     123789  23579   ! 35789   1345789 13479   !
   +-------------------------+-------------------------+-------------------------+
   ! 139     1349    5       ! 2       4679    679     ! 379     134679  8       !
   ! 2389    6       349     ! 5       4789    1       ! 2379    23479   3479    !
   ! 7       12489   149     ! 3       4689    69      ! 29      12469   5       !
   +-------------------------+-------------------------+-------------------------+
   ! 6       13579   1379    ! 17      1237    8       ! 4       23579   379     !
   ! 4       3578    37      ! 9       2367    2367    ! 1       235678  367     !
   ! 1389    13789   2       ! 4       5       367     ! 3789    36789   3679    !
   +-------------------------+-------------------------+-------------------------+

244 candidates, 1877 csp-links and 1877 links. Density = 6.33%
Starting non trivial part of solution.
whip[1]: c9n6{r9 .} ==> r9c8 ≠ 6, r8c8 ≠ 6
whip[1]: r9n1{c2 .} ==> r7c3 ≠ 1, r7c2 ≠ 1
whip[1]: c7n2{r6 .} ==> r6c8 ≠ 2, r5c8 ≠ 2
whip[1]: c3n4{r6 .} ==> r6c2 ≠ 4, r4c2 ≠ 4
whip[1]: c9n1{r3 .} ==> r3c8 ≠ 1, r1c8 ≠ 1, r2c8 ≠ 1
whip[1]: c7n5{r3 .} ==> r3c8 ≠ 5, r1c8 ≠ 5, r2c8 ≠ 5
whip[1]: r1n5{c2 .} ==> r2c1 ≠ 5, r2c2 ≠ 5, r3c1 ≠ 5, r3c2 ≠ 5
hidden-single-in-a-column ==> r1c1 = 5
whip[1]: c4n8{r3 .} ==> r3c5 ≠ 8, r1c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 56 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 5      12379  1379   ! 178    12379  4      ! 6      3789   1379   !
   ! 139    13479  8      ! 6      1379   3579   ! 3579   3479   2      !
   ! 1239   123479 6      ! 178    12379  23579  ! 35789  34789  13479  !
   +----------------------+----------------------+----------------------+
   ! 139    139    5      ! 2      4679   679    ! 379    134679 8      !
   ! 2389   6      349    ! 5      4789   1      ! 2379   3479   3479   !
   ! 7      1289   149    ! 3      4689   69     ! 29     1469   5      !
   +----------------------+----------------------+----------------------+
   ! 6      3579   379    ! 17     1237   8      ! 4      23579  379    !
   ! 4      3578   37     ! 9      2367   2367   ! 1      23578  367    !
   ! 1389   13789  2      ! 4      5      367    ! 3789   3789   3679   !
   +----------------------+----------------------+----------------------+

There remains 218 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 218 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................................................................
erasable candidates computation time = 3m 28.94s
===> 49 candidates can be eliminated:
n1r1c2 n1r1c4 n1r1c5 n1r2c2 n2r3c6 n9r3c7 n3r3c9 n7r3c9 n9r3c9 n6r4c5 n7r4c5 n9r4c5 n3r4c8 n4r4c8 n7r4c8 n9r4c8 n2r5c1 n3r5c1 n9r5c1 n4r5c5 n8r5c5 n4r5c8 n1r6c2 n8r6c2 n9r6c2 n1r6c3 n9r6c3 n4r6c5 n6r6c5 n9r6c5 n4r6c8 n9r6c8 n3r7c2 n7r7c2 n9r7c2 n2r7c5 n3r7c8 n5r7c8 n7r7c8 n9r7c8 n3r8c2 n5r8c2 n7r8c2 n2r8c8 n3r8c8 n7r8c8 n8r8c8 n8r9c1 n8r9c2
===> Among these, there are 10 candidates with the best score.
===> Eliminating randomly chosen candidate n8r8c8 and applying rules in W1, considered as "zero-step"
biv-chain-cn[2]: c8n2{r8 r7} - c8n5{r7 r8} ==> r8c8 ≠ 8, r8c8 ≠ 3, r8c8 ≠ 7
hidden-single-in-a-row ==> r8c2 = 8
hidden-single-in-a-block ==> r5c1 = 8
hidden-single-in-a-block ==> r6c2 = 2
naked-single ==> r6c7 = 9
naked-single ==> r6c6 = 6
hidden-single-in-a-column ==> r8c5 = 6
hidden-single-in-a-block ==> r9c9 = 6
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-block ==> r6c8 = 1
naked-single ==> r6c3 = 4
naked-single ==> r6c5 = 8
hidden-single-in-a-column ==> r1c3 = 1
hidden-single-in-a-block ==> r3c9 = 1
hidden-single-in-a-block ==> r2c5 = 1
hidden-single-in-a-block ==> r7c4 = 1
hidden-single-in-a-column ==> r5c9 = 4
hidden-single-in-a-block ==> r4c5 = 4
hidden-single-in-a-block ==> r3c1 = 2
hidden-single-in-a-block ==> r1c5 = 2
hidden-single-in-a-block ==> r8c6 = 2
naked-single ==> r8c8 = 5
hidden-single-in-a-row ==> r7c2 = 5
hidden-single-in-a-block ==> r7c8 = 2
hidden-single-in-a-block ==> r5c7 = 2
whip[1]: c4n7{r3 .} ==> r2c6 ≠ 7, r3c5 ≠ 7, r3c6 ≠ 7
whip[1]: c3n7{r8 .} ==> r9c2 ≠ 7
PUZZLE 0 IS NOT SOLVED. 32 VALUES MISSING.
Final resolution state:
   5         379       1         78        2         4         6         3789      379
   39        3479      8         6         1         359       357       3479      2
   2         3479      6         78        39        359       3578      34789     1
   139       139       5         2         4         79        37        6         8
   8         6         39        5         79        1         2         37        4
   7         2         4         3         8         6         9         1         5
   6         5         379       1         37        8         4         2         379
   4         8         37        9         6         2         1         5         37
   139       139       2         4         5         37        378       3789      6

solve-time = 0.17s
nb-facts = 0

   5         379       1         78        2         4         6         3789      379
   39        3479      8         6         1         359       357       3479      2
   2         3479      6         78        39        359       3578      34789     1
   139       139       5         2         4         79        37        6         8
   8         6         39        5         79        1         2         37        4
   7         2         4         3         8         6         9         1         5
   6         5         379       1         37        8         4         2         379
   4         8         37        9         6         2         1         5         37
   139       139       2         4         5         37        378       3789      6

best-step-computation-time = 3m 36.36s


There remains 91 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 91 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...........................................................................................
erasable candidates computation time = 21.74s
===> 20 candidates can be eliminated:
n7r2c7 n3r2c8 n3r3c5 n3r3c7 n7r3c7 n3r3c8 n9r3c8 n3r4c7 n3r5c3 n9r5c5 n7r5c8 n3r7c3 n7r7c5 n3r7c9 n7r7c9 n3r9c1 n3r9c2 n3r9c6 n3r9c8 n7r9c8
===> Among these, there are 7 candidates with the best score.
===> Eliminating chosen candidate n9r5c5 and applying rules in W1, considered as "zero-step"
whip[4]: r5c3{n9 n3} - r8n3{c3 c9} - r7n3{c9 c5} - c5n7{r7 .} ==> r5c5 ≠ 9
naked-single ==> r5c5 = 7
naked-single ==> r4c6 = 9
naked-single ==> r5c8 = 3
naked-single ==> r4c7 = 7
naked-single ==> r5c3 = 9
naked-single ==> r7c5 = 3
naked-single ==> r3c5 = 9
naked-single ==> r7c3 = 7
naked-single ==> r7c9 = 9
naked-single ==> r8c3 = 3
naked-single ==> r8c9 = 7
naked-single ==> r1c9 = 3
naked-single ==> r2c7 = 5
naked-single ==> r2c6 = 3
naked-single ==> r2c1 = 9
naked-single ==> r1c2 = 7
naked-single ==> r1c4 = 8
naked-single ==> r1c8 = 9
naked-single ==> r3c4 = 7
naked-single ==> r2c2 = 4
naked-single ==> r2c8 = 7
naked-single ==> r3c2 = 3
naked-single ==> r4c2 = 1
naked-single ==> r4c1 = 3
naked-single ==> r9c2 = 9
naked-single ==> r9c1 = 1
naked-single ==> r3c6 = 5
naked-single ==> r3c7 = 8
naked-single ==> r3c8 = 4
naked-single ==> r9c7 = 3
naked-single ==> r9c8 = 8
naked-single ==> r9c6 = 7
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[4]
   571824693
   948613572
   236795841
   315249768
   869571234
   724386915
   657138429
   483962157
   192457386

nb-facts = <Fact-44770>
solve-time = 0.16s
nb-facts = <Fact-44770>

   5         7         1         8         2         4         6         9         3
   9         4         8         6         1         3         5         7         2
   2         3         6         7         9         5         8         4         1
   3         1         5         2         4         9         7         6         8
   8         6         9         5         7         1         2         3         4
   7         2         4         3         8         6         9         1         5
   6         5         7         1         3         8         4         2         9
   4         8         3         9         6         2         1         5         7
   1         9         2         4         5         7         3         8         6

best-step-computation-time = 22.51s



Total computation time = 3m 59.34s
sequence-of-eliminations = n8r8c8 n9r5c5





--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
try in W8:

(solve-sudoku-with-fewer-steps-wrt-W1
    ".....46....8.....2...........52....8.6...1...7..3....56....84..4..9..1....2.5...."
)
.....46....8.....2...........52....8.6...1...7..3....56....84..4..9..1....2.5....
hidden-single-in-a-row ==> r9c4 = 4
hidden-single-in-a-row ==> r5c4 = 5
hidden-single-in-a-column ==> r3c3 = 6
hidden-single-in-a-column ==> r2c4 = 6
Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 12359   123579  1379    ! 178     123789  4       ! 6       135789  1379    !
   ! 1359    134579  8       ! 6       1379    3579    ! 3579    134579  2       !
   ! 12359   1234579 6       ! 178     123789  23579   ! 35789   1345789 13479   !
   +-------------------------+-------------------------+-------------------------+
   ! 139     1349    5       ! 2       4679    679     ! 379     134679  8       !
   ! 2389    6       349     ! 5       4789    1       ! 2379    23479   3479    !
   ! 7       12489   149     ! 3       4689    69      ! 29      12469   5       !
   +-------------------------+-------------------------+-------------------------+
   ! 6       13579   1379    ! 17      1237    8       ! 4       23579   379     !
   ! 4       3578    37      ! 9       2367    2367    ! 1       235678  367     !
   ! 1389    13789   2       ! 4       5       367     ! 3789    36789   3679    !
   +-------------------------+-------------------------+-------------------------+

244 candidates, 1877 csp-links and 1877 links. Density = 6.33%
Starting non trivial part of solution.
whip[1]: c9n6{r9 .} ==> r9c8 ≠ 6, r8c8 ≠ 6
whip[1]: r9n1{c2 .} ==> r7c3 ≠ 1, r7c2 ≠ 1
whip[1]: c7n2{r6 .} ==> r6c8 ≠ 2, r5c8 ≠ 2
whip[1]: c3n4{r6 .} ==> r6c2 ≠ 4, r4c2 ≠ 4
whip[1]: c9n1{r3 .} ==> r3c8 ≠ 1, r1c8 ≠ 1, r2c8 ≠ 1
whip[1]: c7n5{r3 .} ==> r3c8 ≠ 5, r1c8 ≠ 5, r2c8 ≠ 5
whip[1]: r1n5{c2 .} ==> r2c1 ≠ 5, r2c2 ≠ 5, r3c1 ≠ 5, r3c2 ≠ 5
hidden-single-in-a-column ==> r1c1 = 5
whip[1]: c4n8{r3 .} ==> r3c5 ≠ 8, r1c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 56 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 5      12379  1379   ! 178    12379  4      ! 6      3789   1379   !
   ! 139    13479  8      ! 6      1379   3579   ! 3579   3479   2      !
   ! 1239   123479 6      ! 178    12379  23579  ! 35789  34789  13479  !
   +----------------------+----------------------+----------------------+
   ! 139    139    5      ! 2      4679   679    ! 379    134679 8      !
   ! 2389   6      349    ! 5      4789   1      ! 2379   3479   3479   !
   ! 7      1289   149    ! 3      4689   69     ! 29     1469   5      !
   +----------------------+----------------------+----------------------+
   ! 6      3579   379    ! 17     1237   8      ! 4      23579  379    !
   ! 4      3578   37     ! 9      2367   2367   ! 1      23578  367    !
   ! 1389   13789  2      ! 4      5      367    ! 3789   3789   3679   !
   +----------------------+----------------------+----------------------+

===> STEP #1
There remains 218 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 218 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................................................................
erasable candidates computation time = 10m 8.64s
===> 93 candidates can be eliminated:
n1r1c2 n2r1c2 n3r1c3 n7r1c3 n9r1c3 n1r1c4 n1r1c5 n3r1c5 n7r1c5 n9r1c5 n1r1c9 n1r2c1 n1r2c2 n9r2c7 n1r3c1 n3r3c1 n9r3c1 n1r3c2 n2r3c2 n1r3c4 n1r3c5 n2r3c5 n2r3c6 n9r3c7 n3r3c9 n4r3c9 n7r3c9 n9r3c9 n6r4c5 n7r4c5 n9r4c5 n6r4c6 n9r4c7 n1r4c8 n3r4c8 n4r4c8 n7r4c8 n9r4c8 n2r5c1 n3r5c1 n9r5c1 n4r5c3 n4r5c5 n8r5c5 n3r5c7 n7r5c7 n9r5c7 n4r5c8 n9r5c8 n3r5c9 n7r5c9 n9r5c9 n1r6c2 n8r6c2 n9r6c2 n1r6c3 n9r6c3 n4r6c5 n6r6c5 n9r6c5 n9r6c6 n2r6c7 n4r6c8 n6r6c8 n9r6c8 n3r7c2 n7r7c2 n9r7c2 n2r7c5 n3r7c8 n5r7c8 n7r7c8 n9r7c8 n3r8c2 n5r8c2 n7r8c2 n2r8c5 n3r8c6 n6r8c6 n7r8c6 n2r8c8 n3r8c8 n7r8c8 n8r8c8 n6r8c9 n8r9c1 n7r9c2 n8r9c2 n6r9c6 n9r9c7 n3r9c9 n7r9c9 n9r9c9
===> Among these, there are 12 candidates with the best score (127).
===> Eliminating randomly chosen candidate n2r1c2 and applying rules in W1, considered as "zero-step"
whip[5]: b4n2{r6c2 r5c1} - c1n8{r5 r9} - r8n8{c2 c8} - c8n5{r8 r7} - c8n2{r7 .} ==> r1c2 ≠ 2
hidden-single-in-a-row ==> r1c5 = 2
hidden-single-in-a-column ==> r8c6 = 2
hidden-single-in-a-block ==> r7c8 = 2
hidden-single-in-a-block ==> r8c8 = 5
hidden-single-in-a-block ==> r7c2 = 5
hidden-single-in-a-row ==> r8c2 = 8
hidden-single-in-a-block ==> r5c1 = 8
hidden-single-in-a-block ==> r6c2 = 2
naked-single ==> r6c7 = 9
naked-single ==> r6c6 = 6
hidden-single-in-a-column ==> r8c5 = 6
hidden-single-in-a-block ==> r9c9 = 6
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-block ==> r6c8 = 1
naked-single ==> r6c3 = 4
naked-single ==> r6c5 = 8
hidden-single-in-a-column ==> r1c3 = 1
hidden-single-in-a-block ==> r3c9 = 1
hidden-single-in-a-block ==> r2c5 = 1
hidden-single-in-a-block ==> r7c4 = 1
hidden-single-in-a-column ==> r5c9 = 4
hidden-single-in-a-block ==> r4c5 = 4
hidden-single-in-a-block ==> r3c1 = 2
hidden-single-in-a-block ==> r5c7 = 2
whip[1]: c4n7{r3 .} ==> r2c6 ≠ 7, r3c5 ≠ 7, r3c6 ≠ 7
whip[1]: c3n7{r8 .} ==> r9c2 ≠ 7
PUZZLE 0 IS NOT SOLVED. 32 VALUES MISSING.
Final resolution state:
   5         379       1         78        2         4         6         3789      379
   39        3479      8         6         1         359       357       3479      2
   2         3479      6         78        39        359       3578      34789     1
   139       139       5         2         4         79        37        6         8
   8         6         39        5         79        1         2         37        4
   7         2         4         3         8         6         9         1         5
   6         5         379       1         37        8         4         2         379
   4         8         37        9         6         2         1         5         37
   139       139       2         4         5         37        378       3789      6

solve-time = 1.22s
nb-facts = 0

   5         379       1         78        2         4         6         3789      379
   39        3479      8         6         1         359       357       3479      2
   2         3479      6         78        39        359       3578      34789     1
   139       139       5         2         4         79        37        6         8
   8         6         39        5         79        1         2         37        4
   7         2         4         3         8         6         9         1         5
   6         5         379       1         37        8         4         2         379
   4         8         37        9         6         2         1         5         37
   139       139       2         4         5         37        378       3789      6

best-step-computation-time = 10m 24.71s


===> STEP #2
There remains 91 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 91 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...........................................................................................
erasable candidates computation time = 3m 5.83s
===> 42 candidates can be eliminated:
n9r1c2 n3r1c8 n7r1c8 n7r1c9 n9r1c9 n3r2c2 n9r2c2 n9r2c6 n3r2c7 n7r2c7 n3r2c8 n9r2c8 n9r3c2 n3r3c5 n3r3c6 n9r3c6 n3r3c7 n7r3c7 n3r3c8 n7r3c8 n9r3c8 n9r4c1 n3r4c2 n9r4c2 n7r4c6 n3r4c7 n3r5c3 n9r5c5 n7r5c8 n3r7c3 n9r7c3 n7r7c5 n3r7c9 n7r7c9 n3r9c1 n9r9c1 n3r9c2 n3r9c6 n7r9c7 n3r9c8 n7r9c8 n9r9c8
===> Among these, there are 12 candidates with the best score (91).
===> Eliminating randomly chosen candidate n3r4c7 and applying rules in W1, considered as "zero-step"
whip[4]: r4n7{c7 c6} - r9c6{n7 n3} - c1n3{r9 r2} - c2n3{r1 .} ==> r4c7 ≠ 3
naked-single ==> r4c7 = 7
naked-single ==> r4c6 = 9
naked-single ==> r5c5 = 7
naked-single ==> r7c5 = 3
naked-single ==> r3c5 = 9
naked-single ==> r9c6 = 7
naked-single ==> r5c8 = 3
naked-single ==> r5c3 = 9
naked-single ==> r7c3 = 7
naked-single ==> r7c9 = 9
naked-single ==> r9c8 = 8
naked-single ==> r9c7 = 3
naked-single ==> r2c7 = 5
naked-single ==> r2c6 = 3
naked-single ==> r2c1 = 9
naked-single ==> r9c1 = 1
naked-single ==> r4c1 = 3
naked-single ==> r4c2 = 1
naked-single ==> r9c2 = 9
naked-single ==> r3c6 = 5
naked-single ==> r3c7 = 8
naked-single ==> r3c4 = 7
naked-single ==> r1c4 = 8
naked-single ==> r3c8 = 4
naked-single ==> r2c8 = 7
naked-single ==> r1c8 = 9
naked-single ==> r1c9 = 3
naked-single ==> r1c2 = 7
naked-single ==> r2c2 = 4
naked-single ==> r3c2 = 3
naked-single ==> r8c9 = 7
naked-single ==> r8c3 = 3
PUZZLE 0 IS SOLVED. rating-type = TyW+W+SFin, MOST COMPLEX RULE TRIED = W[4]
   571824693
   948613572
   236795841
   315249768
   869571234
   724386915
   657138429
   483962157
   192457386

nb-facts = <Fact-88669>
solve-time = 0.17s
nb-facts = <Fact-88669>

   5         7         1         8         2         4         6         9         3
   9         4         8         6         1         3         5         7         2
   2         3         6         7         9         5         8         4         1
   3         1         5         2         4         9         7         6         8
   8         6         9         5         7         1         2         3         4
   7         2         4         3         8         6         9         1         5
   6         5         7         1         3         8         4         2         9
   4         8         3         9         6         2         1         5         7
   1         9         2         4         5         7         3         8         6

best-step-computation-time = 3m 7.36s


Total computation time = 13m 32.56s
sequence of 2 eliminations = n2r1c2 n3r4c7

