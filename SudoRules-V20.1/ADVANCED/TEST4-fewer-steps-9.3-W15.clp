http://forum.enjoysudoku.com/fish-on-wave-9-3-t38680.html


+-------+-------+-------+
! . . 4 ! 2 . . ! . . 6 !
! . 6 . ! . 7 . ! . 3 . !
! 2 . . ! . . 6 ! 1 . . !
+-------+-------+-------+
! 1 . . ! . . 4 ! 6 . . !
! . 5 . ! . 9 . ! . 1 . !
! . . 7 ! 1 . . ! . . 9 !
+-------+-------+-------+
! 9 . . ! . . 3 ! 7 . . !
! . 8 . ! . 4 . ! . 5 . !
! . . 3 ! 7 . . ! . . 8 !
+-------+-------+-------+

..42....6.6..7..3.2....61..1....46...5..9..1...71....99....37...8..4..5...37....8 # 95617 FNBTHWXYKG C27.m/M1.44.3
27 givens, SER = 9.3


(find-sudoku-fewer-steps-wrt-W1
"..42....6.6..7..3.2....61..1....46...5..9..1...71....99....37...8..4..5...37....8 # 95617 FNBTHWXYKG C27.m/M1.44.3")
..42....6.6..7..3.2....61..1....46...5..9..1...71....99....37...8..4..5...37....8 # 95617 FNBTHWXYKG C27.m/M1.44.3
hidden-single-in-a-row ==> r8c1 = 7
hidden-single-in-a-column ==> r5c6 = 7
Resolution state after Singles:
   +-------------------+-------------------+-------------------+
   ! 358   1379  4     ! 2     1358  1589  ! 589   789   6     !
   ! 58    6     1589  ! 4589  7     1589  ! 24589 3     245   !
   ! 2     379   589   ! 34589 358   6     ! 1     4789  457   !
   +-------------------+-------------------+-------------------+
   ! 1     239   289   ! 358   2358  4     ! 6     278   2357  !
   ! 3468  5     268   ! 368   9     7     ! 2348  1     234   !
   ! 3468  234   7     ! 1     23568 258   ! 23458 248   9     !
   +-------------------+-------------------+-------------------+
   ! 9     124   1256  ! 568   12568 3     ! 7     246   124   !
   ! 7     8     126   ! 69    4     129   ! 239   5     123   !
   ! 456   124   3     ! 7     1256  1259  ! 249   2469  8     !
   +-------------------+-------------------+-------------------+

180 candidates, 976 csp-links and 976 links. Density = 6.06%
Starting non trivial part of solution.
PUZZLE 0 IS NOT SOLVED. 52 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+
   ! 358   1379  4     ! 2     1358  1589  ! 589   789   6     !
   ! 58    6     1589  ! 4589  7     1589  ! 24589 3     245   !
   ! 2     379   589   ! 34589 358   6     ! 1     4789  457   !
   +-------------------+-------------------+-------------------+
   ! 1     239   289   ! 358   2358  4     ! 6     278   2357  !
   ! 3468  5     268   ! 368   9     7     ! 2348  1     234   !
   ! 3468  234   7     ! 1     23568 258   ! 23458 248   9     !
   +-------------------+-------------------+-------------------+
   ! 9     124   1256  ! 568   12568 3     ! 7     246   124   !
   ! 7     8     126   ! 69    4     129   ! 239   5     123   !
   ! 456   124   3     ! 7     1256  1259  ! 249   2469  8     !
   +-------------------+-------------------+-------------------+

