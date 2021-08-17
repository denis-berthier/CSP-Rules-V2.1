Reference: http://forum.enjoysudoku.com/sue-de-coq-t38845.html

+-------+-------+-------+
! 1 . . ! 5 . . ! . . 2 !
! . 2 . ! 7 . . ! . 3 . !
! . . 3 ! . 6 . ! 1 . . !
+-------+-------+-------+
! . . . ! . . . ! . . 8 !
! . 4 . ! . 5 . ! . 9 . !
! 6 . 2 ! . . . ! . . . !
+-------+-------+-------+
! . . 6 ! . . . ! 4 . . !
! . 5 . ! . . 3 ! . 7 . !
! 8 . . ! . . 4 ! . . 9 !
+-------+-------+-------+

1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9
SER 8.5



-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

1) The standard, simplest-first solution:

Load SudoRules with the following settings:

(bind ?*Subsets* TRUE)
(bind ?*FinnedFish* TRUE)
(bind ?*Bivalue-Chains* TRUE)
(bind ?*Whips* TRUE)
(bind ?*t-Whips* TRUE)
(bind ?*z-Chains* TRUE)


(solve "1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9
23 givens 224 candidates
hidden-single-in-a-column ==> r7c6 = 5
hidden-single-in-a-row ==> r1c5 = 3
hidden-single-in-a-column ==> r1c2 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      6      4789   ! 5      3      89     ! 789    48     2      !
   ! 459    2      4589   ! 7      1489   189    ! 5689   3      456    !
   ! 4579   789    3      ! 2489   6      289    ! 1      458    457    !
   +----------------------+----------------------+----------------------+
   ! 3579   1379   1579   ! 123469 12479  12679  ! 23567  12456  8      !
   ! 37     4      178    ! 12368  5      12678  ! 2367   9      1367   !
   ! 6      13789  2      ! 13489  14789  1789   ! 357    145    13457  !
   +----------------------+----------------------+----------------------+
   ! 2379   1379   6      ! 1289   12789  5      ! 4      128    13     !
   ! 249    5      149    ! 12689  1289   3      ! 268    7      16     !
   ! 8      137    17     ! 126    127    4      ! 2356   1256   9      !
   +----------------------+----------------------+----------------------+

204 candidates, 1244 csp-links and 1244 links. Density = 6.01%

Starting non trivial part of solution.
whip[1]: c6n7{r6 .} ==> r6c5 ≠ 7, r4c5 ≠ 7
whip[1]: c6n6{r5 .} ==> r5c4 ≠ 6, r4c4 ≠ 6
whip[1]: r6n5{c9 .} ==> r4c8 ≠ 5, r4c7 ≠ 5

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

198 candidates.

z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
finned-x-wing-in-columns: n4{c9 c4}{r3 r6} ==> r6c5 ≠ 4
z-chain[4]: c9n5{r3 r6} - c9n4{r6 r3} - b3n7{r3c9 r1c7} - c7n9{r1 .} ==> r2c7 ≠ 5
t-whip[4]: c9n4{r6 r3} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r3 .} ==> r6c9 ≠ 7, r6c9 ≠ 3, r6c9 ≠ 1
biv-chain[2]: c9n7{r5 r3} - r1n7{c7 c3} ==> r5c3 ≠ 7
z-chain[4]: r9c3{n1 n7} - r1n7{c3 c7} - c9n7{r3 r5} - c9n1{r5 .} ==> r9c8 ≠ 1
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
whip[1]: b9n2{r9c8 .} ==> r4c8 ≠ 2
t-whip[3]: c7n9{r2 r1} - r1c6{n9 n8} - r2n8{c6 .} ==> r2c3 ≠ 9
biv-chain[4]: r7n8{c4 c5} - b8n7{r7c5 r9c5} - r9c3{n7 n1} - r5c3{n1 n8} ==> r5c4 ≠ 8
finned-x-wing-in-rows: n8{r5 r2}{c3 c6} ==> r3c6 ≠ 8, r1c6 ≠ 8
naked-single ==> r1c6 = 9
naked-single ==> r1c7 = 7
naked-single ==> r3c6 = 2
hidden-single-in-a-column ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r7c9 = 3
hidden-single-in-a-block ==> r9c2 = 3
hidden-single-in-a-column ==> r8c9 = 1
naked-single ==> r7c8 = 2
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r1c3 = 8
naked-single ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r2c9 = 6
naked-single ==> r2c7 = 9
naked-single ==> r3c8 = 8
naked-single ==> r3c4 = 4
naked-single ==> r6c9 = 4
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r5c3 = 1
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r9c4 = 1
naked-single ==> r7c4 = 8
naked-single ==> r6c4 = 9
naked-single ==> r4c4 = 3
naked-single ==> r7c5 = 7
naked-single ==> r7c1 = 9
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c3 = 9
naked-single ==> r4c6 = 6
naked-single ==> r6c2 = 8
naked-single ==> r6c5 = 1
naked-single ==> r2c5 = 8
naked-single ==> r2c6 = 1
naked-single ==> r6c6 = 7
naked-single ==> r4c1 = 5
naked-single ==> r7c2 = 1
naked-single ==> r9c5 = 2
naked-single ==> r5c6 = 8
naked-single ==> r9c7 = 5
naked-single ==> r9c3 = 7
naked-single ==> r8c4 = 6
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[4]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14648>
Puzzle 1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9 :
init-time = 0.2s, solve-time = 3.24s, total-time = 3.44s
nb-facts = <Fact-14648>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************




-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

2) Looking for 1-step solutions

===== step 1: load SudoRules with the following settings from section 2e of the config file:

 (bind ?*Anti-backdoors* TRUE)
 (bind ?*Whips[1]* TRUE)

and type the commands:
(init "1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9")
(find-anti-backdoors)

6 W1-ANTI-BACKDOORS FOUND:
n1r9c3 n7r3c9 n6r2c7 n9r1c7 n8r1c6 n7r1c3
computation time = 9.97s

We shall now see that 3 of them give a 1-step elimination, but they require rather long whips.



===== step 2: load SusoRules with the following settings:
(bind ?*Bivalue-Chains* TRUE)
(bind ?*Whips* TRUE)
(bind ?*z-Chains* TRUE)


type in the following 3 commands:
(init-sukaku-grid
    1         6         4789      5         3         89        789       48        2
    459       2         4589      7         1489      189       5689      3         456
    4579      789       3         2489      6         289       1         458       457
    3579      1379      1579      12349     1249      12679     2356      1246      8
    37        4         178       1238      5         12678     2367      9         1367
    6         13789     2         13489     1489      1789      357       145       13457
    2379      1379      6         1289      12789     5         4         128       13
    249       5         149       12689     1289      3         268       7         16
    8         137       17        126       127       4         2356      1256      9
)
, 198 candidates

(defglobal ?*RS* = (create$
    1         6         4789      5         3         89        789       48        2
    459       2         4589      7         1489      189       5689      3         456
    4579      789       3         2489      6         289       1         458       457
    3579      1379      1579      12349     1249      12679     2356      1246      8
    37        4         178       1238      5         12678     2367      9         1367
    6         13789     2         13489     1489      1789      357       145       13457
    2379      1379      6         1289      12789     5         4         128       13
    249       5         149       12689     1289      3         268       7         16
    8         137       17        126       127       4         2356      1256      9

))

(find-sukaku-1-steppers-among-cands ?*RS* (list-of-nirjck-to-list-of-labels n1r9c3 n7r3c9 n6r2c7 n9r1c7 n8r1c6 n7r1c3))

You will get the following output:
computation time = 1.97s
list of 1-steppers:
(739 627 917)

