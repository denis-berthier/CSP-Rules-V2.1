



(solve 14
31 . . . . . 28 . . . . . . . /
35 . . . . . 42 . . . . . . . /
11 . . . . 11 . . 5 . . 3 . . /
B B 36 . . . . . . . 10 . . . /
15 . . . . . 39 . . . . . . . /
15 . . 19 . . . . . 17 . . . B /
6 . . 10 . . . 20 . . . 14 . . /
B 10 . . . 34 . . . . . 17 . . /
31 . . . . . . . 20 . . . . . /
23 . . . 33 . . . . . . . B B /
12 . . 16 . . 10 . . 27 . . . . /
28 . . . . . . . 19 . . . . . /
42 . . . . . . . 16 . . . . . //

22 . . . 10 . . . 32 . . . . . /
19 . . . 45 . . . . . . . . . /
16 . . . . . B 9 . . . 16 . . /
45 . . . . . . . . . 23 . . . /
13 . . 29 . . . . 17 . . . . . /
B B 5 . . 18 . . . . . 5 . . /
24 . . . . . . 34 . . . . . . /
16 . . 31 . . . . . 13 . . B B /
29 . . . . . 10 . . . . 14 . . /
6 . . . 45 . . . . . . . . . /
12 . . 7 . . . B 17 . . . . . /
45 . . . . . . . . . 8 . . . /
31 . . . . . 23 . . . 16 . . . //
)

***********************************************************************************************
***  KakuRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
       Uppermost (black) row and leftmost (black) column have index 1