There remains 180 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 180 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
....................................................................................................................................................................................
erasable candidates computation time = 1m 19.58s
===> 5 candidates can be eliminated:
n5r2c3 n8r2c3 n8r2c4 n2r4c9 n6r9c1
===> Among these, there are 1 candidates with the best score.
===> Eliminating randomly chosen candidate n6r9c1 and applying rules in W1, considered as "zero-step"
whip[15]: b7n5{r9c1 r7c3} - c3n6{r7 r5} - r8n6{c3 c4} - r7c4{n6 n8} - r5c4{n8 n3} - r4c4{n3 n5} - r6n5{c6 c7} - b6n3{r6c7 r4c9} - c9n7{r4 r3} - r3n5{c9 c5} - r1n5{c6 c1} - r2c1{n5 n8} - r3n8{c3 c8} - r1c8{n8 n9} - r1c7{n9 .} ==> r9c1 ≠ 6
whip[1]: c1n6{r6 .} ==> r5c3 ≠ 6
PUZZLE 0 IS NOT SOLVED. 52 VALUES MISSING.
Final resolution state:
   358       1379      4         2         1358      1589      589       789       6
   58        6         1589      4589      7         1589      24589     3         245
   2         379       589       34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   3468      5         28        368       9         7         2348      1         234
   3468      234       7         1         23568     258       23458     248       9
   9         124       1256      568       12568     3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

solve-time = 0.65s
nb-facts = 0

   358       1379      4         2         1358      1589      589       789       6
   58        6         1589      4589      7         1589      24589     3         245
   2         379       589       34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   3468      5         28        368       9         7         2348      1         234
   3468      234       7         1         23568     258       23458     248       9
   9         124       1256      568       12568     3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

best-step-computation-time = 1m 21.2s


There remains 178 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 178 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..................................................................................................................................................................................
erasable candidates computation time = 2m 42.07s
===> 10 candidates can be eliminated:
n5r2c3 n8r2c3 n8r2c4 n8r2c6 n9r3c4 n2r4c9 n8r5c1 n8r6c1 n2r7c5 n4r9c8
===> Among these, there are 10 candidates with the best score.
===> Eliminating randomly chosen candidate n2r7c5 and applying rules in W1, considered as "zero-step"
whip[7]: r7n8{c5 c4} - r7n5{c4 c3} - c3n6{r7 r8} - r8c4{n6 n9} - r8c6{n9 n1} - r9n1{c6 c2} - b7n2{r9c2 .} ==> r7c5 ≠ 2
PUZZLE 0 IS NOT SOLVED. 52 VALUES MISSING.
Final resolution state:
   358       1379      4         2         1358      1589      589       789       6
   58        6         1589      4589      7         1589      24589     3         245
   2         379       589       34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   3468      5         28        368       9         7         2348      1         234
   3468      234       7         1         23568     258       23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

solve-time = 0.09s
nb-facts = 0

   358       1379      4         2         1358      1589      589       789       6
   58        6         1589      4589      7         1589      24589     3         245
   2         379       589       34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   3468      5         28        368       9         7         2348      1         234
   3468      234       7         1         23568     258       23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

best-step-computation-time = 2m 43.52s


There remains 177 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 177 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................................................................................................
erasable candidates computation time = 2m 38.52s
===> 9 candidates can be eliminated:
n5r2c3 n8r2c3 n8r2c4 n8r2c6 n9r3c4 n2r4c9 n8r5c1 n8r6c1 n4r9c8
===> Among these, there are 9 candidates with the best score.
===> Eliminating randomly chosen candidate n8r2c6 and applying rules in W1, considered as "zero-step"
whip[12]: r2c1{n8 n5} - c3n5{r3 r7} - c3n6{r7 r8} - r8c4{n6 n9} - c6n9{r9 r1} - b2n1{r1c6 r1c5} - r2n1{c6 c3} - r2n9{c3 c7} - c8n9{r3 r9} - r9n6{c8 c5} - r7c5{n6 n8} - r7c4{n8 .} ==> r2c6 ≠ 8
PUZZLE 0 IS NOT SOLVED. 52 VALUES MISSING.
Final resolution state:
   358       1379      4         2         1358      1589      589       789       6
   58        6         1589      4589      7         159       24589     3         245
   2         379       589       34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   3468      5         28        368       9         7         2348      1         234
   3468      234       7         1         23568     258       23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

solve-time = 0.1s
nb-facts = 0

   358       1379      4         2         1358      1589      589       789       6
   58        6         1589      4589      7         159       24589     3         245
   2         379       589       34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   3468      5         28        368       9         7         2348      1         234
   3468      234       7         1         23568     258       23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