At this point, you have to scan the output to find the corresponding 1-step solutions:

whip[7]: c7n9{r2 r1} - r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r2c7 ≠ 6
stte

whip[8]: r1n7{c7 c3} - r1n4{c3 c8} - c9n4{r3 r6} - c9n5{r6 r2} - r3c8{n5 n8} - c2n8{r3 r6} - r5c3{n8 n1} - r9c3{n1 .} ==> r3c9 ≠ 7
stte

whip[9]: r1c6{n9 n8} - r1c8{n8 n4} - r1c3{n4 n7} - r9c3{n7 n1} - r5c3{n1 n8} - c2n8{r6 r3} - r3c8{n8 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 9
stte


-----------------------------------------------------------------------------------------
Automatic version with maximum length of chains restricted to 8.

load SudoRules with the following settings:
(defglobal ?*all-chains-max-length* = 8)
(bind ?*Bivalue-Chains* TRUE)
(bind ?*Whips* TRUE)
(bind ?*z-Chains* TRUE)
(bind ?*Typed-Bivalue-Chains* TRUE)
(bind ?*Typed-z-Chains* TRUE)
(bind ?*Typed-Whips* TRUE)


(find-sudoku-1-steppers-wrt-resolution-theory W1 "1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9")
1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9
23 givens 224 candidates
hidden-single-in-a-column ==> r7c6 = 5
hidden-single-in-a-row ==> r1c5 = 3
hidden-single-in-a-column ==> r1c2 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      6      4789   ! 5      3      89     ! 789    48     2      !
   ! 459    2      4589   ! 7      1489   189    ! 5689   3      456    !
   ! 4579   789    3      ! 2489   6      289    ! 1      458    457    !
   +----------------------+----------------------+----------------------+
   ! 3579   1379   1579   ! 123469 12479  12679  ! 23567  12456  8      !
   ! 37     4      178    ! 12368  5      12678  ! 2367   9      1367   !
   ! 6      13789  2      ! 13489  14789  1789   ! 357    145    13457  !
   +----------------------+----------------------+----------------------+
   ! 2379   1379   6      ! 1289   12789  5      ! 4      128    13     !
   ! 249    5      149    ! 12689  1289   3      ! 268    7      16     !
   ! 8      137    17     ! 126    127    4      ! 2356   1256   9      !
   +----------------------+----------------------+----------------------+

204 candidates, 1244 csp-links and 1244 links. Density = 6.01%

Starting non trivial part of solution.
whip[1]: c6n7{r6 .} ==> r6c5 ≠ 7, r4c5 ≠ 7
whip[1]: c6n6{r5 .} ==> r5c4 ≠ 6, r4c4 ≠ 6
whip[1]: r6n5{c9 .} ==> r4c8 ≠ 5, r4c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.

Resolution state after rules in W1:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

===> Looking for the W1-anti-backdoors:
anti-backdoors computation time = 16.27s
===> There are 6 W1-anti-backdoors:
n7r1c3 n8r1c6 n9r1c7 n6r2c7 n7r3c9 n1r9c3

===> Testing each of the 6 W1-anti-backdoors for a single step solution:

Testing if candidate n7r1c3 is a 1-stepper:
 198 candidates
Resolution state after Singles:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

198 candidates, 1164 csp-links and 1164 links. Density = 5.97%

Starting non trivial part of solution.
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts=0

Testing if candidate n8r1c6 is a 1-stepper:
 198 candidates
Resolution state after Singles:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

198 candidates, 1164 csp-links and 1164 links. Density = 5.97%

Starting non trivial part of solution.
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts=0

Testing if candidate n9r1c7 is a 1-stepper:
 198 candidates
Resolution state after Singles:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

198 candidates, 1164 csp-links and 1164 links. Density = 5.97%

Starting non trivial part of solution.
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts=0

Testing if candidate n6r2c7 is a 1-stepper:
 198 candidates
Resolution state after Singles:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

198 candidates, 1164 csp-links and 1164 links. Density = 5.97%

Starting non trivial part of solution.
whip[7]: c7n9{r2 r1} - r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r2c7 ≠ 6
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-column ==> r8c7 = 8
naked-single ==> r7c8 = 2
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[7]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-13989>
solve-time = 0.29s
nb-facts=<Fact-13989>

Testing if candidate n7r3c9 is a 1-stepper:
 198 candidates
Resolution state after Singles:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

198 candidates, 1164 csp-links and 1164 links. Density = 5.97%

Starting non trivial part of solution.
whip[8]: r1n7{c7 c3} - r1n4{c3 c8} - c9n4{r3 r6} - c9n5{r6 r2} - r3c8{n5 n8} - c2n8{r3 r6} - r5c3{n8 n1} - r9c3{n1 .} ==> r3c9 ≠ 7
hidden-single-in-a-block ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-column ==> r8c7 = 8
naked-single ==> r7c8 = 2
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[8]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-13944>
solve-time = 0.25s
nb-facts=<Fact-13944>

Testing if candidate n1r9c3 is a 1-stepper:
 198 candidates
Resolution state after Singles:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

198 candidates, 1164 csp-links and 1164 links. Density = 5.97%

Starting non trivial part of solution.
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts=0

Total computation time = 19.24s
===> There are 2 1-step solutions, based on the following anti-backdoors:
n6r2c7 n7r3c9



;;; Finally, look manually for these two 1-step solutions:
whip[7]: c7n9{r2 r1} - r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r2c7 ≠ 6
stte

whip[8]: r1n7{c7 c3} - r1n4{c3 c8} - c9n4{r3 r6} - c9n5{r6 r2} - r3c8{n5 n8} - c2n8{r3 r6} - r5c3{n8 n1} - r9c3{n1 .} ==> r3c9 ≠ 7
stte




-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

3) Looking for 2-step solutions ("manual" version)

Load SudoRules with:
(bind ?*Anti-backdoor-pairs* TRUE)
(bind ?*Whips[1]* TRUE)

(defglobal ?*RS* = (create$
       1         6         4789      5         3         89        789       48        2
       459       2         4589      7         1489      189       5689      3         456
       4579      789       3         2489      6         289       1         458       457
       3579      1379      1579      12349     1249      12679     2367      1246      8
       37        4         178       1238      5         12678     2367      9         1367
       6         13789     2         13489     1489      1789      357       145       13457
       2379      1379      6         1289      12789     5         4         128       13
       249       5         149       12689     1289      3         268       7         16
       8         137       17        126       127       4         2356      1256      9
))
198 candidates

There are 198*(198-1)/2 = 19,503 pairs to check
(init-sukaku-list ?*RS*)
(find-sukaku-anti-backdoor-pairs ?*RS*)
If all these candidate pairs are tried, 1942 W1-anti-backdoor-pairs are found.
total-time = 24m 11.08s

If all-chains-max-length is restricted to W8:
198 candidates 
it tries 19306 pairs
986 W1-ANTI-BACKDOOR-PAIRS FOUND in W8
It took "22m 46.98s" with the straightforward implementation 

314 of these pairs give rise to a 2-step solution in W8. However, only four of then allow to lower the maximum length of chains wrt my simplest 1-step solution above.


whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
whip[6]: r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r1c7 ≠ 9
stte

whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
whip[6]: r1n7{c7 c3} - r9c3{n7 n1} - r5c3{n1 n8} - c2n8{r6 r3} - c8n8{r3 r1} - r1n4{c8 .} ==> r3c9 ≠ 7
stte

whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
whip[6]: r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r1c7 ≠ 9
stte

whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
whip[6]: c7n9{r2 r1} - r1c6{n9 n8} - r2n8{c6 c3} - r5c3{n8 n1} - r9c3{n1 n7} - r1n7{c3 .} ==> r2c7 ≠ 6
stte