INITIALISATION
horizontal pseudo magic sector 31-in-5, starting in r2c1, for digits: (9)
horizontal magic sector 28-in-7, starting in r2c7, unique combination: 1234567
horizontal magic sector 35-in-5, starting in r3c1, unique combination: 56789
horizontal magic sector 42-in-7, starting in r3c7, unique combination: 3456789
horizontal magic sector 11-in-4, starting in r4c1, unique combination: 1235
horizontal magic sector 3-in-2, starting in r4c12, unique combination: 12
horizontal pseudo magic sector 36-in-7, starting in r5c3, for digits: (9)
horizontal magic sector 15-in-5, starting in r6c1, unique combination: 12345
horizontal pseudo magic sector 39-in-7, starting in r6c7, for digits: (3 6 7 8 9)
horizontal pseudo magic sector 19-in-5, starting in r7c4, for digits: (1)
horizontal magic sector 34-in-5, starting in r9c6, unique combination: 46789
horizontal magic sector 17-in-2, starting in r9c12, unique combination: 89
horizontal pseudo magic sector 31-in-7, starting in r10c1, for digits: (1 2 3 4 7)
horizontal magic sector 23-in-3, starting in r11c1, unique combination: 689
horizontal pseudo magic sector 33-in-7, starting in r11c5, for digits: (1 2 6)
horizontal magic sector 16-in-2, starting in r12c4, unique combination: 79
horizontal pseudo magic sector 27-in-4, starting in r12c10, for digits: (9)
horizontal magic sector 28-in-7, starting in r13c1, unique combination: 1234567
horizontal pseudo magic sector 19-in-5, starting in r13c9, for digits: (1)
horizontal magic sector 42-in-7, starting in r14c1, unique combination: 3456789
horizontal magic sector 16-in-5, starting in r14c9, unique combination: 12346
vertical pseudo magic sector 22-in-3, starting in r1c2, for digits: (9)
vertical pseudo magic sector 32-in-5, starting in r9c2, for digits: (8 9)
vertical magic sector 45-in-9, starting in r5c3, unique combination: 123456789
vertical magic sector 16-in-5, starting in r1c4, unique combination: 12346
vertical magic sector 16-in-2, starting in r12c4, unique combination: 79
vertical magic sector 45-in-9, starting in r1c5, unique combination: 123456789
vertical magic sector 23-in-3, starting in r11c5, unique combination: 689
vertical magic sector 29-in-4, starting in r4c6, unique combination: 5789
vertical pseudo magic sector 17-in-5, starting in r9c6, for digits: (1 2 3)
vertical pseudo magic sector 18-in-5, starting in r6c7, for digits: (1 2)
vertical pseudo magic sector 24-in-6, starting in r1c8, for digits: (1 2 3)
vertical pseudo magic sector 34-in-6, starting in r8c8, for digits: (9)
vertical magic sector 16-in-2, starting in r1c9, unique combination: 79
vertical pseudo magic sector 31-in-5, starting in r4c9, for digits: (9)
vertical magic sector 10-in-4, starting in r7c10, unique combination: 1234
vertical magic sector 6-in-3, starting in r1c11, unique combination: 123
vertical magic sector 45-in-9, starting in r5c11, unique combination: 123456789
vertical magic sector 7-in-3, starting in r4c12, unique combination: 124
vertical pseudo magic sector 17-in-5, starting in r9c12, for digits: (1 2 3)
vertical magic sector 45-in-9, starting in r1c13, unique combination: 123456789
vertical pseudo magic sector 8-in-3, starting in r11c13, for digits: (1)
vertical pseudo magic sector 31-in-5, starting in r1c14, for digits: (9)
vertical magic sector 23-in-3, starting in r7c14, unique combination: 689
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
w[1]-ctr-to-horiz-sector  ==> r14c8 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r14c8 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r14c7 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r14c7 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r14c6 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r14c6 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r14c5 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r14c5 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r14c4 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r14c4 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r14c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r14c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r14c2 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r14c2 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r13c8 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r13c8 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r13c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r13c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r13c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r13c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r13c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r13c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r13c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r13c4 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r13c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r13c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r13c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r13c2 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r12c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r12c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r12c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r12c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r12c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r12c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r12c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r12c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r12c9 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r12c8 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r12c6 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r12c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r12c5 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r12c5 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r12c5 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r12c5 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r12c5 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r12c5 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r12c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r12c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r12c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r12c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r12c2 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r12c2 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r11c4 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r11c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r11c2 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r11c2 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r11c2 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r11c2 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r11c2 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r11c2 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c14 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r9c14 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r9c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r9c14 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r9c14 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c13 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r9c13 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r9c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r9c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r9c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c11 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r9c11 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c10 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r9c10 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c9 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r9c9 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c8 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r9c8 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c8 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c8 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c7 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r9c7 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r9c7 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r9c7 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r9c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r9c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r9c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r9c4 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r9c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r9c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c14 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c14 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c14 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c13 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r8c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r8c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c7 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r8c2 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r7c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r7c2 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r7c2 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r7c2 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c2 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r7c2 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c6 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c5 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r6c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r6c2 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r6c2 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r6c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r5c14 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c14 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r5c13 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c13 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r5c12 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c14 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r4c11 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c11 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c11 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c11 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c11 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c10 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c8 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c7 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c5 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c4 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r4c2 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r3c14 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c14 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c13 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c13 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c12 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c12 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c11 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c11 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c10 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c10 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c9 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c9 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c8 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c8 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c6 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r3c6 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r3c6 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c6 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c5 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r3c5 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r3c5 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c5 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c4 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r3c4 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r3c4 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c4 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r3c3 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r3c3 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c3 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r3c2 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r3c2 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r3c2 ≠ 2
w[1]-ctr-to-horiz-sector  ==> r3c2 ≠ 1
w[1]-ctr-to-horiz-sector  ==> r2c14 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c14 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c13 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c13 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c12 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c12 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c11 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c11 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c10 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c10 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c9 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c9 ≠ 8
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 9
w[1]-ctr-to-horiz-sector  ==> r2c8 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c13 ≠ 6
w[1]-ctr-to-verti-sector  ==> r14c10 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c10 ≠ 3
w[1]-ctr-to-verti-sector  ==> r14c10 ≠ 2
w[1]-ctr-to-verti-sector  ==> r14c10 ≠ 1
w[1]-ctr-to-verti-sector  ==> r14c7 ≠ 9
w[1]-ctr-to-verti-sector  ==> r14c7 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r14c7 ≠ 6
w[1]-ctr-to-verti-sector  ==> r14c7 ≠ 5
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 9
w[1]-ctr-to-verti-sector  ==> r14c6 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 5
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c5 ≠ 3
w[1]-ctr-to-verti-sector  ==> r14c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r14c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r14c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r14c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r14c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r13c13 ≠ 9
w[1]-ctr-to-verti-sector  ==> r13c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c13 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c13 ≠ 6
w[1]-ctr-to-verti-sector  ==> r13c12 ≠ 9
w[1]-ctr-to-verti-sector  ==> r13c12 ≠ 8
w[1]-ctr-to-verti-sector  ==> r13c10 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c10 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c10 ≠ 3
w[1]-ctr-to-verti-sector  ==> r13c10 ≠ 2
w[1]-ctr-to-verti-sector  ==> r13c10 ≠ 1
w[1]-ctr-to-verti-sector  ==> r13c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c7 ≠ 6
w[1]-ctr-to-verti-sector  ==> r13c7 ≠ 5
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 5
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 3
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 2
w[1]-ctr-to-verti-sector  ==> r13c5 ≠ 1
w[1]-ctr-to-verti-sector  ==> r13c4 ≠ 6
w[1]-ctr-to-verti-sector  ==> r13c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r13c4 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c4 ≠ 3
w[1]-ctr-to-verti-sector  ==> r13c4 ≠ 2
w[1]-ctr-to-verti-sector  ==> r13c4 ≠ 1
w[1]-ctr-to-verti-sector  ==> r13c2 ≠ 1
w[1]-ctr-to-verti-sector  ==> r12c13 ≠ 9
w[1]-ctr-to-verti-sector  ==> r12c13 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c13 ≠ 7
w[1]-ctr-to-verti-sector  ==> r12c13 ≠ 6
w[1]-ctr-to-verti-sector  ==> r12c12 ≠ 9
w[1]-ctr-to-verti-sector  ==> r12c12 ≠ 8
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 2
w[1]-ctr-to-verti-sector  ==> r12c9 ≠ 1
w[1]-ctr-to-verti-sector  ==> r12c6 ≠ 9
w[1]-ctr-to-verti-sector  ==> r12c5 ≠ 7
w[1]-ctr-to-verti-sector  ==> r11c12 ≠ 9
w[1]-ctr-to-verti-sector  ==> r11c12 ≠ 8
w[1]-ctr-to-verti-sector  ==> r11c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r11c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r11c10 ≠ 7
w[1]-ctr-to-verti-sector  ==> r11c10 ≠ 6
w[1]-ctr-to-verti-sector  ==> r11c10 ≠ 5
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 2
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c7 ≠ 9
w[1]-ctr-to-verti-sector  ==> r11c6 ≠ 9
w[1]-ctr-to-verti-sector  ==> r11c6 ≠ 8
w[1]-ctr-to-verti-sector  ==> r11c4 ≠ 9
w[1]-ctr-to-verti-sector  ==> r11c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c14 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c14 ≠ 5
w[1]-ctr-to-verti-sector  ==> r10c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r10c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r10c14 ≠ 2
w[1]-ctr-to-verti-sector  ==> r10c14 ≠ 1
w[1]-ctr-to-verti-sector  ==> r10c12 ≠ 9
w[1]-ctr-to-verti-sector  ==> r10c12 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r10c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c10 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c10 ≠ 6
w[1]-ctr-to-verti-sector  ==> r10c10 ≠ 5
w[1]-ctr-to-verti-sector  ==> r10c7 ≠ 9
w[1]-ctr-to-verti-sector  ==> r10c6 ≠ 9
w[1]-ctr-to-verti-sector  ==> r10c6 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c4 ≠ 9
w[1]-ctr-to-verti-sector  ==> r10c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r10c4 ≠ 7
w[1]-ctr-to-verti-sector  ==> r10c2 ≠ 1
w[1]-ctr-to-verti-sector  ==> r9c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r9c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r9c10 ≠ 7
w[1]-ctr-to-verti-sector  ==> r9c10 ≠ 6
w[1]-ctr-to-verti-sector  ==> r9c7 ≠ 9
w[1]-ctr-to-verti-sector  ==> r9c4 ≠ 7
w[1]-ctr-to-verti-sector  ==> r8c14 ≠ 5
w[1]-ctr-to-verti-sector  ==> r8c10 ≠ 9
w[1]-ctr-to-verti-sector  ==> r8c10 ≠ 8
w[1]-ctr-to-verti-sector  ==> r8c10 ≠ 7
w[1]-ctr-to-verti-sector  ==> r8c10 ≠ 6
w[1]-ctr-to-verti-sector  ==> r8c10 ≠ 5
w[1]-ctr-to-verti-sector  ==> r8c6 ≠ 6
w[1]-ctr-to-verti-sector  ==> r8c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r8c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r8c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r8c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r7c12 ≠ 9
w[1]-ctr-to-verti-sector  ==> r7c12 ≠ 8
w[1]-ctr-to-verti-sector  ==> r7c12 ≠ 7
w[1]-ctr-to-verti-sector  ==> r7c12 ≠ 6
w[1]-ctr-to-verti-sector  ==> r7c12 ≠ 5
w[1]-ctr-to-verti-sector  ==> r7c12 ≠ 3
w[1]-ctr-to-verti-sector  ==> r7c7 ≠ 9
w[1]-ctr-to-verti-sector  ==> r7c6 ≠ 6
w[1]-ctr-to-verti-sector  ==> r7c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r7c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r7c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r7c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 9
w[1]-ctr-to-verti-sector  ==> r7c2 ≠ 8
w[1]-ctr-to-verti-sector  ==> r6c12 ≠ 9
w[1]-ctr-to-verti-sector  ==> r6c12 ≠ 8
w[1]-ctr-to-verti-sector  ==> r6c12 ≠ 7
w[1]-ctr-to-verti-sector  ==> r6c12 ≠ 6
w[1]-ctr-to-verti-sector  ==> r6c12 ≠ 5
w[1]-ctr-to-verti-sector  ==> r6c12 ≠ 3
w[1]-ctr-to-verti-sector  ==> r6c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r6c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r6c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r6c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r6c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r5c12 ≠ 7
w[1]-ctr-to-verti-sector  ==> r5c12 ≠ 6
w[1]-ctr-to-verti-sector  ==> r5c12 ≠ 5
w[1]-ctr-to-verti-sector  ==> r5c12 ≠ 3
w[1]-ctr-to-verti-sector  ==> r5c7 ≠ 9
w[1]-ctr-to-verti-sector  ==> r5c7 ≠ 8
w[1]-ctr-to-verti-sector  ==> r5c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r5c7 ≠ 6
w[1]-ctr-to-verti-sector  ==> r5c7 ≠ 5
w[1]-ctr-to-verti-sector  ==> r5c6 ≠ 6
w[1]-ctr-to-verti-sector  ==> r5c6 ≠ 4
w[1]-ctr-to-verti-sector  ==> r5c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r5c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r5c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 9
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 7
w[1]-ctr-to-verti-sector  ==> r5c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r4c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r4c7 ≠ 9
w[1]-ctr-to-verti-sector  ==> r4c7 ≠ 8
w[1]-ctr-to-verti-sector  ==> r4c7 ≠ 7
w[1]-ctr-to-verti-sector  ==> r4c7 ≠ 6
w[1]-ctr-to-verti-sector  ==> r4c7 ≠ 5
w[1]-ctr-to-verti-sector  ==> r4c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r4c3 ≠ 1
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 3
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 2
w[1]-ctr-to-verti-sector  ==> r4c2 ≠ 1
w[1]-ctr-to-verti-sector  ==> r3c12 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 9
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 7
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c9 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c9 ≠ 6
w[1]-ctr-to-verti-sector  ==> r3c9 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c9 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 9
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 7
w[1]-ctr-to-verti-sector  ==> r3c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r2c12 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c12 ≠ 2
w[1]-ctr-to-verti-sector  ==> r2c12 ≠ 1
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 5
w[1]-ctr-to-verti-sector  ==> r2c11 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c9 ≠ 6
w[1]-ctr-to-verti-sector  ==> r2c9 ≠ 5
w[1]-ctr-to-verti-sector  ==> r2c9 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c9 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c9 ≠ 2
w[1]-ctr-to-verti-sector  ==> r2c9 ≠ 1
w[1]-ctr-to-verti-sector  ==> r2c6 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c6 ≠ 2
w[1]-ctr-to-verti-sector  ==> r2c6 ≠ 1
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 9
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 8
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 7
w[1]-ctr-to-verti-sector  ==> r2c4 ≠ 5
w[1]-ctr-to-verti-sector  ==> r2c3 ≠ 1
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 2
w[1]-ctr-to-verti-sector  ==> r2c2 ≠ 1
horizontal-magic-sector: hr14c9 = 12346
horizontal-magic-sector: hr14c1 = 3456789
horizontal-magic-sector: hr13c1 = 1234567
horizontal-magic-sector: hr12c4 = 79
horizontal-magic-sector: hr11c1 = 689
horizontal-magic-sector: hr9c12 = 89
horizontal-magic-sector: hr9c6 = 46789
horizontal-magic-sector: hr6c1 = 12345
horizontal-magic-sector: hr4c12 = 12
horizontal-magic-sector: hr4c1 = 1235
horizontal-magic-sector: hr3c7 = 3456789
horizontal-magic-sector: hr3c1 = 56789
horizontal-magic-sector: hr2c7 = 1234567
vertical-magic-sector: vr7c14 = 689
vertical-magic-sector: vr1c13 = 123456789
vertical-magic-sector: vr4c12 = 124
vertical-magic-sector: vr5c11 = 123456789
vertical-magic-sector: vr1c11 = 123
vertical-magic-sector: vr7c10 = 1234
vertical-magic-sector: vr1c9 = 79
vertical-magic-sector: vr4c6 = 5789
vertical-magic-sector: vr11c5 = 689
vertical-magic-sector: vr1c5 = 123456789
vertical-magic-sector: vr12c4 = 79
vertical-magic-sector: vr1c4 = 12346
vertical-magic-sector: vr5c3 = 123456789

