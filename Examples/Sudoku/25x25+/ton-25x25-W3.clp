(solve-grid-as-list
    1 22 . 24 . . . . . . 23 16 6 . 12 13 11 . . . . . . . . . . . . . . 15 . . 9 . . . . . . . . . . . 6 5 . 8 21 23 . 18 11 . . . . . . 24 . . 13 25 1 . . . . . . . . . . . . . 5 6 8 . 17 . . . 20 . . 2 . . . . 14 . . 19 . . . 13 . . 19 . . . . 11 . . . . . . . . . 17 . . . . . . 1 . 12 . 13 11 . . 23 . . 24 22 . . . . . . . . 16 . . 19 . 4 . . . . . . . . . . . . . 20 6 . . 3 . 17 . . 9 . . . . . . . . . . . 22 . . . 14 . . 19 . . 20 . . . . . . . . 24 . . 12 . . . . . . . . . . . . . . . . . . . . 23 18 . 1 . . . . . . . . . . . 8 . . . 1 . . . . . 21 12 . . . 17 19 . . . . . . . . 14 . 3 . 24 . 25 . 7 . 18 23 . . 13 . . . 1 21 11 . . . . . 16 . . . . 11 . . . . . . . . 20 6 . . . . . . 10 . . . 5 12 18 . 23 . . . 24 25 . . . . . . 16 13 . . . . . . . . . . . . . . . . . . 4 . 14 8 5 . . . 3 15 . 20 19 . 6 8 . 3 . 14 . . . . . . . 9 . . . . . 6 . . . 22 . . . . . . . . . . 1 . . 21 . . . . . . . . . . . 11 . . . . . 6 . . . 16 . . . . . . . . . . . . . . . . . . 17 . 20 . 3 . . . . . 15 . . . . . 5 14 6 . . . . . . 5 . . . . 25 13 . . 7 . . 11 . 12 . . . 23 . . 1 . . . . . . . . . . . . . . . . 24 7 . . 18 13 . . 23 . . . 20 . 9 . 5 . . 8 6 . . . . 15 . . . . 24 . . . . . . 6 . 19 9 14 . . 20 . . 8 . . . . . . . . . . . . . . 8 . 5 . 17 . . 19 . . 3 14 . 4 . . . . . . . . . . . . . . . . . . . . . . . . 11 . 1 . . 25 18 . 12 .
 )

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
(1 22 . 24 . . . . . . 23 16 6 . 12 13 11 . . . . . . . . . . . . . . 15 . . 9 . . . . . . . . . . . 6 5 . 8 21 23 . 18 11 . . . . . . 24 . . 13 25 1 . . . . . . . . . . . . . 5 6 8 . 17 . . . 20 . . 2 . . . . 14 . . 19 . . . 13 . . 19 . . . . 11 . . . . . . . . . 17 . . . . . . 1 . 12 . 13 11 . . 23 . . 24 22 . . . . . . . . 16 . . 19 . 4 . . . . . . . . . . . . . 20 6 . . 3 . 17 . . 9 . . . . . . . . . . . 22 . . . 14 . . 19 . . 20 . . . . . . . . 24 . . 12 . . . . . . . . . . . . . . . . . . . . 23 18 . 1 . . . . . . . . . . . 8 . . . 1 . . . . . 21 12 . . . 17 19 . . . . . . . . 14 . 3 . 24 . 25 . 7 . 18 23 . . 13 . . . 1 21 11 . . . . . 16 . . . . 11 . . . . . . . . 20 6 . . . . . . 10 . . . 5 12 18 . 23 . . . 24 25 . . . . . . 16 13 . . . . . . . . . . . . . . . . . . 4 . 14 8 5 . . . 3 15 . 20 19 . 6 8 . 3 . 14 . . . . . . . 9 . . . . . 6 . . . 22 . . . . . . . . . . 1 . . 21 . . . . . . . . . . . 11 . . . . . 6 . . . 16 . . . . . . . . . . . . . . . . . . 17 . 20 . 3 . . . . . 15 . . . . . 5 14 6 . . . . . . 5 . . . . 25 13 . . 7 . . 11 . 12 . . . 23 . . 1 . . . . . . . . . . . . . . . . 24 7 . . 18 13 . . 23 . . . 20 . 9 . 5 . . 8 6 . . . . 15 . . . . 24 . . . . . . 6 . 19 9 14 . . 20 . . 8 . . . . . . . . . . . . . . 8 . 5 . 17 . . 19 . . 3 14 . 4 . . . . . . . . . . . . . . . . . . . . . . . . 11 . 1 . . 25 18 . 12 .)
153 givens, 5404 candidates
entering BRT
hidden-single-in-a-block ==> r22c24 = 19
hidden-single-in-a-block ==> r21c22 = 8
hidden-single-in-a-column ==> r21c5 = 1
hidden-single-in-a-column ==> r18c3 = 1
hidden-single-in-a-block ==> r16c20 = 1
hidden-single-in-a-block ==> r9c19 = 1
hidden-single-in-a-block ==> r17c15 = 6
hidden-single-in-a-row ==> r3c18 = 6
hidden-single-in-a-column ==> r11c16 = 6
hidden-single-in-a-block ==> r12c1 = 6
hidden-single-in-a-block ==> r5c2 = 6
hidden-single-in-a-block ==> r5c1 = 5
hidden-single-in-a-block ==> r11c4 = 5
hidden-single-in-a-block ==> r11c1 = 20
hidden-single-in-a-block ==> r2c6 = 13
hidden-single-in-a-block ==> r2c8 = 11
Starting_init_links_with_<Fact-71388>
5087 candidates, 117540 csp-links and 117540 links. Density = 0.91%
starting non trivial part of solution
Entering_level_W1_with_<Fact-517063>
whip[1]: r15n23{c18 .} ==> r13c20 ≠ 23, r11c17 ≠ 23, r11c18 ≠ 23, r11c19 ≠ 23, r11c20 ≠ 23, r13c16 ≠ 23, r13c17 ≠ 23, r13c18 ≠ 23, r13c19 ≠ 23
whip[1]: r12n19{c20 .} ==> r14c20 ≠ 19, r13c16 ≠ 19, r13c17 ≠ 19, r13c18 ≠ 19, r13c19 ≠ 19, r13c20 ≠ 19, r14c18 ≠ 19, r14c19 ≠ 19
hidden-single-in-a-row ==> r14c6 = 19
hidden-single-in-a-block ==> r9c8 = 19
hidden-single-in-a-block ==> r14c10 = 6
hidden-single-in-a-block ==> r12c10 = 5
hidden-single-in-a-row ==> r12c3 = 14
hidden-single-in-a-row ==> r14c18 = 14
hidden-single-in-a-block ==> r14c20 = 5
hidden-single-in-a-block ==> r1c18 = 5
hidden-single-in-a-block ==> r12c20 = 20
hidden-single-in-a-block ==> r14c7 = 20
hidden-single-in-a-block ==> r12c19 = 19
hidden-single-in-a-row ==> r1c20 = 19
hidden-single-in-a-block ==> r20c6 = 6
whip[1]: b7n6{r8c9 .} ==> r8c4 ≠ 6, r8c12 ≠ 6, r8c23 ≠ 6, r8c24 ≠ 6
hidden-single-in-a-block ==> r10c12 = 6
hidden-single-in-a-block ==> r9c4 = 6
whip[1]: c4n8{r8 .} ==> r6c2 ≠ 8, r6c5 ≠ 8, r7c2 ≠ 8, r8c2 ≠ 8, r8c5 ≠ 8, r9c2 ≠ 8, r9c5 ≠ 8
hidden-single-in-a-column ==> r13c2 = 8
hidden-single-in-a-block ==> r13c1 = 19
whip[1]: b11n3{r14c5 .} ==> r1c5 ≠ 3, r2c5 ≠ 3, r4c5 ≠ 3, r5c5 ≠ 3, r6c5 ≠ 3, r8c5 ≠ 3, r9c5 ≠ 3, r10c5 ≠ 3, r25c5 ≠ 3
whip[1]: b11n4{r14c3 .} ==> r1c3 ≠ 4, r2c3 ≠ 4, r3c3 ≠ 4, r4c3 ≠ 4, r5c3 ≠ 4, r17c3 ≠ 4, r21c3 ≠ 4, r25c3 ≠ 4
whip[1]: b11n9{r15c4 .} ==> r15c7 ≠ 9, r15c8 ≠ 9, r15c9 ≠ 9, r15c12 ≠ 9, r15c16 ≠ 9, r15c17 ≠ 9, r15c18 ≠ 9, r15c21 ≠ 9, r15c24 ≠ 9
whip[1]: r3n19{c13 .} ==> r2c11 ≠ 19, r2c12 ≠ 19, r2c13 ≠ 19, r2c15 ≠ 19
whip[1]: b7n20{r10c6 .} ==> r1c6 ≠ 20, r3c6 ≠ 20, r5c6 ≠ 20, r16c6 ≠ 20, r17c6 ≠ 20, r18c6 ≠ 20
whip[1]: r21n5{c14 .} ==> r23c11 ≠ 5, r23c12 ≠ 5, r23c14 ≠ 5, r25c11 ≠ 5, r25c12 ≠ 5, r25c13 ≠ 5, r25c14 ≠ 5
hidden-single-in-a-row ==> r25c17 = 5
hidden-single-in-a-block ==> r24c17 = 6
hidden-single-in-a-column ==> r6c24 = 6
hidden-single-in-a-block ==> r22c17 = 14
hidden-single-in-a-block ==> r21c18 = 19
hidden-single-in-a-block ==> r24c18 = 20
whip[1]: b25n20{r25c23 .} ==> r1c23 ≠ 20, r3c23 ≠ 20, r5c23 ≠ 20, r17c23 ≠ 20, r18c23 ≠ 20, r20c23 ≠ 20
whip[1]: b25n14{r25c25 .} ==> r9c25 ≠ 14, r10c25 ≠ 14, r17c25 ≠ 14, r18c25 ≠ 14, r20c25 ≠ 14
whip[1]: r1n14{c10 .} ==> r2c9 ≠ 14, r3c6 ≠ 14, r3c8 ≠ 14, r3c9 ≠ 14, r3c10 ≠ 14, r5c6 ≠ 14, r5c8 ≠ 14, r5c9 ≠ 14, r5c10 ≠ 14
hidden-single-in-a-row ==> r3c11 = 14
hidden-single-in-a-block ==> r3c13 = 19
hidden-single-in-a-block ==> r3c14 = 5
hidden-single-in-a-row ==> r5c16 = 14
hidden-single-in-a-row ==> r20c10 = 14
hidden-single-in-a-row ==> r17c21 = 14
whip[1]: r6n14{c2 .} ==> r7c1 ≠ 14, r7c2 ≠ 14, r7c4 ≠ 14, r9c1 ≠ 14, r9c2 ≠ 14, r10c1 ≠ 14, r10c2 ≠ 14, r10c4 ≠ 14
whip[1]: r3n17{c20 .} ==> r1c19 ≠ 17, r2c16 ≠ 17, r2c17 ≠ 17, r2c18 ≠ 17, r2c19 ≠ 17, r2c20 ≠ 17
whip[1]: r3n8{c20 .} ==> r1c19 ≠ 8, r5c17 ≠ 8, r5c18 ≠ 8, r5c19 ≠ 8, r5c20 ≠ 8
hidden-single-in-a-row ==> r1c5 = 8
hidden-single-in-a-row ==> r1c14 = 17
whip[1]: b12n3{r13c10 .} ==> r13c5 ≠ 3, r13c11 ≠ 3, r13c12 ≠ 3, r13c15 ≠ 3
whip[1]: r2n23{c20 .} ==> r5c20 ≠ 23, r4c16 ≠ 23, r4c18 ≠ 23, r4c19 ≠ 23, r4c20 ≠ 23, r5c17 ≠ 23, r5c18 ≠ 23, r5c19 ≠ 23
hidden-single-in-a-row ==> r4c23 = 23
hidden-single-in-a-block ==> r4c21 = 11
hidden-single-in-a-block ==> r4c24 = 13
hidden-single-in-a-column ==> r9c25 = 23
whip[1]: r4n24{c20 .} ==> r2c17 ≠ 24, r2c18 ≠ 24, r2c19 ≠ 24, r2c20 ≠ 24, r5c17 ≠ 24, r5c18 ≠ 24, r5c19 ≠ 24, r5c20 ≠ 24
hidden-single-in-a-row ==> r2c24 = 24
whip[1]: r15n24{c18 .} ==> r11c17 ≠ 24, r11c18 ≠ 24, r11c19 ≠ 24, r11c20 ≠ 24, r13c17 ≠ 24, r13c18 ≠ 24, r13c19 ≠ 24, r13c20 ≠ 24
whip[1]: r4n1{c15 .} ==> r2c12 ≠ 1, r2c13 ≠ 1, r2c14 ≠ 1, r2c15 ≠ 1, r5c13 ≠ 1, r5c14 ≠ 1, r5c15 ≠ 1
hidden-single-in-a-row ==> r2c21 = 1
whip[1]: r15n11{c10 .} ==> r11c6 ≠ 11, r11c7 ≠ 11, r11c10 ≠ 11
whip[1]: b21n18{r24c1 .} ==> r20c1 ≠ 18, r6c1 ≠ 18, r7c1 ≠ 18, r8c1 ≠ 18, r9c1 ≠ 18, r17c1 ≠ 18, r18c1 ≠ 18, r19c1 ≠ 18
whip[1]: b22n18{r24c6 .} ==> r19c6 ≠ 18, r1c6 ≠ 18, r5c6 ≠ 18, r16c6 ≠ 18, r17c6 ≠ 18, r18c6 ≠ 18
whip[1]: b13n23{r13c15 .} ==> r25c15 ≠ 23, r16c15 ≠ 23, r18c15 ≠ 23, r19c15 ≠ 23, r22c15 ≠ 23, r23c15 ≠ 23, r24c15 ≠ 23
whip[1]: b13n24{r13c11 .} ==> r25c11 ≠ 24, r16c11 ≠ 24, r17c11 ≠ 24, r18c11 ≠ 24, r19c11 ≠ 24, r20c11 ≠ 24, r23c11 ≠ 24, r24c11 ≠ 24
whip[1]: b22n13{r25c10 .} ==> r25c20 ≠ 13, r25c1 ≠ 13, r25c2 ≠ 13, r25c3 ≠ 13, r25c5 ≠ 13, r25c11 ≠ 13, r25c13 ≠ 13, r25c14 ≠ 13, r25c19 ≠ 13
whip[1]: b19n11{r18c20 .} ==> r18c10 ≠ 11, r18c1 ≠ 11, r18c2 ≠ 11, r18c6 ≠ 11, r18c7 ≠ 11
whip[1]: b1n9{r4c4 .} ==> r4c20 ≠ 9, r4c11 ≠ 9, r4c12 ≠ 9, r4c15 ≠ 9, r4c16 ≠ 9, r4c18 ≠ 9, r4c19 ≠ 9
whip[1]: b3n9{r5c15 .} ==> r5c17 ≠ 9, r5c18 ≠ 9, r5c19 ≠ 9, r5c20 ≠ 9, r5c21 ≠ 9, r5c23 ≠ 9, r5c24 ≠ 9, r5c25 ≠ 9
whip[1]: b1n20{r2c4 .} ==> r2c17 ≠ 20, r2c9 ≠ 20, r2c16 ≠ 20
hidden-single-in-a-block ==> r5c17 = 20
Entering_relation_bivalue_with_<Fact-517164>
Entering_level_S2_with_<Fact-517301>
hidden-pairs-in-a-column: c23{n6 n20}{r21 r25} ==> r25c23 ≠ 21, r25c23 ≠ 17, r25c23 ≠ 16, r25c23 ≠ 15, r25c23 ≠ 10, r25c23 ≠ 9, r25c23 ≠ 7, r25c23 ≠ 4, r25c23 ≠ 2, r21c23 ≠ 21, r21c23 ≠ 17, r21c23 ≠ 16, r21c23 ≠ 15, r21c23 ≠ 11, r21c23 ≠ 10, r21c23 ≠ 9, r21c23 ≠ 4, r21c23 ≠ 2
hidden-pairs-in-a-row: r11{n11 n24}{c11 c22} ==> r11c22 ≠ 25, r11c22 ≠ 23, r11c22 ≠ 22, r11c22 ≠ 15, r11c22 ≠ 13, r11c22 ≠ 9, r11c22 ≠ 7, r11c22 ≠ 4, r11c22 ≠ 2, r11c11 ≠ 25, r11c11 ≠ 22, r11c11 ≠ 18, r11c11 ≠ 16, r11c11 ≠ 15, r11c11 ≠ 10, r11c11 ≠ 9, r11c11 ≠ 7, r11c11 ≠ 2
hidden-single-in-a-block ==> r13c22 = 23
hidden-single-in-a-block ==> r11c15 = 23
hidden-single-in-a-block ==> r13c23 = 13
hidden-single-in-a-block ==> r11c22 = 24
naked-single ==> r11c11 = 11
hidden-single-in-a-block ==> r13c11 = 24
hidden-single-in-a-block ==> r13c15 = 16
whip[1]: b13n7{r14c15 .} ==> r14c3 ≠ 7, r14c5 ≠ 7, r14c19 ≠ 7, r14c21 ≠ 7, r14c22 ≠ 7, r14c23 ≠ 7, r14c24 ≠ 7, r14c25 ≠ 7
whip[1]: b13n18{r15c12 .} ==> r2c12 ≠ 18, r4c12 ≠ 18, r7c12 ≠ 18, r8c12 ≠ 18, r16c12 ≠ 18, r18c12 ≠ 18, r19c12 ≠ 18, r22c12 ≠ 18, r23c12 ≠ 18, r24c12 ≠ 18
whip[1]: b13n21{r14c15 .} ==> r14c3 ≠ 21, r14c5 ≠ 21, r14c21 ≠ 21, r14c22 ≠ 21, r14c23 ≠ 21, r14c24 ≠ 21, r14c25 ≠ 21
whip[1]: b13n25{r15c12 .} ==> r2c12 ≠ 25, r4c12 ≠ 25, r7c12 ≠ 25, r8c12 ≠ 25, r16c12 ≠ 25, r18c12 ≠ 25, r19c12 ≠ 25, r21c12 ≠ 25, r22c12 ≠ 25, r23c12 ≠ 25, r24c12 ≠ 25
whip[1]: r13n12{c20 .} ==> r15c16 ≠ 12, r15c18 ≠ 12
hidden-single-in-a-row ==> r15c21 = 12
whip[1]: b15n21{r15c24 .} ==> r1c24 ≠ 21, r5c24 ≠ 21, r7c24 ≠ 21, r8c24 ≠ 21, r9c24 ≠ 21, r10c24 ≠ 21, r16c24 ≠ 21, r18c24 ≠ 21, r19c24 ≠ 21, r23c24 ≠ 21, r24c24 ≠ 21
whip[1]: b15n1{r14c25 .} ==> r14c12 ≠ 1, r14c13 ≠ 1, r14c14 ≠ 1, r14c15 ≠ 1
whip[1]: b13n1{r15c12 .} ==> r4c12 ≠ 1, r19c12 ≠ 1, r22c12 ≠ 1, r23c12 ≠ 1, r24c12 ≠ 1
whip[1]: b15n25{r15c24 .} ==> r1c24 ≠ 25, r5c24 ≠ 25, r7c24 ≠ 25, r8c24 ≠ 25, r9c24 ≠ 25, r10c24 ≠ 25, r16c24 ≠ 25, r18c24 ≠ 25, r19c24 ≠ 25
hidden-pairs-in-a-row: r5{n23 n24}{c6 c10} ==> r5c10 ≠ 25, r5c10 ≠ 22, r5c10 ≠ 21, r5c10 ≠ 18, r5c10 ≠ 16, r5c10 ≠ 12, r5c10 ≠ 10, r5c10 ≠ 7, r5c10 ≠ 4, r5c10 ≠ 3, r5c10 ≠ 2, r5c10 ≠ 1, r5c6 ≠ 25, r5c6 ≠ 22, r5c6 ≠ 21, r5c6 ≠ 16, r5c6 ≠ 10, r5c6 ≠ 4, r5c6 ≠ 3, r5c6 ≠ 2, r5c6 ≠ 1
hidden-single-in-a-block ==> r5c8 = 1
whip[1]: b2n12{r3c10 .} ==> r3c3 ≠ 12, r3c19 ≠ 12, r3c20 ≠ 12, r3c22 ≠ 12, r3c23 ≠ 12, r3c25 ≠ 12
whip[1]: b5n12{r5c25 .} ==> r5c3 ≠ 12, r5c5 ≠ 12, r5c18 ≠ 12, r5c19 ≠ 12, r5c20 ≠ 12
whip[1]: b2n16{r3c10 .} ==> r3c3 ≠ 16, r3c19 ≠ 16, r3c20 ≠ 16, r3c21 ≠ 16, r3c22 ≠ 16, r3c23 ≠ 16
whip[1]: b5n16{r5c23 .} ==> r5c3 ≠ 16, r5c5 ≠ 16, r5c18 ≠ 16, r5c19 ≠ 16, r5c20 ≠ 16
whip[1]: b22n1{r24c6 .} ==> r7c6 ≠ 1, r8c6 ≠ 1, r13c6 ≠ 1, r15c6 ≠ 1
whip[1]: b2n25{r1c10 .} ==> r1c3 ≠ 25, r1c22 ≠ 25, r1c23 ≠ 25, r1c25 ≠ 25
whip[1]: b5n25{r5c25 .} ==> r5c3 ≠ 25, r5c5 ≠ 25, r5c11 ≠ 25, r5c13 ≠ 25, r5c14 ≠ 25, r5c15 ≠ 25
whip[1]: b2n18{r1c10 .} ==> r1c19 ≠ 18, r1c21 ≠ 18, r1c23 ≠ 18, r1c24 ≠ 18, r1c25 ≠ 18
whip[1]: b5n18{r5c25 .} ==> r5c11 ≠ 18, r5c13 ≠ 18, r5c14 ≠ 18, r5c15 ≠ 18, r5c18 ≠ 18, r5c19 ≠ 18
hidden-pairs-in-a-row: r5{n12 n25}{c23 c25} ==> r5c25 ≠ 22, r5c25 ≠ 21, r5c25 ≠ 18, r5c25 ≠ 15, r5c25 ≠ 10, r5c25 ≠ 7, r5c25 ≠ 4, r5c25 ≠ 2, r5c23 ≠ 21, r5c23 ≠ 18, r5c23 ≠ 16, r5c23 ≠ 15, r5c23 ≠ 10, r5c23 ≠ 7, r5c23 ≠ 4, r5c23 ≠ 2
hidden-single-in-a-block ==> r5c21 = 16
hidden-single-in-a-block ==> r5c24 = 18
hidden-single-in-a-block ==> r11c21 = 18
whip[1]: b10n18{r9c23 .} ==> r17c23 ≠ 18, r18c23 ≠ 18, r19c23 ≠ 18, r20c23 ≠ 18
whip[1]: b15n7{r15c24 .} ==> r1c24 ≠ 7, r3c24 ≠ 7, r7c24 ≠ 7, r8c24 ≠ 7, r9c24 ≠ 7, r10c24 ≠ 7, r16c24 ≠ 7, r18c24 ≠ 7, r19c24 ≠ 7, r23c24 ≠ 7, r24c24 ≠ 7
whip[1]: b5n22{r3c25 .} ==> r3c6 ≠ 22, r3c7 ≠ 22, r3c8 ≠ 22, r3c9 ≠ 22, r3c10 ≠ 22, r3c19 ≠ 22, r3c20 ≠ 22
whip[1]: b2n22{r5c9 .} ==> r7c9 ≠ 22, r13c9 ≠ 22, r15c9 ≠ 22, r19c9 ≠ 22, r21c9 ≠ 22, r22c9 ≠ 22, r23c9 ≠ 22, r24c9 ≠ 22, r25c9 ≠ 22
whip[1]: b5n21{r1c25 .} ==> r1c6 ≠ 21, r1c7 ≠ 21, r1c9 ≠ 21, r1c10 ≠ 21, r1c19 ≠ 21
whip[1]: b2n21{r5c9 .} ==> r7c9 ≠ 21, r8c9 ≠ 21, r16c9 ≠ 21, r19c9 ≠ 21, r21c9 ≠ 21, r22c9 ≠ 21, r23c9 ≠ 21, r24c9 ≠ 21, r25c9 ≠ 21
hidden-pairs-in-a-block: b13{r13c12 r15c12}{n1 n18} ==> r15c12 ≠ 25, r15c12 ≠ 22, r15c12 ≠ 10, r15c12 ≠ 2, r13c12 ≠ 25, r13c12 ≠ 22, r13c12 ≠ 15, r13c12 ≠ 9, r13c12 ≠ 2
hidden-single-in-a-block ==> r11c12 = 25
hidden-pairs-in-a-block: b15{r13c24 r15c24}{n21 n25} ==> r15c24 ≠ 22, r15c24 ≠ 17, r15c24 ≠ 7, r15c24 ≠ 2, r13c24 ≠ 22, r13c24 ≠ 17, r13c24 ≠ 15, r13c24 ≠ 9, r13c24 ≠ 7, r13c24 ≠ 4, r13c24 ≠ 2
hidden-single-in-a-block ==> r11c24 = 7
hidden-pairs-in-a-column: c6{n1 n18}{r22 r24} ==> r24c6 ≠ 25, r24c6 ≠ 24, r24c6 ≠ 23, r24c6 ≠ 22, r24c6 ≠ 21, r24c6 ≠ 16, r24c6 ≠ 15, r24c6 ≠ 11, r24c6 ≠ 10, r24c6 ≠ 2, r22c6 ≠ 25, r22c6 ≠ 23, r22c6 ≠ 22, r22c6 ≠ 21, r22c6 ≠ 16, r22c6 ≠ 11, r22c6 ≠ 10, r22c6 ≠ 4, r22c6 ≠ 3, r22c6 ≠ 2
hidden-single-in-a-row ==> r24c1 = 24
hidden-single-in-a-row ==> r23c14 = 24
whip[1]: r7n24{c18 .} ==> r8c17 ≠ 24, r8c18 ≠ 24, r8c20 ≠ 24, r10c17 ≠ 24, r10c18 ≠ 24, r10c19 ≠ 24, r10c20 ≠ 24
whip[1]: r24n23{c20 .} ==> r22c18 ≠ 23, r22c19 ≠ 23, r22c20 ≠ 23, r23c16 ≠ 23, r23c17 ≠ 23, r23c18 ≠ 23, r23c19 ≠ 23, r23c20 ≠ 23, r25c19 ≠ 23, r25c20 ≠ 23
hidden-single-in-a-row ==> r23c1 = 23
hidden-single-in-a-block ==> r8c5 = 23
hidden-single-in-a-row ==> r8c23 = 24
hidden-single-in-a-block ==> r7c22 = 1
hidden-single-in-a-block ==> r17c3 = 23
hidden-single-in-a-column ==> r10c3 = 24
hidden-single-in-a-block ==> r22c1 = 18
naked-single ==> r22c6 = 1
naked-single ==> r24c6 = 18
hidden-single-in-a-column ==> r4c13 = 1
hidden-single-in-a-column ==> r19c14 = 1
whip[1]: b21n13{r24c2 .} ==> r7c2 ≠ 13, r8c2 ≠ 13, r9c2 ≠ 13, r10c2 ≠ 13, r15c2 ≠ 13, r16c2 ≠ 13, r17c2 ≠ 13, r18c2 ≠ 13, r19c2 ≠ 13
whip[1]: b16n18{r20c5 .} ==> r6c5 ≠ 18, r9c5 ≠ 18
whip[1]: b10n12{r10c25 .} ==> r10c2 ≠ 12, r10c4 ≠ 12, r10c5 ≠ 12, r10c16 ≠ 12, r10c18 ≠ 12, r10c19 ≠ 12, r10c20 ≠ 12
whip[1]: r22n23{c14 .} ==> r25c13 ≠ 23, r25c14 ≠ 23
whip[1]: b22n11{r21c10 .} ==> r21c1 ≠ 11, r21c2 ≠ 11, r21c3 ≠ 11, r21c13 ≠ 11, r21c14 ≠ 11, r21c25 ≠ 11
hidden-single-in-a-column ==> r9c3 = 11
hidden-single-in-a-column ==> r19c1 = 11
hidden-single-in-a-block ==> r6c3 = 18
hidden-single-in-a-block ==> r9c23 = 18
whip[1]: r7n11{c14 .} ==> r8c13 ≠ 11, r8c14 ≠ 11, r10c13 ≠ 11, r10c14 ≠ 11
hidden-single-in-a-row ==> r8c20 = 11
hidden-single-in-a-column ==> r18c19 = 11
whip[1]: c3n13{r15 .} ==> r11c5 ≠ 13, r15c1 ≠ 13, r15c5 ≠ 13
whip[1]: b23n11{r22c14 .} ==> r22c2 ≠ 11, r22c22 ≠ 11, r22c23 ≠ 11, r22c25 ≠ 11
whip[1]: b22n25{r21c10 .} ==> r21c1 ≠ 25, r21c2 ≠ 25, r21c3 ≠ 25, r21c11 ≠ 25, r21c13 ≠ 25, r21c14 ≠ 25, r21c15 ≠ 25, r21c19 ≠ 25
whip[1]: b21n25{r24c2 .} ==> r2c2 ≠ 25, r4c2 ≠ 25, r6c2 ≠ 25, r7c2 ≠ 25, r8c2 ≠ 25, r9c2 ≠ 25, r10c2 ≠ 25, r16c2 ≠ 25, r17c2 ≠ 25, r18c2 ≠ 25, r19c2 ≠ 25
whip[1]: c3n25{r4 .} ==> r2c1 ≠ 25, r2c5 ≠ 25, r4c1 ≠ 25, r4c5 ≠ 25
hidden-pairs-in-a-row: r22{n11 n23}{c13 c14} ==> r22c14 ≠ 25, r22c14 ≠ 22, r22c14 ≠ 21, r22c14 ≠ 16, r22c14 ≠ 13, r22c14 ≠ 12, r22c14 ≠ 10, r22c14 ≠ 7, r22c14 ≠ 4, r22c14 ≠ 2, r22c13 ≠ 25, r22c13 ≠ 22, r22c13 ≠ 21, r22c13 ≠ 16, r22c13 ≠ 13, r22c13 ≠ 12, r22c13 ≠ 10, r22c13 ≠ 7, r22c13 ≠ 4, r22c13 ≠ 2
whip[1]: b23n13{r24c11 .} ==> r7c11 ≠ 13, r8c11 ≠ 13, r9c11 ≠ 13, r16c11 ≠ 13, r17c11 ≠ 13, r18c11 ≠ 13, r19c11 ≠ 13
hidden-pairs-in-a-row: r10{n11 n12}{c22 c25} ==> r10c25 ≠ 25, r10c25 ≠ 22, r10c25 ≠ 21, r10c25 ≠ 15, r10c25 ≠ 13, r10c25 ≠ 10, r10c25 ≠ 9, r10c25 ≠ 7, r10c25 ≠ 4, r10c25 ≠ 2, r10c22 ≠ 25, r10c22 ≠ 22, r10c22 ≠ 21, r10c22 ≠ 15, r10c22 ≠ 13, r10c22 ≠ 10, r10c22 ≠ 9, r10c22 ≠ 7, r10c22 ≠ 5, r10c22 ≠ 4, r10c22 ≠ 2
hidden-single-in-a-block ==> r9c22 = 13
whip[1]: b10n25{r6c23 .} ==> r6c1 ≠ 25, r6c5 ≠ 25, r6c7 ≠ 25, r6c10 ≠ 25, r6c11 ≠ 25, r6c13 ≠ 25, r6c14 ≠ 25, r6c17 ≠ 25, r6c18 ≠ 25, r6c19 ≠ 25, r6c20 ≠ 25
hidden-pairs-in-a-column: c5{n18 n24}{r17 r20} ==> r20c5 ≠ 22, r20c5 ≠ 21, r20c5 ≠ 16, r20c5 ≠ 15, r20c5 ≠ 10, r20c5 ≠ 2, r17c5 ≠ 25, r17c5 ≠ 22, r17c5 ≠ 16, r17c5 ≠ 15, r17c5 ≠ 13, r17c5 ≠ 12, r17c5 ≠ 10, r17c5 ≠ 7, r17c5 ≠ 2
hidden-single-in-a-column ==> r10c5 = 13
hidden-single-in-a-column ==> r9c5 = 25
whip[1]: b9n13{r8c18 .} ==> r16c18 ≠ 13, r17c18 ≠ 13, r18c18 ≠ 13, r19c18 ≠ 13, r22c18 ≠ 13, r23c18 ≠ 13
hidden-single-in-a-row ==> r19c25 = 13
hidden-single-in-a-row ==> r16c14 = 13
whip[1]: b18n23{r18c14 .} ==> r18c6 ≠ 23, r18c7 ≠ 23, r18c10 ≠ 23, r18c16 ≠ 23, r18c17 ≠ 23, r18c18 ≠ 23, r18c20 ≠ 23
whip[1]: c5n12{r4 .} ==> r2c2 ≠ 12, r2c3 ≠ 12, r2c4 ≠ 12, r4c2 ≠ 12, r4c3 ≠ 12, r4c4 ≠ 12
hidden-single-in-a-column ==> r21c3 = 12
whip[1]: b22n12{r24c8 .} ==> r3c8 ≠ 12, r16c8 ≠ 12, r17c8 ≠ 12, r18c8 ≠ 12, r19c8 ≠ 12
whip[1]: b23n12{r24c11 .} ==> r12c11 ≠ 12, r16c11 ≠ 12, r17c11 ≠ 12, r18c11 ≠ 12, r19c11 ≠ 12
hidden-pairs-in-a-column: c11{n12 n13}{r23 r24} ==> r24c11 ≠ 25, r24c11 ≠ 22, r24c11 ≠ 21, r24c11 ≠ 16, r24c11 ≠ 15, r24c11 ≠ 10, r24c11 ≠ 9, r24c11 ≠ 7, r24c11 ≠ 2, r23c11 ≠ 25, r23c11 ≠ 22, r23c11 ≠ 21, r23c11 ≠ 18, r23c11 ≠ 17, r23c11 ≠ 16, r23c11 ≠ 15, r23c11 ≠ 10, r23c11 ≠ 7, r23c11 ≠ 2
hidden-single-in-a-block ==> r23c15 = 18
hidden-single-in-a-block ==> r24c15 = 1
hidden-single-in-a-block ==> r22c15 = 25
whip[1]: b23n7{r25c15 .} ==> r25c1 ≠ 7, r25c2 ≠ 7, r25c3 ≠ 7, r25c4 ≠ 7, r25c5 ≠ 7, r25c7 ≠ 7, r25c8 ≠ 7, r25c9 ≠ 7, r25c10 ≠ 7, r25c25 ≠ 7
hidden-pairs-in-a-block: b21{r23c2 r24c2}{n11 n25} ==> r24c2 ≠ 21, r24c2 ≠ 16, r24c2 ≠ 15, r24c2 ≠ 13, r24c2 ≠ 10, r24c2 ≠ 7, r24c2 ≠ 2, r23c2 ≠ 21, r23c2 ≠ 17, r23c2 ≠ 16, r23c2 ≠ 15, r23c2 ≠ 13, r23c2 ≠ 10, r23c2 ≠ 7, r23c2 ≠ 4, r23c2 ≠ 3, r23c2 ≠ 2
hidden-single-in-a-block ==> r22c2 = 13
whip[1]: b21n7{r24c4 .} ==> r2c4 ≠ 7, r4c4 ≠ 7, r7c4 ≠ 7, r8c4 ≠ 7, r10c4 ≠ 7, r15c4 ≠ 7, r16c4 ≠ 7, r17c4 ≠ 7, r18c4 ≠ 7, r19c4 ≠ 7
hidden-pairs-in-a-column: c1{n13 n25}{r17 r18} ==> r18c1 ≠ 22, r18c1 ≠ 15, r18c1 ≠ 10, r18c1 ≠ 9, r18c1 ≠ 7, r18c1 ≠ 4, r18c1 ≠ 2, r17c1 ≠ 22, r17c1 ≠ 16, r17c1 ≠ 15, r17c1 ≠ 10, r17c1 ≠ 9, r17c1 ≠ 7, r17c1 ≠ 4, r17c1 ≠ 2
whip[1]: b16n7{r19c2 .} ==> r2c2 ≠ 7, r4c2 ≠ 7, r6c2 ≠ 7, r7c2 ≠ 7, r8c2 ≠ 7, r9c2 ≠ 7, r10c2 ≠ 7, r15c2 ≠ 7
hidden-pairs-in-a-row: r3{n8 n17}{c19 c20} ==> r3c20 ≠ 10, r3c20 ≠ 9, r3c20 ≠ 7, r3c20 ≠ 4, r3c20 ≠ 3, r3c19 ≠ 15, r3c19 ≠ 10, r3c19 ≠ 9, r3c19 ≠ 7, r3c19 ≠ 4
hidden-single-in-a-block ==> r1c19 = 9
whip[1]: b24n9{r25c20 .} ==> r6c20 ≠ 9, r9c20 ≠ 9, r10c20 ≠ 9, r11c20 ≠ 9, r13c20 ≠ 9, r17c20 ≠ 9, r18c20 ≠ 9, r20c20 ≠ 9
hidden-pairs-in-a-row: r2{n19 n20}{c2 c4} ==> r2c4 ≠ 17, r2c4 ≠ 16, r2c4 ≠ 14, r2c4 ≠ 10, r2c4 ≠ 4, r2c4 ≠ 3, r2c4 ≠ 2, r2c2 ≠ 17, r2c2 ≠ 16, r2c2 ≠ 14, r2c2 ≠ 10, r2c2 ≠ 4, r2c2 ≠ 3, r2c2 ≠ 2
hidden-single-in-a-block ==> r2c1 = 14
hidden-single-in-a-block ==> r2c5 = 17
hidden-single-in-a-block ==> r4c5 = 12
hidden-single-in-a-block ==> r6c2 = 14
hidden-single-in-a-row ==> r6c11 = 20
hidden-single-in-a-block ==> r10c15 = 19
hidden-single-in-a-block ==> r6c17 = 19
hidden-single-in-a-row ==> r20c16 = 20
hidden-single-in-a-row ==> r17c8 = 20
whip[1]: r12n17{c23 .} ==> r14c21 ≠ 17, r14c23 ≠ 17, r14c24 ≠ 17
hidden-single-in-a-row ==> r14c19 = 17
naked-single ==> r3c19 = 8
naked-single ==> r3c20 = 17
hidden-single-in-a-block ==> r25c20 = 8
hidden-single-in-a-block ==> r24c20 = 9
hidden-single-in-a-block ==> r24c19 = 23
hidden-single-in-a-row ==> r24c11 = 13
naked-single ==> r23c11 = 12
hidden-single-in-a-row ==> r24c8 = 12
hidden-single-in-a-row ==> r24c2 = 25
naked-single ==> r23c2 = 11
hidden-single-in-a-column ==> r2c20 = 23
whip[1]: b25n9{r25c25 .} ==> r3c25 ≠ 9, r12c25 ≠ 9, r14c25 ≠ 9, r17c25 ≠ 9, r18c25 ≠ 9, r20c25 ≠ 9
whip[1]: r13n17{c9 .} ==> r15c6 ≠ 17, r15c8 ≠ 17, r15c9 ≠ 17
whip[1]: r14n8{c24 .} ==> r12c21 ≠ 8
hidden-single-in-a-row ==> r12c7 = 8
hidden-single-in-a-row ==> r6c18 = 8
hidden-single-in-a-row ==> r6c1 = 17
hidden-single-in-a-block ==> r11c17 = 8
hidden-single-in-a-row ==> r20c11 = 8
hidden-single-in-a-block ==> r5c15 = 8
hidden-single-in-a-row ==> r9c6 = 8
hidden-single-in-a-column ==> r19c9 = 8
hidden-single-in-a-block ==> r16c9 = 19
hidden-single-in-a-block ==> r18c21 = 19
hidden-single-in-a-block ==> r18c24 = 8
hidden-single-in-a-block ==> r14c21 = 8
hidden-single-in-a-block ==> r17c16 = 8
hidden-single-in-a-block ==> r19c16 = 19
hidden-single-in-a-block ==> r17c11 = 19
hidden-single-in-a-block ==> r25c12 = 19
hidden-single-in-a-block ==> r10c6 = 20
hidden-single-in-a-block ==> r9c2 = 20
naked-single ==> r2c2 = 19
naked-single ==> r2c4 = 20
hidden-single-in-a-column ==> r20c4 = 19
hidden-single-in-a-row ==> r10c24 = 14
hidden-single-in-a-row ==> r9c15 = 14
hidden-single-in-a-column ==> r18c12 = 14
hidden-single-in-a-row ==> r18c15 = 20
hidden-single-in-a-column ==> r21c12 = 20
naked-single ==> r21c23 = 6
naked-single ==> r25c23 = 20
whip[1]: r10n17{c18 .} ==> r8c16 ≠ 17, r8c17 ≠ 17, r8c18 ≠ 17, r9c16 ≠ 17, r9c17 ≠ 17, r9c18 ≠ 17
hidden-single-in-a-row ==> r9c11 = 17
whip[1]: b18n17{r16c15 .} ==> r16c6 ≠ 17, r16c8 ≠ 17, r16c16 ≠ 17, r16c17 ≠ 17, r16c18 ≠ 17, r16c21 ≠ 17, r16c24 ≠ 17
hidden-single-in-a-column ==> r23c24 = 17
hidden-single-in-a-block ==> r22c18 = 17
hidden-single-in-a-row ==> r20c23 = 17
hidden-single-in-a-block ==> r12c21 = 17
hidden-single-in-a-column ==> r16c12 = 17
whip[1]: c12n5{r8 .} ==> r6c13 ≠ 5, r7c11 ≠ 5, r7c13 ≠ 5, r8c11 ≠ 5, r8c13 ≠ 5, r9c13 ≠ 5, r10c13 ≠ 5
whip[1]: r6n5{c22 .} ==> r7c21 ≠ 5, r7c24 ≠ 5, r8c21 ≠ 5, r8c24 ≠ 5, r9c21 ≠ 5, r9c24 ≠ 5, r10c21 ≠ 5
hidden-single-in-a-column ==> r16c24 = 5
hidden-single-in-a-block ==> r18c8 = 5
hidden-single-in-a-block ==> r17c13 = 5
hidden-single-in-a-block ==> r21c11 = 5
hidden-single-in-a-block ==> r16c21 = 20
hidden-single-in-a-row ==> r9c16 = 5
hidden-single-in-a-row ==> r10c2 = 5
whip[1]: b17n17{r18c6 .} ==> r8c6 ≠ 17, r13c6 ≠ 17
whip[1]: r12n4{c25 .} ==> r14c22 ≠ 4, r14c23 ≠ 4, r14c24 ≠ 4, r14c25 ≠ 4
hidden-single-in-a-row ==> r14c3 = 4
whip[1]: c24n3{r3 .} ==> r1c21 ≠ 3, r1c22 ≠ 3, r3c21 ≠ 3, r3c22 ≠ 3
hidden-single-in-a-column ==> r23c21 = 3
hidden-single-in-a-block ==> r22c20 = 3
hidden-single-in-a-block ==> r22c19 = 12
hidden-single-in-a-column ==> r13c20 = 12
hidden-single-in-a-block ==> r23c22 = 5
hidden-single-in-a-block ==> r6c21 = 5
whip[1]: b1n3{r4c4 .} ==> r4c9 ≠ 3, r4c11 ≠ 3, r4c12 ≠ 3, r4c15 ≠ 3, r4c16 ≠ 3, r4c18 ≠ 3
whip[1]: b1n4{r4c4 .} ==> r4c9 ≠ 4, r4c12 ≠ 4, r4c15 ≠ 4, r4c18 ≠ 4, r4c19 ≠ 4, r4c20 ≠ 4
hidden-pairs-in-a-block: b5{r1c24 r3c24}{n3 n20} ==> r3c24 ≠ 22, r3c24 ≠ 15, r3c24 ≠ 10, r3c24 ≠ 9, r3c24 ≠ 4, r3c24 ≠ 2, r1c24 ≠ 15, r1c24 ≠ 10, r1c24 ≠ 4, r1c24 ≠ 2
hidden-pairs-in-a-block: b7{r8c8 r8c9}{n6 n17} ==> r8c9 ≠ 15, r8c9 ≠ 10, r8c9 ≠ 7, r8c9 ≠ 5, r8c9 ≠ 4, r8c9 ≠ 3, r8c9 ≠ 2, r8c8 ≠ 16, r8c8 ≠ 15, r8c8 ≠ 10, r8c8 ≠ 7, r8c8 ≠ 4, r8c8 ≠ 3, r8c8 ≠ 2
hidden-single-in-a-block ==> r7c9 = 5
hidden-single-in-a-column ==> r13c9 = 9
hidden-single-in-a-row ==> r11c18 = 9
hidden-single-in-a-column ==> r1c9 = 14
hidden-single-in-a-block ==> r3c9 = 20
naked-single ==> r3c24 = 3
naked-single ==> r1c24 = 20
hidden-single-in-a-block ==> r13c8 = 17
naked-single ==> r8c8 = 6
naked-single ==> r8c9 = 17
hidden-single-in-a-column ==> r25c9 = 6
hidden-single-in-a-block ==> r13c6 = 14
hidden-single-in-a-block ==> r7c8 = 14
hidden-single-in-a-column ==> r19c8 = 9
hidden-single-in-a-block ==> r13c10 = 3
hidden-single-in-a-block ==> r8c6 = 3
hidden-single-in-a-row ==> r1c8 = 3
hidden-single-in-a-column ==> r21c9 = 3
hidden-single-in-a-row ==> r6c14 = 3
hidden-single-in-a-block ==> r18c11 = 3
hidden-single-in-a-row ==> r5c18 = 3
hidden-single-in-a-column ==> r10c16 = 3
hidden-single-in-a-column ==> r17c17 = 3
hidden-single-in-a-row ==> r17c6 = 17
hidden-single-in-a-block ==> r20c22 = 3
hidden-single-in-a-row ==> r9c1 = 3
hidden-single-in-a-block ==> r10c17 = 17
hidden-single-in-a-block ==> r18c16 = 17
hidden-single-in-a-block ==> r18c17 = 9
hidden-single-in-a-block ==> r7c16 = 9
hidden-single-in-a-column ==> r14c12 = 9
hidden-single-in-a-column ==> r2c12 = 3
hidden-single-in-a-column ==> r9c24 = 9
hidden-single-in-a-row ==> r6c7 = 9
hidden-single-in-a-row ==> r10c14 = 9
hidden-single-in-a-block ==> r5c11 = 9
hidden-single-in-a-column ==> r3c21 = 9
hidden-single-in-a-block ==> r8c12 = 5
hidden-single-in-a-block ==> r7c12 = 8
hidden-single-in-a-block ==> r8c4 = 8
whip[1]: b20n9{r17c23 .} ==> r17c2 ≠ 9, r17c4 ≠ 9
whip[1]: c9n15{r24 .} ==> r21c6 ≠ 15, r21c8 ≠ 15, r21c10 ≠ 15, r23c8 ≠ 15, r25c6 ≠ 15, r25c8 ≠ 15, r25c10 ≠ 15
hidden-single-in-a-column ==> r16c8 = 15
whip[1]: c17n15{r9 .} ==> r6c19 ≠ 15, r7c18 ≠ 15, r8c18 ≠ 15, r9c18 ≠ 15, r10c18 ≠ 15, r10c19 ≠ 15
whip[1]: r13n15{c5 .} ==> r11c3 ≠ 15, r11c5 ≠ 15, r12c5 ≠ 15, r14c5 ≠ 15
hidden-pairs-in-a-block: b23{r21c15 r25c15}{n9 n17} ==> r25c15 ≠ 21, r25c15 ≠ 15, r25c15 ≠ 10, r25c15 ≠ 7, r25c15 ≠ 4, r25c15 ≠ 2, r21c15 ≠ 21, r21c15 ≠ 15, r21c15 ≠ 10, r21c15 ≠ 4, r21c15 ≠ 2
hidden-pairs-in-a-block: b9{r7c17 r7c18}{n23 n24} ==> r7c18 ≠ 25, r7c18 ≠ 21, r7c18 ≠ 18, r7c18 ≠ 16, r7c18 ≠ 13, r7c18 ≠ 12, r7c18 ≠ 10, r7c18 ≠ 7, r7c18 ≠ 2, r7c17 ≠ 25, r7c17 ≠ 18, r7c17 ≠ 16, r7c17 ≠ 15, r7c17 ≠ 10
hidden-single-in-a-block ==> r8c18 = 13
hidden-single-in-a-block ==> r7c13 = 13
hidden-single-in-a-block ==> r7c14 = 11
naked-single ==> r22c14 = 23
naked-single ==> r22c13 = 11
hidden-single-in-a-block ==> r18c13 = 23
hidden-single-in-a-column ==> r12c13 = 12
hidden-single-in-a-block ==> r20c13 = 24
naked-single ==> r20c5 = 18
naked-single ==> r17c5 = 24
hidden-single-in-a-column ==> r4c19 = 24
hidden-single-in-a-column ==> r18c20 = 24
hidden-single-in-a-row ==> r18c1 = 13
naked-single ==> r17c1 = 25
hidden-single-in-a-block ==> r16c25 = 24
hidden-single-in-a-column ==> r25c7 = 24
hidden-single-in-a-block ==> r25c10 = 13
hidden-single-in-a-block ==> r25c6 = 23
naked-single ==> r5c6 = 24
naked-single ==> r5c10 = 23
hidden-single-in-a-block ==> r16c7 = 23
hidden-single-in-a-column ==> r15c16 = 23
hidden-single-in-a-column ==> r19c10 = 24
hidden-single-in-a-row ==> r7c11 = 18
hidden-single-in-a-column ==> r2c13 = 18
hidden-single-in-a-block ==> r8c16 = 12
hidden-single-in-a-block ==> r2c18 = 12
hidden-single-in-a-block ==> r8c17 = 18
hidden-single-in-a-block ==> r9c17 = 15
hidden-single-in-a-row ==> r19c18 = 18
hidden-single-in-a-block ==> r4c16 = 18
hidden-single-in-a-block ==> r13c19 = 18
naked-single ==> r13c12 = 1
naked-single ==> r15c12 = 18
hidden-single-in-a-row ==> r16c10 = 18
hidden-single-in-a-block ==> r1c7 = 18
hidden-single-in-a-block ==> r16c6 = 11
hidden-single-in-a-block ==> r19c17 = 23
naked-single ==> r7c17 = 24
naked-single ==> r7c18 = 23
hidden-single-in-a-column ==> r15c18 = 24
whip[1]: r15n7{c5 .} ==> r13c3 ≠ 7, r13c5 ≠ 7
whip[1]: b9n25{r10c20 .} ==> r10c7 ≠ 25, r10c10 ≠ 25, r10c13 ≠ 25
hidden-single-in-a-column ==> r8c13 = 25
whip[1]: b22n21{r21c10 .} ==> r21c2 ≠ 21, r21c4 ≠ 21, r21c13 ≠ 21, r21c14 ≠ 21, r21c19 ≠ 21, r21c25 ≠ 21
whip[1]: b23n21{r25c14 .} ==> r25c2 ≠ 21, r25c3 ≠ 21, r25c4 ≠ 21, r25c5 ≠ 21, r25c19 ≠ 21, r25c25 ≠ 21
whip[1]: b24n21{r23c20 .} ==> r23c4 ≠ 21, r23c23 ≠ 21, r23c25 ≠ 21
whip[1]: b21n21{r24c4 .} ==> r7c4 ≠ 21, r10c4 ≠ 21, r15c4 ≠ 21, r16c4 ≠ 21, r18c4 ≠ 21, r19c4 ≠ 21
whip[1]: b16n21{r20c2 .} ==> r7c2 ≠ 21, r8c2 ≠ 21, r15c2 ≠ 21
hidden-single-in-a-block ==> r6c5 = 21
whip[1]: b6n7{r10c1 .} ==> r4c1 ≠ 7, r15c1 ≠ 7
whip[1]: b10n21{r10c21 .} ==> r1c21 ≠ 21, r24c21 ≠ 21
hidden-pairs-in-a-block: b12{r15c7 r15c10}{n1 n11} ==> r15c10 ≠ 22, r15c10 ≠ 16, r15c10 ≠ 10, r15c10 ≠ 2, r15c7 ≠ 22, r15c7 ≠ 16, r15c7 ≠ 13, r15c7 ≠ 10, r15c7 ≠ 2
hidden-single-in-a-block ==> r11c7 = 13
hidden-single-in-a-block ==> r15c3 = 13
hidden-single-in-a-block ==> r15c5 = 7
hidden-single-in-a-block ==> r13c3 = 21
naked-single ==> r13c24 = 25
naked-single ==> r15c24 = 21
hidden-single-in-a-block ==> r15c17 = 25
hidden-single-in-a-block ==> r13c5 = 15
whip[1]: b14n10{r11c20 .} ==> r11c3 ≠ 10, r11c5 ≠ 10, r11c6 ≠ 10, r11c10 ≠ 10
whip[1]: b12n10{r15c9 .} ==> r15c1 ≠ 10, r15c2 ≠ 10, r15c4 ≠ 10
whip[1]: b11n10{r14c5 .} ==> r5c5 ≠ 10, r25c5 ≠ 10
naked-single ==> r5c5 = 2
whip[1]: b3n2{r2c15 .} ==> r2c9 ≠ 2
whip[1]: b19n25{r18c18 .} ==> r10c18 ≠ 25, r23c18 ≠ 25
naked-pairs-in-a-column: c5{r11 r25}{n16 n22} ==> r14c5 ≠ 22, r12c5 ≠ 22
hidden-pairs-in-a-block: b24{r23c19 r23c20}{n13 n25} ==> r23c20 ≠ 22, r23c20 ≠ 21, r23c20 ≠ 16, r23c20 ≠ 10, r23c20 ≠ 2, r23c19 ≠ 22, r23c19 ≠ 21, r23c19 ≠ 16, r23c19 ≠ 10, r23c19 ≠ 2
hidden-pairs-in-a-column: c3{n2 n22}{r11 r25} ==> r25c3 ≠ 16, r25c3 ≠ 15, r25c3 ≠ 10, r11c3 ≠ 16
whip[1]: c3n16{r4 .} ==> r4c1 ≠ 16, r4c2 ≠ 16, r4c4 ≠ 16
whip[1]: c3n10{r5 .} ==> r4c1 ≠ 10, r4c2 ≠ 10, r4c4 ≠ 10
whip[1]: c3n15{r5 .} ==> r4c1 ≠ 15, r4c2 ≠ 15, r4c4 ≠ 15
hidden-pairs-in-a-block: b1{r2c3 r4c3}{n16 n25} ==> r4c3 ≠ 15, r4c3 ≠ 10, r4c3 ≠ 7, r2c3 ≠ 10, r2c3 ≠ 7
hidden-pairs-in-a-column: c14{n12 n18}{r17 r18} ==> r18c14 ≠ 25, r18c14 ≠ 22, r18c14 ≠ 10, r18c14 ≠ 4, r18c14 ≠ 2, r17c14 ≠ 22, r17c14 ≠ 16, r17c14 ≠ 10, r17c14 ≠ 4, r17c14 ≠ 2
hidden-single-in-a-column ==> r2c14 = 25
naked-single ==> r2c3 = 16
naked-single ==> r4c3 = 25
hidden-pairs-in-a-column: c25{n9 n14}{r21 r25} ==> r25c25 ≠ 22, r25c25 ≠ 15, r25c25 ≠ 10, r25c25 ≠ 4, r25c25 ≠ 2, r21c25 ≠ 22, r21c25 ≠ 15, r21c25 ≠ 10, r21c25 ≠ 4, r21c25 ≠ 2
x-wing-in-columns: n22{c3 c5}{r11 r25} ==> r25c19 ≠ 22, r25c14 ≠ 22, r25c13 ≠ 22, r25c11 ≠ 22, r25c8 ≠ 22, r25c4 ≠ 22, r25c1 ≠ 22, r11c20 ≠ 22, r11c19 ≠ 22, r11c10 ≠ 22, r11c6 ≠ 22
whip[1]: r11n22{c5 .} ==> r15c1 ≠ 22, r15c4 ≠ 22
whip[1]: r15n22{c8 .} ==> r13c7 ≠ 22
whip[1]: r25n22{c5 .} ==> r21c1 ≠ 22, r21c4 ≠ 22, r22c4 ≠ 22, r23c4 ≠ 22, r24c4 ≠ 22
Entering_level_BC2_with_<Fact-518558>
Entering_level_W2_with_<Fact-519334>
whip[2]: b4n15{r5c19 r4c18} - b3n15{r4c11 .} ==> r5c3 ≠ 15
whip[2]: b3n4{r5c14 r2c15} - b4n4{r2c17 .} ==> r5c9 ≠ 4
whip[2]: c9n4{r23 r2} - c8n4{r3 .} ==> r21c10 ≠ 4, r21c6 ≠ 4, r21c7 ≠ 4
whip[2]: c14n12{r17 r18} - b17n12{r18c7 .} ==> r17c2 ≠ 12, r17c4 ≠ 12, r17c22 ≠ 12, r17c23 ≠ 12, r17c25 ≠ 12
whip[2]: c14n12{r18 r17} - b17n12{r17c7 .} ==> r18c2 ≠ 12, r18c4 ≠ 12, r18c22 ≠ 12, r18c23 ≠ 12, r18c25 ≠ 12
whip[2]: c9n15{r23 r24} - b25n15{r24c21 .} ==> r23c4 ≠ 15, r23c12 ≠ 15
whip[2]: c9n15{r24 r23} - b25n15{r23c23 .} ==> r24c4 ≠ 15, r24c12 ≠ 15
hidden-single-in-a-column ==> r4c12 = 15
hidden-single-in-a-block ==> r5c19 = 15
whip[2]: b4n4{r2c19 r5c20} - b3n4{r5c13 .} ==> r2c9 ≠ 4
whip[1]: c9n4{r23 .} ==> r21c8 ≠ 4, r22c8 ≠ 4, r23c8 ≠ 4, r25c8 ≠ 4
hidden-single-in-a-column ==> r3c8 = 4
whip[1]: c8n7{r23 .} ==> r22c9 ≠ 7, r23c9 ≠ 7, r24c9 ≠ 7
whip[1]: c9n7{r5 .} ==> r1c10 ≠ 7, r3c7 ≠ 7, r3c10 ≠ 7
whip[2]: b22n4{r22c9 r23c9} - b25n4{r23c23 .} ==> r22c12 ≠ 4, r22c4 ≠ 4
whip[2]: b22n4{r23c9 r22c9} - b25n4{r22c22 .} ==> r23c12 ≠ 4, r23c4 ≠ 4
hidden-single-in-a-column ==> r19c12 = 4
hidden-single-in-a-column ==> r2c15 = 4
hidden-single-in-a-block ==> r2c11 = 2
hidden-single-in-a-block ==> r5c20 = 4
hidden-single-in-a-column ==> r8c24 = 4
hidden-single-in-a-column ==> r1c21 = 4
whip[1]: c12n2{r24 .} ==> r21c13 ≠ 2, r21c14 ≠ 2, r25c13 ≠ 2, r25c14 ≠ 2
whip[1]: c12n10{r24 .} ==> r21c13 ≠ 10, r21c14 ≠ 10, r25c11 ≠ 10, r25c13 ≠ 10, r25c14 ≠ 10
whip[1]: c12n22{r24 .} ==> r21c13 ≠ 22, r21c14 ≠ 22
naked-pairs-in-a-block: b18{r16c15 r19c15}{n2 n10} ==> r20c14 ≠ 10, r20c14 ≠ 2, r19c11 ≠ 10, r16c11 ≠ 10
whip[1]: b18n10{r19c15 .} ==> r4c15 ≠ 10, r7c15 ≠ 10, r12c15 ≠ 10, r14c15 ≠ 10
whip[1]: b18n2{r19c15 .} ==> r7c15 ≠ 2, r12c15 ≠ 2, r14c15 ≠ 2
naked-pairs-in-a-row: r19{c15 c24}{n2 n10} ==> r19c23 ≠ 10, r19c23 ≠ 2, r19c22 ≠ 10, r19c22 ≠ 2, r19c6 ≠ 10, r19c6 ≠ 2, r19c4 ≠ 10, r19c4 ≠ 2, r19c2 ≠ 10, r19c2 ≠ 2
whip[2]: c8n2{r25 r15} - c9n2{r15 .} ==> r21c10 ≠ 2, r21c6 ≠ 2, r21c7 ≠ 2
Entering_level_S3_with_<Fact-521295>
hidden-triplets-in-a-row: r23{n1 n4 n15}{c25 c23 c9} ==> r23c25 ≠ 22, r23c25 ≠ 10, r23c25 ≠ 7, r23c25 ≠ 2, r23c23 ≠ 16, r23c23 ≠ 10, r23c23 ≠ 7, r23c23 ≠ 2, r23c9 ≠ 10, r23c9 ≠ 2
hidden-triplets-in-a-row: r21{n11 n21 n25}{c10 c7 c6} ==> r21c10 ≠ 22, r21c10 ≠ 16, r21c10 ≠ 10, r21c7 ≠ 22, r21c7 ≠ 16, r21c7 ≠ 10, r21c6 ≠ 22, r21c6 ≠ 16, r21c6 ≠ 10
whip[1]: b22n16{r25c8 .} ==> r15c8 ≠ 16
whip[1]: b22n22{r23c8 .} ==> r15c8 ≠ 22
hidden-single-in-a-block ==> r15c6 = 22
naked-single ==> r19c6 = 21
naked-single ==> r21c6 = 25
hidden-single-in-a-block ==> r1c10 = 25
hidden-single-in-a-block ==> r7c7 = 25
whip[1]: r15n16{c4 .} ==> r11c5 ≠ 16
naked-single ==> r11c5 = 22
naked-single ==> r11c3 = 2
naked-single ==> r11c20 = 10
naked-single ==> r11c19 = 4
naked-single ==> r13c17 = 22
naked-single ==> r2c17 = 10
naked-single ==> r23c17 = 16
naked-single ==> r16c17 = 4
naked-single ==> r25c3 = 22
naked-single ==> r25c5 = 16
hidden-single-in-a-block ==> r13c7 = 4
hidden-single-in-a-column ==> r18c6 = 4
whip[1]: r24n16{c23 .} ==> r22c22 ≠ 16, r22c23 ≠ 16
hidden-single-in-a-row ==> r22c8 = 16
hidden-single-in-a-block ==> r23c8 = 7
hidden-single-in-a-block ==> r21c8 = 22
hidden-single-in-a-block ==> r23c18 = 22
hidden-single-in-a-block ==> r23c16 = 21
naked-single ==> r2c16 = 7
naked-single ==> r13c16 = 2
naked-single ==> r13c18 = 7
naked-single ==> r16c16 = 10
naked-single ==> r16c15 = 2
naked-single ==> r19c15 = 10
naked-single ==> r19c24 = 2
whip[1]: c18n10{r10 .} ==> r6c19 ≠ 10, r10c19 ≠ 10
whip[1]: b19n7{r17c20 .} ==> r17c2 ≠ 7, r17c7 ≠ 7, r17c10 ≠ 7, r17c22 ≠ 7, r17c23 ≠ 7, r17c25 ≠ 7
whip[1]: b17n7{r18c10 .} ==> r18c2 ≠ 7, r18c22 ≠ 7, r18c23 ≠ 7, r18c25 ≠ 7
whip[1]: b24n2{r25c19 .} ==> r6c19 ≠ 2, r10c19 ≠ 2, r17c19 ≠ 2, r20c19 ≠ 2
naked-single ==> r6c19 = 7
naked-single ==> r6c20 = 2
hidden-single-in-a-column ==> r17c20 = 7
hidden-single-in-a-block ==> r17c19 = 13
naked-single ==> r23c19 = 25
naked-single ==> r23c20 = 13
hidden-single-in-a-block ==> r10c20 = 25
whip[1]: b19n22{r20c20 .} ==> r20c1 ≠ 22, r20c7 ≠ 22, r20c14 ≠ 22
naked-single ==> r20c14 = 16
naked-single ==> r16c11 = 25
naked-single ==> r19c11 = 22
hidden-single-in-a-block ==> r18c18 = 25
hidden-single-in-a-column ==> r5c25 = 25
naked-single ==> r5c23 = 12
hidden-single-in-a-column ==> r10c25 = 12
naked-single ==> r10c22 = 11
hidden-single-in-a-column ==> r8c11 = 16
hidden-single-in-a-column ==> r21c13 = 16
hidden-single-in-a-column ==> r10c19 = 16
naked-single ==> r9c20 = 21
naked-single ==> r20c20 = 22
naked-single ==> r4c20 = 16
naked-single ==> r4c18 = 21
naked-single ==> r2c19 = 22
naked-single ==> r2c9 = 21
naked-single ==> r4c15 = 7
naked-single ==> r4c11 = 10
naked-single ==> r4c9 = 22
naked-single ==> r12c11 = 15
naked-single ==> r12c15 = 3
naked-single ==> r12c5 = 10
naked-single ==> r14c5 = 3
naked-single ==> r14c15 = 21
naked-single ==> r7c15 = 15
naked-single ==> r14c11 = 7
naked-single ==> r25c11 = 21
naked-single ==> r16c18 = 16
naked-single ==> r16c4 = 12
naked-single ==> r19c4 = 16
naked-single ==> r19c2 = 7
naked-single ==> r16c2 = 21
naked-single ==> r16c22 = 7
naked-single ==> r19c23 = 25
naked-single ==> r19c22 = 12
naked-single ==> r20c19 = 21
hidden-single-in-a-block ==> r6c22 = 25
hidden-single-in-a-block ==> r7c2 = 12
hidden-single-in-a-block ==> r7c1 = 16
naked-single ==> r15c1 = 9
naked-single ==> r4c1 = 4
naked-single ==> r15c4 = 17
naked-single ==> r15c2 = 16
hidden-single-in-a-column ==> r4c4 = 9
naked-single ==> r4c2 = 3
hidden-single-in-a-block ==> r25c4 = 3
hidden-single-in-a-block ==> r21c4 = 14
naked-single ==> r21c25 = 9
naked-single ==> r21c15 = 17
naked-single ==> r25c15 = 9
naked-single ==> r25c25 = 14
hidden-single-in-a-block ==> r25c2 = 17
hidden-single-in-a-block ==> r21c2 = 4
naked-single ==> r21c14 = 15
hidden-single-in-a-block ==> r25c1 = 15
hidden-single-in-a-block ==> r17c4 = 4
hidden-single-in-a-block ==> r18c4 = 22
hidden-single-in-a-block ==> r10c1 = 22
hidden-single-in-a-block ==> r8c1 = 7
hidden-single-in-a-column ==> r10c4 = 15
hidden-single-in-a-block ==> r20c25 = 4
hidden-single-in-a-column ==> r20c2 = 9
hidden-single-in-a-row ==> r20c18 = 15
naked-single ==> r17c18 = 2
hidden-single-in-a-column ==> r11c6 = 15
naked-single ==> r11c10 = 16
hidden-single-in-a-block ==> r9c7 = 16
hidden-single-in-a-block ==> r3c6 = 16
hidden-single-in-a-column ==> r17c7 = 22
hidden-single-in-a-block ==> r5c9 = 7
naked-single ==> r5c3 = 10
whip[1]: b10n2{r10c21 .} ==> r24c21 ≠ 2
whip[1]: b10n7{r10c21 .} ==> r24c21 ≠ 7
naked-pairs-in-a-row: r12{c14 c25}{n2 n22} ==> r12c23 ≠ 2, r12c22 ≠ 22, r12c22 ≠ 2
naked-pairs-in-a-column: c4{r7 r23}{n2 n10} ==> r24c4 ≠ 10, r24c4 ≠ 2, r22c4 ≠ 10, r22c4 ≠ 2
naked-pairs-in-a-row: r7{c4 c6}{n2 n10} ==> r7c24 ≠ 10, r7c21 ≠ 2, r7c10 ≠ 10, r7c10 ≠ 2
naked-single ==> r7c24 = 22
naked-single ==> r14c24 = 15
naked-single ==> r24c24 = 10
hidden-single-in-a-block ==> r9c10 = 22
hidden-single-in-a-column ==> r24c21 = 22
naked-single ==> r24c12 = 2
naked-single ==> r23c12 = 10
naked-single ==> r22c12 = 22
naked-single ==> r23c4 = 2
naked-single ==> r7c4 = 10
naked-single ==> r7c6 = 2
naked-single ==> r1c6 = 10
naked-single ==> r8c2 = 2
naked-single ==> r21c1 = 10
naked-single ==> r20c1 = 2
naked-single ==> r20c7 = 10
naked-single ==> r17c10 = 12
naked-single ==> r3c10 = 2
naked-single ==> r3c7 = 12
naked-single ==> r18c10 = 7
naked-single ==> r7c10 = 21
naked-single ==> r7c21 = 7
naked-single ==> r9c21 = 2
naked-single ==> r10c21 = 21
naked-single ==> r8c21 = 15
naked-single ==> r6c23 = 10
naked-single ==> r6c13 = 4
naked-single ==> r6c10 = 15
naked-single ==> r25c13 = 7
naked-single ==> r9c13 = 10
naked-single ==> r8c14 = 21
naked-single ==> r5c14 = 22
naked-single ==> r5c13 = 21
naked-single ==> r12c14 = 2
naked-single ==> r12c25 = 22
naked-single ==> r14c22 = 2
naked-single ==> r14c13 = 22
naked-single ==> r14c14 = 10
naked-single ==> r9c14 = 7
naked-single ==> r9c18 = 4
naked-single ==> r10c18 = 10
naked-single ==> r10c10 = 4
naked-single ==> r10c13 = 2
naked-single ==> r25c14 = 4
naked-single ==> r8c7 = 1
naked-single ==> r8c10 = 10
naked-single ==> r15c7 = 11
naked-single ==> r15c10 = 1
naked-single ==> r21c7 = 21
naked-single ==> r10c7 = 7
naked-single ==> r21c10 = 11
naked-single ==> r18c7 = 2
naked-single ==> r17c14 = 18
naked-single ==> r18c14 = 12
naked-single ==> r21c19 = 2
naked-single ==> r25c19 = 10
naked-single ==> r25c8 = 2
naked-single ==> r15c8 = 10
naked-single ==> r15c9 = 2
naked-single ==> r24c9 = 15
naked-single ==> r23c9 = 4
naked-single ==> r22c9 = 10
hidden-single-in-a-block ==> r18c25 = 18
hidden-single-in-a-block ==> r3c22 = 22
hidden-single-in-a-block ==> r3c25 = 10
naked-single ==> r17c25 = 15
naked-single ==> r17c2 = 10
naked-single ==> r18c2 = 15
naked-single ==> r18c23 = 21
naked-single ==> r18c22 = 10
naked-single ==> r23c25 = 1
naked-single ==> r14c25 = 11
naked-single ==> r14c23 = 1
naked-single ==> r23c23 = 15
naked-single ==> r3c23 = 7
naked-single ==> r1c23 = 2
naked-single ==> r1c25 = 21
naked-single ==> r1c22 = 15
naked-single ==> r1c3 = 7
naked-single ==> r24c25 = 7
naked-single ==> r22c25 = 2
naked-single ==> r24c4 = 21
naked-single ==> r22c4 = 7
naked-single ==> r24c22 = 16
naked-single ==> r17c22 = 9
naked-single ==> r12c22 = 4
naked-single ==> r12c23 = 9
naked-single ==> r22c22 = 21
naked-single ==> r17c23 = 16
naked-single ==> r24c23 = 11
naked-single ==> r22c23 = 4
naked-single ==> r3c3 = 15
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = HT