-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

Trying to find a faster solution for pairs.

1) Computed in a first instance of CLIPS, with only W8 activated:
(defglobal ?*RS* = (create$
       1         6         4789      5         3         89        789       48        2
       459       2         4589      7         1489      189       5689      3         456
       4579      789       3         2489      6         289       1         458       457
       3579      1379      1579      12349     1249      12679     2367      1246      8
       37        4         178       1238      5         12678     2367      9         1367
       6         13789     2         13489     1489      1789      357       145       13457
       2379      1379      6         1289      12789     5         4         128       13
       249       5         149       12689     1289      3         268       7         16
       8         137       17        126       127       4         2356      1256      9
))
(init-sukaku-list ?*RS*)
(find-erasable-candidates-sukaku-list ?*RS*)
===> 34 candidates can be eliminated:
(413 817 818 921 923 527 627 827 429 529 439 739 248 448 753 159 659 362 464 465 767 169 369 769 878 183 884 885 287 687 689 192 297 198)
computation time = 1m 10.97s


2) Computed in a second instance of CLIPS , with only ?*Anti-backdoor-pairs* and ?*whips[1]* activated:
(defglobal ?*RS* = (create$
       1         6         4789      5         3         89        789       48        2
       459       2         4589      7         1489      189       5689      3         456
       4579      789       3         2489      6         289       1         458       457
       3579      1379      1579      12349     1249      12679     2367      1246      8
       37        4         178       1238      5         12678     2367      9         1367
       6         13789     2         13489     1489      1789      357       145       13457
       2379      1379      6         1289      12789     5         4         128       13
       249       5         149       12689     1289      3         268       7         16
       8         137       17        126       127       4         2356      1256      9
))
(init-sukaku-grid ?*RS*)

(defglobal ?*erasable-candidates* = (create$
    413 817 818 921 923 527 627 827 429 529 439 739 248 448 753 159 659 362 464 465 767 169 369 769 878 183 884 885 287 687 689 192 297 198
))

(find-anti-backdoor-pairs-with-one-cand-in-list ?*erasable-candidates*)
(+ (* 34 (- 198 34)) (/ (* 34 33) 2)) = 6137 pairs expected to be tried:   6137 tried

475 W1-ANTI-BACKDOOR-PAIRS FOUND:
computation time = 6m 32.55s


3) With whips[8] activated, check which of these pairs lead to a 2-step solution
(defglobal ?*RS* = (create$
       1         6         4789      5         3         89        789       48        2
       459       2         4589      7         1489      189       5689      3         456
       4579      789       3         2489      6         289       1         458       457
       3579      1379      1579      12349     1249      12679     2367      1246      8
       37        4         178       1238      5         12678     2367      9         1367
       6         13789     2         13489     1489      1789      357       145       13457
       2379      1379      6         1289      12789     5         4         128       13
       249       5         149       12689     1289      3         268       7         16
       8         137       17        126       127       4         2356      1256      9
))

(init-sukaku-grid ?*RS*)

(find-sukaku-2-steppers-among-pairs
    ?*RS*
    (list-of-nirjck-to-list-of-labels ?*W1-anti-bakdoor-pairs*)
)
Total computation time = 200.821336984634



whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
z-chain[5]: r1n4{c3 c8} - b3n8{r1c8 r3c8} - b1n8{r3c2 r2c3} - r5c3{n8 n1} - r9c3{n1 .} ==> r1c3 ≠ 7
stte

whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
whip[6]: r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r1c7 ≠ 9
stte

whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
whip[6]: r1n7{c7 c3} - r9c3{n7 n1} - r5c3{n1 n8} - c2n8{r6 r3} - c8n8{r3 r1} - r1n4{c8 .} ==> r3c9 ≠ 7
stte

whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
whip[6]: r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r1c7 ≠ 9
stte









-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

Using the AUTOMATIC function for two-step solutions
If ?*all-chains-max-length* = 6:


(find-sudoku-2-steppers-wrt-resolution-theory W1 "1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9")
OR
(find-sudoku-2-steppers-wrt-W1
   "1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9")
1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9
hidden-single-in-a-column ==> r7c6 = 5
hidden-single-in-a-row ==> r1c5 = 3
hidden-single-in-a-column ==> r1c2 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      6      4789   ! 5      3      89     ! 789    48     2      !
   ! 459    2      4589   ! 7      1489   189    ! 5689   3      456    !
   ! 4579   789    3      ! 2489   6      289    ! 1      458    457    !
   +----------------------+----------------------+----------------------+
   ! 3579   1379   1579   ! 123469 12479  12679  ! 23567  12456  8      !
   ! 37     4      178    ! 12368  5      12678  ! 2367   9      1367   !
   ! 6      13789  2      ! 13489  14789  1789   ! 357    145    13457  !
   +----------------------+----------------------+----------------------+
   ! 2379   1379   6      ! 1289   12789  5      ! 4      128    13     !
   ! 249    5      149    ! 12689  1289   3      ! 268    7      16     !
   ! 8      137    17     ! 126    127    4      ! 2356   1256   9      !
   +----------------------+----------------------+----------------------+

204 candidates, 1244 csp-links and 1244 links. Density = 6.01%
Starting non trivial part of solution.
whip[1]: c6n7{r6 .} ==> r6c5 ≠ 7, r4c5 ≠ 7
whip[1]: c6n6{r5 .} ==> r5c4 ≠ 6, r4c4 ≠ 6
whip[1]: r6n5{c9 .} ==> r4c8 ≠ 5, r4c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.

Resolution state after rules in W1:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

There remains 198 candidates after the rules in W1 have been applied.


===> CHECKING WHICH OF THE 198 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................................................................................................
erasable candidates computation time = 1m 49.83s
===> 20 candidates can be eliminated:
n8r1c7 n5r2c7 n8r2c7 n4r2c9 n2r4c8 n4r4c8 n7r5c3 n4r6c4 n4r6c5 n1r6c9 n3r6c9 n7r6c9 n8r7c8 n1r8c3 n8r8c4 n8r8c5 n2r8c7 n6r8c7 n2r9c7 n1r9c8


===> CHECKING 3750 RELEVANT PAIRS AS POSSIBLE ANTI-BACKDOOR-PAIRS (BE PATIENT):

=> Trying all the possible pairs containing erasable candidate #1: n8r1c7
.....................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #2: n5r2c7
....................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #3: n8r2c7
...................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #4: n4r2c9
..................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #5: n2r4c8
.................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #6: n4r4c8
................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #7: n7r5c3
...............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #8: n4r6c4
..............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #9: n4r6c5
.............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #10: n1r6c9
............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #11: n3r6c9
...........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #12: n7r6c9
..........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #13: n8r7c8
.........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #14: n1r8c3
........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #15: n8r8c4
.......................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #16: n8r8c5
......................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #17: n2r8c7
.....................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #18: n6r8c7
....................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #19: n2r9c7
...................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #20: n1r9c8
..................................................................................................................................................................................