best-step-computation-time = 2m 39.89s


There remains 176 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 176 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
................................................................................................................................................................................
erasable candidates computation time = 3m 37.49s
===> 9 candidates can be eliminated:
n5r2c3 n8r2c3 n8r2c4 n9r3c4 n2r4c9 n8r5c1 n8r6c1 n8r6c8 n4r9c8
===> Among these, there are 9 candidates with the best score.
===> Eliminating randomly chosen candidate n8r5c1 and applying rules in W1, considered as "zero-step"
whip[14]: r5n6{c1 c4} - r6n6{c5 c1} - c1n4{r6 r9} - c2n4{r9 r6} - b4n3{r6c2 r4c2} - c4n3{r4 r3} - r1n3{c5 c1} - c1n5{r1 r2} - c3n5{r3 r7} - c4n5{r7 r4} - c9n5{r4 r3} - r3c5{n5 n8} - r3c3{n8 n9} - r4n9{c3 .} ==> r5c1 ≠ 8
PUZZLE 0 IS NOT SOLVED. 52 VALUES MISSING.
Final resolution state:
   358       1379      4         2         1358      1589      589       789       6
   58        6         1589      4589      7         159       24589     3         245
   2         379       589       34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   3468      234       7         1         23568     258       23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

solve-time = 0.39s
nb-facts = 0

   358       1379      4         2         1358      1589      589       789       6
   58        6         1589      4589      7         159       24589     3         245
   2         379       589       34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   3468      234       7         1         23568     258       23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

best-step-computation-time = 3m 39.14s


There remains 175 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 175 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...............................................................................................................................................................................
erasable candidates computation time = 1m 35.11s
===> 11 candidates can be eliminated:
n9r1c2 n5r2c3 n8r2c3 n8r2c4 n8r3c3 n9r3c4 n2r4c9 n8r6c1 n8r6c8 n1r7c5 n4r9c8
===> Among these, there are 1 candidates with the best score.
===> Eliminating randomly chosen candidate n8r6c1 and applying rules in W1, considered as "zero-step"
whip[11]: r6n6{c1 c5} - r5n6{c4 c1} - b4n4{r5c1 r6c2} - r6n3{c2 c7} - b6n5{r6c7 r4c9} - r4n7{c9 c8} - r1n7{c8 c2} - b1n1{r1c2 r2c3} - c3n8{r2 r3} - c8n8{r3 r1} - c6n8{r1 .} ==> r6c1 ≠ 8
whip[1]: c1n8{r2 .} ==> r2c3 ≠ 8, r3c3 ≠ 8
PUZZLE 0 IS NOT SOLVED. 52 VALUES MISSING.
Final resolution state:
   358       1379      4         2         1358      1589      589       789       6
   58        6         159       4589      7         159       24589     3         245
   2         379       59        34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     258       23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

solve-time = 8.82s
nb-facts = 0

   358       1379      4         2         1358      1589      589       789       6
   58        6         159       4589      7         159       24589     3         245
   2         379       59        34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     258       23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         1256      1259      249       2469      8

best-step-computation-time = 1m 45.4s


There remains 172 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 172 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
............................................................................................................................................................................
erasable candidates computation time = 3m 43.0s
===> 15 candidates can be eliminated:
n9r1c2 n5r2c3 n9r2c3 n8r2c4 n8r2c7 n9r3c4 n8r4c4 n2r4c9 n8r5c4 n2r6c6 n2r6c7 n8r6c8 n1r7c5 n2r9c5 n4r9c8
===> Among these, there are 2 candidates with the best score.
===> Eliminating randomly chosen candidate n2r9c5 and applying rules in W1, considered as "zero-step"
whip[10]: b5n2{r4c5 r6c6} - c6n8{r6 r1} - r3n8{c5 c8} - r6c8{n8 n4} - r5n4{c9 c1} - r5n6{c1 c4} - c5n6{r6 r7} - r7c8{n6 n2} - r8n2{c9 c3} - r8n6{c3 .} ==> r9c5 ≠ 2
whip[1]: b8n2{r9c6 .} ==> r6c6 ≠ 2
PUZZLE 0 IS NOT SOLVED. 52 VALUES MISSING.
Final resolution state:
   358       1379      4         2         1358      1589      589       789       6
   58        6         159       4589      7         159       24589     3         245
   2         379       59        34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     58        23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         156       1259      249       2469      8