RESOLUTION
naked-single ==> r14c10 = 6
naked-single ==> r13c5 = 6
naked-single ==> r13c4 = 7
naked-single ==> r14c4 = 9
naked-single ==> r14c5 = 8
naked-single ==> r12c6 = 7
naked-single ==> r12c5 = 9
naked-single ==> r11c4 = 6
naked-single ==> r9c10 = 4
naked-single ==> r8c10 = 3
naked-single ==> r6c6 = 5
naked-single ==> r8c6 = 7
naked-single ==> r4c2 = 5
naked-single ==> r3c11 = 3
naked-single ==> r3c4 = 6
naked-single ==> r2c9 = 7
naked-single ==> r3c9 = 9
naked-single ==> vr1c2 = 589
naked-single ==> hr8c4 = 127
naked-single ==> hr8c8 = 389
naked-single ==> vr8c4 = 126
naked-single ==> vr9c6 = 12347
naked-single ==> vr12c10 = 68
naked-single ==> r13c10 = 8
naked-single ==> hr13c9 = 12358
hidden-single-for-magic-digit-in-verti-sector ==> r6c14 = 9
w[1]-cell-to-horiz-ctr  ==> hr7c4 ≠ 12367
w[1]-cell-to-horiz-ctr  ==> hr7c4 ≠ 12457
w[1]-ctr-to-horiz-sector  ==> r7c9 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r7c8 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r7c7 ≠ 7
w[1]-ctr-to-horiz-sector  ==> r7c5 ≠ 7
w[1]-cell-to-horiz-ctr  ==> hr7c4 ≠ 13456
w[1]-ctr-to-horiz-sector  ==> r7c9 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r7c8 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r7c7 ≠ 6
w[1]-ctr-to-horiz-sector  ==> r7c5 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr4c6 ≠ 56
w[1]-ctr-to-horiz-sector  ==> r4c8 ≠ 5
w[1]-ctr-to-horiz-sector  ==> r4c8 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr7c10 ≠ 359
w[1]-cell-to-horiz-ctr  ==> hr7c10 ≠ 368
w[1]-ctr-to-horiz-sector  ==> r7c13 ≠ 3
w[1]-ctr-to-horiz-sector  ==> r7c11 ≠ 3
w[1]-cell-to-horiz-ctr  ==> hr10c9 ≠ 13457
w[1]-cell-to-verti-ctr  ==> vr1c12 ≠ 39
w[1]-ctr-to-verti-sector  ==> r2c12 ≠ 3
w[1]-cell-to-verti-ctr  ==> vr1c3 ≠ 568
w[1]-ctr-to-verti-sector  ==> r2c3 ≠ 5
w[1]-ctr-to-verti-sector  ==> r3c3 ≠ 5
w[1]-cell-to-verti-ctr  ==> vr1c3 ≠ 469
w[1]-ctr-to-verti-sector  ==> r2c3 ≠ 6
w[1]-cell-to-verti-ctr  ==> vr1c3 ≠ 478
w[1]-ctr-to-verti-sector  ==> r2c3 ≠ 4
w[1]-cell-to-verti-ctr  ==> vr1c14 ≠ 34789
w[1]-cell-to-verti-ctr  ==> vr1c14 ≠ 35689
w[1]-ctr-to-verti-sector  ==> r5c14 ≠ 3
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 3
w[1]-cell-to-verti-ctr  ==> vr1c14 ≠ 45679
w[1]-ctr-to-verti-sector  ==> r5c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r3c14 ≠ 4
w[1]-ctr-to-verti-sector  ==> r2c14 ≠ 4
w[1]-cell-to-verti-ctr  ==> vr5c2 ≠ 145
w[1]-ctr-to-verti-sector  ==> r6c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r8c2 ≠ 4
w[1]-cell-to-verti-ctr  ==> vr5c2 ≠ 235
w[1]-ctr-to-verti-sector  ==> r8c2 ≠ 5
Starting_init_links_with_<Fact-21039>
758 candidates, 2702 csp-links and 4498 links. Density = 1.57%
starting non trivial part of solution
Entering_level_W1_with_<Fact-35442>
Entering_relation_bivalue_with_<Fact-35443>
Entering_level_S2_with_<Fact-35562>
naked-pairs-in-horiz-sector: r14{c6 c7}{n3 n4} ==> r14c8 ≠ 4, r14c8 ≠ 3, r14c3 ≠ 4, r14c3 ≠ 3, r14c2 ≠ 4, r14c2 ≠ 3
Entering_level_BC2_with_<Fact-35591>
biv-chain[2]: vr1c3{n289 n379} - r4c3{n2 n3} ==> r2c3 ≠ 3
biv-chain[2]: vr1c3{n379 n289} - r4c3{n3 n2} ==> r2c3 ≠ 2
biv-chain[2]: vr12c7{n14 n23} - r14c7{n4 n3} ==> r13c7 ≠ 3
biv-chain[2]: vr12c7{n23 n14} - r14c7{n3 n4} ==> r13c7 ≠ 4
biv-chain[2]: vr1c12{n48 n57} - r2c12{n4 n5} ==> r3c12 ≠ 5
biv-chain[2]: vr1c12{n57 n48} - r2c12{n5 n4} ==> r3c12 ≠ 4
biv-chain[2]: vr1c14{n16789 n25789} - r4c14{n1 n2} ==> r2c14 ≠ 2, r5c14 ≠ 2
biv-chain[2]: vr1c14{n25789 n16789} - r4c14{n2 n1} ==> r2c14 ≠ 1, r5c14 ≠ 1
biv-chain[2]: r2c14{n6 n5} - vr1c14{n16789 n25789} ==> r3c14 ≠ 6, r5c14 ≠ 6
w[1]-cell-to-horiz-ctr  ==> hr5c11 ≠ 136
w[1]-ctr-to-horiz-sector  ==> r5c13 ≠ 6
biv-chain[2]: vr1c14{n16789 n25789} - r2c14{n6 n5} ==> r3c14 ≠ 5, r5c14 ≠ 5
naked-single ==> r5c14 = 7
naked-single ==> r3c14 = 8
naked-single ==> r3c12 = 7
naked-single ==> vr1c12 = 57
naked-single ==> r2c12 = 5
naked-single ==> r2c14 = 6
naked-single ==> vr1c14 = 16789
naked-single ==> r4c14 = 1
naked-single ==> r4c13 = 2
naked-single ==> hr5c11 = 127
naked-single ==> r5c13 = 1
naked-single ==> r5c12 = 2
w[1]-cell-to-horiz-ctr  ==> hr7c10 ≠ 269
w[1]-cell-to-horiz-ctr  ==> hr7c10 ≠ 278
w[1]-ctr-to-horiz-sector  ==> r7c11 ≠ 2
w[1]-cell-to-verti-ctr  ==> vr1c10 ≠ 23789
biv-chain[2]: r6c12{n4 n1} - hr6c7{n2346789 n1356789} ==> r6c8 ≠ 4, r6c9 ≠ 4, r6c10 ≠ 4, r6c11 ≠ 4, r6c13 ≠ 4
biv-chain[2]: hr6c7{n2346789 n1356789} - r6c12{n4 n1} ==> r6c8 ≠ 1, r6c9 ≠ 1, r6c10 ≠ 1, r6c11 ≠ 1
biv-chain[2]: hr4c9{n14 n23} - r4c11{n1 n2} ==> r4c10 ≠ 2
w[1]-cell-to-verti-ctr  ==> vr1c10 ≠ 25679
biv-chain[2]: hr4c9{n23 n14} - r4c11{n2 n1} ==> r4c10 ≠ 1
w[1]-cell-to-verti-ctr  ==> vr1c10 ≠ 15689
biv-chain[2]: hr7c1{n69 n78} - r7c2{n6 n7} ==> r7c3 ≠ 7
biv-chain[2]: hr7c1{n78 n69} - r7c2{n7 n6} ==> r7c3 ≠ 6
naked-pairs-in-verti-sector: c3{r7 r11}{n8 n9} ==> r12c3 ≠ 9, r12c3 ≠ 8, r10c3 ≠ 9, r10c3 ≠ 8
biv-chain[2]: hr7c4{n12349 n12358} - r7c6{n9 n8} ==> r7c5 ≠ 8, r7c7 ≠ 8, r7c8 ≠ 8, r7c9 ≠ 8
biv-chain[2]: hr7c4{n12358 n12349} - r7c6{n8 n9} ==> r7c5 ≠ 9, r7c8 ≠ 9, r7c9 ≠ 9
biv-chain[2]: hr8c1{n15 n24} - r8c2{n1 n2} ==> r8c3 ≠ 2
biv-chain[2]: hr8c1{n24 n15} - r8c2{n2 n1} ==> r8c3 ≠ 1
Entering_level_W2_with_<Fact-35867>
whip[2]: vr1c6{n58 n67} - r3c6{n5 .} ==> r2c6 ≠ 7
whip[2]: vr1c6{n67 n49} - r3c6{n5 .} ==> r2c6 ≠ 9
whip[2]: r2c10{n4 n3} - r4c10{n3 .} ==> vr1c10 ≠ 35678
whip[2]: r3c10{n6 n4} - r4c10{n4 .} ==> vr1c10 ≠ 14789
w[1]-ctr-to-verti-sector  ==> r2c10 ≠ 1
w[1]-ctr-to-verti-sector  ==> r5c10 ≠ 1
whip[2]: vr3c7{n23 n14} - r4c7{n2 .} ==> r5c7 ≠ 4
whip[2]: vr4c9{n45679 n16789} - r7c9{n2 .} ==> r5c9 ≠ 1
whip[2]: vr9c2{n45689 n26789} - r13c2{n3 .} ==> r10c2 ≠ 2
whip[2]: vr6c7{n12357 n12456} - r9c7{n7 .} ==> r10c7 ≠ 6, r11c7 ≠ 6
whip[2]: vr6c7{n12456 n12357} - r9c7{n6 .} ==> r10c7 ≠ 7, r11c7 ≠ 7
whip[2]: vr6c7{n12456 n12348} - r9c7{n6 .} ==> r10c7 ≠ 8, r11c7 ≠ 8
whip[2]: vr10c9{n67 n58} - r12c9{n4 .} ==> r11c9 ≠ 8
whip[2]: vr11c13{n134 n125} - r12c13{n3 .} ==> r13c13 ≠ 5
whip[2]: r13c14{n5 n1} - r14c14{n1 .} ==> vr11c14 ≠ 169, vr11c14 ≠ 178
w[1]-ctr-to-verti-sector  ==> r14c14 ≠ 1
w[1]-ctr-to-verti-sector  ==> r13c14 ≠ 1
whip[2]: r13c14{n5 n2} - r14c14{n2 .} ==> vr11c14 ≠ 268
whip[2]: vr11c14{n457 n259} - r14c14{n3 .} ==> r13c14 ≠ 2
whip[2]: r13c14{n5 n3} - r14c14{n3 .} ==> vr11c14 ≠ 367
w[1]-ctr-to-verti-sector  ==> r12c14 ≠ 6
whip[2]: hr2c1{n45679 n16789} - r2c4{n2 .} ==> r2c5 ≠ 1
whip[2]: hr2c1{n45679 n25789} - r2c4{n1 .} ==> r2c5 ≠ 2
whip[2]: hr4c6{n47 n29} - r4c7{n3 .} ==> r4c8 ≠ 2
whip[2]: hr4c6{n47 n38} - r4c7{n2 .} ==> r4c8 ≠ 3
whip[2]: vr1c8{n123468 n123567} - r4c8{n9 .} ==> r6c8 ≠ 7, r5c8 ≠ 7
whip[2]: hr4c6{n38 n47} - r4c7{n2 .} ==> r4c8 ≠ 4
whip[2]: vr1c8{n123567 n123468} - r4c8{n9 .} ==> r6c8 ≠ 8, r5c8 ≠ 8
whip[2]: vr1c8{n123567 n123459} - r4c8{n8 .} ==> r5c8 ≠ 9
whip[2]: hr7c10{n467 n179} - r7c12{n4 .} ==> r7c11 ≠ 1
whip[2]: hr8c12{n68 n59} - r8c14{n6 .} ==> r8c13 ≠ 9
whip[2]: hr10c9{n23456 n12359} - r10c14{n6 .} ==> r10c11 ≠ 9, r10c13 ≠ 9
whip[2]: hr12c1{n57 n39} - r12c3{n4 .} ==> r12c2 ≠ 3
whip[2]: hr12c1{n57 n48} - r12c3{n3 .} ==> r12c2 ≠ 4
whip[2]: hr12c7{n46 n37} - r12c9{n4 .} ==> r12c8 ≠ 7
whip[2]: hr12c7{n46 n28} - r12c9{n4 .} ==> r12c8 ≠ 8
whip[2]: hr12c7{n46 n19} - r12c9{n4 .} ==> r12c8 ≠ 9
whip[2]: hr12c10{n5679 n3789} - r12c13{n4 .} ==> r12c11 ≠ 3, r12c12 ≠ 3, r12c14 ≠ 3
whip[2]: hr12c10{n5679 n4689} - r12c13{n3 .} ==> r12c11 ≠ 4, r12c12 ≠ 4, r12c14 ≠ 4
whip[2]: vr9c12{n12356 n12347} - r12c12{n6 .} ==> r11c12 ≠ 7, r10c12 ≠ 7
whip[2]: hr12c10{n4689 n5679} - r12c13{n3 .} ==> r12c11 ≠ 5, r12c12 ≠ 5, r12c14 ≠ 5
biv-chain[2]: vr9c12{n12347 n12356} - r12c12{n7 n6} ==> r10c12 ≠ 6, r11c12 ≠ 6
whip[2]: r7c12{n4 n1} - hr7c10{n458 .} ==> r7c11 ≠ 4, r7c13 ≠ 4
Entering_level_S3_with_<Fact-36691>
Entering_level_BC3_with_<Fact-36758>
Entering_level_W3_with_<Fact-36882>
whip[3]: r4c10{n4 n3} - r2c10{n3 n2} - vr1c10{n34589 .} ==> r5c10 ≠ 4
whip[3]: r4c10{n3 n4} - r2c10{n4 n2} - vr1c10{n34589 .} ==> r6c10 ≠ 3
whip[3]: r4c10{n3 n4} - r2c10{n4 n2} - vr1c10{n34589 .} ==> r5c10 ≠ 3
whip[3]: r4c10{n4 n3} - r2c10{n3 n2} - vr1c10{n34589 .} ==> r3c10 ≠ 4
whip[2]: r3c10{n5 n6} - vr1c10{n34589 .} ==> r6c10 ≠ 5, r5c10 ≠ 5
whip[2]: r3c10{n6 n5} - vr1c10{n24689 .} ==> r6c10 ≠ 6, r5c10 ≠ 6
whip[2]: vr1c10{n34589 n34679} - r6c10{n8 .} ==> r5c10 ≠ 7
whip[3]: vr1c10{n34679 n24689} - r4c10{n3 n4} - r2c10{n4 .} ==> r5c10 ≠ 2
naked-pairs-in-horiz-sector: r5{c6 c10}{n8 n9} ==> r5c9 ≠ 9, r5c9 ≠ 8, r5c5 ≠ 9, r5c5 ≠ 8
biv-chain[2]: r5c6{n8 n9} - r5c10{n9 n8} ==> hr5c3 ≠ 2345679
whip[3]: vr1c10{n34679 n24689} - r4c10{n3 n4} - r2c10{n4 .} ==> r6c10 ≠ 2
whip[2]: r6c10{n8 n7} - vr1c10{n24689 .} ==> r5c10 ≠ 8
naked-single ==> r5c10 = 9
naked-single ==> r5c6 = 8
naked-single ==> r7c6 = 9
naked-single ==> hr7c4 = 12349
whip[2]: vr4c9{n45679 n25789} - r7c9{n4 .} ==> r6c9 ≠ 2, r5c9 ≠ 2
Entering_level_S4_with_<Fact-37696>
naked-quads-in-verti-sector: c5{r4 r8 r6 r7}{n3 n2 n1 n4} ==> r10c5 ≠ 4, r10c5 ≠ 3, r10c5 ≠ 2, r10c5 ≠ 1, r9c5 ≠ 4, r9c5 ≠ 3, r9c5 ≠ 2, r9c5 ≠ 1, r5c5 ≠ 4, r5c5 ≠ 3, r5c5 ≠ 2, r5c5 ≠ 1, r2c5 ≠ 4, r2c5 ≠ 3
whip[2]: hr9c2{n235 n136} - r9c5{n7 .} ==> r9c3 ≠ 6
whip[2]: hr9c2{n235 n127} - r9c5{n6 .} ==> r9c3 ≠ 7
Entering_level_BC4_with_<Fact-38829>
Entering_level_W4_with_<Fact-38901>
whip[4]: c14n6{r10 r8} - hr8c12{n59 n68} - r8c13{n5 n8} - r9n8{c13 .} ==> r10c14 ≠ 8
w[1]-cell-to-horiz-ctr  ==> hr10c9 ≠ 12458
whip[2]: r10c14{n6 n9} - hr10c9{n12368 .} ==> r10c13 ≠ 6, r10c11 ≠ 6
whip[4]: c11n2{r2 r4} - hr4c9{n14 n23} - r4c10{n4 n3} - vr1c10{n24689 .} ==> r2c10 ≠ 2
verti-sector-to-ctr  ==> vr1c10 ≠ 24689
naked-pairs-in-horiz-sector: r2{c10 c13}{n3 n4} ==> r2c8 ≠ 4, r2c8 ≠ 3
Entering_level_BC5_with_<Fact-39772>
Entering_level_W5_with_<Fact-39888>
whip[5]: r3n5{c6 c5} - r3n7{c5 c3} - vr1c3{n289 n379} - r2c3{n8 n9} - c2n9{r2 .} ==> r3c6 ≠ 9
w[1]-cell-to-verti-ctr  ==> vr1c6 ≠ 49
w[1]-ctr-to-verti-sector  ==> r2c6 ≠ 4
whip[4]: r2c6{n6 n8} - r2c2{n8 n9} - r2c3{n9 n7} - r2c5{n7 .} ==> hr2c1 ≠ 34789
whip[5]: r3n5{c5 c6} - r3n7{c6 c3} - vr1c3{n289 n379} - r2c3{n8 n9} - c2n9{r2 .} ==> r3c5 ≠ 9
whip[4]: r2c2{n8 n9} - r3c2{n9 n8} - c5n8{r3 r10} - c5n9{r10 .} ==> r2c6 ≠ 8
biv-chain[2]: vr1c6{n67 n58} - r2c6{n6 n5} ==> r3c6 ≠ 5
hidden-single-in-magic-horiz-sector ==> r3c5 = 5
w[1]-cell-to-horiz-ctr  ==> hr9c2 ≠ 235
w[1]-cell-to-horiz-ctr  ==> hr9c2 ≠ 145
w[1]-ctr-to-horiz-sector  ==> r9c3 ≠ 4
w[1]-ctr-to-horiz-sector  ==> r9c3 ≠ 5
naked-pairs-in-verti-sector: c5{r5 r9}{n6 n7} ==> r10c5 ≠ 7, r10c5 ≠ 6, r2c5 ≠ 7, r2c5 ≠ 6
naked-pairs-in-horiz-sector: r2{c2 c5}{n8 n9} ==> r2c3 ≠ 9, r2c3 ≠ 8
naked-single ==> r2c3 = 7
naked-single ==> vr1c3 = 379
naked-single ==> r4c3 = 3
naked-single ==> r3c3 = 9
naked-single ==> r3c2 = 8
naked-single ==> r3c6 = 7
naked-single ==> r2c2 = 9
naked-single ==> r2c5 = 8
naked-single ==> r10c5 = 9
naked-single ==> hr10c1 = 1234579
naked-single ==> vr1c6 = 67
naked-single ==> r2c6 = 6
naked-single ==> hr2c1 = 16789
naked-single ==> r2c4 = 1
naked-single ==> r4c4 = 2
naked-single ==> r4c5 = 1
naked-single ==> r8c5 = 2
naked-single ==> r8c7 = 1
hidden-single-in-magic-verti-sector ==> r14c3 = 6
verti-sector-to-ctr  ==> vr9c2 ≠ 45689
w[1]-ctr-to-verti-sector  ==> r10c2 ≠ 4
w[1]-ctr-to-verti-sector  ==> r13c2 ≠ 4
verti-sector-to-ctr  ==> vr9c2 ≠ 26789
naked-single ==> vr9c2 = 35789
naked-pairs-in-horiz-sector: r6{c4 c5}{n3 n4} ==> r6c3 ≠ 4, r6c3 ≠ 3, r6c2 ≠ 3
verti-sector-to-ctr  ==> vr5c2 ≠ 136
naked-single ==> vr5c2 = 127
naked-single ==> r7c2 = 7
naked-single ==> hr7c1 = 78
naked-single ==> r7c3 = 8
naked-single ==> r11c3 = 9
naked-single ==> r11c2 = 8
hidden-single-for-magic-digit-in-verti-sector ==> r12c2 = 9
naked-single ==> hr12c1 = 39
naked-single ==> r12c3 = 3
hidden-single-in-magic-verti-sector ==> r10c3 = 7
horiz-sector-to-ctr  ==> hr9c2 ≠ 136
naked-single ==> hr9c2 = 127
naked-single ==> r9c5 = 7
naked-single ==> r5c5 = 6
naked-pairs-in-verti-sector: c2{r10 r13}{n3 n5} ==> r14c2 ≠ 5
naked-single ==> r14c2 = 7
naked-single ==> r14c8 = 5
naked-pairs-in-verti-sector: c3{r6 r9}{n1 n2} ==> r13c3 ≠ 2, r13c3 ≠ 1
whip[3]: vr8c8{n345679 n145789} - r10c8{n2 n4} - r12c8{n4 .} ==> r13c8 ≠ 1
biv-chain[3]: r13n1{c6 c7} - vr12c7{n23 n14} - r14n3{c7 c6} ==> r13c6 ≠ 3
whip[3]: r13c8{n3 n4} - r10c8{n4 n1} - r12c8{n1 .} ==> vr8c8 ≠ 145789
w[1]-ctr-to-verti-sector  ==> r12c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r11c8 ≠ 1
w[1]-ctr-to-verti-sector  ==> r10c8 ≠ 1
w[1]-cell-to-horiz-ctr  ==> hr12c7 ≠ 19
w[1]-ctr-to-horiz-sector  ==> r12c9 ≠ 9
whip[2]: vr10c9{n67 n49} - r12c9{n8 .} ==> r11c9 ≠ 4
Entering_level_BC6_with_<Fact-42532>
Entering_level_W6_with_<Fact-42846>
whip[6]: r5c4{n3 n4} - hr5c3{n1236789 n1345689} - r5c9{n7 n5} - r5c8{n5 n1} - r7n1{c8 c9} - vr4c9{n25789 .} ==> r5c7 ≠ 3
biv-chain[2]: r5c7{n2 n1} - vr3c7{n23 n14} ==> r4c7 ≠ 2
w[1]-cell-to-horiz-ctr  ==> hr4c6 ≠ 29
w[1]-ctr-to-horiz-sector  ==> r4c8 ≠ 9
w[1]-cell-to-verti-ctr  ==> vr1c8 ≠ 123459
whip[6]: r7n1{c8 c9} - vr4c9{n25789 n16789} - r5c9{n3 n7} - hr5c3{n1345689 n1236789} - c4n4{r5 r6} - c5n4{r6 .} ==> r7c8 ≠ 4
Entering_level_BC7_with_<Fact-44142>
biv-chain[7]: vr1c8{n123567 n123468} - r4c8{n7 n8} - hr4c6{n47 n38} - r4c7{n4 n3} - vr3c7{n14 n23} - r5c7{n1 n2} - hr5c3{n1345689 n1236789} ==> r5c8 ≠ 4
Entering_level_W7_with_<Fact-44571>
whip[7]: r7n1{c8 c9} - vr4c9{n25789 n16789} - r5c9{n3 n7} - hr5c3{n1345689 n1236789} - r5c4{n4 n3} - r5c8{n3 n1} - r2c8{n1 .} ==> r7c8 ≠ 2
whip[7]: r2c8{n2 n1} - r7n1{c8 c9} - vr4c9{n25789 n16789} - r5c9{n3 n7} - hr5c3{n1345689 n1236789} - r5c8{n5 n3} - r5c4{n3 .} ==> r6c8 ≠ 2
whip[7]: r7c9{n4 n3} - c5n3{r7 r6} - c4n3{r6 r5} - r5c9{n3 n5} - hr5c3{n1236789 n1345689} - r5c8{n2 n1} - r5c7{n1 .} ==> vr4c9 ≠ 35689
whip[6]: vr4c9{n45679 n34789} - r7c9{n1 n4} - r5c9{n4 n7} - hr5c3{n1345689 n1236789} - c4n4{r5 r6} - c5n4{r6 .} ==> r6c9 ≠ 3
Entering_level_BC8_with_<Fact-48315>
Entering_level_W8_with_<Fact-49273>
Entering_level_BC9_with_<Fact-50845>
Entering_level_W9_with_<Fact-51769>
Entering_level_BC10_with_<Fact-53506>
Entering_level_W10_with_<Fact-54338>
whip[10]: c5n3{r7 r6} - c4n3{r6 r5} - c8n3{r5 r6} - r7c8{n3 n1} - r2c8{n1 n2} - r5c8{n2 n5} - hr5c3{n1236789 n1345689} - r5c9{n7 n4} - r7c9{n4 n2} - vr4c9{n16789 .} ==> r7c7 ≠ 3
Entering_level_BC11_with_<Fact-57791>
biv-chain[11]: r2n4{c10 c13} - r3n4{c13 c8} - vr1c8{n123567 n123468} - r4c8{n7 n8} - hr4c6{n47 n38} - r4c7{n4 n3} - vr3c7{n14 n23} - r5c7{n1 n2} - c8n2{r5 r2} - c11n2{r2 r4} - hr4c9{n14 n23} ==> r4c10 ≠ 4
naked-single ==> r4c10 = 3
naked-single ==> r2c10 = 4
naked-single ==> r2c13 = 3
naked-single ==> hr4c9 = 23
naked-single ==> r4c11 = 2
naked-single ==> r2c11 = 1
naked-single ==> r2c8 = 2
whip[2]: hr10c9{n23456 n12368} - r10c13{n7 .} ==> r10c11 ≠ 8
whip[8]: r6n3{c11 c8} - r7c8{n3 n1} - r5c8{n1 n5} - vr1c8{n123468 n123567} - r3n4{c8 c13} - r3n5{c13 c10} - vr1c10{n34679 n34589} - r6c10{n7 .} ==> r6c11 ≠ 8
Entering_level_W11_with_<Fact-59333>
Entering_level_BC12_with_<Fact-60215>
Entering_level_W12_with_<Fact-60331>
Entering_level_BC13_with_<Fact-61243>
Entering_level_W13_with_<Fact-61305>
Entering_level_BC14_with_<Fact-62268>
Entering_level_W14_with_<Fact-62294>
Entering_level_BC15_with_<Fact-63345>
Entering_level_W15_with_<Fact-63351>
Entering_level_BC16_with_<Fact-64521>
Entering_level_W16_with_<Fact-64523>
Entering_level_BC17_with_<Fact-65843>
Entering_level_W17_with_<Fact-65845>
whip[17]: r7n1{c8 c9} - vr4c9{n25789 n16789} - r5c9{n3 n7} - hr5c3{n1345689 n1236789} - r5c8{n5 n1} - r5c7{n1 n2} - vr3c7{n14 n23} - r4c7{n4 n3} - hr4c6{n47 n38} - r4c8{n7 n8} - vr1c8{n123567 n123468} - r6c8{n5 n6} - r6c9{n6 n8} - r6c10{n8 n7} - r6c13{n7 n5} - r3n5{c13 c10} - vr1c10{n34679 .} ==> r7c8 ≠ 3
naked-single ==> r7c8 = 1
w[1]-cell-to-verti-ctr  ==> vr4c9 ≠ 16789
biv-chain[2]: r5c8{n5 n3} - r5c4{n3 n4} ==> hr5c3 ≠ 1236789
naked-single ==> hr5c3 = 1345689
naked-single ==> r5c7 = 1
naked-single ==> vr3c7 = 14
naked-single ==> r4c7 = 4
naked-single ==> hr4c6 = 47
naked-single ==> r4c8 = 7
naked-single ==> vr1c8 = 123567
hidden-single-in-magic-horiz-sector ==> r3c13 = 4
whip[2]: hr10c9{n23456 n12467} - r10c13{n8 .} ==> r10c11 ≠ 7
whip[8]: r6c10{n8 n7} - vr1c10{n34589 n34679} - r3n5{c10 c8} - r5c8{n5 n3} - r5c4{n3 n4} - r5c9{n4 n5} - r6c9{n5 n6} - r6c8{n6 .} ==> r6c13 ≠ 8
whip[15]: hr8c12{n59 n68} - r8c14{n9 n8} - r9n8{c14 c13} - c13n9{r9 r7} - hr7c10{n467 n179} - c12n4{r7 r6} - hr6c7{n1356789 n2346789} - r6c13{n5 n7} - r6c10{n7 n8} - r6c9{n8 n6} - vr4c9{n34789 n45679} - r7c9{n2 n4} - r5c9{n4 n5} - r5c8{n5 n3} - r6c8{n3 .} ==> r8c13 ≠ 6
biv-chain[2]: r8c13{n8 n5} - hr8c12{n68 n59} ==> r8c14 ≠ 8
hidden-single-in-magic-verti-sector ==> r9c14 = 8
naked-single ==> r9c13 = 9
whip[4]: r10c13{n8 n5} - r8c13{n5 n8} - hr8c12{n59 n68} - c14n9{r8 .} ==> hr10c9 ≠ 23456
whip[2]: hr10c9{n12467 n12359} - r10c13{n7 .} ==> r10c12 ≠ 5, r10c11 ≠ 5
whip[5]: r8c13{n5 n8} - hr8c12{n59 n68} - c14n9{r8 r10} - hr10c9{n12368 n12359} - r10c13{n7 .} ==> r7c13 ≠ 5
whip[2]: hr7c10{n467 n458} - r7c13{n7 .} ==> r7c11 ≠ 8
whip[5]: r8c13{n5 n8} - hr8c12{n59 n68} - c14n9{r8 r10} - hr10c9{n12368 n12359} - r10c13{n7 .} ==> r6c13 ≠ 5
biv-chain[4]: r6c13{n6 n7} - r6c10{n7 n8} - vr1c10{n34679 n34589} - r3n6{c10 c8} ==> r6c8 ≠ 6
naked-pairs-in-verti-sector: c8{r5 r6}{n3 n5} ==> r3c8 ≠ 5
naked-single ==> r3c8 = 6
naked-single ==> r3c10 = 5
naked-single ==> vr1c10 = 34589
naked-single ==> r6c10 = 8
Entering_level_BC18_with_<Fact-72241>
Entering_level_W18_with_<Fact-72243>
Entering_level_BC19_with_<Fact-73651>
Entering_level_W19_with_<Fact-73653>
Entering_level_BC20_with_<Fact-74989>
Entering_level_W20_with_<Fact-74991>
Entering_level_W21_with_<Fact-76148>
Entering_level_W22_with_<Fact-77167>
whip[22]: r10c4{n1 n2} - r9c4{n2 n1} - r9c3{n1 n2} - r6n2{c3 c2} - r8c2{n2 n1} - hr8c1{n24 n15} - c3n4{r8 r13} - r13c6{n4 n2} - r13c8{n2 n3} - r10c8{n3 n4} - vr8c8{n235789 n345679} - r12c8{n2 n6} - hr12c7{n37 n46} - r12c9{n8 n4} - vr10c9{n67 n49} - r11c9{n7 n9} - r11c8{n9 n7} - hr11c5{n1234689 n1235679} - r11c6{n4 n3} - r14n3{c6 c7} - vr12c7{n14 n23} - r13n1{c7 .} ==> r10c6 ≠ 1
hidden-single-for-magic-digit-in-horiz-sector ==> r10c4 = 1
naked-single ==> r9c4 = 2
naked-single ==> r9c3 = 1
naked-single ==> r6c3 = 2
naked-single ==> r6c2 = 1
naked-single ==> r8c2 = 2
naked-single ==> hr8c1 = 24
naked-single ==> r8c3 = 4
naked-single ==> r13c3 = 5
naked-single ==> r13c2 = 3
naked-single ==> r10c2 = 5
whip[3]: r13c8{n2 n4} - vr8c8{n235789 n245689} - r10c8{n3 .} ==> r12c8 ≠ 2
w[1]-cell-to-horiz-ctr  ==> hr12c7 ≠ 28
w[1]-ctr-to-horiz-sector  ==> r12c9 ≠ 8
w[1]-cell-to-verti-ctr  ==> vr10c9 ≠ 58
w[1]-ctr-to-verti-sector  ==> r11c9 ≠ 5
whip[3]: r12c8{n6 n3} - r10c8{n3 n2} - r13c8{n2 .} ==> vr8c8 ≠ 235789
whip[3]: vr8c8{n245689 n345679} - r10c8{n2 n4} - r13c8{n4 .} ==> r12c8 ≠ 3
w[1]-cell-to-horiz-ctr  ==> hr12c7 ≠ 37
naked-single ==> hr12c7 = 46
biv-chain[2]: r12c9{n6 n4} - vr10c9{n67 n49} ==> r11c9 ≠ 6
whip[3]: vr8c8{n245689 n345679} - r10c8{n2 n4} - r13c8{n4 .} ==> r11c8 ≠ 3
whip[3]: vr8c8{n345679 n245689} - r10c8{n3 n4} - r13c8{n4 .} ==> r11c8 ≠ 2
whip[3]: r13c8{n4 n2} - vr8c8{n345679 n245689} - r10c8{n3 .} ==> r11c8 ≠ 4
whip[3]: r13c8{n4 n2} - vr8c8{n345679 n245689} - r10c8{n3 .} ==> r12c8 ≠ 4
naked-single ==> r12c8 = 6
naked-single ==> r12c9 = 4
naked-single ==> vr10c9 = 49
naked-single ==> r11c9 = 9
hidden-single-for-magic-digit-in-verti-sector ==> r9c8 = 9
hidden-single-for-magic-digit-in-verti-sector ==> r8c9 = 9
naked-single ==> r8c11 = 8
hidden-single-for-magic-digit-in-horiz-sector ==> r11c11 = 6
naked-single ==> r9c11 = 7
naked-single ==> r12c11 = 9
naked-single ==> r7c11 = 5
naked-single ==> hr7c10 = 458
naked-single ==> r7c13 = 8
naked-single ==> r8c13 = 5
naked-single ==> r10c13 = 7
naked-single ==> r6c13 = 6
naked-single ==> r7c12 = 4
naked-single ==> r6c12 = 1
naked-single ==> hr6c7 = 1356789
naked-single ==> r6c11 = 3
naked-single ==> r6c8 = 5
naked-single ==> r6c9 = 7
naked-single ==> r5c8 = 3
naked-single ==> r5c4 = 4
naked-single ==> r6c4 = 3
naked-single ==> r6c5 = 4
naked-single ==> r7c5 = 3
naked-single ==> r5c9 = 5
naked-single ==> hr10c9 = 12467
naked-single ==> r10c14 = 6
naked-single ==> r8c14 = 9
naked-single ==> hr8c12 = 59
w[1]-cell-to-verti-ctr  ==> vr11c14 ≠ 349
w[1]-cell-to-verti-ctr  ==> vr11c14 ≠ 259
w[1]-ctr-to-verti-sector  ==> r14c14 ≠ 2
w[1]-cell-to-verti-ctr  ==> vr6c7 ≠ 12357
biv-chain[2]: vr11c14{n457 n358} - r14c14{n4 n3} ==> r13c14 ≠ 3
naked-single ==> r13c14 = 5
biv-chain[4]: c6n1{r11 r13} - r13c7{n1 n2} - vr12c7{n14 n23} - r14n4{c7 c6} ==> r11c6 ≠ 4
whip[6]: vr11c13{n125 n134} - r12c13{n5 n4} - hr12c10{n5679 n4689} - r12c14{n7 n8} - vr11c14{n457 n358} - r14c14{n4 .} ==> r14c13 ≠ 3
whip[6]: r11c10{n2 n1} - r11c6{n1 n3} - r14c6{n3 n4} - r13n4{c6 c8} - r10n4{c8 c7} - r7c7{n4 .} ==> r11c7 ≠ 2
whip[8]: vr11c13{n134 n125} - r12c13{n4 n5} - hr12c10{n4689 n5679} - r12c14{n8 n7} - vr11c14{n358 n457} - r14n3{c14 c12} - r13c12{n3 n1} - r13c11{n1 .} ==> r13c13 ≠ 2
whip[5]: r13c11{n2 n1} - c13n1{r13 r14} - r14n2{c13 c12} - r13c12{n2 n3} - r13c13{n3 .} ==> r10c11 ≠ 2
whip[8]: vr9c12{n12356 n12347} - r12c12{n6 n7} - r12c14{n7 n8} - hr12c10{n5679 n3789} - r12c13{n4 n3} - r13c13{n3 n1} - r14c13{n1 n2} - vr11c13{n134 .} ==> r14c12 ≠ 4
whip[5]: c10n1{r11 r10} - r10c11{n1 n4} - r10c12{n4 n2} - r13c12{n2 n3} - r14c12{n3 .} ==> r11c12 ≠ 1
whip[8]: r13c11{n2 n1} - r13c13{n1 n3} - vr11c13{n125 n134} - r12c13{n5 n4} - r14n4{c13 c14} - vr11c14{n358 n457} - r12c14{n8 n7} - hr12c10{n4689 .} ==> r14c11 ≠ 2
hidden-single-in-magic-verti-sector ==> r13c11 = 2
biv-chain[3]: r13c12{n3 n1} - c13n1{r13 r14} - r14n2{c13 c12} ==> r14c12 ≠ 3
hidden-single-in-magic-horiz-sector ==> r14c14 = 3
naked-single ==> vr11c14 = 358
naked-single ==> r12c14 = 8
w[1]-ctr-to-horiz-sector  ==> r12c13 ≠ 5
w[1]-cell-to-verti-ctr  ==> vr11c13 ≠ 125
naked-single ==> vr11c13 = 134
hidden-single-in-magic-horiz-sector ==> r14c12 = 2
naked-pairs-in-horiz-sector: r10{c11 c12}{n1 n4} ==> r10c10 ≠ 1
naked-single ==> r10c10 = 2
naked-single ==> r11c10 = 1
hidden-single-for-magic-digit-in-verti-sector ==> r13c6 = 1
naked-single ==> r13c7 = 2
naked-single ==> r13c8 = 4
naked-single ==> vr12c7 = 23
naked-single ==> r14c7 = 3
naked-single ==> r14c6 = 4
hidden-single-for-magic-digit-in-horiz-sector ==> r10c7 = 4
naked-single ==> r7c7 = 2
naked-single ==> r7c9 = 4
naked-single ==> vr4c9 = 45679
naked-single ==> r9c9 = 6
naked-single ==> r9c7 = 8
naked-single ==> vr6c7 = 12348
naked-single ==> r11c7 = 3
naked-single ==> r11c6 = 2
naked-single ==> r10c6 = 3
naked-single ==> r10c8 = 2
naked-single ==> vr8c8 = 245689
naked-single ==> r11c8 = 8
naked-single ==> hr11c5 = 1234689
naked-single ==> r11c12 = 4
naked-single ==> r10c12 = 1
naked-single ==> r13c12 = 3
naked-single ==> r13c13 = 1
naked-single ==> r14c13 = 4
naked-single ==> r14c11 = 1
naked-single ==> r12c13 = 3
naked-single ==> r10c11 = 4
naked-single ==> hr12c10 = 3789
naked-single ==> r12c12 = 7
PUZZLE SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[22]