anti-backdoor-pairs computation time = 5m 57.38s
===> There are 146 W1-anti-backdoor-pairs for the current set of rules:
n8r1c7 n7r1c3     n8r1c7 n8r1c6     n8r1c7 n9r1c7     n8r1c7 n6r2c7     n8r1c7 n7r3c9     n8r1c7 n1r9c3     n5r2c7 n7r1c3     n5r2c7 n8r1c6     n5r2c7 n9r1c7     n5r2c7 n6r2c7     n5r2c7 n7r3c9     n5r2c7 n1r9c3     n8r2c7 n7r1c3     n8r2c7 n8r1c6     n8r2c7 n9r1c7     n8r2c7 n8r2c3     n8r2c7 n6r2c7     n8r2c7 n7r3c9     n8r2c7 n5r4c3     n8r2c7 n1r9c3     n4r2c9 n7r1c3     n4r2c9 n8r1c6     n4r2c9 n9r1c7     n4r2c9 n6r2c7     n4r2c9 n5r2c9     n4r2c9 n5r3c1     n4r2c9 n7r3c9     n4r2c9 n5r4c3     n4r2c9 n1r9c3     n2r4c8 n7r1c3     n2r4c8 n8r1c6     n2r4c8 n9r1c7     n2r4c8 n6r2c7     n2r4c8 n7r3c9     n2r4c8 n6r4c8     n2r4c8 n6r5c6     n2r4c8 n1r9c3     n2r4c8 n6r9c4     n4r4c8 n7r1c3     n4r4c8 n8r1c6     n4r4c8 n9r1c7     n4r4c8 n6r2c7     n4r4c8 n7r3c9     n4r4c8 n1r9c3     n7r5c3 n4r1c3     n7r5c3 n7r1c3     n7r5c3 n8r1c6     n7r5c3 n9r1c7     n7r5c3 n8r1c8     n7r5c3 n6r2c7     n7r5c3 n8r3c2     n7r5c3 n7r3c9     n7r5c3 n8r5c3     n7r5c3 n2r7c1     n7r5c3 n4r8c1     n7r5c3 n1r9c3     n4r6c4 n7r1c3     n4r6c4 n8r1c6     n4r6c4 n9r1c7     n4r6c4 n6r2c7     n4r6c4 n7r3c9     n4r6c4 n1r9c3     n4r6c5 n7r1c3     n4r6c5 n8r1c6     n4r6c5 n9r1c7     n4r6c5 n6r2c7     n4r6c5 n7r3c9     n4r6c5 n1r9c3     n1r6c9 n7r1c3     n1r6c9 n8r1c6     n1r6c9 n9r1c7     n1r6c9 n6r2c7     n1r6c9 n7r3c9     n1r6c9 n1r9c3     n3r6c9 n7r1c3     n3r6c9 n8r1c6     n3r6c9 n9r1c7     n3r6c9 n6r2c7     n3r6c9 n7r3c9     n3r6c9 n1r9c3     n7r6c9 n7r1c3     n7r6c9 n8r1c6     n7r6c9 n9r1c7     n7r6c9 n6r2c7     n7r6c9 n7r3c9     n7r6c9 n1r9c3     n8r7c8 n7r1c3     n8r7c8 n8r1c6     n8r7c8 n9r1c7     n8r7c8 n8r2c3     n8r7c8 n6r2c7     n8r7c8 n7r3c9     n8r7c8 n5r4c3     n8r7c8 n6r4c8     n8r7c8 n6r5c6     n8r7c8 n6r8c9     n8r7c8 n1r9c3     n8r7c8 n6r9c4     n1r8c3 n7r1c3     n1r8c3 n8r1c6     n1r8c3 n9r1c7     n1r8c3 n6r2c7     n1r8c3 n7r3c9     n1r8c3 n1r9c3     n8r8c4 n7r1c3     n8r8c4 n8r1c6     n8r8c4 n9r1c7     n8r8c4 n6r2c7     n8r8c4 n7r3c9     n8r8c4 n1r9c3     n8r8c5 n7r1c3     n8r8c5 n8r1c6     n8r8c5 n9r1c7     n8r8c5 n6r2c7     n8r8c5 n7r3c9     n8r8c5 n6r4c8     n8r8c5 n6r5c6     n8r8c5 n1r9c3     n8r8c5 n6r9c4     n2r8c7 n7r1c3     n2r8c7 n8r1c6     n2r8c7 n9r1c7     n2r8c7 n6r2c7     n2r8c7 n7r3c9     n2r8c7 n6r4c8     n2r8c7 n6r5c6     n2r8c7 n1r9c3     n2r8c7 n6r9c4     n6r8c7 n7r1c3     n6r8c7 n8r1c6     n6r8c7 n9r1c7     n6r8c7 n6r2c7     n6r8c7 n7r3c9     n6r8c7 n1r9c3     n2r9c7 n7r1c3     n2r9c7 n8r1c6     n2r9c7 n9r1c7     n2r9c7 n6r2c7     n2r9c7 n7r3c9     n2r9c7 n1r9c3     n1r9c8 n7r1c3     n1r9c8 n8r1c6     n1r9c8 n9r1c7     n1r9c8 n6r2c7     n1r9c8 n7r3c9     n1r9c8 n1r9c3




===> CHECKING WHICH OF THE ANTI-BACKDOOR-PAIRS LEAD TO 2-STEP SOLUTIONS:
=> Testing if candidate pair n8r1c7 n7r1c3 is a 2-stepper:
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.08s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.2s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.2s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
whip[6]: r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r1c7 ≠ 9
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r1c7 = 7
hidden-single-in-a-column ==> r8c7 = 8
naked-single ==> r7c8 = 2
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[6]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14075>
solve-time = 0.33s
nb-facts = <Fact-14075>

=> Testing if candidate pair n8r2c7 n8r2c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n5r4c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.2s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n5r2c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.24s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n5r3c1 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n5r4c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n2r4c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n2r4c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n2r4c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0

=> Testing if candidate pair n2r4c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0

=> Testing if candidate pair n2r4c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n2r4c8 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n2r4c8 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n2r4c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n2r4c8 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.3s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n4r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n8r1c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.27s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
whip[6]: c7n9{r2 r1} - r1c6{n9 n8} - r2n8{c6 c3} - r5c3{n8 n1} - r9c3{n1 n7} - r1n7{c3 .} ==> r2c7 ≠ 6
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-column ==> r8c7 = 8
naked-single ==> r7c8 = 2
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[6]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-13996>
solve-time = 0.29s
nb-facts = <Fact-13996>

=> Testing if candidate pair n7r5c3 n8r3c2 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n8r5c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n2r7c1 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n4r8c1 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n7r5c3 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n4r6c4 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.23s
nb-facts = 0

=> Testing if candidate pair n4r6c4 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.23s
nb-facts = 0

=> Testing if candidate pair n4r6c4 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.25s
nb-facts = 0

=> Testing if candidate pair n4r6c4 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.28s
nb-facts = 0

=> Testing if candidate pair n4r6c4 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.25s
nb-facts = 0

=> Testing if candidate pair n4r6c4 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.23s
nb-facts = 0

=> Testing if candidate pair n4r6c5 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0

=> Testing if candidate pair n4r6c5 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0

=> Testing if candidate pair n4r6c5 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.24s
nb-facts = 0

=> Testing if candidate pair n4r6c5 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.28s
nb-facts = 0

=> Testing if candidate pair n4r6c5 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.25s
nb-facts = 0

=> Testing if candidate pair n4r6c5 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0

=> Testing if candidate pair n1r6c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n1r6c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n1r6c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n1r6c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.2s
nb-facts = 0

=> Testing if candidate pair n1r6c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n1r6c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.2s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
z-chain[5]: r1n4{c3 c8} - b3n8{r1c8 r3c8} - b1n8{r3c2 r2c3} - r5c3{n8 n1} - r9c3{n1 .} ==> r1c3 ≠ 7
hidden-single-in-a-row ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c8 = 2
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = z-chain[5]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14406>
solve-time = 0.23s
nb-facts = <Fact-14406>

=> Testing if candidate pair n8r7c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.2s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
whip[6]: r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r1c7 ≠ 9
naked-single ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c8 = 2
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[6]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14857>
solve-time = 0.28s
nb-facts = <Fact-14857>