solve-time = 0.13s
nb-facts = 0

   358       1379      4         2         1358      1589      589       789       6
   58        6         159       4589      7         159       24589     3         245
   2         379       59        34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     58        23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       239       5         123
   45        124       3         7         156       1259      249       2469      8

best-step-computation-time = 3m 44.91s


There remains 170 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 170 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................
erasable candidates computation time = 9m 7.43s
===> 22 candidates can be eliminated:
n9r1c2 n5r2c3 n9r2c3 n8r2c4 n8r2c7 n9r3c4 n8r4c4 n2r4c8 n2r4c9 n3r4c9 n8r5c4 n3r6c1 n5r6c5 n8r6c5 n2r6c7 n8r6c8 n1r7c5 n1r8c3 n2r8c3 n9r8c7 n9r9c6 n4r9c8
===> Among these, there are 2 candidates with the best score.
===> Eliminating randomly chosen candidate n9r8c7 and applying rules in W1, considered as "zero-step"
whip[8]: r8c4{n9 n6} - r9n6{c5 c8} - r9n9{c8 c6} - c6n2{r9 r8} - r8c3{n2 n1} - c2n1{r9 r1} - r1n9{c2 c8} - r1n7{c8 .} ==> r8c7 ≠ 9
whip[1]: b9n9{r9c8 .} ==> r9c6 ≠ 9
PUZZLE 0 IS NOT SOLVED. 52 VALUES MISSING.
Final resolution state:
   358       1379      4         2         1358      1589      589       789       6
   58        6         159       4589      7         159       24589     3         245
   2         379       59        34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     58        23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       23        5         123
   45        124       3         7         156       125       249       2469      8

solve-time = 0.1s
nb-facts = 0

   358       1379      4         2         1358      1589      589       789       6
   58        6         159       4589      7         159       24589     3         245
   2         379       59        34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     58        23458     248       9
   9         124       1256      568       1568      3         7         246       124
   7         8         126       69        4         129       23        5         123
   45        124       3         7         156       125       249       2469      8

best-step-computation-time = 9m 10.06s


There remains 168 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 168 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
........................................................................................................................................................................
erasable candidates computation time = 24m 15.72s
===> 28 candidates can be eliminated:
n9r1c2 n5r2c3 n9r2c3 n8r2c4 n1r2c6 n8r2c7 n9r3c4 n9r3c8 n8r4c4 n2r4c8 n2r4c9 n3r4c9 n8r5c4 n3r5c7 n2r5c9 n3r6c1 n5r6c5 n8r6c5 n2r6c7 n3r6c7 n8r6c8 n1r7c3 n1r7c5 n1r8c3 n2r8c3 n2r9c7 n4r9c7 n4r9c8
===> Among these, there are 1 candidates with the best score.
===> Eliminating randomly chosen candidate n1r2c6 and applying rules in W1, considered as "zero-step"
whip[11]: b1n1{r2c3 r1c2} - r1n7{c2 c8} - r3n7{c9 c2} - b1n3{r3c2 r1c1} - c1n8{r1 r2} - c1n5{r2 r9} - r9c6{n5 n2} - r8c6{n2 n9} - r1n9{c6 c7} - r9c7{n9 n4} - r9c2{n4 .} ==> r2c6 ≠ 1
hidden-single-in-a-row ==> r2c3 = 1
PUZZLE 0 IS NOT SOLVED. 51 VALUES MISSING.
Final resolution state:
   358       379       4         2         1358      1589      589       789       6
   58        6         1         4589      7         59        24589     3         245
   2         379       59        34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     58        23458     248       9
   9         124       256       568       1568      3         7         246       124
   7         8         26        69        4         129       23        5         123
   45        124       3         7         156       125       249       2469      8