--------------
-97186-2741536
-89657-6953748
-5321-47-32-21
---4681359-217
-12345-5783169
-78-39214-548-
-24-271-938-59
--127-89647-98
-5719342-24176
-896-2389164--
-93-97-64-9738
-3576124-82315
-7698435-61243
Puzzle (31 . . . . . 28 . . . . . . . / 35 . . . . . 42 . . . . . . . / 11 . . . . 11 . . 5 . . 3 . . / B B 36 . . . . . . . 10 . . . / 15 . . . . . 39 . . . . . . . / 15 . . 19 . . . . . 17 . . . B / 6 . . 10 . . . 20 . . . 14 . . / B 10 . . . 34 . . . . . 17 . . / 31 . . . . . . . 20 . . . . . / 23 . . . 33 . . . . . . . B B / 12 . . 16 . . 10 . . 27 . . . . / 28 . . . . . . . 19 . . . . . / 42 . . . . . . . 16 . . . . . // 22 . . . 10 . . . 32 . . . . . / 19 . . . 45 . . . . . . . . . / 16 . . . . . B 9 . . . 16 . . / 45 . . . . . . . . . 23 . . . / 13 . . 29 . . . . 17 . . . . . / B B 5 . . 18 . . . . . 5 . . / 24 . . . . . . 34 . . . . . . / 16 . . 31 . . . . . 13 . . B B / 29 . . . . . 10 . . . . 14 . . / 6 . . . 45 . . . . . . . . . / 12 . . 7 . . . B 17 . . . . . / 45 . . . . . . . . . 8 . . . / 31 . . . . . 23 . . . 16 . . . //) :
init-time = 8.11s, solve-time = 9.54s, total-time = 17.65s
nb-facts=<Fact-81284>
***********************************************************************************************
***  KakuRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