=> Testing if candidate pair n8r7c8 n8r2c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
whip[6]: r1n7{c7 c3} - r9c3{n7 n1} - r5c3{n1 n8} - c2n8{r6 r3} - c8n8{r3 r1} - r1n4{c8 .} ==> r3c9 ≠ 7
hidden-single-in-a-block ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c8 = 2
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[6]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14843>
solve-time = 0.25s
nb-facts = <Fact-14843>

=> Testing if candidate pair n8r7c8 n5r4c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r8c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


Total computation time = 9m 11.66s
===> There are 5 2-step solutions for the current set of rules, based on the following pairs:
n8r2c7 n9r1c7     n7r5c3 n6r2c7     n8r7c8 n7r1c3     n8r7c8 n9r1c7     n8r7c8 n7r3c9
(827 917 753 627 878 713 878 917 878 739)



--------------------------------------------------------------------------------------
Using the AUTOMATIC function
If max-length = 5:

(find-sudoku-2-steppers-wrt-resolution-theory W1
"1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9")
1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9
hidden-single-in-a-column ==> r7c6 = 5
hidden-single-in-a-row ==> r1c5 = 3
hidden-single-in-a-column ==> r1c2 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      6      4789   ! 5      3      89     ! 789    48     2      !
   ! 459    2      4589   ! 7      1489   189    ! 5689   3      456    !
   ! 4579   789    3      ! 2489   6      289    ! 1      458    457    !
   +----------------------+----------------------+----------------------+
   ! 3579   1379   1579   ! 123469 12479  12679  ! 23567  12456  8      !
   ! 37     4      178    ! 12368  5      12678  ! 2367   9      1367   !
   ! 6      13789  2      ! 13489  14789  1789   ! 357    145    13457  !
   +----------------------+----------------------+----------------------+
   ! 2379   1379   6      ! 1289   12789  5      ! 4      128    13     !
   ! 249    5      149    ! 12689  1289   3      ! 268    7      16     !
   ! 8      137    17     ! 126    127    4      ! 2356   1256   9      !
   +----------------------+----------------------+----------------------+

204 candidates, 1244 csp-links and 1244 links. Density = 6.01%
Starting non trivial part of solution.
whip[1]: c6n7{r6 .} ==> r6c5 ≠ 7, r4c5 ≠ 7
whip[1]: c6n6{r5 .} ==> r5c4 ≠ 6, r4c4 ≠ 6
whip[1]: r6n5{c9 .} ==> r4c8 ≠ 5, r4c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.

Resolution state after rules in W1:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

There remains 198 candidates after the rules in W1 have been applied.


===> CHECKING WHICH OF THE 198 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................................................................................................
erasable candidates computation time = 1m 55.08s
===> 15 candidates can be eliminated:
n8r1c7 n5r2c7 n8r2c7 n4r2c9 n4r4c8 n3r6c9 n7r6c9 n8r7c8 n1r8c3 n8r8c4 n8r8c5 n2r8c7 n6r8c7 n2r9c7 n1r9c8


===> LOOKING FOR THE RELEVANT ANTI-BACKDOOR-PAIRS (BE PATIENT):

=> Trying all the possible pairs containing erasable candidate #1: n8r1c7
.....................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #2: n5r2c7
....................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #3: n8r2c7
...................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #4: n4r2c9
..................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #5: n4r4c8
.................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #6: n3r6c9
................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #7: n7r6c9
...............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #8: n8r7c8
..............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #9: n1r8c3
.............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #10: n8r8c4
............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #11: n8r8c5
...........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #12: n2r8c7
..........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #13: n6r8c7
.........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #14: n2r9c7
........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #15: n1r9c8
.......................................................................................................................................................................................

anti-backdoor-pairs computation time = 4m 22.1s
===> There are 107 W1-anti-backdoor-pairs for the current set of rules:
n8r1c7 n7r1c3     n8r1c7 n8r1c6     n8r1c7 n9r1c7     n8r1c7 n6r2c7     n8r1c7 n7r3c9     n8r1c7 n1r9c3     n5r2c7 n7r1c3     n5r2c7 n8r1c6     n5r2c7 n9r1c7     n5r2c7 n6r2c7     n5r2c7 n7r3c9     n5r2c7 n1r9c3     n8r2c7 n7r1c3     n8r2c7 n8r1c6     n8r2c7 n9r1c7     n8r2c7 n8r2c3     n8r2c7 n6r2c7     n8r2c7 n7r3c9     n8r2c7 n5r4c3     n8r2c7 n1r9c3     n4r2c9 n7r1c3     n4r2c9 n8r1c6     n4r2c9 n9r1c7     n4r2c9 n6r2c7     n4r2c9 n5r2c9     n4r2c9 n5r3c1     n4r2c9 n7r3c9     n4r2c9 n5r4c3     n4r2c9 n1r9c3     n4r4c8 n7r1c3     n4r4c8 n8r1c6     n4r4c8 n9r1c7     n4r4c8 n6r2c7     n4r4c8 n7r3c9     n4r4c8 n1r9c3     n3r6c9 n7r1c3     n3r6c9 n8r1c6     n3r6c9 n9r1c7     n3r6c9 n6r2c7     n3r6c9 n7r3c9     n3r6c9 n1r9c3     n7r6c9 n7r1c3     n7r6c9 n8r1c6     n7r6c9 n9r1c7     n7r6c9 n6r2c7     n7r6c9 n7r3c9     n7r6c9 n1r9c3     n8r7c8 n7r1c3     n8r7c8 n8r1c6     n8r7c8 n9r1c7     n8r7c8 n8r2c3     n8r7c8 n6r2c7     n8r7c8 n7r3c9     n8r7c8 n5r4c3     n8r7c8 n6r4c8     n8r7c8 n6r5c6     n8r7c8 n6r8c9     n8r7c8 n1r9c3     n8r7c8 n6r9c4     n1r8c3 n7r1c3     n1r8c3 n8r1c6     n1r8c3 n9r1c7     n1r8c3 n6r2c7     n1r8c3 n7r3c9     n1r8c3 n1r9c3     n8r8c4 n7r1c3     n8r8c4 n8r1c6     n8r8c4 n9r1c7     n8r8c4 n6r2c7     n8r8c4 n7r3c9     n8r8c4 n1r9c3     n8r8c5 n7r1c3     n8r8c5 n8r1c6     n8r8c5 n9r1c7     n8r8c5 n6r2c7     n8r8c5 n7r3c9     n8r8c5 n6r4c8     n8r8c5 n6r5c6     n8r8c5 n1r9c3     n8r8c5 n6r9c4     n2r8c7 n7r1c3     n2r8c7 n8r1c6     n2r8c7 n9r1c7     n2r8c7 n6r2c7     n2r8c7 n7r3c9     n2r8c7 n6r4c8     n2r8c7 n6r5c6     n2r8c7 n1r9c3     n2r8c7 n6r9c4     n6r8c7 n7r1c3     n6r8c7 n8r1c6     n6r8c7 n9r1c7     n6r8c7 n6r2c7     n6r8c7 n7r3c9     n6r8c7 n1r9c3     n2r9c7 n7r1c3     n2r9c7 n8r1c6     n2r9c7 n9r1c7     n2r9c7 n6r2c7     n2r9c7 n7r3c9     n2r9c7 n1r9c3     n1r9c8 n7r1c3     n1r9c8 n8r1c6     n1r9c8 n9r1c7     n1r9c8 n6r2c7     n1r9c8 n7r3c9     n1r9c8 n1r9c3