solve-time = 0.12s
nb-facts = 0

   358       379       4         2         1358      1589      589       789       6
   58        6         1         4589      7         59        24589     3         245
   2         379       59        34589     358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     58        23458     248       9
   9         124       256       568       1568      3         7         246       124
   7         8         26        69        4         129       23        5         123
   45        124       3         7         156       125       249       2469      8

best-step-computation-time = 24m 18.83s


There remains 161 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 161 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................................................................................
erasable candidates computation time = 12m 37.23s
===> 44 candidates can be eliminated:
n3r1c2 n9r1c2 n5r1c5 n8r1c5 n9r1c6 n8r1c8 n8r2c4 n9r2c4 n8r2c7 n9r2c7 n9r3c4 n5r3c5 n9r3c8 n4r3c9 n2r4c3 n8r4c4 n5r4c5 n2r4c8 n2r4c9 n3r4c9 n8r5c4 n3r5c7 n8r5c7 n2r5c9 n3r6c1 n4r6c1 n5r6c5 n8r6c5 n2r6c7 n3r6c7 n4r6c7 n8r6c8 n6r7c3 n1r7c5 n2r7c9 n2r8c3 n6r8c4 n9r8c6 n2r8c7 n2r8c9 n3r8c9 n2r9c7 n4r9c7 n4r9c8
===> Among these, there are 4 candidates with the best score.
===> Eliminating randomly chosen candidate n6r8c4 and applying rules in W1, considered as "zero-step"
whip[8]: r8n9{c4 c6} - r2c6{n9 n5} - r6c6{n5 n8} - r5c4{n8 n3} - r4c4{n3 n5} - c9n5{r4 r3} - c3n5{r3 r7} - c3n6{r7 .} ==> r8c4 ≠ 6
naked-single ==> r8c4 = 9
hidden-single-in-a-row ==> r8c3 = 6
PUZZLE 0 IS NOT SOLVED. 49 VALUES MISSING.
Final resolution state:
   358       379       4         2         1358      1589      589       789       6
   58        6         1         458       7         59        24589     3         245
   2         379       59        3458      358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     58        23458     248       9
   9         124       25        568       1568      3         7         246       124
   7         8         6         9         4         12        23        5         123
   45        124       3         7         156       125       249       2469      8

solve-time = 0.34s
nb-facts = 0

   358       379       4         2         1358      1589      589       789       6
   58        6         1         458       7         59        24589     3         245
   2         379       59        3458      358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         2348      1         234
   346       234       7         1         23568     58        23458     248       9
   9         124       25        568       1568      3         7         246       124
   7         8         6         9         4         12        23        5         123
   45        124       3         7         156       125       249       2469      8

best-step-computation-time = 12m 42.95s


There remains 153 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 153 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.........................................................................................................................................................
erasable candidates computation time = 16m 50.04s
===> 42 candidates can be eliminated:
n3r1c2 n9r1c2 n5r1c5 n8r1c5 n9r1c6 n8r1c8 n8r2c4 n5r2c6 n8r2c7 n9r2c7 n5r3c5 n9r3c8 n4r3c9 n3r4c2 n8r4c4 n5r4c5 n2r4c8 n2r4c9 n3r4c9 n3r5c4 n8r5c4 n3r5c7 n8r5c7 n2r5c9 n3r6c1 n4r6c1 n2r6c2 n5r6c5 n8r6c5 n2r6c7 n3r6c7 n4r6c7 n8r6c8 n1r7c5 n2r7c8 n2r7c9 n2r8c7 n2r8c9 n3r8c9 n2r9c7 n4r9c7 n4r9c8
===> Among these, there are 2 candidates with the best score.
===> Eliminating randomly chosen candidate n3r8c9 and applying rules in W1, considered as "zero-step"
whip[14]: r8n1{c9 c6} - r8n2{c6 c7} - r2n2{c7 c9} - r5n2{c9 c3} - c3n8{r5 r4} - c3n9{r4 r3} - c3n5{r3 r7} - r9c1{n5 n4} - r9c7{n4 n9} - c8n9{r9 r1} - r1n7{c8 c2} - r3c2{n7 n3} - r1n3{c2 c5} - r1n1{c5 .} ==> r8c9 ≠ 3
hidden-single-in-a-block ==> r8c7 = 3
PUZZLE 0 IS NOT SOLVED. 48 VALUES MISSING.
Final resolution state:
   358       379       4         2         1358      1589      589       789       6
   58        6         1         458       7         59        24589     3         245
   2         379       59        3458      358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         248       1         234
   346       234       7         1         23568     58        2458      248       9
   9         124       25        568       1568      3         7         246       124
   7         8         6         9         4         12        3         5         12
   45        124       3         7         156       125       249       2469      8

