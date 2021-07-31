


(solve-grid-as-list
    2 15  0  0 21    4  0  0 25  9    0  0  0  0  0   18 24  0  0 20    3  0  0  8  5
    25 20  0  0 14   17  0  0 24  6    0  0  0  0  0    5  8  0  0  1    9  0  0 18  4
    0  0  7 23  0    0  3  8  0  0   24 10  0 18  4    0  0 19 21  0    0  2 15  0  0
    0  0 24 17  0    0 18 16  0  0   13 19  0 23  2    0  0  7 22  0    0  1 12  0  0
    3  4  0  0  0    0  0  0  0  0    0  0 16  0  0    0  0  0  0  0    0  0  0 17 10
    
    15 23  0  0  0   16  6  0  0  0    0  0 20  0  0    0  0  0  4 18    0  0  0 11 14
    0  0 21 22  0   10 12  0  0  0    0  0  0  0  0    0  0  0 13 11    0  3  9  0  0
    0  0  5  1  0    0  0  4 15  0    0 17 18  3  0    0 25  2  0  0    0 21 24  0  0
    8  2  0  0  0    0  0  1 22  0    0 13  6  4  0    0  7 23  0  0    0  0  0 16 25
    20  3  0  0  0    0  0  0  0 24    8  0  0  0 10   12  0  0  0  0    0  0  0 13  1
    
    0  0  9 20  0    0  0  0  0 10    1  0  0  0  6   24  0  0  0  0    0 22 14  0  0
    0  0  1 21  0    0  0 11 13  0    0  0  0  0  0    0  9 16  0  0    0  4 18  0  0
    0  0  0  0 25    3  0  2 18  0    0  0  0  0  0    0 17 10  0 22   23  0  0  0  0
    0  0 22 10  0    0  0 14 17  0    0  0  0  0  0    0 21 13  0  0    0 24  6  0  0
    0  0 19 18  0    0  0  0  0 15   12  0  0  0  9   11  0  0  0  0    0 10  3  0  0
    
    17  1  0  0  0    0  0  0  0 25   23  0  0  0 24    8  0  0  0  0    0  0  0 10  9
    10 18  0  0  0    0  0 15  7  0    0  3 25 16  0    0 23 21  0  0    0  0  0 24  2
    0  0 11  9  0    0  0 13  4  0    0 18  2  6  0    0 22 15  0  0    0  5  1  0  0
    0  0  2 16  0   21 23  0  0  0    0  0  0  0  0    0  0  0 11  4    0 18 25  0  0
    19 25  0  0  0    6 22  0  0  0    0  0 11  0  0    0  0  0  9 10    0  0  0  7 16
    
    21 17  0  0  0    0  0  0  0  0    0  0  3  0  0    0  0  0  0  0    0  0  0  9 11
    0  0 18 12  0    0 21 23  0  0   19  6  0  8  7    0  0 24 10  0    0 16  5  0  0
    0  0 16  4  0    0  9  7  0  0   21 23  0 10 22    0  0 12 20  0    0 25  2  0  0
    24 13  0  0 11   18  0  0 20  8    0  0  0  0  0   21  4  0  0  9    1  0  0  3 23
    5 22  0  0 23    2  0  0  1 12    0  0  0  0  0   25 15  0  0  8    7  0  0  6 18
    
)

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
(2 15 0 0 21 4 0 0 25 9 0 0 0 0 0 18 24 0 0 20 3 0 0 8 5 25 20 0 0 14 17 0 0 24 6 0 0 0 0 0 5 8 0 0 1 9 0 0 18 4 0 0 7 23 0 0 3 8 0 0 24 10 0 18 4 0 0 19 21 0 0 2 15 0 0 0 0 24 17 0 0 18 16 0 0 13 19 0 23 2 0 0 7 22 0 0 1 12 0 0 3 4 0 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 17 10 15 23 0 0 0 16 6 0 0 0 0 0 20 0 0 0 0 0 4 18 0 0 0 11 14 0 0 21 22 0 10 12 0 0 0 0 0 0 0 0 0 0 0 13 11 0 3 9 0 0 0 0 5 1 0 0 0 4 15 0 0 17 18 3 0 0 25 2 0 0 0 21 24 0 0 8 2 0 0 0 0 0 1 22 0 0 13 6 4 0 0 7 23 0 0 0 0 0 16 25 20 3 0 0 0 0 0 0 0 24 8 0 0 0 10 12 0 0 0 0 0 0 0 13 1 0 0 9 20 0 0 0 0 0 10 1 0 0 0 6 24 0 0 0 0 0 22 14 0 0 0 0 1 21 0 0 0 11 13 0 0 0 0 0 0 0 9 16 0 0 0 4 18 0 0 0 0 0 0 25 3 0 2 18 0 0 0 0 0 0 0 17 10 0 22 23 0 0 0 0 0 0 22 10 0 0 0 14 17 0 0 0 0 0 0 0 21 13 0 0 0 24 6 0 0 0 0 19 18 0 0 0 0 0 15 12 0 0 0 9 11 0 0 0 0 0 10 3 0 0 17 1 0 0 0 0 0 0 0 25 23 0 0 0 24 8 0 0 0 0 0 0 0 10 9 10 18 0 0 0 0 0 15 7 0 0 3 25 16 0 0 23 21 0 0 0 0 0 24 2 0 0 11 9 0 0 0 13 4 0 0 18 2 6 0 0 22 15 0 0 0 5 1 0 0 0 0 2 16 0 21 23 0 0 0 0 0 0 0 0 0 0 0 11 4 0 18 25 0 0 19 25 0 0 0 6 22 0 0 0 0 0 11 0 0 0 0 0 9 10 0 0 0 7 16 21 17 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 9 11 0 0 18 12 0 0 21 23 0 0 19 6 0 8 7 0 0 24 10 0 0 16 5 0 0 0 0 16 4 0 0 9 7 0 0 21 23 0 10 22 0 0 12 20 0 0 25 2 0 0 24 13 0 0 11 18 0 0 20 8 0 0 0 0 0 21 4 0 0 9 1 0 0 3 23 5 22 0 0 23 2 0 0 1 12 0 0 0 0 0 25 15 0 0 8 7 0 0 6 18)
240 givens, 2841 candidates
entering BRT
hidden-single-in-a-row ==> r25c23 = 21
hidden-single-in-a-column ==> r23c25 = 24
hidden-single-in-a-column ==> r5c21 = 24
hidden-single-in-a-row ==> r23c17 = 18
hidden-single-in-a-row ==> r22c6 = 25
hidden-single-in-a-column ==> r20c3 = 23
hidden-single-in-a-row ==> r18c24 = 23
hidden-single-in-a-column ==> r18c2 = 21
hidden-single-in-a-row ==> r14c6 = 9
hidden-single-in-a-row ==> r17c11 = 9
hidden-single-in-a-row ==> r13c22 = 9
hidden-single-in-a-column ==> r7c1 = 18
hidden-single-in-a-column ==> r5c5 = 18
hidden-single-in-a-row ==> r4c16 = 4
hidden-single-in-a-block ==> r4c17 = 10
hidden-single-in-a-column ==> r8c2 = 10
hidden-single-in-a-column ==> r21c5 = 10
hidden-single-in-a-column ==> r19c9 = 10
hidden-single-in-a-row ==> r18c11 = 10
hidden-single-in-a-block ==> r12c13 = 10
hidden-single-in-a-block ==> r19c8 = 9
hidden-single-in-a-block ==> r24c23 = 10
hidden-single-in-a-row ==> r4c20 = 3
naked-single ==> r2c18 = 11
hidden-single-in-a-column ==> r22c17 = 11
Starting_init_links_with_<Fact-68921>
2579 candidates, 37107 csp-links and 37107 links. Density = 1.12%
starting non trivial part of solution
Entering_level_W1_with_<Fact-209052>
whip[1]: r23n11{c10 .} ==> r25c7 ≠ 11
whip[1]: r25n9{c14 .} ==> r22c13 ≠ 9
whip[1]: c4n2{r24 .} ==> r22c5 ≠ 2
whip[1]: r22n2{c20 .} ==> r21c16 ≠ 2, r21c17 ≠ 2, r21c19 ≠ 2, r21c20 ≠ 2, r24c19 ≠ 2
whip[1]: r19n24{c5 .} ==> r20c5 ≠ 24, r18c5 ≠ 24, r20c4 ≠ 24
hidden-single-in-a-row ==> r20c8 = 24
whip[1]: c1n4{r15 .} ==> r15c5 ≠ 4, r11c5 ≠ 4, r13c3 ≠ 4, r14c5 ≠ 4
whip[1]: r11n18{c19 .} ==> r14c19 ≠ 18
whip[1]: c3n17{r10 .} ==> r10c5 ≠ 17, r6c5 ≠ 17, r7c5 ≠ 17, r9c5 ≠ 17
whip[1]: r4n25{c24 .} ==> r3c24 ≠ 25, r3c21 ≠ 25
hidden-single-in-a-row ==> r3c20 = 25
hidden-single-in-a-block ==> r18c19 = 25
hidden-single-in-a-block ==> r18c20 = 24
hidden-single-in-a-block ==> r9c19 = 24
whip[1]: b21n7{r24c4 .} ==> r16c4 ≠ 7, r6c4 ≠ 7, r10c4 ≠ 7, r13c4 ≠ 7
whip[1]: b20n21{r20c21 .} ==> r15c21 ≠ 21, r4c21 ≠ 21, r11c21 ≠ 21
whip[1]: b5n21{r4c25 .} ==> r4c9 ≠ 21, r4c10 ≠ 21, r4c13 ≠ 21
whip[1]: b11n3{r14c5 .} ==> r23c5 ≠ 3, r16c5 ≠ 3, r18c5 ≠ 3, r19c5 ≠ 3, r20c5 ≠ 3, r22c5 ≠ 3
whip[1]: b21n3{r25c4 .} ==> r25c8 ≠ 3, r25c18 ≠ 3, r25c19 ≠ 3
whip[1]: b24n3{r23c16 .} ==> r6c16 ≠ 3, r9c16 ≠ 3, r12c16 ≠ 3, r14c16 ≠ 3, r18c16 ≠ 3, r19c16 ≠ 3, r20c16 ≠ 3
hidden-single-in-a-row ==> r9c10 = 3
hidden-single-in-a-column ==> r16c8 = 3
hidden-single-in-a-block ==> r20c4 = 3
hidden-single-in-a-block ==> r25c3 = 3
hidden-single-in-a-block ==> r20c10 = 18
hidden-single-in-a-column ==> r10c8 = 18
hidden-single-in-a-block ==> r9c21 = 18
hidden-single-in-a-block ==> r6c21 = 10
hidden-single-in-a-block ==> r9c16 = 10
hidden-single-in-a-row ==> r9c5 = 9
hidden-single-in-a-row ==> r8c16 = 9
hidden-single-in-a-block ==> r5c18 = 9
hidden-single-in-a-row ==> r18c25 = 3
whip[1]: b3n9{r4c13 .} ==> r10c13 ≠ 9, r25c13 ≠ 9
whip[1]: b9n20{r7c18 .} ==> r7c8 ≠ 20, r7c10 ≠ 20, r7c21 ≠ 20, r7c24 ≠ 20, r7c25 ≠ 20
whip[1]: c19n3{r14 .} ==> r11c17 ≠ 3, r11c18 ≠ 3
whip[1]: b1n19{r5c4 .} ==> r25c4 ≠ 19, r6c4 ≠ 19, r9c4 ≠ 19, r10c4 ≠ 19, r21c4 ≠ 19, r24c4 ≠ 19
naked-single ==> r25c4 = 14
naked-single ==> r9c4 = 11
naked-single ==> r22c2 = 9
naked-single ==> r22c1 = 1
naked-single ==> r23c1 = 6
naked-single ==> r25c18 = 17
hidden-single-in-a-block ==> r3c5 = 1
hidden-single-in-a-block ==> r3c1 = 22
hidden-single-in-a-block ==> r4c1 = 9
hidden-single-in-a-block ==> r3c13 = 9
hidden-single-in-a-row ==> r3c16 = 17
hidden-single-in-a-block ==> r3c2 = 16
hidden-single-in-a-block ==> r4c2 = 11
whip[1]: r3n5{c10 .} ==> r4c6 ≠ 5, r4c9 ≠ 5, r4c10 ≠ 5, r5c6 ≠ 5, r5c7 ≠ 5, r5c8 ≠ 5, r5c9 ≠ 5, r5c10 ≠ 5
naked-single ==> r4c9 = 14
naked-single ==> r4c10 = 20
naked-single ==> r4c6 = 15
naked-single ==> r22c9 = 3
hidden-single-in-a-block ==> r23c16 = 3
hidden-single-in-a-row ==> r23c13 = 1
hidden-single-in-a-column ==> r15c8 = 20
hidden-single-in-a-block ==> r15c9 = 6
whip[1]: b14n20{r14c16 .} ==> r7c16 ≠ 20, r17c16 ≠ 20, r18c16 ≠ 20, r19c16 ≠ 20, r20c16 ≠ 20
whip[1]: r3n20{c25 .} ==> r5c22 ≠ 20, r5c23 ≠ 20
whip[1]: b1n12{r5c3 .} ==> r6c3 ≠ 12, r9c3 ≠ 12, r13c3 ≠ 12, r16c3 ≠ 12, r17c3 ≠ 12
whip[1]: b4n16{r2c19 .} ==> r8c19 ≠ 16, r10c19 ≠ 16, r16c19 ≠ 16, r21c19 ≠ 16, r24c19 ≠ 16, r25c19 ≠ 16
naked-single ==> r25c19 = 19
naked-single ==> r25c8 = 10
whip[1]: b24n16{r21c20 .} ==> r21c7 ≠ 16, r21c9 ≠ 16, r21c10 ≠ 16, r21c11 ≠ 16, r21c12 ≠ 16, r21c15 ≠ 16
whip[1]: b22n16{r25c7 .} ==> r11c7 ≠ 16, r13c7 ≠ 16, r14c7 ≠ 16, r15c7 ≠ 16, r16c7 ≠ 16, r18c7 ≠ 16
whip[1]: c21n16{r15 .} ==> r13c23 ≠ 16
whip[1]: b19n17{r17c20 .} ==> r17c7 ≠ 17, r17c10 ≠ 17, r17c15 ≠ 17, r17c21 ≠ 17, r17c22 ≠ 17, r17c23 ≠ 17
whip[1]: b5n22{r5c23 .} ==> r6c23 ≠ 22, r10c23 ≠ 22, r16c23 ≠ 22, r17c23 ≠ 22, r21c23 ≠ 22
whip[1]: b21n19{r23c5 .} ==> r23c6 ≠ 19, r23c9 ≠ 19, r23c10 ≠ 19, r23c21 ≠ 19, r23c24 ≠ 19
whip[1]: b10n23{r10c23 .} ==> r10c13 ≠ 23, r10c6 ≠ 23, r10c9 ≠ 23
whip[1]: b2n23{r5c10 .} ==> r5c23 ≠ 23, r5c16 ≠ 23, r5c19 ≠ 23, r5c20 ≠ 23, r5c22 ≠ 23
whip[1]: b4n23{r2c19 .} ==> r11c19 ≠ 23, r12c19 ≠ 23, r14c19 ≠ 23, r15c19 ≠ 23, r21c19 ≠ 23
Entering_relation_bivalue_with_<Fact-209160>
Entering_level_S2_with_<Fact-209383>
hidden-pairs-in-a-column: c4{n2 n7}{r21 r24} ==> r24c4 ≠ 25, r24c4 ≠ 15, r21c4 ≠ 25, r21c4 ≠ 15, r21c4 ≠ 8
whip[1]: b21n25{r24c3 .} ==> r6c3 ≠ 25, r10c3 ≠ 25
hidden-pairs-in-a-column: c18{n4 n25}{r11 r15} ==> r15c18 ≠ 14, r15c18 ≠ 8, r15c18 ≠ 5, r15c18 ≠ 1, r11c18 ≠ 18, r11c18 ≠ 8, r11c18 ≠ 5
hidden-single-in-a-block ==> r11c19 = 18
hidden-single-in-a-row ==> r11c5 = 3
hidden-single-in-a-block ==> r16c18 = 18
whip[1]: b14n8{r15c19 .} ==> r8c19 ≠ 8
hidden-pairs-in-a-row: r4{n5 n8}{c5 c13} ==> r4c5 ≠ 6
whip[1]: r4n6{c25 .} ==> r1c22 ≠ 6, r3c21 ≠ 6, r3c25 ≠ 6, r5c22 ≠ 6
hidden-single-in-a-row ==> r3c17 = 6
naked-single ==> r1c18 = 14
whip[1]: b3n14{r5c15 .} ==> r5c22 ≠ 14
whip[1]: r3n12{c9 .} ==> r1c8 ≠ 12, r2c8 ≠ 12, r5c6 ≠ 12, r5c8 ≠ 12, r5c9 ≠ 12
hidden-single-in-a-column ==> r11c8 = 12
whip[1]: b12n25{r15c7 .} ==> r10c7 ≠ 25
whip[1]: b4n13{r5c20 .} ==> r5c3 ≠ 13, r5c4 ≠ 13, r5c6 ≠ 13, r5c7 ≠ 13, r5c10 ≠ 13, r5c22 ≠ 13, r5c23 ≠ 13
hidden-pairs-in-a-column: c19{n16 n23}{r1 r2} ==> r2c19 ≠ 15, r2c19 ≠ 12, r2c19 ≠ 2, r1c19 ≠ 12
hidden-single-in-a-row ==> r2c7 = 2
hidden-single-in-a-block ==> r1c7 = 10
hidden-single-in-a-block ==> r2c3 = 10
whip[1]: r2n12{c15 .} ==> r1c12 ≠ 12, r1c13 ≠ 12, r1c14 ≠ 12, r1c15 ≠ 12, r5c12 ≠ 12, r5c14 ≠ 12, r5c15 ≠ 12
hidden-single-in-a-row ==> r1c3 = 12
whip[1]: b1n13{r2c4 .} ==> r6c4 ≠ 13, r13c4 ≠ 13, r16c4 ≠ 13, r17c4 ≠ 13
whip[1]: r1n1{c15 .} ==> r5c12 ≠ 1, r5c14 ≠ 1, r5c15 ≠ 1
whip[1]: b2n7{r5c10 .} ==> r5c11 ≠ 7, r5c12 ≠ 7, r5c14 ≠ 7, r5c22 ≠ 7, r5c23 ≠ 7
whip[1]: b2n13{r3c10 .} ==> r3c21 ≠ 13, r3c25 ≠ 13
naked-single ==> r3c25 = 20
naked-single ==> r3c24 = 14
naked-single ==> r3c21 = 11
naked-single ==> r5c22 = 19
naked-single ==> r5c23 = 22
naked-single ==> r5c8 = 21
naked-single ==> r23c24 = 15
hidden-single-in-a-block ==> r13c23 = 11
whip[1]: b15n7{r15c25 .} ==> r7c25 ≠ 7, r8c25 ≠ 7
whip[1]: b2n22{r2c8 .} ==> r21c8 ≠ 22, r24c8 ≠ 22
hidden-single-in-a-row ==> r24c18 = 22
hidden-single-in-a-block ==> r6c16 = 22
whip[1]: b2n19{r2c8 .} ==> r6c8 ≠ 19, r7c8 ≠ 19, r21c8 ≠ 19, r24c8 ≠ 19
hidden-single-in-a-row ==> r24c7 = 19
naked-single ==> r21c9 = 5
naked-single ==> r3c9 = 12
naked-single ==> r21c8 = 6
naked-single ==> r21c18 = 1
naked-single ==> r24c8 = 17
naked-single ==> r23c9 = 11
naked-single ==> r5c9 = 23
hidden-single-in-a-row ==> r23c21 = 17
hidden-single-in-a-row ==> r22c13 = 17
hidden-single-in-a-row ==> r22c5 = 15
naked-single ==> r24c3 = 25
hidden-single-in-a-block ==> r21c3 = 20
hidden-single-in-a-block ==> r24c19 = 6
naked-single ==> r8c19 = 14
naked-single ==> r21c19 = 7
naked-single ==> r21c4 = 2
naked-single ==> r24c4 = 7
hidden-single-in-a-block ==> r23c20 = 5
hidden-single-in-a-block ==> r21c7 = 15
hidden-single-in-a-block ==> r25c7 = 16
hidden-single-in-a-column ==> r8c7 = 13
hidden-single-in-a-block ==> r21c6 = 24
whip[1]: b22n22{r22c10 .} ==> r12c10 ≠ 22
whip[1]: r25n4{c13 .} ==> r21c11 ≠ 4, r21c12 ≠ 4
whip[1]: c7n4{r15 .} ==> r13c10 ≠ 4, r14c10 ≠ 4
whip[1]: r23n13{c10 .} ==> r21c10 ≠ 13, r22c10 ≠ 13
whip[1]: r23n14{c10 .} ==> r21c10 ≠ 14, r22c10 ≠ 14
whip[1]: b23n20{r25c15 .} ==> r25c22 ≠ 20
naked-single ==> r25c22 = 13
naked-single ==> r22c25 = 22
naked-single ==> r22c10 = 4
naked-single ==> r21c10 = 22
naked-single ==> r22c24 = 20
naked-single ==> r22c21 = 14
naked-single ==> r24c22 = 12
naked-single ==> r21c22 = 8
hidden-single-in-a-row ==> r9c15 = 12
hidden-single-in-a-row ==> r6c5 = 12
hidden-single-in-a-block ==> r6c3 = 13
hidden-single-in-a-row ==> r9c20 = 21
hidden-single-in-a-column ==> r7c24 = 4
whip[1]: c24n2{r15 .} ==> r11c21 ≠ 2, r12c21 ≠ 2, r14c21 ≠ 2, r15c21 ≠ 2
whip[1]: c24n5{r15 .} ==> r11c21 ≠ 5, r12c21 ≠ 5, r14c21 ≠ 5, r15c21 ≠ 5
whip[1]: b9n17{r10c20 .} ==> r10c3 ≠ 17, r10c7 ≠ 17, r10c22 ≠ 17, r10c23 ≠ 17
hidden-single-in-a-block ==> r9c3 = 17
hidden-single-in-a-column ==> r18c7 = 17
whip[1]: b24n14{r21c20 .} ==> r21c11 ≠ 14, r21c12 ≠ 14, r21c14 ≠ 14, r21c15 ≠ 14
whip[1]: b15n20{r14c21 .} ==> r8c21 ≠ 20, r16c21 ≠ 20, r17c21 ≠ 20, r18c21 ≠ 20, r19c21 ≠ 20, r20c21 ≠ 20
hidden-single-in-a-row ==> r8c6 = 20
whip[1]: r8n8{c25 .} ==> r6c23 ≠ 8, r7c21 ≠ 8, r7c25 ≠ 8
whip[1]: c23n8{r20 .} ==> r17c21 ≠ 8, r18c21 ≠ 8, r19c21 ≠ 8, r19c25 ≠ 8, r20c21 ≠ 8
whip[1]: b7n8{r7c9 .} ==> r11c9 ≠ 8, r20c9 ≠ 8
naked-single ==> r20c9 = 2
whip[1]: c6n23{r15 .} ==> r12c10 ≠ 23, r14c10 ≠ 23
whip[1]: b5n13{r2c23 .} ==> r16c23 ≠ 13, r17c23 ≠ 13, r20c23 ≠ 13
whip[1]: r22n13{c20 .} ==> r21c16 ≠ 13, r21c17 ≠ 13, r21c20 ≠ 13
whip[1]: b11n15{r13c4 .} ==> r13c11 ≠ 15, r13c12 ≠ 15, r13c13 ≠ 15, r13c14 ≠ 15, r13c15 ≠ 15, r13c16 ≠ 15, r13c19 ≠ 15, r13c25 ≠ 15
whip[1]: b16n15{r16c4 .} ==> r16c12 ≠ 15, r16c13 ≠ 15, r16c14 ≠ 15, r16c21 ≠ 15, r16c22 ≠ 15
whip[1]: b15n17{r15c25 .} ==> r7c25 ≠ 17, r19c25 ≠ 17
hidden-single-in-a-row ==> r7c10 = 17
hidden-single-in-a-block ==> r6c10 = 2
hidden-single-in-a-column ==> r13c10 = 21
hidden-single-in-a-block ==> r8c10 = 23
whip[1]: b7n7{r10c7 .} ==> r10c5 ≠ 7, r10c12 ≠ 7, r10c13 ≠ 7, r10c14 ≠ 7, r10c22 ≠ 7, r10c23 ≠ 7
whip[1]: b10n7{r6c23 .} ==> r6c11 ≠ 7, r6c12 ≠ 7, r6c14 ≠ 7
whip[1]: r8n11{c15 .} ==> r10c12 ≠ 11, r10c14 ≠ 11
whip[1]: b20n17{r20c23 .} ==> r20c11 ≠ 17, r20c14 ≠ 17, r20c15 ≠ 17
whip[1]: c8n5{r7 .} ==> r9c6 ≠ 5, r9c7 ≠ 5, r10c6 ≠ 5, r10c7 ≠ 5
naked-single ==> r9c7 = 14
naked-single ==> r9c6 = 19
naked-single ==> r7c9 = 8
naked-single ==> r9c23 = 20
naked-single ==> r9c22 = 15
naked-single ==> r9c11 = 5
naked-single ==> r6c11 = 25
naked-single ==> r6c4 = 24
naked-single ==> r6c8 = 5
naked-single ==> r7c8 = 25
naked-single ==> r21c11 = 18
hidden-single-in-a-block ==> r14c15 = 18
hidden-single-in-a-block ==> r10c4 = 25
hidden-single-in-a-row ==> r6c18 = 8
hidden-single-in-a-block ==> r6c17 = 3
hidden-single-in-a-block ==> r19c18 = 3
whip[1]: c18n6{r10 .} ==> r7c16 ≠ 6, r8c20 ≠ 6, r10c20 ≠ 6
whip[1]: b9n1{r7c17 .} ==> r7c12 ≠ 1, r7c14 ≠ 1, r7c15 ≠ 1
whip[1]: r1n11{c15 .} ==> r5c11 ≠ 11, r5c12 ≠ 11, r5c14 ≠ 11, r5c15 ≠ 11
whip[1]: b4n15{r5c20 .} ==> r5c11 ≠ 15, r5c12 ≠ 15, r5c14 ≠ 15, r5c15 ≠ 15
naked-pairs-in-a-column: c23{r16 r21}{n4 n19} ==> r20c23 ≠ 4, r17c23 ≠ 19, r17c23 ≠ 4, r10c23 ≠ 19, r6c23 ≠ 19
naked-single ==> r10c23 = 23
naked-single ==> r10c22 = 6
naked-single ==> r7c25 = 19
naked-single ==> r10c18 = 5
naked-single ==> r20c18 = 20
naked-single ==> r7c18 = 6
naked-single ==> r17c23 = 8
naked-single ==> r20c23 = 17
naked-single ==> r6c23 = 7
naked-single ==> r6c22 = 17
naked-single ==> r20c22 = 14
hidden-single-in-a-block ==> r18c6 = 8
hidden-single-in-a-block ==> r8c5 = 6
hidden-single-in-a-block ==> r10c5 = 19
naked-single ==> r10c17 = 16
naked-single ==> r8c20 = 19
naked-single ==> r21c17 = 14
naked-single ==> r23c5 = 8
naked-single ==> r4c5 = 5
naked-single ==> r4c13 = 8
naked-single ==> r23c2 = 19
hidden-single-in-a-block ==> r19c2 = 8
hidden-single-in-a-block ==> r19c5 = 24
hidden-single-in-a-block ==> r10c3 = 4
hidden-single-in-a-block ==> r7c2 = 14
hidden-single-in-a-block ==> r7c17 = 20
hidden-single-in-a-block ==> r7c16 = 1
naked-single ==> r20c16 = 13
naked-single ==> r20c5 = 4
naked-single ==> r20c11 = 15
naked-single ==> r22c16 = 2
naked-single ==> r5c16 = 15
naked-single ==> r22c20 = 13
hidden-single-in-a-block ==> r5c17 = 13
hidden-single-in-a-row ==> r17c21 = 4
naked-single ==> r16c23 = 19
naked-single ==> r16c9 = 16
naked-single ==> r11c9 = 19
naked-single ==> r18c21 = 12
naked-single ==> r19c24 = 22
naked-single ==> r8c24 = 12
naked-single ==> r8c25 = 8
naked-single ==> r8c21 = 22
naked-single ==> r10c21 = 2
naked-single ==> r7c21 = 5
naked-single ==> r20c21 = 21
naked-single ==> r21c23 = 4
naked-single ==> r21c21 = 19
hidden-single-in-a-block ==> r19c1 = 12
hidden-single-in-a-column ==> r19c17 = 19
hidden-single-in-a-block ==> r14c10 = 16
hidden-single-in-a-block ==> r18c16 = 16
naked-single ==> r21c16 = 23
naked-single ==> r21c20 = 16
hidden-single-in-a-row ==> r17c5 = 22
hidden-single-in-a-block ==> r16c5 = 13
naked-single ==> r16c21 = 6
naked-single ==> r4c21 = 25
naked-single ==> r4c24 = 21
naked-single ==> r4c25 = 6
hidden-single-in-a-row ==> r19c16 = 6
naked-single ==> r17c16 = 14
naked-single ==> r17c3 = 6
naked-single ==> r5c3 = 8
naked-single ==> r5c4 = 6
naked-single ==> r17c4 = 5
naked-single ==> r16c4 = 15
naked-single ==> r13c4 = 8
naked-single ==> r16c3 = 14
naked-single ==> r13c3 = 15
naked-single ==> r18c1 = 7
naked-single ==> r8c1 = 16
naked-single ==> r7c5 = 7
naked-single ==> r14c5 = 2
naked-single ==> r12c5 = 17
naked-single ==> r15c5 = 16
naked-single ==> r8c15 = 11
naked-single ==> r8c11 = 7
naked-single ==> r25c15 = 20
naked-single ==> r18c5 = 20
hidden-single-in-a-block ==> r11c21 = 16
hidden-single-in-a-column ==> r23c6 = 14
naked-single ==> r23c10 = 13
naked-single ==> r3c10 = 5
naked-single ==> r3c6 = 13
naked-single ==> r12c10 = 7
hidden-single-in-a-row ==> r1c11 = 6
hidden-single-in-a-column ==> r19c11 = 17
hidden-single-in-a-column ==> r1c15 = 17
hidden-single-in-a-row ==> r13c2 = 6
hidden-single-in-a-row ==> r12c20 = 6
hidden-single-in-a-block ==> r15c20 = 14
hidden-single-in-a-block ==> r16c20 = 7
hidden-single-in-a-row ==> r17c15 = 13
naked-single ==> r21c15 = 25
naked-single ==> r21c12 = 12
naked-single ==> r21c14 = 13
hidden-single-in-a-block ==> r18c15 = 19
naked-single ==> r18c10 = 14
naked-single ==> r19c10 = 1
naked-single ==> r5c10 = 11
naked-single ==> r17c10 = 19
hidden-single-in-a-row ==> r17c19 = 1
hidden-single-in-a-block ==> r15c17 = 1
hidden-single-in-a-column ==> r5c6 = 1
naked-single ==> r5c7 = 7
naked-single ==> r10c7 = 11
naked-single ==> r10c6 = 7
naked-single ==> r17c7 = 20
naked-single ==> r16c7 = 5
naked-single ==> r17c22 = 11
naked-single ==> r16c22 = 20
naked-single ==> r17c6 = 12
naked-single ==> r16c6 = 11
naked-single ==> r17c20 = 17
naked-single ==> r10c20 = 15
naked-single ==> r10c19 = 17
hidden-single-in-a-block ==> r20c17 = 5
naked-single ==> r11c17 = 2
naked-single ==> r11c20 = 23
naked-single ==> r11c6 = 5
naked-single ==> r11c2 = 7
naked-single ==> r11c24 = 25
naked-single ==> r11c18 = 4
naked-single ==> r11c7 = 8
naked-single ==> r15c18 = 25
naked-single ==> r14c20 = 12
naked-single ==> r5c20 = 2
naked-single ==> r5c19 = 12
naked-single ==> r16c19 = 2
naked-single ==> r13c19 = 5
naked-single ==> r15c19 = 8
naked-single ==> r15c21 = 13
naked-single ==> r19c21 = 15
naked-single ==> r19c25 = 13
naked-single ==> r14c2 = 5
naked-single ==> r15c2 = 24
naked-single ==> r12c2 = 12
naked-single ==> r12c25 = 15
naked-single ==> r12c19 = 3
naked-single ==> r14c19 = 15
naked-single ==> r14c25 = 7
naked-single ==> r13c25 = 12
naked-single ==> r15c7 = 4
naked-single ==> r15c1 = 23
naked-single ==> r12c1 = 14
naked-single ==> r15c6 = 22
naked-single ==> r12c6 = 23
naked-single ==> r16c17 = 12
hidden-single-in-a-block ==> r20c14 = 12
hidden-single-in-a-block ==> r2c13 = 12
hidden-single-in-a-block ==> r14c13 = 23
hidden-single-in-a-block ==> r7c15 = 23
hidden-single-in-a-column ==> r13c13 = 19
naked-single ==> r13c24 = 1
naked-single ==> r13c7 = 24
naked-single ==> r12c7 = 25
naked-single ==> r14c7 = 1
naked-single ==> r14c24 = 19
naked-single ==> r14c16 = 20
naked-single ==> r12c16 = 19
naked-single ==> r13c16 = 7
naked-single ==> r14c21 = 8
naked-single ==> r12c21 = 20
hidden-single-in-a-column ==> r6c14 = 19
hidden-single-in-a-column ==> r1c14 = 1
hidden-single-in-a-block ==> r1c12 = 11
hidden-single-in-a-block ==> r11c13 = 13
naked-single ==> r11c1 = 11
naked-single ==> r14c1 = 4
naked-single ==> r13c1 = 13
naked-single ==> r14c12 = 25
naked-single ==> r14c14 = 11
naked-single ==> r14c11 = 3
naked-single ==> r2c11 = 22
naked-single ==> r1c13 = 7
naked-single ==> r1c22 = 23
naked-single ==> r1c19 = 16
naked-single ==> r1c23 = 13
naked-single ==> r1c4 = 19
naked-single ==> r1c8 = 22
naked-single ==> r2c4 = 13
naked-single ==> r2c23 = 16
naked-single ==> r2c19 = 23
naked-single ==> r2c22 = 7
naked-single ==> r2c8 = 19
naked-single ==> r12c11 = 2
naked-single ==> r7c11 = 16
naked-single ==> r24c11 = 14
naked-single ==> r5c11 = 20
naked-single ==> r13c11 = 4
naked-single ==> r25c11 = 11
naked-single ==> r12c24 = 5
naked-single ==> r12c15 = 8
naked-single ==> r20c15 = 1
naked-single ==> r6c15 = 21
naked-single ==> r6c9 = 9
naked-single ==> r6c12 = 1
naked-single ==> r10c9 = 21
naked-single ==> r20c12 = 8
naked-single ==> r15c24 = 2
hidden-single-in-a-block ==> r2c15 = 3
hidden-single-in-a-column ==> r24c15 = 15
naked-single ==> r24c13 = 5
naked-single ==> r15c13 = 21
naked-single ==> r11c12 = 15
naked-single ==> r2c12 = 21
naked-single ==> r2c14 = 15
naked-single ==> r11c14 = 17
naked-single ==> r11c25 = 21
naked-single ==> r15c25 = 17
naked-single ==> r19c13 = 14
naked-single ==> r10c13 = 22
naked-single ==> r16c13 = 4
naked-single ==> r16c12 = 22
naked-single ==> r12c12 = 24
naked-single ==> r7c12 = 2
naked-single ==> r7c14 = 24
naked-single ==> r7c13 = 15
naked-single ==> r25c14 = 9
naked-single ==> r10c14 = 14
naked-single ==> r10c12 = 9
naked-single ==> r13c14 = 20
naked-single ==> r25c12 = 4
naked-single ==> r24c12 = 16
naked-single ==> r13c12 = 14
naked-single ==> r5c12 = 5
naked-single ==> r5c14 = 25
naked-single ==> r5c15 = 14
naked-single ==> r15c12 = 7
naked-single ==> r15c14 = 5
naked-single ==> r19c14 = 7
naked-single ==> r19c12 = 20
naked-single ==> r13c15 = 16
naked-single ==> r12c14 = 22
naked-single ==> r16c14 = 21
naked-single ==> r25c13 = 24
naked-single ==> r19c15 = 5
naked-single ==> r24c14 = 2
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = HP