===> CHECKING WHICH OF THE ANTI-BACKDOOR-PAIRS LEAD TO 2-STEP SOLUTIONS:
=> Testing if candidate pair n8r1c7 n7r1c3 is a 2-stepper:
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.07s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n8r1c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n5r2c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n8r2c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n5r4c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r2c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n5r2c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n5r3c1 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n5r4c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n4r2c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n4r4c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n3r6c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n7r6c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
z-chain[5]: r1n4{c3 c8} - b3n8{r1c8 r3c8} - b1n8{r3c2 r2c3} - r5c3{n8 n1} - r9c3{n1 .} ==> r1c3 ≠ 7
hidden-single-in-a-row ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c8 = 2
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = z-chain[5]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14406>
solve-time = 0.24s
nb-facts = <Fact-14406>

=> Testing if candidate pair n8r7c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n8r2c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n5r4c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r8c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n8r7c8 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n1r8c3 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c4 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n8r8c5 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n2r8c7 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.24s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0

=> Testing if candidate pair n6r8c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.1s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n2r9c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.25s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0

=> Testing if candidate pair n1r9c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0


Total computation time = 7m 19.81s
There is one 2-step solution for the current set of rules, based on the following pair:
n8r7c8 n7r1c3
(878 713)



--------------------------------------------------------------------------------------
Using the AUTOMATIC function
If max-length = 5:

(find-sudoku-2-steppers-wrt-resolution-theory W1
"1..5....2.2.7...3...3.6.1..........8.4..5..9.6.2........6...4...5...3.7.8....4..9")

hidden-single-in-a-column ==> r7c6 = 5
hidden-single-in-a-row ==> r1c5 = 3
hidden-single-in-a-column ==> r1c2 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      6      4789   ! 5      3      89     ! 789    48     2      !
   ! 459    2      4589   ! 7      1489   189    ! 5689   3      456    !
   ! 4579   789    3      ! 2489   6      289    ! 1      458    457    !
   +----------------------+----------------------+----------------------+
   ! 3579   1379   1579   ! 123469 12479  12679  ! 23567  12456  8      !
   ! 37     4      178    ! 12368  5      12678  ! 2367   9      1367   !
   ! 6      13789  2      ! 13489  14789  1789   ! 357    145    13457  !
   +----------------------+----------------------+----------------------+
   ! 2379   1379   6      ! 1289   12789  5      ! 4      128    13     !
   ! 249    5      149    ! 12689  1289   3      ! 268    7      16     !
   ! 8      137    17     ! 126    127    4      ! 2356   1256   9      !
   +----------------------+----------------------+----------------------+

204 candidates, 1244 csp-links and 1244 links. Density = 6.01%
Starting non trivial part of solution.
whip[1]: c6n7{r6 .} ==> r6c5 ≠ 7, r4c5 ≠ 7
whip[1]: c6n6{r5 .} ==> r5c4 ≠ 6, r4c4 ≠ 6
whip[1]: r6n5{c9 .} ==> r4c8 ≠ 5, r4c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+
   ! 1     6     4789  ! 5     3     89    ! 789   48    2     !
   ! 459   2     4589  ! 7     1489  189   ! 5689  3     456   !
   ! 4579  789   3     ! 2489  6     289   ! 1     458   457   !
   +-------------------+-------------------+-------------------+
   ! 3579  1379  1579  ! 12349 1249  12679 ! 2367  1246  8     !
   ! 37    4     178   ! 1238  5     12678 ! 2367  9     1367  !
   ! 6     13789 2     ! 13489 1489  1789  ! 357   145   13457 !
   +-------------------+-------------------+-------------------+
   ! 2379  1379  6     ! 1289  12789 5     ! 4     128   13    !
   ! 249   5     149   ! 12689 1289  3     ! 268   7     16    !
   ! 8     137   17    ! 126   127   4     ! 2356  1256  9     !
   +-------------------+-------------------+-------------------+

There remains 198 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 198 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................................................................................................
erasable candidates computation time = 1m 43.55s
===> 20 candidates can be eliminated:
n8r1c7 n5r2c7 n8r2c7 n4r2c9 n2r4c8 n4r4c8 n7r5c3 n4r6c4 n4r6c5 n1r6c9 n3r6c9 n7r6c9 n8r7c8 n1r8c3 n8r8c4 n8r8c5 n2r8c7 n6r8c7 n2r9c7 n1r9c8


===> CHECKING 3750 RELEVANT PAIRS AS POSSIBLE ANTI-BACKDOOR-PAIRS (BE PATIENT):

=> Trying all the possible pairs containing erasable candidate #1: n8r1c7
.....................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #2: n5r2c7
....................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #3: n8r2c7
...................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #4: n4r2c9
..................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #5: n2r4c8
.................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #6: n4r4c8
................................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #7: n7r5c3
...............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #8: n4r6c4
..............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #9: n4r6c5
.............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #10: n1r6c9
............................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #11: n3r6c9
...........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #12: n7r6c9
..........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #13: n8r7c8
.........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #14: n1r8c3
........................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #15: n8r8c4
.......................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #16: n8r8c5
......................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #17: n2r8c7
.....................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #18: n6r8c7
....................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #19: n2r9c7
...................................................................................................................................................................................
=> Trying all the possible pairs containing erasable candidate #20: n1r9c8
..................................................................................................................................................................................