solve-time = 1.9s
nb-facts = 0

   358       379       4         2         1358      1589      589       789       6
   58        6         1         458       7         59        24589     3         245
   2         379       59        3458      358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         248       1         234
   346       234       7         1         23568     58        2458      248       9
   9         124       25        568       1568      3         7         246       124
   7         8         6         9         4         12        3         5         12
   45        124       3         7         156       125       249       2469      8

best-step-computation-time = 16m 55.74s


There remains 148 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 148 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
....................................................................................................................................................
erasable candidates computation time = 2h 18m 16.67s
===> 48 candidates can be eliminated:
n3r1c2 n9r1c2 n3r1c5 n5r1c5 n8r1c5 n9r1c6 n8r1c7 n8r1c8 n8r2c4 n5r2c6 n8r2c7 n9r2c7 n3r3c2 n5r3c5 n9r3c8 n3r4c2 n2r4c3 n8r4c4 n3r4c5 n5r4c5 n2r4c8 n2r4c9 n3r4c9 n3r5c1 n3r5c4 n8r5c4 n8r5c7 n2r5c9 n4r5c9 n3r6c1 n4r6c1 n2r6c2 n5r6c5 n8r6c5 n2r6c7 n4r6c7 n8r6c8 n4r7c2 n1r7c5 n2r7c8 n1r7c9 n2r7c9 n1r8c6 n2r8c9 n2r9c6 n2r9c7 n4r9c7 n4r9c8
===> Among these, there are 5 candidates with the best score.
===> Eliminating randomly chosen candidate n1r8c6 and applying rules in W1, considered as "zero-step"
whip[12]: r8n2{c6 c9} - r2n2{c9 c7} - r5n2{c7 c3} - r7c3{n2 n5} - r9c1{n5 n4} - c2n4{r9 r6} - c7n4{r6 r5} - r5n8{c7 c4} - r6c6{n8 n5} - c7n5{r6 r1} - c1n5{r1 r2} - r2n8{c1 .} ==> r8c6 ≠ 1
naked-single ==> r8c6 = 2
naked-single ==> r8c9 = 1
PUZZLE 0 IS NOT SOLVED. 46 VALUES MISSING.
Final resolution state:
   358       379       4         2         1358      1589      589       789       6
   58        6         1         458       7         59        24589     3         245
   2         379       59        3458      358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         248       1         234
   346       234       7         1         23568     58        2458      248       9
   9         124       25        568       1568      3         7         246       24
   7         8         6         9         4         2         3         5         1
   45        124       3         7         156       15        249       2469      8

solve-time = 0.73s
nb-facts = 0

   358       379       4         2         1358      1589      589       789       6
   58        6         1         458       7         59        24589     3         245
   2         379       59        3458      358       6         1         4789      457
   1         239       289       358       2358      4         6         278       2357
   346       5         28        368       9         7         248       1         234
   346       234       7         1         23568     58        2458      248       9
   9         124       25        568       1568      3         7         246       24
   7         8         6         9         4         2         3         5         1
   45        124       3         7         156       15        249       2469      8

best-step-computation-time = 2h 18m 21.76s


There remains 142 candidates after rules in W1 have been applied.


===> CHECKING WHICH OF THE 142 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...................................................................

too long