02 15 12 19 21 04 10 22 25 09 06 11 07 01 17 18 24 14 16 20 03 23 13 08 05
25 20 10 13 14 17 02 19 24 06 22 21 12 15 03 05 08 11 23 01 09 07 16 18 04
22 16 07 23 01 13 03 08 12 05 24 10 09 18 04 17 06 19 21 25 11 02 15 14 20
09 11 24 17 05 15 18 16 14 20 13 19 08 23 02 04 10 07 22 03 25 01 12 21 06
03 04 08 06 18 01 07 21 23 11 20 05 16 25 14 15 13 09 12 02 24 19 22 17 10
15 23 13 24 12 16 06 05 09 02 25 01 20 19 21 22 03 08 04 18 10 17 07 11 14
18 14 21 22 07 10 12 25 08 17 16 02 15 24 23 01 20 06 13 11 05 03 09 04 19
16 10 05 01 06 20 13 04 15 23 07 17 18 03 11 09 25 02 14 19 22 21 24 12 08
08 02 17 11 09 19 14 01 22 03 05 13 06 04 12 10 07 23 24 21 18 15 20 16 25
20 03 04 25 19 07 11 18 21 24 08 09 22 14 10 12 16 05 17 15 02 06 23 13 01
11 07 09 20 03 05 08 12 19 10 01 15 13 17 06 24 02 04 18 23 16 22 14 25 21
14 12 01 21 17 23 25 11 13 07 02 24 10 22 08 19 09 16 03 06 20 04 18 05 15
13 06 15 08 25 03 24 02 18 21 04 14 19 20 16 07 17 10 05 22 23 09 11 01 12
04 05 22 10 02 09 01 14 17 16 03 25 23 11 18 20 21 13 15 12 08 24 06 19 07
23 24 19 18 16 22 04 20 06 15 12 07 21 05 09 11 01 25 08 14 13 10 03 02 17
17 01 14 15 13 11 05 03 16 25 23 22 04 21 24 08 12 18 02 07 06 20 19 10 09
10 18 06 05 22 12 20 15 07 19 09 03 25 16 13 14 23 21 01 17 04 11 08 24 02
07 21 11 09 20 08 17 13 04 14 10 18 02 06 19 16 22 15 25 24 12 05 01 23 03
12 08 02 16 24 21 23 09 10 01 17 20 14 07 05 06 19 03 11 04 15 18 25 22 13
19 25 23 03 04 06 22 24 02 18 15 08 11 12 01 13 05 20 09 10 21 14 17 07 16
21 17 20 02 10 24 15 06 05 22 18 12 03 13 25 23 14 01 07 16 19 08 04 09 11
01 09 18 12 15 25 21 23 03 04 19 06 17 08 07 02 11 24 10 13 14 16 05 20 22
06 19 16 04 08 14 09 07 11 13 21 23 01 10 22 03 18 12 20 05 17 25 02 15 24
24 13 25 07 11 18 19 17 20 08 14 16 05 02 15 21 04 22 06 09 01 12 10 03 23
05 22 03 14 23 02 16 10 01 12 11 04 24 09 20 25 15 17 19 08 07 13 21 06 18
Puzzle (2 15 0 0 21 4 0 0 25 9 0 0 0 0 0 18 24 0 0 20 3 0 0 8 5 25 20 0 0 14 17 0 0 24 6 0 0 0 0 0 5 8 0 0 1 9 0 0 18 4 0 0 7 23 0 0 3 8 0 0 24 10 0 18 4 0 0 19 21 0 0 2 15 0 0 0 0 24 17 0 0 18 16 0 0 13 19 0 23 2 0 0 7 22 0 0 1 12 0 0 3 4 0 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 17 10 15 23 0 0 0 16 6 0 0 0 0 0 20 0 0 0 0 0 4 18 0 0 0 11 14 0 0 21 22 0 10 12 0 0 0 0 0 0 0 0 0 0 0 13 11 0 3 9 0 0 0 0 5 1 0 0 0 4 15 0 0 17 18 3 0 0 25 2 0 0 0 21 24 0 0 8 2 0 0 0 0 0 1 22 0 0 13 6 4 0 0 7 23 0 0 0 0 0 16 25 20 3 0 0 0 0 0 0 0 24 8 0 0 0 10 12 0 0 0 0 0 0 0 13 1 0 0 9 20 0 0 0 0 0 10 1 0 0 0 6 24 0 0 0 0 0 22 14 0 0 0 0 1 21 0 0 0 11 13 0 0 0 0 0 0 0 9 16 0 0 0 4 18 0 0 0 0 0 0 25 3 0 2 18 0 0 0 0 0 0 0 17 10 0 22 23 0 0 0 0 0 0 22 10 0 0 0 14 17 0 0 0 0 0 0 0 21 13 0 0 0 24 6 0 0 0 0 19 18 0 0 0 0 0 15 12 0 0 0 9 11 0 0 0 0 0 10 3 0 0 17 1 0 0 0 0 0 0 0 25 23 0 0 0 24 8 0 0 0 0 0 0 0 10 9 10 18 0 0 0 0 0 15 7 0 0 3 25 16 0 0 23 21 0 0 0 0 0 24 2 0 0 11 9 0 0 0 13 4 0 0 18 2 6 0 0 22 15 0 0 0 5 1 0 0 0 0 2 16 0 21 23 0 0 0 0 0 0 0 0 0 0 0 11 4 0 18 25 0 0 19 25 0 0 0 6 22 0 0 0 0 0 11 0 0 0 0 0 9 10 0 0 0 7 16 21 17 0 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 9 11 0 0 18 12 0 0 21 23 0 0 19 6 0 8 7 0 0 24 10 0 0 16 5 0 0 0 0 16 4 0 0 9 7 0 0 21 23 0 10 22 0 0 12 20 0 0 25 2 0 0 24 13 0 0 11 18 0 0 20 8 0 0 0 0 0 21 4 0 0 9 1 0 0 3 23 5 22 0 0 23 2 0 0 1 12 0 0 0 0 0 25 15 0 0 8 7 0 0 6 18) :
init-time = 40.54s, solve-time = 14.29s, total-time = 54.83s
nb-facts=<Fact-210146>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
