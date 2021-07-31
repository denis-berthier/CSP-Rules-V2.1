
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              RESOLUTION PATHS FOR THE MAGICTOUR TOP 1465 COLLECTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







#7 SER= 9.2

.4..1.2..
.....9.7.
.1.......
...43.6..
8......5.
...2.....
7.5..8...
...6..3..
9........

(solve ".4..1.2.......9.7..1..........43.6..8......5....2.....7.5..8......6..3..9........")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
.4..1.2.......9.7..1..........43.6..8......5....2.....7.5..8......6..3..9........
18 givens, 286 candidates
entering BRT
hidden-single-in-a-block ==> r6c5 = 8
Starting_init_links_with_<Fact-6655>
277 candidates, 2115 csp-links and 2115 links. Density = 5.53%
starting non trivial part of solution
Entering_level_W1_with_<Fact-18712>
whip[1]: c2n9{r6 .} ==> r6c3 ≠ 9, r4c3 ≠ 9, r5c3 ≠ 9
whip[1]: c2n7{r6 .} ==> r6c3 ≠ 7, r4c3 ≠ 7, r5c3 ≠ 7
whip[1]: b5n5{r6c6 .} ==> r9c6 ≠ 5, r1c6 ≠ 5, r3c6 ≠ 5, r8c6 ≠ 5
whip[1]: b5n9{r5c5 .} ==> r5c9 ≠ 9, r5c2 ≠ 9, r5c7 ≠ 9
Entering_relation_bivalue_with_<Fact-18721>
Entering_level_S2_with_<Fact-18762>
hidden-pairs-in-a-column: c3{n7 n9}{r1 r3} ==> r3c3 ≠ 8, r3c3 ≠ 6, r3c3 ≠ 3, r3c3 ≠ 2, r1c3 ≠ 8, r1c3 ≠ 6, r1c3 ≠ 3
whip[1]: b1n8{r2c3 .} ==> r2c4 ≠ 8, r2c7 ≠ 8, r2c9 ≠ 8
Entering_level_TyBC2_with_<Fact-18792>
Entering_level_BC2_with_<Fact-18807>
Entering_level_TyZ2_with_<Fact-18840>
Entering_level_Z2_with_<Fact-18842>
Entering_level_TytW2_with_<Fact-18844>
Entering_level_tW2_with_<Fact-18845>
Entering_level_TyW2_with_<Fact-18846>
Entering_level_W2_with_<Fact-19684>
Entering_level_S3_with_<Fact-19685>
Entering_level_TyBC3_with_<Fact-19689>
Entering_level_BC3_with_<Fact-19690>
Entering_level_TyZ3_with_<Fact-19691>
Entering_level_Z3_with_<Fact-19876>
Entering_level_TytW3_with_<Fact-20149>
Entering_level_TyW3_with_<Fact-20401>
Entering_level_tW3_with_<Fact-20403>
Entering_level_W3_with_<Fact-20744>
Entering_level_S4_with_<Fact-20745>
Entering_level_TyBC4_with_<Fact-20749>
Entering_level_BC4_with_<Fact-20750>
Entering_level_TyZ4_with_<Fact-20751>
Entering_level_Z4_with_<Fact-20774>
z-chain[4]: c2n9{r6 r4} - c2n5{r4 r2} - r2c4{n5 n3} - r7n3{c4 .} ==> r6c2 ≠ 3
z-chain[4]: c1n4{r8 r6} - c8n4{r6 r3} - c6n4{r3 r9} - b7n4{r9c3 .} ==> r8c9 ≠ 4
Entering_level_TytW4_with_<Fact-20927>
Entering_level_TyW4_with_<Fact-21001>
Entering_level_tW4_with_<Fact-21003>
Entering_level_W4_with_<Fact-21279>
Entering_level_TyBC5_with_<Fact-21280>
Entering_level_BC5_with_<Fact-21281>
Entering_level_TyZ5_with_<Fact-21282>
Entering_level_Z5_with_<Fact-21284>
z-chain[5]: c7n8{r9 r3} - c7n5{r3 r2} - r2n1{c7 c9} - r2n4{c9 c5} - r7n4{c5 .} ==> r9c7 ≠ 4
Entering_level_TytW5_with_<Fact-21356>
Entering_level_TyW5_with_<Fact-21385>
Entering_level_tW5_with_<Fact-21387>
Entering_level_W5_with_<Fact-21639>
whip[5]: c1n4{r6 r8} - c1n1{r8 r4} - r4c3{n1 n2} - r5n2{c3 c9} - r5n3{c9 .} ==> r6c1 ≠ 3
whip[1]: c1n3{r3 .} ==> r2c2 ≠ 3, r2c3 ≠ 3
Entering_level_TyBC6_with_<Fact-21657>
Entering_level_BC6_with_<Fact-21658>
Entering_level_TyZ6_with_<Fact-21659>
Entering_level_Z6_with_<Fact-21661>
Entering_level_TytW6_with_<Fact-21699>
Entering_level_TyW6_with_<Fact-21722>
Entering_level_tW6_with_<Fact-21724>
Entering_level_W6_with_<Fact-22009>
whip[6]: r8n7{c6 c9} - r4n7{c9 c2} - c2n9{r4 r6} - c2n5{r6 r2} - r2c4{n5 n3} - b8n3{r7c4 .} ==> r9c6 ≠ 7
whip[6]: c8n2{r9 r4} - r4n8{c8 c9} - r4n9{c9 c2} - r4n7{c2 c6} - r8n7{c6 c5} - r8n5{c5 .} ==> r8c9 ≠ 2
Entering_level_TyBC7_with_<Fact-22010>
Entering_level_BC7_with_<Fact-22011>
Entering_level_TyZ7_with_<Fact-22012>
Entering_level_Z7_with_<Fact-22014>
Entering_level_TytW7_with_<Fact-22032>
Entering_level_TyW7_with_<Fact-22039>
Entering_level_tW7_with_<Fact-22041>
Entering_level_W7_with_<Fact-22351>
whip[7]: r4c3{n1 n2} - r4c1{n2 n5} - c2n5{r6 r2} - r2c4{n5 n3} - r7n3{c4 c2} - r5n3{c2 c9} - r5n2{c9 .} ==> r5c3 ≠ 1
Entering_level_TyBC8_with_<Fact-22377>
Entering_level_BC8_with_<Fact-22378>
Entering_level_TyZ8_with_<Fact-22379>
Entering_level_Z8_with_<Fact-22381>
Entering_level_TytW8_with_<Fact-22384>
Entering_level_TyW8_with_<Fact-22385>
Entering_level_tW8_with_<Fact-22387>
Entering_level_W8_with_<Fact-22703>
Entering_level_TyBC9_with_<Fact-22704>
Entering_level_BC9_with_<Fact-22705>
Entering_level_TyZ9_with_<Fact-22706>
Entering_level_Z9_with_<Fact-22708>
Entering_level_TytW9_with_<Fact-22711>
Entering_level_TyW9_with_<Fact-22712>
Entering_level_tW9_with_<Fact-22714>
Entering_level_W9_with_<Fact-23127>
Entering_level_TyBC10_with_<Fact-23128>
Entering_level_BC10_with_<Fact-23129>
Entering_level_TyZ10_with_<Fact-23130>
Entering_level_Z10_with_<Fact-23132>
Entering_level_TytW10_with_<Fact-23135>
Entering_level_TyW10_with_<Fact-23136>
Entering_level_tW10_with_<Fact-23138>
Entering_level_W10_with_<Fact-23760>
whip[10]: r8n5{c9 c5} - r8n9{c5 c8} - r7c7{n9 n4} - r7n1{c7 c4} - r9n1{c6 c3} - r4c3{n1 n2} - r5n2{c3 c9} - r5n4{c9 c3} - c3n3{r5 r6} - b6n3{r6c8 .} ==> r8c9 ≠ 1
whip[10]: c7n7{r6 r9} - c7n8{r9 r3} - c7n5{r3 r2} - r2c4{n5 n3} - r7n3{c4 c2} - r5n3{c2 c3} - r5n2{c3 c2} - r8c2{n2 n8} - r2c2{n8 n6} - r9c2{n6 .} ==> r5c9 ≠ 7
Entering_level_TyBC11_with_<Fact-23819>
Entering_level_BC11_with_<Fact-23820>
Entering_level_TyZ11_with_<Fact-23821>
Entering_level_Z11_with_<Fact-23823>
Entering_level_TytW11_with_<Fact-23826>
Entering_level_TyW11_with_<Fact-23827>
Entering_level_tW11_with_<Fact-23829>
Entering_level_W11_with_<Fact-24816>
whip[11]: r4c3{n1 n2} - r5n2{c3 c9} - r5n1{c9 c7} - r5n4{c7 c3} - b7n4{r8c3 r8c1} - c1n1{r8 r6} - r4c1{n1 n5} - c2n5{r6 r2} - r2c4{n5 n3} - r7n3{c4 c2} - r5n3{c2 .} ==> r4c6 ≠ 1
Entering_level_TyBC12_with_<Fact-25095>
Entering_level_BC12_with_<Fact-25096>
Entering_level_TyZ12_with_<Fact-25097>
Entering_level_Z12_with_<Fact-25099>
Entering_level_TytW12_with_<Fact-25102>
Entering_level_TyW12_with_<Fact-25103>
Entering_level_tW12_with_<Fact-25105>
Entering_level_W12_with_<Fact-26714>
whip[12]: r8n5{c5 c9} - r8n7{c9 c6} - c6n2{r8 r3} - c6n4{r3 r9} - c6n3{r9 r1} - r2c4{n3 n5} - b3n5{r2c9 r3c7} - c7n8{r3 r9} - r9n7{c7 c9} - r4n7{c9 c2} - c2n5{r4 r6} - c2n9{r6 .} ==> r8c5 ≠ 2
whip[12]: r8n5{c5 c9} - r8n7{c9 c6} - c6n4{r8 r3} - c6n2{r3 r9} - c6n3{r9 r1} - r2c4{n3 n5} - b3n5{r2c9 r3c7} - c7n8{r3 r9} - r9n7{c7 c9} - r4n7{c9 c2} - c2n5{r4 r6} - c2n9{r6 .} ==> r8c5 ≠ 4
Entering_level_TyBC13_with_<Fact-26715>
Entering_level_BC13_with_<Fact-26716>
Entering_level_TyZ13_with_<Fact-26717>
Entering_level_Z13_with_<Fact-26719>
Entering_level_TytW13_with_<Fact-26722>
Entering_level_TyW13_with_<Fact-26723>
Entering_level_tW13_with_<Fact-26725>
Entering_level_W13_with_<Fact-29095>
whip[13]: c7n8{r3 r9} - c7n5{r9 r2} - r2c4{n5 n3} - r7n3{c4 c2} - r9n3{c3 c6} - c6n4{r9 r8} - c1n4{r8 r6} - r5n4{c3 c9} - r5n3{c9 c3} - r5n2{c3 c2} - r8c2{n2 n8} - r2c2{n8 n6} - r9c2{n6 .} ==> r3c7 ≠ 4
whip[13]: r4c3{n2 n1} - r4c1{n1 n5} - c2n5{r6 r2} - r2c4{n5 n3} - r7n3{c4 c2} - r5n3{c2 c9} - r5n4{c9 c7} - r2c7{n4 n1} - r7c7{n1 n9} - r8n9{c9 c5} - r8n5{c5 c9} - r8n7{c9 c6} - r4c6{n7 .} ==> r5c3 ≠ 2
whip[5]: r5n2{c9 c2} - r4c3{n2 n1} - r4c1{n1 n5} - c6n5{r4 r6} - r6n1{c6 .} ==> r5c9 ≠ 1
whip[8]: r5n2{c9 c2} - r4c3{n2 n1} - r4c1{n1 n5} - r4c6{n5 n7} - r5n7{c4 c7} - r5n4{c7 c3} - b7n4{r8c3 r8c1} - c1n1{r8 .} ==> r5c9 ≠ 3
whip[1]: b6n3{r6c9 .} ==> r6c3 ≠ 3
whip[10]: r7n4{c9 c5} - r2n4{c5 c7} - r5n4{c7 c3} - c3n3{r5 r9} - b8n3{r9c4 r7c4} - b8n9{r7c4 r8c5} - r8n5{c5 c9} - b9n7{r8c9 r9c7} - c7n8{r9 r3} - c7n5{r3 .} ==> r9c9 ≠ 4
whip[12]: r5n4{c9 c3} - c3n3{r5 r9} - b8n3{r9c4 r7c4} - r2c4{n3 n5} - r2c7{n5 n1} - r7c7{n1 n9} - c4n9{r7 r5} - c5n9{r5 r8} - r8n5{c5 c9} - r8n7{c9 c6} - b5n7{r4c6 r5c5} - r5c7{n7 .} ==> r6c7 ≠ 4
Entering_level_TyBC14_with_<Fact-55388>
Entering_level_BC14_with_<Fact-55389>
Entering_level_TyZ14_with_<Fact-55390>
Entering_level_Z14_with_<Fact-55392>
Entering_level_TytW14_with_<Fact-55395>
Entering_level_TyW14_with_<Fact-55396>
Entering_level_tW14_with_<Fact-55398>
Entering_level_W14_with_<Fact-77011>
whip[14]: r5n2{c9 c2} - r4c3{n2 n1} - r4c1{n1 n5} - r4c6{n5 n7} - r4c2{n7 n9} - c2n5{r4 r2} - r2c4{n5 n3} - r1c6{n3 n6} - b5n6{r5c6 r5c5} - r5n7{c5 c7} - b9n7{r9c7 r8c9} - r8n5{c9 c5} - c5n9{r8 r7} - r7n2{c5 .} ==> r9c9 ≠ 2
whip[14]: c3n3{r5 r9} - b8n3{r9c4 r7c4} - c4n9{r7 r5} - r5c5{n9 n7} - r5c6{n7 n1} - b8n1{r8c6 r9c4} - b8n7{r9c4 r8c6} - r4c6{n7 n5} - r6c6{n5 n6} - r1c6{n6 n3} - r2c4{n3 n5} - c2n5{r2 r6} - c2n7{r6 r4} - c2n9{r4 .} ==> r5c3 ≠ 6
Entering_level_TyBC15_with_<Fact-78509>
Entering_level_BC15_with_<Fact-78510>
Entering_level_TyZ15_with_<Fact-78511>
Entering_level_Z15_with_<Fact-78513>
Entering_level_TytW15_with_<Fact-78516>
Entering_level_TyW15_with_<Fact-78517>
Entering_level_tW15_with_<Fact-78519>
Entering_level_W15_with_<Fact-87860>
Entering_level_TyBC16_with_<Fact-87861>
Entering_level_BC16_with_<Fact-87862>
Entering_level_TyZ16_with_<Fact-87863>
Entering_level_Z16_with_<Fact-87865>
Entering_level_TytW16_with_<Fact-87868>
Entering_level_TyW16_with_<Fact-87869>
Entering_level_tW16_with_<Fact-87871>
Entering_level_W16_with_<Fact-100699>
whip[16]: c2n5{r6 r2} - r2c4{n5 n3} - c6n3{r3 r9} - c3n3{r9 r5} - b4n4{r5c3 r6c3} - b7n4{r8c3 r8c1} - c6n4{r8 r3} - c6n2{r3 r8} - r8c2{n2 n8} - r8c3{n8 n1} - r4c3{n1 n2} - b6n2{r4c8 r5c9} - r5n4{c9 c7} - r2c7{n4 n1} - r7c7{n1 n9} - r8c8{n9 .} ==> r6c1 ≠ 5
biv-chain[3]: c2n9{r4 r6} - r6n5{c2 c6} - r4c6{n5 n7} ==> r4c2 ≠ 7
biv-chain[3]: c2n7{r5 r6} - r6n5{c2 c6} - r4c6{n5 n7} ==> r5c4 ≠ 7, r5c5 ≠ 7, r5c6 ≠ 7
whip[1]: b5n7{r6c6 .} ==> r1c6 ≠ 7, r3c6 ≠ 7, r8c6 ≠ 7
hidden-pairs-in-a-column: c6{n5 n7}{r4 r6} ==> r6c6 ≠ 6, r6c6 ≠ 1
whip[1]: b5n1{r5c6 .} ==> r5c7 ≠ 1
whip[1]: r6n6{c3 .} ==> r5c2 ≠ 6
hidden-pairs-in-a-row: r8{n5 n7}{c5 c9} ==> r8c9 ≠ 9, r8c9 ≠ 8, r8c5 ≠ 9
hidden-single-in-a-row ==> r8c8 = 9
whip[1]: b9n8{r9c9 .} ==> r9c2 ≠ 8, r9c3 ≠ 8
z-chain[5]: c7n5{r3 r9} - c7n8{r9 r3} - r1n8{c8 c4} - r1n7{c4 c3} - r1n9{c3 .} ==> r1c9 ≠ 5
biv-chain[3]: r1n5{c1 c4} - r2c4{n5 n3} - r1c6{n3 n6} ==> r1c1 ≠ 6
t-whip-rc[5]: r1c1{n5 n3} - r1c6{n3 n6} - r1c8{n6 n8} - r1c9{n8 n9} - r3c7{n9 .} ==> r3c1 ≠ 5
t-whip-cn[5]: c2n9{r4 r6} - c7n9{r6 r3} - c7n8{r3 r9} - c7n5{r9 r2} - c2n5{r2 .} ==> r4c2 ≠ 2
t-whip[5]: c2n7{r5 r6} - c2n9{r6 r4} - c2n5{r4 r2} - r2c4{n5 n3} - r7n3{c4 .} ==> r5c2 ≠ 3
hidden-single-in-a-block ==> r5c3 = 3
whip[1]: r5n4{c9 .} ==> r6c8 ≠ 4, r6c9 ≠ 4
biv-chain[3]: b6n4{r5c9 r5c7} - r7c7{n4 n1} - b3n1{r2c7 r2c9} ==> r2c9 ≠ 4
biv-chain[5]: b3n1{r2c9 r2c7} - r7c7{n1 n4} - r5c7{n4 n7} - r5c2{n7 n2} - r4c3{n2 n1} ==> r4c9 ≠ 1
t-whip[5]: r2n4{c5 c7} - r5c7{n4 n7} - c2n7{r5 r6} - c2n9{r6 r4} - c2n5{r4 .} ==> r2c5 ≠ 5
whip-rc[6]: r4c3{n2 n1} - r4c1{n1 n5} - r1c1{n5 n3} - r1c6{n3 n6} - r1c8{n6 n8} - r4c8{n8 .} ==> r4c9 ≠ 2
biv-chain[3]: c9n2{r7 r5} - b6n4{r5c9 r5c7} - r7c7{n4 n1} ==> r7c9 ≠ 1
t-whip[6]: r2n1{c9 c7} - r7c7{n1 n4} - r5c7{n4 n7} - c2n7{r5 r6} - c2n9{r6 r4} - c2n5{r4 .} ==> r2c9 ≠ 5
t-whip[6]: r5c2{n2 n7} - r5c7{n7 n4} - r7c7{n4 n1} - r2c7{n1 n5} - r2c4{n5 n3} - r7n3{c4 .} ==> r7c2 ≠ 2
t-whip[6]: r7c7{n1 n4} - r5c7{n4 n7} - c2n7{r5 r6} - c2n9{r6 r4} - c2n5{r4 r2} - r2c7{n5 .} ==> r9c7 ≠ 1, r6c7 ≠ 1
t-whip[6]: r2c4{n5 n3} - r1c6{n3 n6} - r5c6{n6 n1} - r5c4{n1 n9} - r7c4{n9 n1} - c7n1{r7 .} ==> r2c7 ≠ 5
whip[1]: b3n5{r3c9 .} ==> r3c4 ≠ 5, r3c5 ≠ 5
whip[1]: c5n5{r9 .} ==> r9c4 ≠ 5
naked-pairs-in-a-column: c7{r2 r7}{n1 n4} ==> r5c7 ≠ 4
naked-single ==> r5c7 = 7
naked-single ==> r5c2 = 2
naked-single ==> r4c3 = 1
naked-single ==> r4c1 = 5
naked-single ==> r1c1 = 3
naked-single ==> r1c6 = 6
naked-single ==> r1c8 = 8
naked-single ==> r1c9 = 9
naked-single ==> r1c3 = 7
naked-single ==> r1c4 = 5
naked-single ==> r2c4 = 3
naked-single ==> r3c3 = 9
naked-single ==> r3c7 = 5
naked-single ==> r9c7 = 8
naked-single ==> r4c9 = 8
naked-single ==> r4c8 = 2
naked-single ==> r5c6 = 1
naked-single ==> r5c4 = 9
naked-single ==> r5c5 = 6
naked-single ==> r7c4 = 1
naked-single ==> r7c7 = 4
naked-single ==> r2c7 = 1
naked-single ==> r2c9 = 6
naked-single ==> r2c1 = 2
naked-single ==> r2c3 = 8
naked-single ==> r2c2 = 5
naked-single ==> r2c5 = 4
naked-single ==> r3c6 = 2
naked-single ==> r3c5 = 7
naked-single ==> r3c4 = 8
naked-single ==> r8c5 = 5
naked-single ==> r8c9 = 7
naked-single ==> r9c5 = 2
naked-single ==> r7c5 = 9
naked-single ==> r8c6 = 4
naked-single ==> r8c1 = 1
naked-single ==> r8c3 = 2
naked-single ==> r9c6 = 3
naked-single ==> r9c2 = 6
naked-single ==> r7c2 = 3
naked-single ==> r9c3 = 4
naked-single ==> r6c3 = 6
naked-single ==> r6c1 = 4
naked-single ==> r9c8 = 1
naked-single ==> r6c8 = 3
naked-single ==> r3c8 = 4
naked-single ==> r3c9 = 3
naked-single ==> r6c9 = 1
naked-single ==> r9c9 = 5
naked-single ==> r3c1 = 6
naked-single ==> r7c9 = 2
naked-single ==> r7c8 = 6
naked-single ==> r9c4 = 7
naked-single ==> r4c2 = 9
naked-single ==> r6c2 = 7
naked-single ==> r6c6 = 5
naked-single ==> r4c6 = 7
naked-single ==> r5c9 = 4
naked-single ==> r8c2 = 8
naked-single ==> r6c7 = 9
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[16]
347516289
258349176
619872543
591437628
823961754
476285931
735198462
182654397
964723815
Puzzle .4..1.2.......9.7..1..........43.6..8......5....2.....7.5..8......6..3..9........ :
init-time = 0.2s, solve-time = 5m 19.88s, total-time = 5m 20.07s
nb-facts=<Fact-130298>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



Compare with the resolution time when ony bivalue-chains and whips are activated. The large difference appears when you check the numbers of large useless partial-twhips.
init-time = 0.18s, solve-time = 3m 15.73s, total-time = 3m 15.9s