anti-backdoor-pairs computation time = 5m 32.78s
===> There are 146 W1-anti-backdoor-pairs for the current set of rules:
n8r1c7 n7r1c3     n8r1c7 n8r1c6     n8r1c7 n9r1c7     n8r1c7 n6r2c7     n8r1c7 n7r3c9     n8r1c7 n1r9c3     n5r2c7 n7r1c3     n5r2c7 n8r1c6     n5r2c7 n9r1c7     n5r2c7 n6r2c7     n5r2c7 n7r3c9     n5r2c7 n1r9c3     n8r2c7 n7r1c3     n8r2c7 n8r1c6     n8r2c7 n9r1c7     n8r2c7 n8r2c3     n8r2c7 n6r2c7     n8r2c7 n7r3c9     n8r2c7 n5r4c3     n8r2c7 n1r9c3     n4r2c9 n7r1c3     n4r2c9 n8r1c6     n4r2c9 n9r1c7     n4r2c9 n6r2c7     n4r2c9 n5r2c9     n4r2c9 n5r3c1     n4r2c9 n7r3c9     n4r2c9 n5r4c3     n4r2c9 n1r9c3     n2r4c8 n7r1c3     n2r4c8 n8r1c6     n2r4c8 n9r1c7     n2r4c8 n6r2c7     n2r4c8 n7r3c9     n2r4c8 n6r4c8     n2r4c8 n6r5c6     n2r4c8 n1r9c3     n2r4c8 n6r9c4     n4r4c8 n7r1c3     n4r4c8 n8r1c6     n4r4c8 n9r1c7     n4r4c8 n6r2c7     n4r4c8 n7r3c9     n4r4c8 n1r9c3     n7r5c3 n4r1c3     n7r5c3 n7r1c3     n7r5c3 n8r1c6     n7r5c3 n9r1c7     n7r5c3 n8r1c8     n7r5c3 n6r2c7     n7r5c3 n8r3c2     n7r5c3 n7r3c9     n7r5c3 n8r5c3     n7r5c3 n2r7c1     n7r5c3 n4r8c1     n7r5c3 n1r9c3     n4r6c4 n7r1c3     n4r6c4 n8r1c6     n4r6c4 n9r1c7     n4r6c4 n6r2c7     n4r6c4 n7r3c9     n4r6c4 n1r9c3     n4r6c5 n7r1c3     n4r6c5 n8r1c6     n4r6c5 n9r1c7     n4r6c5 n6r2c7     n4r6c5 n7r3c9     n4r6c5 n1r9c3     n1r6c9 n7r1c3     n1r6c9 n8r1c6     n1r6c9 n9r1c7     n1r6c9 n6r2c7     n1r6c9 n7r3c9     n1r6c9 n1r9c3     n3r6c9 n7r1c3     n3r6c9 n8r1c6     n3r6c9 n9r1c7     n3r6c9 n6r2c7     n3r6c9 n7r3c9     n3r6c9 n1r9c3     n7r6c9 n7r1c3     n7r6c9 n8r1c6     n7r6c9 n9r1c7     n7r6c9 n6r2c7     n7r6c9 n7r3c9     n7r6c9 n1r9c3     n8r7c8 n7r1c3     n8r7c8 n8r1c6     n8r7c8 n9r1c7     n8r7c8 n8r2c3     n8r7c8 n6r2c7     n8r7c8 n7r3c9     n8r7c8 n5r4c3     n8r7c8 n6r4c8     n8r7c8 n6r5c6     n8r7c8 n6r8c9     n8r7c8 n1r9c3     n8r7c8 n6r9c4     n1r8c3 n7r1c3     n1r8c3 n8r1c6     n1r8c3 n9r1c7     n1r8c3 n6r2c7     n1r8c3 n7r3c9     n1r8c3 n1r9c3     n8r8c4 n7r1c3     n8r8c4 n8r1c6     n8r8c4 n9r1c7     n8r8c4 n6r2c7     n8r8c4 n7r3c9     n8r8c4 n1r9c3     n8r8c5 n7r1c3     n8r8c5 n8r1c6     n8r8c5 n9r1c7     n8r8c5 n6r2c7     n8r8c5 n7r3c9     n8r8c5 n6r4c8     n8r8c5 n6r5c6     n8r8c5 n1r9c3     n8r8c5 n6r9c4     n2r8c7 n7r1c3     n2r8c7 n8r1c6     n2r8c7 n9r1c7     n2r8c7 n6r2c7     n2r8c7 n7r3c9     n2r8c7 n6r4c8     n2r8c7 n6r5c6     n2r8c7 n1r9c3     n2r8c7 n6r9c4     n6r8c7 n7r1c3     n6r8c7 n8r1c6     n6r8c7 n9r1c7     n6r8c7 n6r2c7     n6r8c7 n7r3c9     n6r8c7 n1r9c3     n2r9c7 n7r1c3     n2r9c7 n8r1c6     n2r9c7 n9r1c7     n2r9c7 n6r2c7     n2r9c7 n7r3c9     n2r9c7 n1r9c3     n1r9c8 n7r1c3     n1r9c8 n8r1c6     n1r9c8 n9r1c7     n1r9c8 n6r2c7     n1r9c8 n7r3c9     n1r9c8 n1r9c3




===> CHECKING WHICH OF THE ANTI-BACKDOOR-PAIRS LEAD TO 2-STEP SOLUTIONS:

===> Testing if candidate pair n8r1c7 n7r1c3 is a 2-stepper:
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.06s
nb-facts = 0


===> Testing if candidate pair n8r1c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n8r1c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n8r1c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n8r1c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n8r1c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r1c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n5r2c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n5r2c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n5r2c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0


===> Testing if candidate pair n5r2c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0


===> Testing if candidate pair n5r2c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n5r2c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n9{r2 r1} - r1c6{n9 n8} - r1c8{n8 n4} - c9n4{r3 r6} - c9n5{r6 .} ==> r2c7 ≠ 5
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n8r2c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n8r2c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.24s
nb-facts = 0


===> Testing if candidate pair n8r2c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
whip[6]: r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r1c7 ≠ 9
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r1c7 = 7
hidden-single-in-a-column ==> r8c7 = 8
naked-single ==> r7c8 = 2
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[6]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14075>
solve-time = 0.35s
nb-facts = <Fact-14075>


===> Testing if candidate pair n8r2c7 n8r2c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n8r2c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n8r2c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n8r2c7 n5r4c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n8r2c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r2c7 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n4r2c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n4r2c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n4r2c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n4r2c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n4r2c9 n5r2c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n4r2c9 n5r3c1 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0


===> Testing if candidate pair n4r2c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n4r2c9 n5r4c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.11s
nb-facts = 0


===> Testing if candidate pair n4r2c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[4]: r1c8{n4 n8} - r1c6{n8 n9} - b3n9{r1c7 r2c7} - b3n6{r2c7 r2c9} ==> r2c9 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0


===> Testing if candidate pair n2r4c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n2r4c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n2r4c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n2r4c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.2s
nb-facts = 0


===> Testing if candidate pair n2r4c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0


===> Testing if candidate pair n2r4c8 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n2r4c8 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n2r4c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n2r4c8 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c8n6{r4 r9} - r8c9{n6 n1} - c8n1{r9 r6} - c8n5{r6 r3} - c9n5{r3 r6} - b6n4{r6c9 .} ==> r4c8 ≠ 2
whip[1]: c8n2{r9 .} ==> r8c7 ≠ 2, r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n4r4c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n4r4c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n4r4c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0


===> Testing if candidate pair n4r4c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n4r4c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n4r4c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[5]: c8n6{r4 r9} - c8n2{r9 r7} - c1n2{r7 r8} - r8n4{c1 c3} - r1n4{c3 .} ==> r4c8 ≠ 4
whip[1]: b6n4{r6c9 .} ==> r6c4 ≠ 4, r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n4r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.2s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n8r1c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
whip[6]: c7n9{r2 r1} - r1c6{n9 n8} - r2n8{c6 c3} - r5c3{n8 n1} - r9c3{n1 n7} - r1n7{c3 .} ==> r2c7 ≠ 6
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-column ==> r8c7 = 8
naked-single ==> r7c8 = 2
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[6]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-13996>
solve-time = 0.29s
nb-facts = <Fact-13996>


===> Testing if candidate pair n7r5c3 n8r3c2 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n8r5c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n2r7c1 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n4r8c1 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n7r5c3 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r1n7{c3 c7} - c7n9{r1 r2} - r2n6{c7 c9} - r8c9{n6 n1} - r7c9{n1 n3} - r5c9{n3 .} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n4r6c4 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0


===> Testing if candidate pair n4r6c4 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.25s
nb-facts = 0


===> Testing if candidate pair n4r6c4 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.28s
nb-facts = 0


===> Testing if candidate pair n4r6c4 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.31s
nb-facts = 0


===> Testing if candidate pair n4r6c4 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.26s
nb-facts = 0


===> Testing if candidate pair n4r6c4 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r4n4{c5 c8} - r1n4{c8 c3} - c1n4{r3 r8} - c1n2{r8 r7} - c8n2{r7 r9} - c8n6{r9 .} ==> r6c4 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.26s
nb-facts = 0


===> Testing if candidate pair n4r6c5 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.27s
nb-facts = 0


===> Testing if candidate pair n4r6c5 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.25s
nb-facts = 0


===> Testing if candidate pair n4r6c5 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.27s
nb-facts = 0


===> Testing if candidate pair n4r6c5 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.24s
nb-facts = 0



===> Testing if candidate pair n4r6c5 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0


===> Testing if candidate pair n4r6c5 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: c4n4{r6 r3} - c9n4{r3 r2} - r1c8{n4 n8} - r1c6{n8 n9} - c7n9{r1 r2} - r2n6{c7 .} ==> r6c5 ≠ 4
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0


===> Testing if candidate pair n1r6c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n1r6c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n1r6c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.2s
nb-facts = 0


===> Testing if candidate pair n1r6c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0


