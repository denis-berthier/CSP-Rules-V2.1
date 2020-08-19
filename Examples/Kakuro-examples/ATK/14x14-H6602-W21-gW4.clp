

(solve 14

21 . . . . . 42 . . . . . . . / 
31 . . . . . 29 . . . . . . . / 
22 . . . . . . 12 . . 23 . . . / 
3 . . 34 . . . . . 14 . . . B / 
B 29 . . . . 20 . . . . . B B / 
45 . . . . . . . . . 24 . . . / 
24 . . . 3 . . 16 . . 10 . . . / 
14 . . . 45 . . . . . . . . . / 
B B 18 . . . . . 29 . . . . B / 
B 6 . . . 31 . . . . . 10 . . / 
17 . . . 7 . . 32 . . . . . . / 
39 . . . . . . . 35 . . . . . / 
32 . . . . . . . 16 . . . . . // 


11 . . . . 11 . . . B 9 . . . / 
43 . . . . . . . . 25 . . . . / 
24 . . . 45 . . . . . . . . . / 
21 . . . . . . B 8 . . 4 . . / 
45 . . . . . . . . . 22 . . . / 
B B 12 . . 38 . . . . . . . . / 
12 . . 15 . . . 23 . . . 3 . . / 
37 . . . . . . . . 16 . . B B / 
9 . . . 45 . . . . . . . . . / 
6 . . 17 . . B 38 . . . . . . / 
45 . . . . . . . . . 16 . . . / 
28 . . . . 37 . . . . . . . . / 
24 . . . B 22 . . . 22 . . . . //
)


This puzzle illustrates a large difference between two ratings: W=12 and gW=4

***********************************************************************************************
***  KakuRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
       Uppermost (black) row and leftmost (black) column have index 1
INITIALISATION
horizontal magic sector 42-in-7, starting in r2c7, unique combination: 3456789
horizontal pseudo magic sector 31-in-5, starting in r3c1, for digits: (9)
horizontal magic sector 29-in-7, starting in r3c7, unique combination: 1234568
horizontal magic sector 22-in-6, starting in r4c1, unique combination: 123457
horizontal magic sector 23-in-3, starting in r4c11, unique combination: 689
horizontal magic sector 3-in-2, starting in r5c1, unique combination: 12
horizontal magic sector 34-in-5, starting in r5c4, unique combination: 46789
horizontal magic sector 29-in-4, starting in r6c2, unique combination: 5789
horizontal magic sector 45-in-9, starting in r7c1, unique combination: 123456789
horizontal magic sector 24-in-3, starting in r7c11, unique combination: 789
horizontal magic sector 24-in-3, starting in r8c1, unique combination: 789
horizontal magic sector 3-in-2, starting in r8c5, unique combination: 12
horizontal magic sector 16-in-2, starting in r8c8, unique combination: 79
horizontal magic sector 45-in-9, starting in r9c5, unique combination: 123456789
horizontal pseudo magic sector 18-in-5, starting in r10c3, for digits: (1 2)
horizontal magic sector 29-in-4, starting in r10c9, unique combination: 5789
horizontal magic sector 6-in-3, starting in r11c2, unique combination: 123
horizontal pseudo magic sector 31-in-5, starting in r11c6, for digits: (9)
horizontal pseudo magic sector 39-in-7, starting in r13c1, for digits: (3 6 7 8 9)
horizontal magic sector 35-in-5, starting in r13c9, unique combination: 56789
horizontal pseudo magic sector 32-in-7, starting in r14c1, for digits: (1 2 3)
horizontal magic sector 16-in-5, starting in r14c9, unique combination: 12346
vertical magic sector 11-in-4, starting in r1c2, unique combination: 1235
vertical magic sector 43-in-8, starting in r1c3, unique combination: 13456789
vertical magic sector 24-in-3, starting in r1c4, unique combination: 789
vertical magic sector 45-in-9, starting in r5c4, unique combination: 123456789
vertical magic sector 21-in-6, starting in r1c5, unique combination: 123456
vertical magic sector 4-in-2, starting in r12c5, unique combination: 13
vertical magic sector 45-in-9, starting in r1c6, unique combination: 123456789
vertical pseudo magic sector 22-in-3, starting in r11c6, for digits: (9)
vertical magic sector 38-in-8, starting in r6c7, unique combination: 12345689
vertical magic sector 23-in-3, starting in r8c8, unique combination: 689
vertical magic sector 3-in-2, starting in r12c8, unique combination: 12
vertical magic sector 37-in-8, starting in r1c9, unique combination: 12345679
vertical magic sector 16-in-2, starting in r10c9, unique combination: 79
vertical magic sector 45-in-9, starting in r5c10, unique combination: 123456789
vertical magic sector 17-in-2, starting in r4c11, unique combination: 89
vertical magic sector 38-in-6, starting in r8c11, unique combination: 356789
vertical magic sector 45-in-9, starting in r1c12, unique combination: 123456789
vertical pseudo magic sector 28-in-4, starting in r1c13, for digits: (8 9)
vertical magic sector 37-in-8, starting in r6c13, unique combination: 12345679
vertical magic sector 24-in-3, starting in r1c14, unique combination: 789
vertical pseudo magic sector 22-in-3, starting in r6c14, for digits: (9)
entering BRT
w[1]-ctr-to-horiz-sector  ==> r14c14 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c14 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c14 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r14c13 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c13 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c13 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r14c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c12 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c12 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r14c11 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c11 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c11 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c11 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r14c10 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c10 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c10 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c10 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r13c14 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c14 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r13c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r13c12 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r13c11 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c11 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r13c10 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c10 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c8 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r10c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r10c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r10c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r10c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c14 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c14 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c13 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c13 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c12 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c8 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c8 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c8 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c8 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c7 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c7 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c7 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c7 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c6 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c6 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c6 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c5 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c5 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c5 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c5 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c7 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c6 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r3c14 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c14 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c13 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c13 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c11 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c11 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c10 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c10 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c9 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c9 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c8 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c8 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r2c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r14c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r14c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 9
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r14c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 6
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 5
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 2
w[1]-ctr-to-verti-sector  ==> r14c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r14c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 9
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r13c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r13c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r13c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 6
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 5
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 2
w[1]-ctr-to-verti-sector  ==> r13c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r13c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r12c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r12c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r12c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 6
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 5
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 4
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 2
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 1
w[1]-ctr-to-verti-sector  ==> r12c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r12c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r12c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r12c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r12c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r12c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r11c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r11c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r11c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r11c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 6
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 5
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 4
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 2
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 2
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 2
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r10c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r9c14 ≠ 2
w[1]-ctr-to-verti-sector  ==> r9c14 ≠ 1
w[1]-ctr-to-verti-sector  ==> r9c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r9c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r9c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r9c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 2
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r9c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r9c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r9c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r8c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r8c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r8c14 ≠ 2
w[1]-ctr-to-verti-sector  ==> r8c14 ≠ 1
w[1]-ctr-to-verti-sector  ==> r8c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r7c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r7c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r7c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r7c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r7c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r7c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r7c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 7
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 5
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 3
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r6c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r6c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r6c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r6c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r5c13 ≠ 3
w[1]-ctr-to-verti-sector  ==> r5c13 ≠ 2
w[1]-ctr-to-verti-sector  ==> r5c13 ≠ 1
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 7
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 5
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 3
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r5c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r5c7 ≠ 6
w[1]-ctr-to-verti-sector  ==> r5c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r5c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r5c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r5c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r4c14 ≠ 6
w[1]-ctr-to-verti-sector  ==> r4c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r4c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r4c10 ≠ 7
w[1]-ctr-to-verti-sector  ==> r4c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r4c7 ≠ 2
w[1]-ctr-to-verti-sector  ==> r4c7 ≠ 1
w[1]-ctr-to-verti-sector  ==> r4c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 2
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 1
w[1]-ctr-to-verti-sector  ==> r4c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c13 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c13 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c13 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r3c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 5
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c13 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 9
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r2c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c10 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r2c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 2
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 1
w[1]-ctr-to-verti-sector  ==> r2c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 4
horizontal-magic-sector: hr14c9 = 12346
horizontal-magic-sector: hr13c9 = 56789
horizontal-magic-sector: hr11c2 = 123
horizontal-magic-sector: hr10c9 = 5789
horizontal-magic-sector: hr9c5 = 123456789
horizontal-magic-sector: hr8c8 = 79
horizontal-magic-sector: hr8c5 = 12
horizontal-magic-sector: hr8c1 = 789
horizontal-magic-sector: hr7c11 = 789
horizontal-magic-sector: hr7c1 = 123456789
horizontal-magic-sector: hr6c2 = 5789
horizontal-magic-sector: hr5c4 = 46789
horizontal-magic-sector: hr5c1 = 12
horizontal-magic-sector: hr4c11 = 689
horizontal-magic-sector: hr4c1 = 123457
horizontal-magic-sector: hr3c7 = 1234568
horizontal-magic-sector: hr2c7 = 3456789
vertical-magic-sector: vr1c14 = 789
vertical-magic-sector: vr6c13 = 12345679
vertical-magic-sector: vr1c12 = 123456789
vertical-magic-sector: vr8c11 = 356789
vertical-magic-sector: vr4c11 = 89
vertical-magic-sector: vr5c10 = 123456789
vertical-magic-sector: vr10c9 = 79
vertical-magic-sector: vr1c9 = 12345679
vertical-magic-sector: vr12c8 = 12
vertical-magic-sector: vr8c8 = 689
vertical-magic-sector: vr6c7 = 12345689
vertical-magic-sector: vr1c6 = 123456789
vertical-magic-sector: vr12c5 = 13
vertical-magic-sector: vr1c5 = 123456
vertical-magic-sector: vr5c4 = 123456789
vertical-magic-sector: vr1c4 = 789
vertical-magic-sector: vr1c3 = 13456789
vertical-magic-sector: vr1c2 = 1235