01 22 07 24 08 10 18 03 14 25 23 16 06 17 12 13 11 05 09 19 04 15 02 20 21
14 19 16 20 17 13 15 11 21 09 02 03 18 25 04 07 10 12 22 23 01 06 05 24 08
21 23 15 18 11 16 12 04 20 02 14 24 19 05 13 25 01 06 08 17 09 22 07 03 10
04 03 25 09 12 05 06 08 22 17 10 15 01 20 07 18 02 21 24 16 11 14 23 13 19
05 06 10 13 02 24 19 01 07 23 09 11 21 22 08 14 20 03 15 04 16 17 12 18 25
17 14 18 01 21 12 09 13 11 15 20 23 04 03 24 22 19 08 07 02 05 25 10 06 16
16 12 19 10 04 02 25 14 05 21 18 08 13 11 15 09 24 23 20 06 07 01 03 22 17
07 02 09 08 23 03 01 06 17 10 16 05 25 21 22 12 18 13 14 11 15 19 24 04 20
03 20 11 06 25 08 16 19 24 22 17 12 10 07 14 05 15 04 01 21 02 13 18 09 23
22 05 24 15 13 20 07 23 18 04 01 06 02 09 19 03 17 10 16 25 21 11 08 14 12
20 01 02 05 22 15 13 21 12 16 11 25 17 19 23 06 08 09 04 10 18 24 14 07 03
06 24 14 25 10 07 08 18 23 05 15 13 12 02 03 01 21 11 19 20 17 04 09 16 22
19 08 21 11 15 14 04 17 09 03 24 01 20 06 16 02 22 07 18 12 10 23 13 25 05
12 18 04 23 03 19 20 24 25 06 07 09 22 10 21 16 13 14 17 05 08 02 01 15 11
09 16 13 17 07 22 11 10 02 01 04 18 14 08 05 23 25 24 03 15 12 20 19 21 06
08 21 03 12 14 11 23 15 19 18 25 17 09 13 02 10 04 16 06 01 20 07 22 05 24
25 10 23 04 24 17 22 20 01 12 19 21 05 18 06 08 03 02 13 07 14 09 16 11 15
13 15 01 22 06 04 02 05 16 07 03 14 23 12 20 17 09 25 11 24 19 10 21 08 18
11 07 17 16 20 21 03 09 08 24 22 04 15 01 10 19 23 18 05 14 06 12 25 02 13
02 09 05 19 18 06 10 25 13 14 08 07 24 16 11 20 12 15 21 22 23 03 17 01 04
10 04 12 14 01 25 21 22 03 11 05 20 16 15 17 24 07 19 02 18 13 08 06 23 09
18 13 20 07 09 01 05 16 10 08 06 22 11 23 25 15 14 17 12 03 24 21 04 19 02
23 11 06 02 19 09 14 07 04 20 12 10 08 24 18 21 16 22 25 13 03 05 15 17 01
24 25 08 21 05 18 17 12 15 19 13 02 03 14 01 04 06 20 23 09 22 16 11 10 07
15 17 22 03 16 23 24 02 06 13 21 19 07 04 09 11 05 01 10 08 25 18 20 12 14
Puzzle (1 22 . 24 . . . . . . 23 16 6 . 12 13 11 . . . . . . . . . . . . . . 15 . . 9 . . . . . . . . . . . 6 5 . 8 21 23 . 18 11 . . . . . . 24 . . 13 25 1 . . . . . . . . . . . . . 5 6 8 . 17 . . . 20 . . 2 . . . . 14 . . 19 . . . 13 . . 19 . . . . 11 . . . . . . . . . 17 . . . . . . 1 . 12 . 13 11 . . 23 . . 24 22 . . . . . . . . 16 . . 19 . 4 . . . . . . . . . . . . . 20 6 . . 3 . 17 . . 9 . . . . . . . . . . . 22 . . . 14 . . 19 . . 20 . . . . . . . . 24 . . 12 . . . . . . . . . . . . . . . . . . . . 23 18 . 1 . . . . . . . . . . . 8 . . . 1 . . . . . 21 12 . . . 17 19 . . . . . . . . 14 . 3 . 24 . 25 . 7 . 18 23 . . 13 . . . 1 21 11 . . . . . 16 . . . . 11 . . . . . . . . 20 6 . . . . . . 10 . . . 5 12 18 . 23 . . . 24 25 . . . . . . 16 13 . . . . . . . . . . . . . . . . . . 4 . 14 8 5 . . . 3 15 . 20 19 . 6 8 . 3 . 14 . . . . . . . 9 . . . . . 6 . . . 22 . . . . . . . . . . 1 . . 21 . . . . . . . . . . . 11 . . . . . 6 . . . 16 . . . . . . . . . . . . . . . . . . 17 . 20 . 3 . . . . . 15 . . . . . 5 14 6 . . . . . . 5 . . . . 25 13 . . 7 . . 11 . 12 . . . 23 . . 1 . . . . . . . . . . . . . . . . 24 7 . . 18 13 . . 23 . . . 20 . 9 . 5 . . 8 6 . . . . 15 . . . . 24 . . . . . . 6 . 19 9 14 . . 20 . . 8 . . . . . . . . . . . . . . 8 . 5 . 17 . . 19 . . 3 14 . 4 . . . . . . . . . . . . . . . . . . . . . . . . 11 . 1 . . 25 18 . 12 .) :
init-time = 45.56s, solve-time = 43.76s, total-time = 1m 29.32s
nb-facts=<Fact-521900>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