===> Testing if candidate pair n1r6c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n1r6c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[6]: r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - r1c8{n4 n8} - r3c8{n8 n5} - c9n5{r2 .} ==> r6c9 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n3r6c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n3r6c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n3r6c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n3r6c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.22s
nb-facts = 0


===> Testing if candidate pair n3r6c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n3r6c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7c9{n3 n1} - r8c9{n1 n6} - c8n6{r9 r4} - b6n4{r4c8 r6c8} - c8n1{r6 .} ==> r6c9 ≠ 3
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n7r6c9 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n7r6c9 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n7r6c9 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n7r6c9 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n7r6c9 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n7r6c9 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: c7n7{r6 r1} - c7n9{r1 r2} - r2n6{c7 c9} - c9n5{r2 r3} - c9n4{r3 .} ==> r6c9 ≠ 7
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0


===> Testing if candidate pair n8r7c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
z-chain[5]: r1n4{c3 c8} - b3n8{r1c8 r3c8} - b1n8{r3c2 r2c3} - r5c3{n8 n1} - r9c3{n1 .} ==> r1c3 ≠ 7
hidden-single-in-a-row ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c8 = 2
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = z-chain[5]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14406>
solve-time = 0.23s
nb-facts = <Fact-14406>


===> Testing if candidate pair n8r7c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.21s
nb-facts = 0


===> Testing if candidate pair n8r7c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
whip[6]: r1c6{n9 n8} - r2n8{c6 c3} - c3n5{r2 r4} - c3n9{r4 r8} - c3n4{r8 r1} - r1n7{c3 .} ==> r1c7 ≠ 9
naked-single ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c8 = 2
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[6]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14857>
solve-time = 0.3s
nb-facts = <Fact-14857>


===> Testing if candidate pair n8r7c8 n8r2c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n8r7c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n8r7c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
whip[6]: r1n7{c7 c3} - r9c3{n7 n1} - r5c3{n1 n8} - c2n8{r6 r3} - c8n8{r3 r1} - r1n4{c8 .} ==> r3c9 ≠ 7
hidden-single-in-a-block ==> r1c7 = 7
hidden-single-in-a-block ==> r2c7 = 9
hidden-single-in-a-block ==> r2c9 = 6
naked-single ==> r8c9 = 1
naked-single ==> r7c8 = 2
naked-single ==> r7c9 = 3
naked-single ==> r5c9 = 7
naked-single ==> r5c1 = 3
hidden-single-in-a-column ==> r9c2 = 3
hidden-single-in-a-block ==> r8c1 = 2
naked-single ==> r8c5 = 9
naked-single ==> r8c3 = 4
naked-single ==> r8c4 = 6
hidden-single-in-a-row ==> r1c8 = 4
naked-single ==> r3c9 = 5
naked-single ==> r3c8 = 8
naked-single ==> r6c9 = 4
hidden-single-in-a-column ==> r6c2 = 8
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c4 = 8
naked-single ==> r5c4 = 2
naked-single ==> r5c7 = 6
naked-single ==> r4c8 = 1
naked-single ==> r4c5 = 4
naked-single ==> r6c8 = 5
naked-single ==> r6c7 = 3
naked-single ==> r4c7 = 2
naked-single ==> r9c8 = 6
naked-single ==> r5c6 = 8
naked-single ==> r1c6 = 9
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 4
naked-single ==> r3c1 = 7
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 9
naked-single ==> r4c4 = 3
naked-single ==> r3c4 = 4
naked-single ==> r3c6 = 2
naked-single ==> r2c6 = 1
naked-single ==> r2c5 = 8
naked-single ==> r6c6 = 7
naked-single ==> r9c7 = 5
naked-single ==> r9c4 = 1
naked-single ==> r6c4 = 9
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 7
naked-single ==> r6c5 = 1
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[6]
   168539742
   425781936
   793462185
   579346218
   341258697
   682917354
   916875423
   254693871
   837124569

nb-facts = <Fact-14843>
solve-time = 0.27s
nb-facts = <Fact-14843>


===> Testing if candidate pair n8r7c8 n5r4c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n8r7c8 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n8r7c8 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n8r7c8 n6r8c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0


===> Testing if candidate pair n8r7c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n8r7c8 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
PUZZLE 0 IS NOT SOLVED. 54 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n1r8c3 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n1r8c3 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n1r8c3 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n1r8c3 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n1r8c3 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n1r8c3 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r8c3 ≠ 1, r9c8 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n8r8c4 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n8r8c4 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n8r8c4 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n8r8c4 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n8r8c4 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n8r8c4 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n8r8c5 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n8r8c5 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n8r8c5 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n8r8c5 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n8r8c5 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n8r8c5 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0


===> Testing if candidate pair n8r8c5 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0


===> Testing if candidate pair n8r8c5 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0


===> Testing if candidate pair n8r8c5 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: r7n8{c5 c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c5 ≠ 8
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0


===> Testing if candidate pair n2r8c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n2r8c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n2r8c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n2r8c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n2r8c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n2r8c7 n6r4c8 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n2r8c7 n6r5c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n2r8c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n2r8c7 n6r9c4 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n6r8c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n6r8c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n6r8c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.16s
nb-facts = 0


===> Testing if candidate pair n6r8c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.18s
nb-facts = 0


===> Testing if candidate pair n6r8c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n6r8c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
whip[5]: b9n8{r8c7 r7c8} - r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r8c7 ≠ 6
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n2r9c7 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n2r9c7 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0


===> Testing if candidate pair n2r9c7 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.14s
nb-facts = 0


===> Testing if candidate pair n2r9c7 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n2r9c7 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.13s
nb-facts = 0


===> Testing if candidate pair n2r9c7 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
z-chain[3]: r9n5{c7 c8} - c8n6{r9 r4} - c8n2{r4 .} ==> r9c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.12s
nb-facts = 0


===> Testing if candidate pair n1r9c8 n7r1c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n1r9c8 n8r1c6 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n1r9c8 n9r1c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.17s
nb-facts = 0


===> Testing if candidate pair n1r9c8 n6r2c7 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.19s
nb-facts = 0


===> Testing if candidate pair n1r9c8 n7r3c9 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


===> Testing if candidate pair n1r9c8 n1r9c3 is a 2-stepper:
198 candidates, 1164 csp-links and 1164 links. Density = 5.97%
Starting non trivial part of solution.
biv-chain[5]: r8c9{n1 n6} - b3n6{r2c9 r2c7} - b3n9{r2c7 r1c7} - r1n7{c7 c3} - r9c3{n7 n1} ==> r9c8 ≠ 1, r8c3 ≠ 1
PUZZLE 0 IS NOT SOLVED. 55 VALUES MISSING.
solve-time = 0.15s
nb-facts = 0


Total computation time = 8m 40.98s
===> There are 5 2-step solutions for the current set of rules, based on the following pairs:
n8r2c7 n9r1c7     n7r5c3 n6r2c7     n8r7c8 n7r1c3     n8r7c8 n9r1c7     n8r7c8 n7r3c9
(827 917 753 627 878 713 878 917 878 739)







--------------------------------------------------------------------------------------


;;; Generally, there will be no or more than one 2-step solution.
;;; Find it/them manually in the above listing by searching for "PUZZLE 0 IS SOLVED":
whip[4]: r1c8{n8 n4} - r3c8{n4 n5} - c9n5{r3 r6} - c9n4{r6 .} ==> r7c8 ≠ 8
hidden-single-in-a-block ==> r8c7 = 8
z-chain[5]: r1n4{c3 c8} - b3n8{r1c8 r3c8} - b1n8{r3c2 r2c3} - r5c3{n8 n1} - r9c3{n1 .} ==> r1c3 ≠ 7
stte