RESOLUTION
naked-single ==> r6c5 = 5
naked-single ==> r5c3 = 1
naked-single ==> r5c2 = 2
naked-single ==> r4c4 = 7
naked-single ==> r3c14 = 8
naked-single ==> r4c14 = 9
naked-single ==> r2c14 = 7
w[1]-cell-to-horiz-ctr  ==> hr2c1 ≠ 23457
w[1]-cell-to-horiz-ctr  ==> hr2c1 ≠ 13467
w[1]-cell-to-horiz-ctr  ==> hr2c1 ≠ 12567
w[1]-cell-to-horiz-ctr  ==> hr5c10 ≠ 167
w[1]-cell-to-horiz-ctr  ==> hr5c10 ≠ 257
w[1]-cell-to-horiz-ctr  ==> hr5c10 ≠ 347
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r5c13 ≠ 7
w[1]-cell-to-horiz-ctr  ==> hr5c10 ≠ 356
w[1]-ctr-to-horiz-sector  ==> r5c13 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr6c7 ≠ 12467
w[1]-cell-to-horiz-ctr  ==> hr6c7 ≠ 13457
w[1]-ctr-to-horiz-sector  ==> r6c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c10 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c9 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c8 ≠ 7
w[1]-cell-to-horiz-ctr  ==> hr6c7 ≠ 23456
w[1]-cell-to-horiz-ctr  ==> hr10c3 ≠ 12357
w[1]-ctr-to-horiz-sector  ==> r10c4 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r10c5 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r10c6 ≠ 7
w[1]-cell-to-horiz-ctr  ==> hr12c5 ≠ 34
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 4
w[1]-cell-to-verti-ctr  ==> vr1c10 ≠ 126
w[1]-ctr-to-verti-sector  ==> r2c10 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c10 ≠ 6
w[1]-cell-to-verti-ctr  ==> vr6c2 ≠ 146
w[1]-cell-to-verti-ctr  ==> vr6c2 ≠ 236
w[1]-ctr-to-verti-sector  ==> r9c2 ≠ 6
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 6
w[1]-cell-to-verti-ctr  ==> vr6c2 ≠ 245
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 5
w[1]-ctr-to-verti-sector  ==> r9c2 ≠ 5
w[1]-ctr-to-verti-sector  ==> r9c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 4
w[1]-cell-to-verti-ctr  ==> vr10c3 ≠ 4579
w[1]-cell-to-verti-ctr  ==> vr10c3 ≠ 4678
w[1]-ctr-to-verti-sector  ==> r14c3 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c3 ≠ 4
w[1]-ctr-to-verti-sector  ==> r12c3 ≠ 4
horiz-sector-to-ctr  ==> hr4c8 ≠ 48
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 4
verti-sector-to-ctr  ==> vr9c5 ≠ 17
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c5 ≠ 1
verti-sector-to-ctr  ==> vr1c13 ≠ 4789
naked-single ==> vr1c13 = 5689
verti-sector-to-ctr  ==> vr1c8 ≠ 57
w[1]-ctr-to-verti-sector  ==> r2c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 5
Starting_init_links_with_<Fact-23070>
847 candidates, 4086 csp-links and 5858 links. Density = 1.64%
starting non trivial part of solution
Entering_level_W1_with_<Fact-42961>
Entering_relation_bivalue_with_<Fact-42962>
Entering_level_S2_with_<Fact-43087>
x-wing-in-verti-sectors: n1{c5 c8}{r13 r14} ==> r14c7 ≠ 1, r14c4 ≠ 1, r14c3 ≠ 1, r14c2 ≠ 1, r13c7 ≠ 1, r13c4 ≠ 1, r13c3 ≠ 1, r13c2 ≠ 1
Entering_level_BC2_with_<Fact-43112>
biv-chain[2]: c5n1{r13 r14} - c8n1{r14 r13} ==> hr13c1 ≠ 2346789
naked-single ==> hr13c1 = 1356789
naked-single ==> r13c8 = 1
naked-single ==> r14c8 = 2
naked-single ==> r13c5 = 3
naked-single ==> r14c5 = 1
w[1]-cell-to-verti-ctr  ==> vr11c2 ≠ 234
w[1]-ctr-to-verti-sector  ==> r12c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c2 ≠ 4
biv-chain[2]: r13c2{n6 n5} - vr11c2{n126 n135} ==> r12c2 ≠ 6, r14c2 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr12c1 ≠ 467
w[1]-cell-to-verti-ctr  ==> vr11c2 ≠ 126
naked-single ==> vr11c2 = 135
naked-single ==> r13c2 = 5
naked-single ==> r14c2 = 3
naked-single ==> r12c2 = 1
naked-single ==> hr12c1 = 179
biv-chain[2]: vr6c2{n128 n137} - r8c2{n8 n7} ==> r7c2 ≠ 7, r9c2 ≠ 7
biv-chain[2]: vr6c2{n137 n128} - r8c2{n7 n8} ==> r7c2 ≠ 8, r9c2 ≠ 8
biv-chain[2]: vr9c5{n26 n35} - r11c5{n2 n3} ==> r10c5 ≠ 3
biv-chain[2]: vr9c5{n35 n26} - r11c5{n3 n2} ==> r10c5 ≠ 2
w[1]-cell-to-horiz-ctr  ==> hr10c3 ≠ 12348
naked-single ==> hr10c3 = 12456
naked-single ==> r10c8 = 6
naked-single ==> r10c5 = 5
naked-single ==> vr9c5 = 35
naked-single ==> r11c5 = 3
w[1]-cell-to-verti-ctr  ==> vr10c3 ≠ 3589
w[1]-ctr-to-verti-sector  ==> r14c3 ≠ 5
w[1]-cell-to-verti-ctr  ==> vr10c3 ≠ 3679
biv-chain[2]: vr11c6{n589 n679} - r12c6{n5 n6} ==> r13c6 ≠ 6, r14c6 ≠ 6
biv-chain[2]: vr11c6{n679 n589} - r12c6{n6 n5} ==> r14c6 ≠ 5
biv-chain[2]: vr1c8{n39 n48} - r3c8{n3 n4} ==> r2c8 ≠ 4
biv-chain[2]: vr1c8{n48 n39} - r3c8{n4 n3} ==> r2c8 ≠ 3
biv-chain[2]: vr1c11{n15 n24} - r2c11{n5 n4} ==> r3c11 ≠ 4
biv-chain[2]: vr1c11{n24 n15} - r2c11{n4 n5} ==> r3c11 ≠ 5
biv-chain[2]: hr4c8{n39 n57} - r4c10{n3 n5} ==> r4c9 ≠ 5
biv-chain[2]: hr4c8{n57 n39} - r4c10{n5 n3} ==> r4c9 ≠ 3
naked-pairs-in-verti-sector: c9{r4 r8}{n7 n9} ==> r9c9 ≠ 9, r9c9 ≠ 7, r7c9 ≠ 9, r7c9 ≠ 7, r6c9 ≠ 9, r5c9 ≠ 9, r5c9 ≠ 7, r2c9 ≠ 9
naked-pairs-in-horiz-sector: r5{c5 c9}{n4 n6} ==> r5c8 ≠ 6, r5c8 ≠ 4, r5c7 ≠ 4, r5c6 ≠ 6, r5c6 ≠ 4
w[1]-cell-to-verti-ctr  ==> vr4c8 ≠ 456
biv-chain[2]: hr12c5{n16 n25} - r12c6{n6 n5} ==> r12c7 ≠ 5
biv-chain[2]: hr12c5{n25 n16} - r12c6{n5 n6} ==> r12c7 ≠ 6
naked-pairs-in-verti-sector: c7{r8 r12}{n1 n2} ==> r11c7 ≠ 2, r11c7 ≠ 1, r10c7 ≠ 2, r10c7 ≠ 1, r9c7 ≠ 2, r9c7 ≠ 1, r7c7 ≠ 2, r7c7 ≠ 1
naked-single ==> r10c7 = 4
naked-pairs-in-verti-sector: c6{r8 r10}{n1 n2} ==> r9c6 ≠ 2, r9c6 ≠ 1, r7c6 ≠ 2, r7c6 ≠ 1, r4c6 ≠ 2, r4c6 ≠ 1, r3c6 ≠ 2, r3c6 ≠ 1, r2c6 ≠ 2, r2c6 ≠ 1
hidden-single-in-magic-horiz-sector ==> r4c5 = 2
hidden-single-in-magic-horiz-sector ==> r4c2 = 1
w[1]-cell-to-horiz-ctr  ==> hr3c1 ≠ 16789
w[1]-ctr-to-horiz-sector  ==> r3c5 ≠ 1
w[1]-cell-to-horiz-ctr  ==> hr2c1 ≠ 12468
w[1]-cell-to-horiz-ctr  ==> hr3c1 ≠ 25789
horiz-sector-to-ctr  ==> hr2c1 ≠ 12459
horiz-sector-to-ctr  ==> hr2c1 ≠ 12378
w[1]-ctr-to-horiz-sector  ==> r2c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r2c6 ≠ 7
horiz-sector-to-ctr  ==> hr2c1 ≠ 12369
naked-single ==> hr2c1 = 13458
naked-single ==> r2c4 = 8
naked-single ==> r3c4 = 9
naked-pairs-in-verti-sector: c4{r10 r11}{n1 n2} ==> r9c4 ≠ 2, r9c4 ≠ 1, r7c4 ≠ 2, r7c4 ≠ 1
Entering_level_W2_with_<Fact-43581>
whip[2]: vr6c14{n679 n589} - r8c14{n6 .} ==> r9c14 ≠ 5
whip[2]: r5c11{n8 n9} - r5c13{n9 .} ==> hr5c10 ≠ 149, hr5c10 ≠ 239
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c13 ≠ 9
hidden-single-for-magic-digit-in-verti-sector ==> r2c13 = 9
naked-single ==> r2c8 = 8
naked-single ==> vr1c8 = 48
naked-single ==> r3c8 = 4
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c11 ≠ 9
naked-single ==> r5c11 = 8
naked-single ==> r6c11 = 9
naked-single ==> r5c13 = 5
naked-single ==> r3c13 = 6
naked-single ==> r4c13 = 8
naked-single ==> r4c12 = 6
naked-single ==> hr5c10 = 158
naked-single ==> r5c12 = 1
naked-single ==> hr6c7 = 12359
hidden-single-in-magic-horiz-sector ==> r2c9 = 6
naked-single ==> r5c9 = 4
naked-single ==> r5c5 = 6
whip[2]: hr8c11{n235 n127} - r8c14{n5 .} ==> r8c12 ≠ 7, r8c13 ≠ 7
whip[2]: hr8c11{n235 n136} - r8c14{n5 .} ==> r8c13 ≠ 6
whip[2]: hr11c12{n46 n28} - r11c13{n1 .} ==> r11c14 ≠ 2
Entering_level_S3_with_<Fact-44304>
naked-triplets-in-verti-sector: c4{r6 r8 r12}{n9 n8 n7} ==> r14c4 ≠ 9, r14c4 ≠ 8, r14c4 ≠ 7, r13c4 ≠ 9, r13c4 ≠ 8, r13c4 ≠ 7, r9c4 ≠ 9, r9c4 ≠ 8, r9c4 ≠ 7, r7c4 ≠ 9, r7c4 ≠ 8, r7c4 ≠ 7
naked-single ==> r13c4 = 6
w[1]-cell-to-horiz-ctr  ==> hr9c1 ≠ 167
naked-triplets-in-horiz-sector: r2{c2 c3 c6}{n5 n3 n4} ==> r2c5 ≠ 4, r2c5 ≠ 3
naked-single ==> r2c5 = 1
hidden-triplets-in-verti-sector: c12{n7 n8 n9}{r10 r9 r7} ==> r10c12 ≠ 5, r9c12 ≠ 5, r9c12 ≠ 4, r9c12 ≠ 3, r9c12 ≠ 2
Entering_level_BC3_with_<Fact-44603>
biv-chain[3]: r7n8{c12 c14} - c14n9{r7 r9} - r9c8{n9 n8} ==> r9c12 ≠ 8
biv-chain[3]: r9c12{n7 n9} - c14n9{r9 r7} - r7c13{n9 n7} ==> r9c13 ≠ 7, r7c12 ≠ 7
biv-chain[3]: c6n9{r14 r13} - r13n7{c6 c3} - r12c3{n7 n9} ==> r14c3 ≠ 9
Entering_level_W3_with_<Fact-45195>
whip[3]: r3c2{n5 n3} - r3c5{n3 n4} - hr3c1{n35689 .} ==> r3c6 ≠ 5
whip[3]: r3c2{n5 n3} - r3c5{n3 n4} - hr3c1{n35689 .} ==> r3c3 ≠ 5
whip[3]: r3c2{n3 n5} - hr3c1{n34789 n35689} - r3c5{n4 .} ==> r3c6 ≠ 3
whip[3]: r3c2{n3 n5} - hr3c1{n34789 n35689} - r3c5{n4 .} ==> r3c3 ≠ 3
whip[3]: r4c10{n5 n3} - r2c10{n3 n4} - vr1c10{n135 .} ==> r3c10 ≠ 5
whip[3]: r4c10{n3 n5} - r2c10{n5 n4} - vr1c10{n135 .} ==> r3c10 ≠ 3
naked-pairs-in-horiz-sector: r3{c10 c11}{n1 n2} ==> r3c12 ≠ 2, r3c9 ≠ 2, r3c9 ≠ 1
whip[3]: hr8c11{n235 n145} - r8c14{n7 n5} - r8c12{n5 .} ==> r8c13 ≠ 4
whip[3]: r3c5{n4 n3} - r3c2{n3 n5} - hr3c1{n34789 .} ==> r3c3 ≠ 4
whip[3]: r3c5{n4 n3} - r3c2{n3 n5} - hr3c1{n34789 .} ==> r3c6 ≠ 4
Entering_level_S4_with_<Fact-46329>
Entering_level_BC4_with_<Fact-46602>
Entering_level_W4_with_<Fact-47496>
whip[4]: c6n9{r14 r13} - r13n7{c6 c3} - r14c3{n7 n6} - vr10c3{n1789 .} ==> r14c6 ≠ 8
whip[4]: r13c7{n8 n9} - c6n9{r13 r14} - hr14c1{n1235678 n1234589} - r14c3{n6 .} ==> r14c7 ≠ 8
Entering_level_BC5_with_<Fact-48812>
Entering_level_W5_with_<Fact-50176>
whip[5]: r14c6{n9 n7} - r13n7{c6 c3} - vr10c3{n2689 n1789} - r14c3{n6 n8} - hr14c1{n1234679 .} ==> r14c7 ≠ 9
whip[3]: r14c7{n6 n5} - hr14c1{n1234679 n1235678} - r14c4{n4 .} ==> r14c3 ≠ 6
verti-sector-to-ctr  ==> vr10c3 ≠ 2689
naked-single ==> vr10c3 = 1789
naked-single ==> r11c3 = 1
naked-single ==> r11c4 = 2
naked-single ==> r10c4 = 1
naked-single ==> r10c6 = 2
naked-single ==> r8c6 = 1
naked-single ==> r8c7 = 2
naked-single ==> r12c7 = 1
naked-single ==> hr12c5 = 16
naked-single ==> r12c6 = 6
naked-single ==> vr11c6 = 679
Entering_level_BC6_with_<Fact-51666>
biv-chain[6]: r2n3{c12 c10} - r4c10{n3 n5} - vr1c10{n234 n135} - r3n2{c10 c11} - vr1c11{n15 n24} - r2c11{n5 n4} ==> r2c12 ≠ 4
hidden-single-in-magic-verti-sector ==> r8c12 = 4
naked-single ==> hr8c11 = 145
naked-single ==> r8c14 = 5
naked-single ==> r8c13 = 1
naked-single ==> vr6c14 = 589
hidden-single-in-magic-horiz-sector ==> r7c13 = 7
hidden-single-in-magic-verti-sector ==> r6c12 = 2
w[1]-cell-to-verti-ctr  ==> vr4c8 ≠ 249
w[1]-cell-to-verti-ctr  ==> vr4c8 ≠ 267
naked-pairs-in-horiz-sector: r9{c8 c14}{n8 n9} ==> r9c13 ≠ 9, r9c12 ≠ 9, r9c11 ≠ 9, r9c11 ≠ 8, r9c10 ≠ 9, r9c10 ≠ 8, r9c7 ≠ 9, r9c7 ≠ 8, r9c6 ≠ 9, r9c6 ≠ 8
naked-single ==> r9c12 = 7
whip[2]: vr4c8{n348 n357} - r5c8{n8 .} ==> r7c8 ≠ 7
whip[2]: vr4c8{n357 n159} - r5c8{n7 .} ==> r7c8 ≠ 9
whip[2]: hr11c12{n46 n37} - r11c13{n9 .} ==> r11c14 ≠ 3
whip[2]: hr11c12{n46 n19} - r11c13{n6 .} ==> r11c14 ≠ 9
Entering_level_W6_with_<Fact-54978>
Entering_level_BC7_with_<Fact-56542>
Entering_level_W7_with_<Fact-57100>
Entering_level_BC8_with_<Fact-58883>
Entering_level_W8_with_<Fact-59191>
whip[8]: r9c4{n5 n3} - r9c3{n3 n9} - r8n9{c3 c4} - c4n8{r8 r6} - r6c3{n8 n7} - r8n7{c3 c2} - vr6c2{n128 n137} - r9c2{n2 .} ==> hr9c1 ≠ 239
Entering_level_BC9_with_<Fact-61126>
Entering_level_W9_with_<Fact-61224>
Entering_level_BC10_with_<Fact-62973>
Entering_level_W10_with_<Fact-62993>
whip[10]: r9c4{n5 n4} - r9c3{n4 n9} - r8n9{c3 c4} - c4n8{r8 r6} - r6c3{n8 n7} - r8n7{c3 c2} - vr6c2{n128 n137} - r9c2{n2 n1} - r7c2{n1 n3} - c4n3{r7 .} ==> hr9c1 ≠ 149
w[1]-ctr-to-horiz-sector  ==> r9c3 ≠ 9
whip[4]: vr6c2{n128 n137} - r9c2{n2 n1} - hr9c1{n356 n158} - c4n3{r9 .} ==> r7c2 ≠ 3
biv-chain[3]: r7c2{n1 n2} - c9n2{r7 r9} - r9n1{c9 c10} ==> r7c10 ≠ 1
Entering_level_BC11_with_<Fact-65224>
Entering_level_W11_with_<Fact-65226>
Entering_level_BC12_with_<Fact-66776>
Entering_level_W12_with_<Fact-66778>
Entering_level_BC13_with_<Fact-68325>
Entering_level_W13_with_<Fact-68327>
Entering_level_BC14_with_<Fact-69793>
Entering_level_W14_with_<Fact-69795>
whip[14]: r7c2{n1 n2} - vr6c2{n137 n128} - r9c2{n3 n1} - hr9c1{n248 n158} - r9c4{n3 n5} - r14c4{n5 n4} - r7c4{n4 n3} - r7c5{n3 n4} - r3c5{n4 n3} - c2n3{r3 r2} - c3n3{r2 r4} - c3n4{r4 r2} - c3n5{r2 r7} - r7c9{n5 .} ==> r7c8 ≠ 1
Entering_level_BC15_with_<Fact-71159>
Entering_level_W15_with_<Fact-71161>
Entering_level_BC16_with_<Fact-72288>
Entering_level_W16_with_<Fact-72290>
Entering_level_BC17_with_<Fact-73327>
Entering_level_W17_with_<Fact-73329>
Entering_level_BC18_with_<Fact-74317>
Entering_level_W18_with_<Fact-74319>
Entering_level_BC19_with_<Fact-75286>
Entering_level_W19_with_<Fact-75288>
Entering_level_BC20_with_<Fact-76296>
Entering_level_W20_with_<Fact-76298>
Entering_level_W21_with_<Fact-77439>
whip[21]: r9c4{n4 n5} - c4n3{r9 r7} - r7c5{n3 n4} - r3c5{n4 n3} - c2n3{r3 r2} - c3n3{r2 r4} - c3n4{r4 r2} - r2c6{n4 n5} - c6n3{r2 r9} - c6n4{r9 r4} - r4n5{c6 c7} - c3n5{r4 r7} - c3n6{r7 r3} - hr3c1{n34789 n35689} - r3c6{n7 n8} - c6n6{r3 r7} - r7n7{c6 c10} - r7n9{c10 c7} - r7n8{c7 c8} - r5n8{c8 c7} - vr3c7{n39 .} ==> hr9c1 ≠ 257
whip[21]: r9c4{n5 n4} - c4n3{r9 r7} - r7c5{n3 n4} - r3c5{n4 n3} - c2n3{r3 r2} - c3n3{r2 r4} - c3n4{r4 r2} - r2c6{n4 n5} - c6n3{r2 r9} - c6n4{r9 r4} - r4n5{c6 c7} - c3n5{r4 r7} - c3n6{r7 r3} - hr3c1{n34789 n35689} - r3c6{n7 n8} - c6n6{r3 r7} - r7n7{c6 c10} - r7n9{c10 c7} - r7n8{c7 c8} - r5n8{c8 c7} - vr3c7{n39 .} ==> hr9c1 ≠ 248
w[1]-ctr-to-horiz-sector  ==> r9c2 ≠ 2
whip[2]: r9c2{n3 n1} - hr9c1{n347 .} ==> r9c4 ≠ 3, r9c3 ≠ 3
hidden-single-in-magic-verti-sector ==> r7c4 = 3
naked-single ==> r7c5 = 4
naked-single ==> r3c5 = 3
naked-single ==> r3c2 = 5
naked-single ==> r2c2 = 3
naked-single ==> hr3c1 = 35689
hidden-single-in-magic-verti-sector ==> r4c3 = 3
hidden-single-in-magic-verti-sector ==> r9c6 = 3
hidden-single-in-magic-verti-sector ==> r11c7 = 3
w[1]-ctr-to-horiz-sector  ==> r11c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r11c10 ≠ 1
w[1]-cell-to-verti-ctr  ==> vr3c7 ≠ 39
w[1]-ctr-to-verti-sector  ==> r5c7 ≠ 9
verti-sector-to-ctr  ==> vr4c8 ≠ 348
naked-pairs-in-horiz-sector: r9{c7 c11}{n5 n6} ==> r9c13 ≠ 6, r9c13 ≠ 5, r9c10 ≠ 6, r9c10 ≠ 5, r9c9 ≠ 5
naked-pairs-in-verti-sector: c7{r9 r14}{n5 n6} ==> r7c7 ≠ 6, r7c7 ≠ 5
naked-pairs-in-verti-sector: c6{r2 r4}{n4 n5} ==> r7c6 ≠ 5
whip[2]: r9c4{n4 n5} - hr9c1{n347 .} ==> r9c3 ≠ 4
hidden-single-in-magic-verti-sector ==> r2c3 = 4
naked-single ==> r2c6 = 5
naked-single ==> r4c6 = 4
naked-single ==> r4c7 = 5
naked-single ==> vr3c7 = 57
naked-single ==> r5c7 = 7
w[1]-cell-to-verti-ctr  ==> vr4c8 ≠ 357
w[1]-ctr-to-verti-sector  ==> r6c8 ≠ 3
whip[2]: r5c8{n8 n9} - vr4c8{n168 .} ==> r7c8 ≠ 8
whip[2]: r9c4{n5 n4} - hr9c1{n158 .} ==> r9c3 ≠ 5
hidden-single-in-magic-verti-sector ==> r7c3 = 5
w[1]-cell-to-verti-ctr  ==> vr4c8 ≠ 159
w[1]-ctr-to-verti-sector  ==> r5c8 ≠ 9
naked-single ==> r5c8 = 8
naked-single ==> r5c6 = 9
naked-pairs-in-verti-sector: c9{r7 r9}{n1 n2} ==> r6c9 ≠ 1
naked-pairs-in-horiz-sector: r7{c2 c9}{n1 n2} ==> r7c10 ≠ 2, r7c8 ≠ 2
naked-single ==> r7c8 = 6
naked-single ==> vr4c8 = 168
naked-single ==> r6c8 = 1
hidden-single-in-magic-verti-sector ==> r3c6 = 6
naked-single ==> r3c3 = 8
hidden-single-in-magic-verti-sector ==> r9c3 = 6
naked-single ==> hr9c1 = 356
naked-single ==> r9c4 = 5
naked-single ==> r14c4 = 4
naked-single ==> r9c2 = 3
naked-single ==> vr6c2 = 137
naked-single ==> r8c2 = 7
naked-single ==> r8c3 = 9
naked-single ==> r8c4 = 8
naked-single ==> r6c3 = 7
naked-single ==> r6c6 = 8
naked-single ==> r7c6 = 7
naked-single ==> r6c4 = 9
naked-single ==> r12c4 = 7
naked-single ==> r12c3 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c9 = 2
naked-single ==> r9c9 = 1
biv-chain[2]: r14c3{n7 n8} - hr14c1{n1234679 n1234589} ==> r14c6 ≠ 7
naked-single ==> r14c6 = 9
naked-single ==> r13c6 = 7
naked-single ==> r13c3 = 8
naked-single ==> r14c3 = 7
naked-single ==> r13c7 = 9
naked-single ==> r7c7 = 8
naked-single ==> r7c10 = 9
naked-single ==> r8c10 = 7
naked-single ==> r8c9 = 9
naked-single ==> r4c9 = 7
naked-single ==> hr4c8 = 57
naked-single ==> r4c10 = 5
naked-single ==> vr1c10 = 135
naked-single ==> r3c10 = 1
naked-single ==> r3c11 = 2
naked-single ==> r2c10 = 3
naked-single ==> r2c12 = 5
naked-single ==> r3c12 = 3
naked-single ==> r3c9 = 5
naked-single ==> r6c9 = 3
naked-single ==> r6c10 = 5
naked-single ==> r10c10 = 8
naked-single ==> r13c10 = 6
naked-single ==> r11c10 = 4
naked-single ==> r9c10 = 2
naked-single ==> r9c13 = 4
naked-single ==> r10c12 = 9
naked-single ==> r10c13 = 5
naked-single ==> r13c13 = 9
naked-single ==> r10c11 = 7
naked-single ==> r7c12 = 8
naked-single ==> r7c14 = 9
naked-single ==> r9c14 = 8
naked-single ==> r9c8 = 9
naked-single ==> r11c8 = 8
naked-single ==> r2c11 = 4
naked-single ==> hr11c6 = 34789
naked-single ==> r11c11 = 9
naked-single ==> r11c9 = 7
naked-single ==> r12c9 = 9
naked-single ==> vr1c11 = 24
naked-single ==> hr14c1 = 1234679
naked-single ==> r14c7 = 6
naked-single ==> r9c7 = 5
naked-single ==> r9c11 = 6
naked-single ==> r14c11 = 3
naked-single ==> r14c10 = 1
naked-single ==> r12c10 = 3
hidden-single-in-magic-verti-sector ==> r11c13 = 3
naked-single ==> hr11c12 = 37
naked-single ==> r11c14 = 7
hidden-single-in-magic-horiz-sector ==> r13c12 = 7
w[1]-ctr-to-verti-sector  ==> r14c12 ≠ 2
w[1]-ctr-to-verti-sector  ==> r12c12 ≠ 2
w[1]-cell-to-horiz-ctr  ==> hr12c8 ≠ 134789
w[1]-cell-to-verti-ctr  ==> vr10c14 ≠ 2479
w[1]-cell-to-verti-ctr  ==> vr10c14 ≠ 1579
w[1]-cell-to-verti-ctr  ==> vr11c12 ≠ 178
w[1]-ctr-to-verti-sector  ==> r12c12 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c12 ≠ 1
horiz-sector-to-ctr  ==> hr12c8 ≠ 235679
verti-sector-to-ctr  ==> vr10c14 ≠ 3478
verti-sector-to-ctr  ==> vr11c12 ≠ 367
naked-single ==> vr11c12 = 457
naked-single ==> r14c12 = 4
naked-single ==> r12c12 = 5
naked-single ==> r12c11 = 8
naked-single ==> r13c11 = 5
naked-single ==> r13c14 = 8
naked-single ==> hr12c8 = 135689
naked-single ==> r12c13 = 6
naked-single ==> r14c13 = 2
naked-single ==> r14c14 = 6
naked-single ==> r12c14 = 1
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[21]

--------------
-34815-8634597
-58936-4512368
-137245-75-689
-21-69784-815-
--7958-13592--
-153478629-879
-798-12-97-415
-365-359126748
---15246-8795-
--123-38749-37
-197-61-938561
-5863791-65798
-3741962-13426
Puzzle (21 . . . . . 42 . . . . . . . / 31 . . . . . 29 . . . . . . . / 22 . . . . . . 12 . . 23 . . . / 3 . . 34 . . . . . 14 . . . B / B 29 . . . . 20 . . . . . B B / 45 . . . . . . . . . 24 . . . / 24 . . . 3 . . 16 . . 10 . . . / 14 . . . 45 . . . . . . . . . / B B 18 . . . . . 29 . . . . B / B 6 . . . 31 . . . . . 10 . . / 17 . . . 7 . . 32 . . . . . . / 39 . . . . . . . 35 . . . . . / 32 . . . . . . . 16 . . . . . // 11 . . . . 11 . . . B 9 . . . / 43 . . . . . . . . 25 . . . . / 24 . . . 45 . . . . . . . . . / 21 . . . . . . B 8 . . 4 . . / 45 . . . . . . . . . 22 . . . / B B 12 . . 38 . . . . . . . . / 12 . . 15 . . . 23 . . . 3 . . / 37 . . . . . . . . 16 . . B B / 9 . . . 45 . . . . . . . . . / 6 . . 17 . . B 38 . . . . . . / 45 . . . . . . . . . 16 . . . / 28 . . . . 37 . . . . . . . . / 24 . . . B 22 . . . 22 . . . . //) :
init-time = 14.47s, solve-time = 21.75s, total-time = 36.23s
nb-facts=<Fact-80131>
***********************************************************************************************
***  KakuRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


with g-whips:
***********************************************************************************************
***  KakuRules 2.1.s based on CSP-Rules 2.1.s, config = gW+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
       Uppermost (black) row and leftmost (black) column have index 1
INITIALISATION
horizontal sector with g-combs 21-in-5, starting in r2c1
horizontal sector with g-digs 21-in-5, starting in r2c1
horizontal magic sector 42-in-7, starting in r2c7, unique combination: 3456789
horizontal pseudo magic sector 31-in-5, starting in r3c1, for digits: (9)
horizontal sector with g-combs 31-in-5, starting in r3c1
horizontal sector with g-digs 31-in-5, starting in r3c1
horizontal magic sector 29-in-7, starting in r3c7, unique combination: 1234568
horizontal magic sector 22-in-6, starting in r4c1, unique combination: 123457
horizontal sector with g-combs 12-in-2, starting in r4c8
horizontal sector with g-digs 12-in-2, starting in r4c8
horizontal magic sector 23-in-3, starting in r4c11, unique combination: 689
horizontal magic sector 3-in-2, starting in r5c1, unique combination: 12
horizontal magic sector 34-in-5, starting in r5c4, unique combination: 46789
horizontal sector with g-combs 14-in-3, starting in r5c10
horizontal sector with g-digs 14-in-3, starting in r5c10
horizontal magic sector 29-in-4, starting in r6c2, unique combination: 5789
horizontal sector with g-combs 20-in-5, starting in r6c7
horizontal sector with g-digs 20-in-5, starting in r6c7
horizontal magic sector 45-in-9, starting in r7c1, unique combination: 123456789
horizontal magic sector 24-in-3, starting in r7c11, unique combination: 789
horizontal magic sector 24-in-3, starting in r8c1, unique combination: 789
horizontal magic sector 3-in-2, starting in r8c5, unique combination: 12
horizontal magic sector 16-in-2, starting in r8c8, unique combination: 79
horizontal sector with g-combs 10-in-3, starting in r8c11
horizontal sector with g-digs 10-in-3, starting in r8c11
horizontal sector with g-combs 14-in-3, starting in r9c1
horizontal sector with g-digs 14-in-3, starting in r9c1
horizontal magic sector 45-in-9, starting in r9c5, unique combination: 123456789
horizontal pseudo magic sector 18-in-5, starting in r10c3, for digits: (1 2)
horizontal sector with g-combs 18-in-5, starting in r10c3
horizontal sector with g-digs 18-in-5, starting in r10c3
horizontal magic sector 29-in-4, starting in r10c9, unique combination: 5789
horizontal magic sector 6-in-3, starting in r11c2, unique combination: 123
horizontal pseudo magic sector 31-in-5, starting in r11c6, for digits: (9)
horizontal sector with g-combs 31-in-5, starting in r11c6
horizontal sector with g-digs 31-in-5, starting in r11c6
horizontal sector with g-combs 10-in-2, starting in r11c12
horizontal sector with g-digs 10-in-2, starting in r11c12
horizontal sector with g-combs 17-in-3, starting in r12c1
horizontal sector with g-digs 17-in-3, starting in r12c1
horizontal sector with g-combs 7-in-2, starting in r12c5
horizontal sector with g-digs 7-in-2, starting in r12c5
horizontal sector with g-combs 32-in-6, starting in r12c8
horizontal sector with g-digs 32-in-6, starting in r12c8
horizontal pseudo magic sector 39-in-7, starting in r13c1, for digits: (3 6 7 8 9)
horizontal magic sector 35-in-5, starting in r13c9, unique combination: 56789
horizontal pseudo magic sector 32-in-7, starting in r14c1, for digits: (1 2 3)
horizontal sector with g-digs 32-in-7, starting in r14c1
horizontal magic sector 16-in-5, starting in r14c9, unique combination: 12346
vertical magic sector 11-in-4, starting in r1c2, unique combination: 1235
vertical sector with g-combs 11-in-3, starting in r6c2
vertical sector with g-digs 11-in-3, starting in r6c2
vertical sector with g-combs 9-in-3, starting in r11c2
vertical sector with g-digs 9-in-3, starting in r11c2
vertical magic sector 43-in-8, starting in r1c3, unique combination: 13456789
vertical sector with g-combs 25-in-4, starting in r10c3
vertical sector with g-digs 25-in-4, starting in r10c3
vertical magic sector 24-in-3, starting in r1c4, unique combination: 789
vertical magic sector 45-in-9, starting in r5c4, unique combination: 123456789
vertical magic sector 21-in-6, starting in r1c5, unique combination: 123456
vertical sector with g-combs 8-in-2, starting in r9c5
vertical sector with g-digs 8-in-2, starting in r9c5
vertical magic sector 4-in-2, starting in r12c5, unique combination: 13
vertical magic sector 45-in-9, starting in r1c6, unique combination: 123456789
vertical pseudo magic sector 22-in-3, starting in r11c6, for digits: (9)
vertical sector with g-combs 12-in-2, starting in r3c7
vertical sector with g-digs 12-in-2, starting in r3c7
vertical magic sector 38-in-8, starting in r6c7, unique combination: 12345689
vertical sector with g-combs 12-in-2, starting in r1c8
vertical sector with g-digs 12-in-2, starting in r1c8
vertical sector with g-combs 15-in-3, starting in r4c8
vertical sector with g-digs 15-in-3, starting in r4c8
vertical magic sector 23-in-3, starting in r8c8, unique combination: 689
vertical magic sector 3-in-2, starting in r12c8, unique combination: 12
vertical magic sector 37-in-8, starting in r1c9, unique combination: 12345679
vertical magic sector 16-in-2, starting in r10c9, unique combination: 79
vertical sector with g-combs 9-in-3, starting in r1c10
vertical sector with g-digs 9-in-3, starting in r1c10
vertical magic sector 45-in-9, starting in r5c10, unique combination: 123456789
vertical magic sector 17-in-2, starting in r4c11, unique combination: 89
vertical magic sector 38-in-6, starting in r8c11, unique combination: 356789
vertical magic sector 45-in-9, starting in r1c12, unique combination: 123456789
vertical sector with g-combs 16-in-3, starting in r11c12
vertical sector with g-digs 16-in-3, starting in r11c12
vertical pseudo magic sector 28-in-4, starting in r1c13, for digits: (8 9)
vertical magic sector 37-in-8, starting in r6c13, unique combination: 12345679
vertical magic sector 24-in-3, starting in r1c14, unique combination: 789
vertical pseudo magic sector 22-in-3, starting in r6c14, for digits: (9)
vertical sector with g-combs 22-in-4, starting in r10c14
vertical sector with g-digs 22-in-4, starting in r10c14
entering BRT
w[1]-ctr-to-horiz-sector  ==> r14c14 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c14 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c14 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r14c13 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c13 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c13 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r14c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c12 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c12 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r14c11 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c11 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c11 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c11 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r14c10 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r14c10 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r14c10 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r14c10 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r13c14 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c14 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r13c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r13c12 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r13c11 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c11 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r13c10 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r13c10 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r13c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r13c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c5 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r10c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r10c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r10c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r10c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r10c8 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r10c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r10c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r10c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r10c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c14 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c14 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c13 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c13 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c12 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c4 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r7c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r7c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c8 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c8 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c8 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c8 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c7 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c7 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c7 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c7 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c6 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c6 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c6 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c5 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c5 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c5 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r5c5 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r5c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r5c2 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c7 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c6 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r3c14 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c14 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c13 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c13 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c11 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c11 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c10 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c10 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c9 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c9 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r3c8 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r3c8 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r2c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r14c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r14c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 9
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r14c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 6
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 5
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 2
w[1]-ctr-to-verti-sector  ==> r14c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r14c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 9
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r13c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r13c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r13c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 6
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 5
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 2
w[1]-ctr-to-verti-sector  ==> r13c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r13c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r12c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r12c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r12c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 6
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 5
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 4
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 2
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 1
w[1]-ctr-to-verti-sector  ==> r12c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r12c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r12c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r12c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r12c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r12c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r11c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r11c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r11c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r11c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 6
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 5
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 4
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 2
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 2
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 2
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r10c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r9c14 ≠ 2
w[1]-ctr-to-verti-sector  ==> r9c14 ≠ 1
w[1]-ctr-to-verti-sector  ==> r9c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r9c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r9c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r9c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 7
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 4
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 3
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 2
w[1]-ctr-to-verti-sector  ==> r9c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r9c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r9c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r9c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r8c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r8c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r8c14 ≠ 2
w[1]-ctr-to-verti-sector  ==> r8c14 ≠ 1
w[1]-ctr-to-verti-sector  ==> r8c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r7c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r7c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r7c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r7c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r7c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r7c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r7c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 7
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 5
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 3
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r6c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r6c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r6c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r6c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r6c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r5c13 ≠ 3
w[1]-ctr-to-verti-sector  ==> r5c13 ≠ 2
w[1]-ctr-to-verti-sector  ==> r5c13 ≠ 1
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 7
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 5
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 3
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 2
w[1]-ctr-to-verti-sector  ==> r5c11 ≠ 1
w[1]-ctr-to-verti-sector  ==> r5c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r5c7 ≠ 6
w[1]-ctr-to-verti-sector  ==> r5c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r5c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r5c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r5c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r4c14 ≠ 6
w[1]-ctr-to-verti-sector  ==> r4c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r4c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r4c10 ≠ 7
w[1]-ctr-to-verti-sector  ==> r4c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r4c7 ≠ 2
w[1]-ctr-to-verti-sector  ==> r4c7 ≠ 1
w[1]-ctr-to-verti-sector  ==> r4c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 2
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 1
w[1]-ctr-to-verti-sector  ==> r4c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c13 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c13 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c13 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r3c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 5
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c13 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 9
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r2c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c10 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c8 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c5 ≠ 9
w[1]-ctr-to-verti-sector  ==> r2c5 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 2
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 1
w[1]-ctr-to-verti-sector  ==> r2c3 ≠ 2
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 4
horizontal-magic-sector: hr14c9 = 12346
horizontal-magic-sector: hr13c9 = 56789
horizontal-magic-sector: hr11c2 = 123
horizontal-magic-sector: hr10c9 = 5789
horizontal-magic-sector: hr9c5 = 123456789
horizontal-magic-sector: hr8c8 = 79
horizontal-magic-sector: hr8c5 = 12
horizontal-magic-sector: hr8c1 = 789
horizontal-magic-sector: hr7c11 = 789
horizontal-magic-sector: hr7c1 = 123456789
horizontal-magic-sector: hr6c2 = 5789
horizontal-magic-sector: hr5c4 = 46789
horizontal-magic-sector: hr5c1 = 12
horizontal-magic-sector: hr4c11 = 689
horizontal-magic-sector: hr4c1 = 123457
horizontal-magic-sector: hr3c7 = 1234568
horizontal-magic-sector: hr2c7 = 3456789
vertical-magic-sector: vr1c14 = 789
vertical-magic-sector: vr6c13 = 12345679
vertical-magic-sector: vr1c12 = 123456789
vertical-magic-sector: vr8c11 = 356789
vertical-magic-sector: vr4c11 = 89
vertical-magic-sector: vr5c10 = 123456789
vertical-magic-sector: vr10c9 = 79
vertical-magic-sector: vr1c9 = 12345679
vertical-magic-sector: vr12c8 = 12
vertical-magic-sector: vr8c8 = 689
vertical-magic-sector: vr6c7 = 12345689
vertical-magic-sector: vr1c6 = 123456789
vertical-magic-sector: vr12c5 = 13
vertical-magic-sector: vr1c5 = 123456
vertical-magic-sector: vr5c4 = 123456789
vertical-magic-sector: vr1c4 = 789
vertical-magic-sector: vr1c3 = 13456789
vertical-magic-sector: vr1c2 = 1235

RESOLUTION
naked-single ==> r6c5 = 5
naked-single ==> r5c3 = 1
naked-single ==> r5c2 = 2
naked-single ==> r4c4 = 7
naked-single ==> r3c14 = 8
naked-single ==> r4c14 = 9
naked-single ==> r2c14 = 7
w[1]-cell-to-horiz-ctr  ==> hr2c1 ≠ 23457
w[1]-cell-to-horiz-ctr  ==> hr2c1 ≠ 13467
w[1]-cell-to-horiz-ctr  ==> hr2c1 ≠ 12567
w[1]-cell-to-horiz-ctr  ==> hr5c10 ≠ 167
w[1]-cell-to-horiz-ctr  ==> hr5c10 ≠ 257
w[1]-cell-to-horiz-ctr  ==> hr5c10 ≠ 347
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r5c13 ≠ 7
w[1]-cell-to-horiz-ctr  ==> hr5c10 ≠ 356
w[1]-ctr-to-horiz-sector  ==> r5c13 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr6c7 ≠ 12467
w[1]-cell-to-horiz-ctr  ==> hr6c7 ≠ 13457
w[1]-ctr-to-horiz-sector  ==> r6c12 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c10 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c9 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c8 ≠ 7
w[1]-cell-to-horiz-ctr  ==> hr6c7 ≠ 23456
w[1]-cell-to-horiz-ctr  ==> hr10c3 ≠ 12357
w[1]-ctr-to-horiz-sector  ==> r10c4 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r10c5 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r10c6 ≠ 7
w[1]-cell-to-horiz-ctr  ==> hr12c5 ≠ 34
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r12c7 ≠ 4
w[1]-cell-to-verti-ctr  ==> vr1c10 ≠ 126
w[1]-ctr-to-verti-sector  ==> r2c10 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c10 ≠ 6
w[1]-cell-to-verti-ctr  ==> vr6c2 ≠ 146
w[1]-cell-to-verti-ctr  ==> vr6c2 ≠ 236
w[1]-ctr-to-verti-sector  ==> r9c2 ≠ 6
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 6
w[1]-cell-to-verti-ctr  ==> vr6c2 ≠ 245
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 5
w[1]-ctr-to-verti-sector  ==> r9c2 ≠ 5
w[1]-ctr-to-verti-sector  ==> r9c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 4
w[1]-cell-to-verti-ctr  ==> vr10c3 ≠ 4579
w[1]-cell-to-verti-ctr  ==> vr10c3 ≠ 4678
w[1]-ctr-to-verti-sector  ==> r14c3 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c3 ≠ 4
w[1]-ctr-to-verti-sector  ==> r12c3 ≠ 4
horiz-sector-to-ctr  ==> hr4c8 ≠ 48
w[1]-ctr-to-horiz-sector  ==> r4c9 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 4
verti-sector-to-ctr  ==> vr9c5 ≠ 17
w[1]-ctr-to-verti-sector  ==> r10c5 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c5 ≠ 1
verti-sector-to-ctr  ==> vr1c13 ≠ 4789
naked-single ==> vr1c13 = 5689
verti-sector-to-ctr  ==> vr1c8 ≠ 57
w[1]-ctr-to-verti-sector  ==> r2c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c8 ≠ 5
Starting_init_links_with_<Fact-23117>
847 candidates, 4086 csp-links and 5858 links. Density = 1.64%
starting non trivial part of solution
Entering_level_W1_with_<Fact-43008>
Entering_relation_bivalue_with_<Fact-43009>
Entering_level_S2_with_<Fact-43134>
x-wing-in-verti-sectors: n1{c5 c8}{r13 r14} ==> r14c7 ≠ 1, r14c4 ≠ 1, r14c3 ≠ 1, r14c2 ≠ 1, r13c7 ≠ 1, r13c4 ≠ 1, r13c3 ≠ 1, r13c2 ≠ 1
Entering_level_BC2_with_<Fact-43159>
biv-chain[2]: c5n1{r13 r14} - c8n1{r14 r13} ==> hr13c1 ≠ 2346789
naked-single ==> hr13c1 = 1356789
naked-single ==> r13c8 = 1
naked-single ==> r14c8 = 2
naked-single ==> r13c5 = 3
naked-single ==> r14c5 = 1
w[1]-cell-to-verti-ctr  ==> vr11c2 ≠ 234
w[1]-ctr-to-verti-sector  ==> r12c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c2 ≠ 4
biv-chain[2]: r13c2{n6 n5} - vr11c2{n126 n135} ==> r12c2 ≠ 6, r14c2 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr12c1 ≠ 467
w[1]-cell-to-verti-ctr  ==> vr11c2 ≠ 126
naked-single ==> vr11c2 = 135
naked-single ==> r13c2 = 5
naked-single ==> r14c2 = 3
naked-single ==> r12c2 = 1
naked-single ==> hr12c1 = 179
biv-chain[2]: vr6c2{n128 n137} - r8c2{n8 n7} ==> r7c2 ≠ 7, r9c2 ≠ 7
biv-chain[2]: vr6c2{n137 n128} - r8c2{n7 n8} ==> r7c2 ≠ 8, r9c2 ≠ 8
biv-chain[2]: vr9c5{n26 n35} - r11c5{n2 n3} ==> r10c5 ≠ 3
biv-chain[2]: vr9c5{n35 n26} - r11c5{n3 n2} ==> r10c5 ≠ 2
w[1]-cell-to-horiz-ctr  ==> hr10c3 ≠ 12348
naked-single ==> hr10c3 = 12456
naked-single ==> r10c8 = 6
naked-single ==> r10c5 = 5
naked-single ==> vr9c5 = 35
naked-single ==> r11c5 = 3
w[1]-cell-to-verti-ctr  ==> vr10c3 ≠ 3589
w[1]-ctr-to-verti-sector  ==> r14c3 ≠ 5
w[1]-cell-to-verti-ctr  ==> vr10c3 ≠ 3679
biv-chain[2]: vr11c6{n589 n679} - r12c6{n5 n6} ==> r13c6 ≠ 6, r14c6 ≠ 6
biv-chain[2]: vr11c6{n679 n589} - r12c6{n6 n5} ==> r14c6 ≠ 5
biv-chain[2]: vr1c8{n39 n48} - r3c8{n3 n4} ==> r2c8 ≠ 4
biv-chain[2]: vr1c8{n48 n39} - r3c8{n4 n3} ==> r2c8 ≠ 3
biv-chain[2]: vr1c11{n15 n24} - r2c11{n5 n4} ==> r3c11 ≠ 4
biv-chain[2]: vr1c11{n24 n15} - r2c11{n4 n5} ==> r3c11 ≠ 5
biv-chain[2]: hr4c8{n39 n57} - r4c10{n3 n5} ==> r4c9 ≠ 5
biv-chain[2]: hr4c8{n57 n39} - r4c10{n5 n3} ==> r4c9 ≠ 3
naked-pairs-in-verti-sector: c9{r4 r8}{n7 n9} ==> r9c9 ≠ 9, r9c9 ≠ 7, r7c9 ≠ 9, r7c9 ≠ 7, r6c9 ≠ 9, r5c9 ≠ 9, r5c9 ≠ 7, r2c9 ≠ 9
naked-pairs-in-horiz-sector: r5{c5 c9}{n4 n6} ==> r5c8 ≠ 6, r5c8 ≠ 4, r5c7 ≠ 4, r5c6 ≠ 6, r5c6 ≠ 4
w[1]-cell-to-verti-ctr  ==> vr4c8 ≠ 456
biv-chain[2]: hr12c5{n16 n25} - r12c6{n6 n5} ==> r12c7 ≠ 5
biv-chain[2]: hr12c5{n25 n16} - r12c6{n5 n6} ==> r12c7 ≠ 6
naked-pairs-in-verti-sector: c7{r8 r12}{n1 n2} ==> r11c7 ≠ 2, r11c7 ≠ 1, r10c7 ≠ 2, r10c7 ≠ 1, r9c7 ≠ 2, r9c7 ≠ 1, r7c7 ≠ 2, r7c7 ≠ 1
naked-single ==> r10c7 = 4
naked-pairs-in-verti-sector: c6{r8 r10}{n1 n2} ==> r9c6 ≠ 2, r9c6 ≠ 1, r7c6 ≠ 2, r7c6 ≠ 1, r4c6 ≠ 2, r4c6 ≠ 1, r3c6 ≠ 2, r3c6 ≠ 1, r2c6 ≠ 2, r2c6 ≠ 1
hidden-single-in-magic-horiz-sector ==> r4c5 = 2
hidden-single-in-magic-horiz-sector ==> r4c2 = 1
w[1]-cell-to-horiz-ctr  ==> hr3c1 ≠ 16789
w[1]-ctr-to-horiz-sector  ==> r3c5 ≠ 1
w[1]-cell-to-horiz-ctr  ==> hr2c1 ≠ 12468
w[1]-cell-to-horiz-ctr  ==> hr3c1 ≠ 25789
horiz-sector-to-ctr  ==> hr2c1 ≠ 12459
horiz-sector-to-ctr  ==> hr2c1 ≠ 12378
w[1]-ctr-to-horiz-sector  ==> r2c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r2c6 ≠ 7
horiz-sector-to-ctr  ==> hr2c1 ≠ 12369
naked-single ==> hr2c1 = 13458
naked-single ==> r2c4 = 8
naked-single ==> r3c4 = 9
naked-pairs-in-verti-sector: c4{r10 r11}{n1 n2} ==> r9c4 ≠ 2, r9c4 ≠ 1, r7c4 ≠ 2, r7c4 ≠ 1
Entering_level_W2_with_<Fact-43628>
whip[2]: vr6c14{n679 n589} - r8c14{n6 .} ==> r9c14 ≠ 5
whip[2]: r5c11{n8 n9} - r5c13{n9 .} ==> hr5c10 ≠ 149, hr5c10 ≠ 239
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r5c13 ≠ 9
hidden-single-for-magic-digit-in-verti-sector ==> r2c13 = 9
naked-single ==> r2c8 = 8
naked-single ==> vr1c8 = 48
naked-single ==> r3c8 = 4
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c11 ≠ 9
naked-single ==> r5c11 = 8
naked-single ==> r6c11 = 9
naked-single ==> r5c13 = 5
naked-single ==> r3c13 = 6
naked-single ==> r4c13 = 8
naked-single ==> r4c12 = 6
naked-single ==> hr5c10 = 158
naked-single ==> r5c12 = 1
naked-single ==> hr6c7 = 12359
hidden-single-in-magic-horiz-sector ==> r2c9 = 6
naked-single ==> r5c9 = 4
naked-single ==> r5c5 = 6
whip[2]: hr8c11{n235 n127} - r8c14{n5 .} ==> r8c12 ≠ 7, r8c13 ≠ 7
whip[2]: hr8c11{n235 n136} - r8c14{n5 .} ==> r8c13 ≠ 6
whip[2]: hr11c12{n46 n28} - r11c13{n1 .} ==> r11c14 ≠ 2
start init physical g-links for gcombs, starting with <Fact-44351>
start init physical g-links for gdigs
end init physical g-links
initialising g-labels, label-glabel-glinks and label-in-glabel, starting with <Fact-70550>
initialising g-candidates and effective g-links, starting with <Fact-70552>
1146 g-candidates, 4651 csp-glinks and 7991 glinks
Entering_level_gW2_with_<Fact-84341>
g-whip[2]: r8c14{n5 n67} - hr8c11{n235 .} ==> r8c13 ≠ 5
g-whip[2]: r8c14{n5 n67} - hr8c11{n235 .} ==> r8c12 ≠ 5
whip[2]: hr8c11{n235 n145} - r8c12{n3 .} ==> r8c13 ≠ 4
g-whip[2]: r5c8{n9 n3678} - vr4c8{n249 .} ==> r7c8 ≠ 9
g-whip[2]: r5c8{n8 n79} - vr4c8{n348 .} ==> r7c8 ≠ 8
g-whip[2]: r5c8{n7 n1489} - vr4c8{n357 .} ==> r7c8 ≠ 7
Entering_level_S3_with_<Fact-85552>
naked-triplets-in-verti-sector: c4{r6 r8 r12}{n9 n8 n7} ==> r14c4 ≠ 9, r14c4 ≠ 8, r14c4 ≠ 7, r13c4 ≠ 9, r13c4 ≠ 8, r13c4 ≠ 7, r9c4 ≠ 9, r9c4 ≠ 8, r9c4 ≠ 7, r7c4 ≠ 9, r7c4 ≠ 8, r7c4 ≠ 7
naked-single ==> r13c4 = 6
w[1]-cell-to-horiz-ctr  ==> hr9c1 ≠ 167
naked-triplets-in-horiz-sector: r2{c2 c3 c6}{n5 n3 n4} ==> r2c5 ≠ 4, r2c5 ≠ 3
naked-single ==> r2c5 = 1
hidden-triplets-in-verti-sector: c12{n7 n8 n9}{r10 r9 r7} ==> r10c12 ≠ 5, r9c12 ≠ 5, r9c12 ≠ 4, r9c12 ≠ 3, r9c12 ≠ 2
Entering_level_BC3_with_<Fact-85914>
biv-chain[3]: r7n8{c12 c14} - c14n9{r7 r9} - r9c8{n9 n8} ==> r9c12 ≠ 8
biv-chain[3]: r9c12{n7 n9} - c14n9{r9 r7} - r7c13{n9 n7} ==> r9c13 ≠ 7, r7c12 ≠ 7
biv-chain[3]: c6n9{r14 r13} - r13n7{c6 c3} - r12c3{n7 n9} ==> r14c3 ≠ 9
Entering_level_W3_with_<Fact-86518>
whip[3]: r3c2{n5 n3} - r3c5{n3 n4} - hr3c1{n35689 .} ==> r3c6 ≠ 5
whip[3]: r3c2{n5 n3} - r3c5{n3 n4} - hr3c1{n35689 .} ==> r3c3 ≠ 5
whip[3]: r3c2{n3 n5} - hr3c1{n34789 n35689} - r3c5{n4 .} ==> r3c6 ≠ 3
whip[3]: r3c2{n3 n5} - hr3c1{n34789 n35689} - r3c5{n4 .} ==> r3c3 ≠ 3
whip[3]: r4c10{n5 n3} - r2c10{n3 n4} - vr1c10{n135 .} ==> r3c10 ≠ 5
whip[3]: r4c10{n3 n5} - r2c10{n5 n4} - vr1c10{n135 .} ==> r3c10 ≠ 3
naked-pairs-in-horiz-sector: r3{c10 c11}{n1 n2} ==> r3c12 ≠ 2, r3c9 ≠ 2, r3c9 ≠ 1
whip[3]: r3c5{n4 n3} - r3c2{n3 n5} - hr3c1{n34789 .} ==> r3c3 ≠ 4
whip[3]: r3c5{n4 n3} - r3c2{n3 n5} - hr3c1{n34789 .} ==> r3c6 ≠ 4
Entering_level_gW3_with_<Fact-87642>
g-whip[3]: r9c2{n3 n1289} - hr9c1{n347 n239} - r9c4{n4 .} ==> r9c3 ≠ 3
Entering_level_S4_with_<Fact-88980>
Entering_level_BC4_with_<Fact-89253>
Entering_level_W4_with_<Fact-90147>
whip[4]: c6n9{r14 r13} - r13n7{c6 c3} - r14c3{n7 n6} - vr10c3{n1789 .} ==> r14c6 ≠ 8
whip[4]: r13c7{n8 n9} - c6n9{r13 r14} - hr14c1{n1235678 n1234589} - r14c3{n6 .} ==> r14c7 ≠ 8
Entering_level_gW4_with_<Fact-91463>
g-whip[4]: hr9c1{n347 n12356789} - r9c4{n4 n3} - hr9c1{n257 n356} - r9c2{n1 .} ==> r9c3 ≠ 5
g-whip[4]: hr9c1{n356 n12346789} - r9c4{n5 n3} - hr9c1{n257 n347} - r9c2{n1 .} ==> r9c3 ≠ 4
hidden-triplets-in-verti-sector: c3{n3 n4 n5}{r2 r4 r7} ==> r7c3 ≠ 9, r7c3 ≠ 8, r7c3 ≠ 7, r7c3 ≠ 6
naked-triplets-in-horiz-sector: r7{c3 c4 c5}{n3 n5 n4} ==> r7c10 ≠ 5, r7c10 ≠ 4, r7c10 ≠ 3, r7c9 ≠ 5, r7c9 ≠ 3, r7c8 ≠ 5, r7c8 ≠ 4, r7c8 ≠ 3, r7c7 ≠ 5, r7c7 ≠ 3, r7c6 ≠ 5, r7c6 ≠ 4, r7c6 ≠ 3, r7c2 ≠ 3
w[1]-cell-to-verti-ctr  ==> vr4c8 ≠ 348
w[1]-cell-to-verti-ctr  ==> vr4c8 ≠ 357
w[1]-ctr-to-verti-sector  ==> r6c8 ≠ 3
verti-sector-to-ctr  ==> vr4c8 ≠ 249
naked-pairs-in-horiz-sector: r7{c2 c9}{n1 n2} ==> r7c10 ≠ 2, r7c10 ≠ 1, r7c8 ≠ 2, r7c8 ≠ 1
naked-single ==> r7c8 = 6
w[1]-ctr-to-verti-sector  ==> r6c8 ≠ 5
w[1]-ctr-to-verti-sector  ==> r5c8 ≠ 9
naked-pairs-in-verti-sector: c7{r7 r13}{n8 n9} ==> r14c7 ≠ 9, r11c7 ≠ 9, r11c7 ≠ 8, r9c7 ≠ 9, r9c7 ≠ 8
naked-triplets-in-verti-sector: c6{r5 r6 r7}{n9 n8 n7} ==> r9c6 ≠ 9, r9c6 ≠ 8, r9c6 ≠ 7, r3c6 ≠ 8, r3c6 ≠ 7
naked-single ==> r3c6 = 6
hidden-single-in-magic-verti-sector ==> r9c3 = 6
naked-single ==> hr9c1 = 356
naked-single ==> r9c2 = 3
naked-single ==> r9c4 = 5
naked-single ==> r14c4 = 4
naked-single ==> r7c4 = 3
naked-single ==> r7c5 = 4
naked-single ==> r7c3 = 5
naked-single ==> r3c5 = 3
naked-single ==> r3c2 = 5
naked-single ==> r2c2 = 3
naked-single ==> r2c3 = 4
naked-single ==> r4c3 = 3
naked-single ==> r2c6 = 5
naked-single ==> r4c6 = 4
naked-single ==> r9c6 = 3
naked-single ==> r4c7 = 5
naked-single ==> vr3c7 = 57
naked-single ==> r5c7 = 7
naked-single ==> r5c8 = 8
naked-single ==> r5c6 = 9
naked-single ==> vr4c8 = 168
naked-single ==> r6c8 = 1
naked-single ==> hr3c1 = 35689
naked-single ==> r3c3 = 8
naked-single ==> vr6c2 = 137
naked-single ==> r8c2 = 7
naked-single ==> r8c3 = 9
naked-single ==> r8c4 = 8
naked-single ==> r6c3 = 7
naked-single ==> r6c6 = 8
naked-single ==> r7c6 = 7
naked-single ==> r6c4 = 9
naked-single ==> r12c4 = 7
naked-single ==> r12c3 = 9
naked-single ==> r7c2 = 1
naked-single ==> r7c9 = 2
hidden-single-in-magic-verti-sector ==> r9c9 = 1
hidden-single-in-magic-verti-sector ==> r11c7 = 3
w[1]-ctr-to-horiz-sector  ==> r11c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r11c10 ≠ 1
hidden-pairs-in-horiz-sector: r9{n2 n4}{c10 c13} ==> r9c13 ≠ 9, r9c13 ≠ 6, r9c13 ≠ 5, r9c10 ≠ 9, r9c10 ≠ 8, r9c10 ≠ 7, r9c10 ≠ 6, r9c10 ≠ 5
biv-chain[2]: r14c7{n6 n5} - hr14c1{n1234679 n1234589} ==> r14c3 ≠ 6
verti-sector-to-ctr  ==> vr10c3 ≠ 2689
naked-single ==> vr10c3 = 1789
naked-single ==> r11c3 = 1
naked-single ==> r11c4 = 2
naked-single ==> r10c4 = 1
naked-single ==> r10c6 = 2
naked-single ==> r8c6 = 1
naked-single ==> r8c7 = 2
naked-single ==> r12c7 = 1
naked-single ==> hr12c5 = 16
naked-single ==> r12c6 = 6
naked-single ==> vr11c6 = 679
biv-chain[2]: hr14c1{n1234589 n1234679} - r14c3{n8 n7} ==> r14c6 ≠ 7
naked-single ==> r14c6 = 9
naked-single ==> r13c6 = 7
naked-single ==> r13c3 = 8
naked-single ==> r14c3 = 7
naked-single ==> r13c7 = 9
naked-single ==> r7c7 = 8
naked-single ==> r7c10 = 9
naked-single ==> r8c10 = 7
naked-single ==> r8c9 = 9
naked-single ==> r4c9 = 7
naked-single ==> hr4c8 = 57
naked-single ==> r4c10 = 5
naked-single ==> vr1c10 = 135
naked-single ==> r3c10 = 1
naked-single ==> r3c11 = 2
naked-single ==> r2c10 = 3
naked-single ==> vr1c11 = 24
naked-single ==> r2c11 = 4
naked-single ==> r2c12 = 5
naked-single ==> r3c12 = 3
naked-single ==> r6c12 = 2
naked-single ==> r8c12 = 4
naked-single ==> r3c9 = 5
naked-single ==> r6c9 = 3
naked-single ==> r6c10 = 5
naked-single ==> r10c10 = 8
naked-single ==> r13c10 = 6
naked-single ==> r11c10 = 4
naked-single ==> r9c10 = 2
naked-single ==> r9c13 = 4
naked-single ==> hr11c6 = 34789
naked-single ==> hr8c11 = 145
naked-single ==> r8c14 = 5
naked-single ==> r8c13 = 1
naked-single ==> vr6c14 = 589
naked-single ==> hr14c1 = 1234679
naked-single ==> r14c7 = 6
naked-single ==> r9c7 = 5
hidden-single-in-magic-horiz-sector ==> r9c11 = 6
naked-single ==> r14c11 = 3
naked-single ==> r14c10 = 1
naked-single ==> r12c10 = 3
hidden-single-in-magic-verti-sector ==> r11c13 = 3
naked-single ==> hr11c12 = 37
naked-single ==> r11c14 = 7
hidden-single-in-magic-horiz-sector ==> r9c12 = 7
naked-single ==> r10c12 = 9
naked-single ==> r7c12 = 8
naked-single ==> r7c14 = 9
naked-single ==> r9c14 = 8
naked-single ==> r9c8 = 9
naked-single ==> r11c8 = 8
naked-single ==> r7c13 = 7
naked-single ==> r10c13 = 5
naked-single ==> r13c13 = 9
naked-single ==> r10c11 = 7
naked-single ==> r11c11 = 9
naked-single ==> r11c9 = 7
naked-single ==> r12c9 = 9
hidden-single-in-magic-horiz-sector ==> r13c12 = 7
w[1]-ctr-to-verti-sector  ==> r14c12 ≠ 2
w[1]-ctr-to-verti-sector  ==> r12c12 ≠ 2
w[1]-cell-to-horiz-ctr  ==> hr12c8 ≠ 134789
w[1]-cell-to-verti-ctr  ==> vr10c14 ≠ 2479
w[1]-cell-to-verti-ctr  ==> vr10c14 ≠ 1579
w[1]-cell-to-verti-ctr  ==> vr11c12 ≠ 178
w[1]-ctr-to-verti-sector  ==> r12c12 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c12 ≠ 1
horiz-sector-to-ctr  ==> hr12c8 ≠ 235679
verti-sector-to-ctr  ==> vr10c14 ≠ 3478
verti-sector-to-ctr  ==> vr11c12 ≠ 367
naked-single ==> vr11c12 = 457
naked-single ==> r14c12 = 4
naked-single ==> r12c12 = 5
naked-single ==> r12c11 = 8
naked-single ==> r13c11 = 5
naked-single ==> r13c14 = 8
naked-single ==> hr12c8 = 135689
naked-single ==> r12c13 = 6
naked-single ==> r14c13 = 2
naked-single ==> r14c14 = 6
naked-single ==> r12c14 = 1
PUZZLE SOLVED. rating-type = gW+S, MOST COMPLEX RULE TRIED = gW[4]

--------------
-34815-8634597
-58936-4512368
-137245-75-689
-21-69784-815-
--7958-13592--
-153478629-879
-798-12-97-415
-365-359126748
---15246-8795-
--123-38749-37
-197-61-938561
-5863791-65798
-3741962-13426
Puzzle (21 . . . . . 42 . . . . . . . / 31 . . . . . 29 . . . . . . . / 22 . . . . . . 12 . . 23 . . . / 3 . . 34 . . . . . 14 . . . B / B 29 . . . . 20 . . . . . B B / 45 . . . . . . . . . 24 . . . / 24 . . . 3 . . 16 . . 10 . . . / 14 . . . 45 . . . . . . . . . / B B 18 . . . . . 29 . . . . B / B 6 . . . 31 . . . . . 10 . . / 17 . . . 7 . . 32 . . . . . . / 39 . . . . . . . 35 . . . . . / 32 . . . . . . . 16 . . . . . // 11 . . . . 11 . . . B 9 . . . / 43 . . . . . . . . 25 . . . . / 24 . . . 45 . . . . . . . . . / 21 . . . . . . B 8 . . 4 . . / 45 . . . . . . . . . 22 . . . / B B 12 . . 38 . . . . . . . . / 12 . . 15 . . . 23 . . . 3 . . / 37 . . . . . . . . 16 . . B B / 9 . . . 45 . . . . . . . . . / 6 . . 17 . . B 38 . . . . . . / 45 . . . . . . . . . 16 . . . / 28 . . . . 37 . . . . . . . . / 24 . . . B 22 . . . 22 . . . . //) :
init-time = 16.65s, solve-time = 1m 31.7s, total-time = 1m 48.35s
nb-facts=<Fact-92048>
***********************************************************************************************
***  KakuRules 2.1.s based on CSP-Rules 2.1.s, config = gW+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
