
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-3-2s-3
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





---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL 3s, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve 
5 5 
. . . . .
. 3 . . .
. . 3 . .
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
. . 3 . .
. . . . .
. . . . .

start init-grid-structure 0.00329899787902832
start create-csp-variables
start create-labels 0.00049901008605957
start init-physical-csp-links 0.00283718109130859
start init-physical-non-csp-links 0.897366046905518
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.203897953033447
     start init-physical-BN-non-csp-links at local time 0.780791997909546
     start init-physical-BP-non-csp-links at local time 1.50318288803101
     end init-physical-BP-non-csp-links at local time 9.98798990249634
end init-physical-non-csp-links 10.8853850364685
start init-corner-B-c-values 10.8889210224152
start init-outer-B-candidates 10.8889651298523
start init-outer-I-candidates 10.8893280029297
start init-H-candidates 10.8895211219788
start init-V-candidates 10.8903360366821
start init-P-candidates 10.8910760879517
start init-inner-I-candidates 10.892539024353
start init-inner-N-and-B-candidates 10.8929181098938
start solution 10.8960309028625
entering BRT
w[1]-diagonal-3s-in-{r2c2...r3c3} ==> Vr3c4 = 1, Vr2c2 = 1, Hr4c3 = 1, Hr2c2 = 1, Vr4c4 = 0, Vr1c2 = 0, Hr4c4 = 0, Hr2c1 = 0
791 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 3 |   :   :
.........———.   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.9s, solve-time = 1.01s, total-time = 11.91s
nb-facts=<Fact-27680>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







(solve 
5 5 
. . . . .
. . . . .
. 3 . . . 
. . 3 . .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 3 . . .
. . 3 . .
. . . . .

start init-grid-structure 0.00332903861999512
start create-csp-variables
start create-labels 0.000444889068603516
start init-physical-csp-links 0.00275206565856934
start init-physical-non-csp-links 0.871293067932129
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.20579981803894
     start init-physical-BN-non-csp-links at local time 0.808233976364136
     start init-physical-BP-non-csp-links at local time 1.49542188644409
     end init-physical-BP-non-csp-links at local time 10.9019138813019
end init-physical-non-csp-links 11.7733108997345
start init-corner-B-c-values 11.7768490314484
start init-outer-B-candidates 11.7769498825073
start init-outer-I-candidates 11.777312040329
start init-H-candidates 11.7774930000305
start init-V-candidates 11.7782719135284
start init-P-candidates 11.7789850234985
start init-inner-I-candidates 11.7803010940552
start init-inner-N-and-B-candidates 11.7806599140167
start solution 11.7837538719177
entering BRT
w[1]-diagonal-3s-in-{r3c2...r4c3} ==> Vr4c4 = 1, Vr3c2 = 1, Hr5c3 = 1, Hr3c2 = 1, Vr5c4 = 0, Vr2c2 = 0, Hr5c4 = 0, Hr3c1 = 0
791 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 3 |   :   :
.........———.   .....
:   :   :       :   :
.....................

init-time = 11.78s, solve-time = 1.08s, total-time = 12.87s
nb-facts=<Fact-27680>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve 
5 5 
. . . . .
. . . . .
. . . 3 . 
. . 3 . .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . 3 .
. . 3 . .
. . . . .

start init-grid-structure 0.00368309020996094
start create-csp-variables
start create-labels 0.00064396858215332
start init-physical-csp-links 0.00348901748657227
start init-physical-non-csp-links 0.973911046981812
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.200595140457153
     start init-physical-BN-non-csp-links at local time 0.780933141708374
     start init-physical-BP-non-csp-links at local time 1.4964451789856
     end init-physical-BP-non-csp-links at local time 11.129606962204
end init-physical-non-csp-links 12.10356092453
start init-corner-B-c-values 12.1075160503387
start init-outer-B-candidates 12.10755610466
start init-outer-I-candidates 12.1078910827637
start init-H-candidates 12.1080529689789
start init-V-candidates 12.1088240146637
start init-P-candidates 12.1095271110535
start init-inner-I-candidates 12.1108441352844
start init-inner-N-and-B-candidates 12.1112020015717
start solution 12.1142339706421
entering BRT
w[1]-diagonal-3s-in-{r3c4...r4c3} ==> Vr3c5 = 1, Vr4c3 = 1, Hr5c3 = 1, Hr3c4 = 1, Vr2c5 = 0, Vr5c3 = 0, Hr5c2 = 0, Hr3c5 = 0
791 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   | 3 :   :   :
.....   .———.........
:   :       :   :   :
.....................

init-time = 12.11s, solve-time = 1.09s, total-time = 13.2s
nb-facts=<Fact-27680>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************








---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL 3-2-3, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve 
5 5 
. . . . .
. 3 . . .
. . 2 . . 
. . . 3 .
. . . . . 
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 . .
. . . 3 .
. . . . .

start init-grid-structure 0.00295090675354004
start create-csp-variables
start create-labels 0.000420093536376953
start init-physical-csp-links 0.00259709358215332
start init-physical-non-csp-links 0.891629934310913
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.199154853820801
     start init-physical-BN-non-csp-links at local time 0.78525185585022
     start init-physical-BP-non-csp-links at local time 1.49860191345215
     end init-physical-BP-non-csp-links at local time 10.9640829563141
end init-physical-non-csp-links 11.855751991272
start init-corner-B-c-values 11.8589169979095
start init-outer-B-candidates 11.858962059021
start init-outer-I-candidates 11.8593180179596
start init-H-candidates 11.8595070838928
start init-V-candidates 11.860356092453
start init-P-candidates 11.8611180782318
start init-inner-I-candidates 11.8626000881195
start init-inner-N-and-B-candidates 11.8629739284515
start solution 11.8660221099854
entering BRT
w[1]-diagonal-3-2-3-in-{r2c2...r4c4} ==> Vr4c5 = 1, Vr2c2 = 1, Hr5c4 = 1, Hr2c2 = 1, Vr5c5 = 0, Vr1c2 = 0, Hr5c5 = 0, Hr2c1 = 0
775 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

init-time = 11.87s, solve-time = 0.95s, total-time = 12.81s
nb-facts=<Fact-27676>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve 
5 5 
. . . . .
. . . 3 .
. . 2 . . 
. 3 . . .
. . . . . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . 3 .
. . 2 . .
. 3 . . .
. . . . .

start init-grid-structure 0.00228786468505859
start create-csp-variables
start create-labels 0.000415802001953125
start init-physical-csp-links 0.00273585319519043
start init-physical-non-csp-links 0.92352294921875
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.194731950759888
     start init-physical-BN-non-csp-links at local time 0.809967041015625
     start init-physical-BP-non-csp-links at local time 1.54652500152588
     end init-physical-BP-non-csp-links at local time 10.8253538608551
end init-physical-non-csp-links 11.7489128112793
start init-corner-B-c-values 11.7514178752899
start init-outer-B-candidates 11.7514569759369
start init-outer-I-candidates 11.7517998218536
start init-H-candidates 11.751993894577
start init-V-candidates 11.7527658939362
start init-P-candidates 11.7534739971161
start init-inner-I-candidates 11.7548258304596
start init-inner-N-and-B-candidates 11.7552108764648
start solution 11.7582180500031
entering BRT
w[1]-diagonal-3-2-3-in-{r2c4...r4c2} ==> Vr2c5 = 1, Vr4c2 = 1, Hr5c2 = 1, Hr2c4 = 1, Vr1c5 = 0, Vr5c2 = 0, Hr5c1 = 0, Hr2c5 = 0
775 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   : 2 :   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

init-time = 11.76s, solve-time = 1.07s, total-time = 12.83s
nb-facts=<Fact-27676>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve 
5 5 
. . . . .
. 3 . 3 .
. . 2 . . 
. 3 . 3 .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . 3 .
. . 2 . .
. 3 . 3 .
. . . . .

start init-grid-structure 0.00260615348815918
start create-csp-variables
start create-labels 0.000477075576782227
start init-physical-csp-links 0.00320601463317871
start init-physical-non-csp-links 0.866021156311035
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.207666158676147
     start init-physical-BN-non-csp-links at local time 0.788392066955566
     start init-physical-BP-non-csp-links at local time 1.51003217697144
     end init-physical-BP-non-csp-links at local time 11.0386769771576
end init-physical-non-csp-links 11.9047281742096
start init-corner-B-c-values 11.9076881408691
start init-outer-B-candidates 11.9077310562134
start init-outer-I-candidates 11.9080600738525
start init-H-candidates 11.9082491397858
start init-V-candidates 11.9090611934662
start init-P-candidates 11.9098269939423
start init-inner-I-candidates 11.9112191200256
start init-inner-N-and-B-candidates 11.9115841388702
start solution 11.9144179821014
entering BRT
w[1]-diagonal-3-2-3-in-{r2c2...r4c4} ==> Vr4c5 = 1, Vr2c2 = 1, Hr5c4 = 1, Hr2c2 = 1, Vr5c5 = 0, Vr1c2 = 0, Hr5c5 = 0, Hr2c1 = 0
w[1]-diagonal-3-2-3-in-{r2c4...r4c2} ==> Vr2c5 = 1, Vr4c2 = 1, Hr5c2 = 1, Hr2c4 = 1, Vr1c5 = 0, Vr5c2 = 0, Hr5c1 = 0, Hr2c5 = 0
731 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:       :   :       :
.   .———.....———.   .
:   | 3 :   : 3 |   :
.....................
:   :   : 2 :   :   :
.....................
:   | 3 :   : 3 |   :
.   .———.....———.   .
:       :   :       :
.....................

init-time = 11.91s, solve-time = 1.15s, total-time = 13.06s
nb-facts=<Fact-27688>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve 
7 7  
. . . . . . .
. . . . . . .
. . 3 . . . .
. . . 2 . . .
. . . . 3 . .
. . . . . . .
. . . . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . .
. . . . . . .
. . 3 . . . .
. . . 2 . . .
. . . . 3 . .
. . . . . . .
. . . . . . .

start init-grid-structure 0.00343012809753418
start create-csp-variables
start create-labels 0.000880002975463867
start init-physical-csp-links 0.00606298446655273
start init-physical-non-csp-links 3.25441694259644
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.638931035995483
     start init-physical-BN-non-csp-links at local time 2.6001558303833
     start init-physical-BP-non-csp-links at local time 5.18166089057922
     end init-physical-BP-non-csp-links at local time 36.0059258937836
end init-physical-non-csp-links 39.2603850364685
start init-corner-B-c-values 39.2640850543976
start init-outer-B-candidates 39.264130115509
start init-outer-I-candidates 39.264543056488
start init-H-candidates 39.2647559642792
start init-V-candidates 39.2663321495056
start init-P-candidates 39.2678129673004
start init-inner-I-candidates 39.2706651687622
start init-inner-N-and-B-candidates 39.2714610099792
start solution 39.2781419754028
entering BRT
w[1]-diagonal-3-2-3-in-{r3c3...r5c5} ==> Vr5c6 = 1, Vr3c3 = 1, Hr6c5 = 1, Hr3c3 = 1, Vr6c6 = 0, Vr2c3 = 0, Hr6c6 = 0, Hr3c2 = 0
1569 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 538 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.............................
:   :   :   :   :   :   :   :
.............................
:   :       :   :   :   :   :
.....   .———.................
:   :   | 3 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 3 |   :   :
.................———.   .....
:   :   :   :   :       :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 39.28s, solve-time = 3.96s, total-time = 43.24s
nb-facts=<Fact-49376>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL  3-2-2-3, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve 
6 6  
. . . . . . 
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .

start init-grid-structure 0.00590705871582031
start create-csp-variables
start create-labels 0.000578165054321289
start init-physical-csp-links 0.00384116172790527
start init-physical-non-csp-links 1.58976411819458
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.359647989273071
     start init-physical-BN-non-csp-links at local time 1.36762285232544
     start init-physical-BP-non-csp-links at local time 2.48327898979187
     end init-physical-BP-non-csp-links at local time 21.5557079315186
end init-physical-non-csp-links 23.1455090045929
start init-corner-B-c-values 23.1516258716583
start init-outer-B-candidates 23.1517350673676
start init-outer-I-candidates 23.152116060257
start init-H-candidates 23.1523149013519
start init-V-candidates 23.153333902359
start init-P-candidates 23.154275894165
start init-inner-I-candidates 23.15625
start init-inner-N-and-B-candidates 23.1567800045013
start solution 23.1612849235535
entering BRT
w[1]-diagonal-3-2s-3-in-{r2c2...r5c5} ==> Vr5c6 = 1, Vr2c2 = 1, Hr6c5 = 1, Hr2c2 = 1, Vr6c6 = 0, Vr1c2 = 0, Hr6c6 = 0, Hr2c1 = 0
1124 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

init-time = 23.16s, solve-time = 2.22s, total-time = 25.38s
nb-facts=<Fact-37735>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve 
6 6  
. . . . . . 
. . . . 3 .
. . . 2 . .
. . 2 . . .
. 3 . . . .
. . . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . 3 .
. . . 2 . .
. . 2 . . .
. 3 . . . .
. . . . . .

start init-grid-structure 0.0046229362487793
start create-csp-variables
start create-labels 0.00058293342590332
start init-physical-csp-links 0.00356793403625488
start init-physical-non-csp-links 1.56608700752258
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.37060284614563
     start init-physical-BN-non-csp-links at local time 1.377112865448
     start init-physical-BP-non-csp-links at local time 2.70428681373596
     end init-physical-BP-non-csp-links at local time 19.9951720237732
end init-physical-non-csp-links 21.5613050460815
start init-corner-B-c-values 21.5661299228668
start init-outer-B-candidates 21.5661709308624
start init-outer-I-candidates 21.5665898323059
start init-H-candidates 21.5669748783112
start init-V-candidates 21.5680339336395
start init-P-candidates 21.5690288543701
start init-inner-I-candidates 21.5708739757538
start init-inner-N-and-B-candidates 21.5713748931885
start solution 21.5757458209991
entering BRT
w[1]-diagonal-3-2s-3-in-{r2c5...r5c2} ==> Vr2c6 = 1, Vr5c2 = 1, Hr6c2 = 1, Hr2c5 = 1, Vr1c6 = 0, Vr6c2 = 0, Hr6c1 = 0, Hr2c6 = 0
1124 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

init-time = 21.58s, solve-time = 2.06s, total-time = 23.63s
nb-facts=<Fact-37735>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL  3-2-2-2-3, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve 
7 7 
. . . . . . .
. 3 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 3 .
. . . . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . .
. 3 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 3 .
. . . . . . .

start init-grid-structure 0.00477290153503418
start create-csp-variables
start create-labels 0.000674009323120117
start init-physical-csp-links 0.00468301773071289
start init-physical-non-csp-links 2.81661009788513
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.725560903549194
     start init-physical-BN-non-csp-links at local time 2.76135587692261
     start init-physical-BP-non-csp-links at local time 5.64347100257874
     end init-physical-BP-non-csp-links at local time 38.5301909446716
end init-physical-non-csp-links 41.3468570709229
start init-corner-B-c-values 41.3518619537354
start init-outer-B-candidates 41.3519048690796
start init-outer-I-candidates 41.3523938655853
start init-H-candidates 41.3526170253754
start init-V-candidates 41.3540148735046
start init-P-candidates 41.355299949646
start init-inner-I-candidates 41.3578140735626
start init-inner-N-and-B-candidates 41.3584969043732
start solution 41.3646891117096
entering BRT
w[1]-diagonal-3-2s-3-in-{r2c2...r6c6} ==> Vr6c7 = 1, Vr2c2 = 1, Hr7c6 = 1, Hr2c2 = 1, Vr7c7 = 0, Vr1c2 = 0, Hr7c7 = 0, Hr2c1 = 0
1537 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 536 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.............................
:       :   :   :   :   :   :
.   .———.....................
:   | 3 :   :   :   :   :   :
.............................
:   :   : 2 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.............................
:   :   :   :   :   : 3 |   :
.....................———.   .
:   :   :   :   :   :       :
.............................

init-time = 41.36s, solve-time = 4.11s, total-time = 45.47s
nb-facts=<Fact-49374>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL  3-2-2-2-2-3, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve
8 8
. . . . . . . .
. 3 . . . . . .
. . 2 . . . . .
. . . 2 . . . .
. . . . 2 . . .
. . . . . 2 . .
. . . . . . 3 .
. . . . . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . .
. 3 . . . . . .
. . 2 . . . . .
. . . 2 . . . .
. . . . 2 . . .
. . . . . 2 . .
. . . . . . 3 .
. . . . . . . .

start init-grid-structure 3.69548797607422e-05
start create-csp-variables
start create-labels 0.00130581855773926
start init-physical-csp-links 0.00815892219543457
start init-physical-non-csp-links 4.51284694671631
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.05486798286438
     start init-physical-BN-non-csp-links at local time 4.06395506858826
     start init-physical-BP-non-csp-links at local time 8.34170007705688
     end init-physical-BP-non-csp-links at local time 68.4924890995026
end init-physical-non-csp-links 73.0053670406342
start init-corner-B-c-values 73.0056819915771
start init-outer-B-candidates 73.0057380199432
start init-outer-I-candidates 73.0063178539276
start init-H-candidates 73.0066018104553
start init-V-candidates 73.008672952652
start init-P-candidates 73.0105919837952
start init-inner-I-candidates 73.0142660140991
start init-inner-N-and-B-candidates 73.0153169631958
start solution 73.0241010189056
entering BRT
w[1]-diagonal-3-2s-3-in-{r2c2...r7c7} ==> Vr7c8 = 1, Vr2c2 = 1, Hr8c7 = 1, Hr2c2 = 1, Vr8c8 = 0, Vr1c2 = 0, Hr8c8 = 0, Hr2c1 = 0
2014 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 683 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.................................
:       :   :   :   :   :   :   :
.   .———.........................
:   | 3 :   :   :   :   :   :   :
.................................
:   :   : 2 :   :   :   :   :   :
.................................
:   :   :   : 2 :   :   :   :   :
.................................
:   :   :   :   : 2 :   :   :   :
.................................
:   :   :   :   :   : 2 :   :   :
.................................
:   :   :   :   :   :   : 3 |   :
.........................———.   .
:   :   :   :   :   :   :       :
.................................

init-time = 1m 13.02s, solve-time = 7.33s, total-time = 1m 20.35s
nb-facts=<Fact-62593>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
8 8
. . . . . . . .
. . . . . . 3 .
. . . . . 2 . .
. . . . 2 . . .
. . . 2 . . . .
. . 2 . . . . .
. 3 . . . . . .
. . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . .
. . . . . . 3 .
. . . . . 2 . .
. . . . 2 . . .
. . . 2 . . . .
. . 2 . . . . .
. 3 . . . . . .
. . . . . . . .

start init-grid-structure 4.1961669921875e-05
start create-csp-variables
start create-labels 0.00157809257507324
start init-physical-csp-links 0.00979113578796387
start init-physical-non-csp-links 4.33957695960999
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.92208194732666
     start init-physical-BN-non-csp-links at local time 3.81269192695618
     start init-physical-BP-non-csp-links at local time 7.71125197410583
     end init-physical-BP-non-csp-links at local time 70.9398920536041
end init-physical-non-csp-links 75.2795221805573
start init-corner-B-c-values 75.2798728942871
start init-outer-B-candidates 75.2799308300018
start init-outer-I-candidates 75.2805659770966
start init-H-candidates 75.28084897995
start init-V-candidates 75.2829418182373
start init-P-candidates 75.2848398685455
start init-inner-I-candidates 75.2885808944702
start init-inner-N-and-B-candidates 75.2896349430084
start solution 75.298807144165
entering BRT
w[1]-diagonal-3-2s-3-in-{r2c7...r7c2} ==> Vr2c8 = 1, Vr7c2 = 1, Hr8c2 = 1, Hr2c7 = 1, Vr1c8 = 0, Vr8c2 = 0, Hr8c1 = 0, Hr2c8 = 0
w[1]-3-in-r7c2-closed-sw-corner ==> Pr7c3 ≠ sw, Pr7c3 ≠ ne, Pr7c3 ≠ o
2014 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 683 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................................
:   :   :   :   :   :   :       :
.........................———.   .
:   :   :   :   :   :   : 3 |   :
.................................
:   :   :   :   :   : 2 :   :   :
.................................
:   :   :   :   : 2 :   :   :   :
.................................
:   :   :   : 2 :   :   :   :   :
.................................
:   :   : 2 :   :   :   :   :   :
.................................
:   | 3 :   :   :   :   :   :   :
.   .———.........................
:       :   :   :   :   :   :   :
.................................

init-time = 1m 15.3s, solve-time = 7.42s, total-time = 1m 22.72s
nb-facts=<Fact-62595>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL  3-2-2-2-2-2-3, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve 
9 9   
. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . 3 .
. . . . . . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . 3 .
. . . . . . . . .

start init-grid-structure 0.00599789619445801
start create-csp-variables
start create-labels 0.00107717514038086
start init-physical-csp-links 0.00764203071594238
start init-physical-non-csp-links 5.39161896705627
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.41175007820129
     start init-physical-BN-non-csp-links at local time 5.93905401229858
     start init-physical-BP-non-csp-links at local time 13.1200339794159
     end init-physical-BP-non-csp-links at local time 134.578527927399
end init-physical-non-csp-links 139.970191955566
start init-corner-B-c-values 139.976408004761
start init-outer-B-candidates 139.97647190094
start init-outer-I-candidates 139.977126836777
start init-H-candidates 139.977452039719
start init-V-candidates 139.979760885239
start init-P-candidates 139.981901884079
start init-inner-I-candidates 139.986320018768
start init-inner-N-and-B-candidates 139.987640857697
start solution 139.998179912567
entering BRT
w[1]-diagonal-3-2s-3-in-{r2c2...r8c8} ==> Vr8c9 = 1, Vr2c2 = 1, Hr9c8 = 1, Hr2c2 = 1, Vr9c9 = 0, Vr1c2 = 0, Hr9c9 = 0, Hr2c1 = 0
w[1]-3-in-r8c8-closed-se-corner ==> Pr8c8 ≠ se, Pr8c8 ≠ nw, Pr8c8 ≠ o
2555 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 848 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................................
:       :   :   :   :   :   :   :   :
.   .———.............................
:   | 3 :   :   :   :   :   :   :   :
.....................................
:   :   : 2 :   :   :   :   :   :   :
.....................................
:   :   :   : 2 :   :   :   :   :   :
.....................................
:   :   :   :   : 2 :   :   :   :   :
.....................................
:   :   :   :   :   : 2 :   :   :   :
.....................................
:   :   :   :   :   :   : 2 :   :   :
.....................................
:   :   :   :   :   :   :   : 3 |   :
.............................———.   .
:   :   :   :   :   :   :   :       :
.....................................

init-time = 2m 20.0s, solve-time = 13.34s, total-time = 2m 33.34s
nb-facts=<Fact-77395>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



(solve
9 9
. . . . . . . . .
. . . . . . . 3 .
. . . . . . 2 . .
. . . . . 2 . . .
. . . . 2 . . . .
. . . 2 . . . . .
. . 2 . . . . . .
. 3 . . . . . . .
. . . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . . .
. . . . . . . 3 .
. . . . . . 2 . .
. . . . . 2 . . .
. . . . 2 . . . .
. . . 2 . . . . .
. . 2 . . . . . .
. 3 . . . . . . .
. . . . . . . . .

start init-grid-structure 0.00954985618591309
start create-csp-variables
start create-labels 0.00109696388244629
start init-physical-csp-links 0.00822591781616211
start init-physical-non-csp-links 6.10659790039062
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.49434900283813
     start init-physical-BN-non-csp-links at local time 5.5398120880127
     start init-physical-BP-non-csp-links at local time 11.2406611442566
     end init-physical-BP-non-csp-links at local time 119.340515136719
end init-physical-non-csp-links 125.447164773941
start init-corner-B-c-values 125.456939935684
start init-outer-B-candidates 125.456990003586
start init-outer-I-candidates 125.457626819611
start init-H-candidates 125.457917928696
start init-V-candidates 125.460206985474
start init-P-candidates 125.462376832962
start init-inner-I-candidates 125.466598987579
start init-inner-N-and-B-candidates 125.467772006989
start solution 125.478322029114
entering BRT
detection OK
w[1]-diagonal-3-2s-3-in-{r2c8...r8c2} ==> Vr2c9 = 1, Vr8c2 = 1, Hr9c2 = 1, Hr2c8 = 1, Vr1c9 = 0, Vr9c2 = 0, Hr9c1 = 0, Hr2c9 = 0
w[1]-3-in-r8c2-closed-sw-corner ==> Pr8c3 ≠ sw, Pr8c3 ≠ ne, Pr8c3 ≠ o
2555 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 848 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................................
:   :   :   :   :   :   :   :       :
.............................———.   .
:   :   :   :   :   :   :   : 3 |   :
.....................................
:   :   :   :   :   :   : 2 :   :   :
.....................................
:   :   :   :   :   : 2 :   :   :   :
.....................................
:   :   :   :   : 2 :   :   :   :   :
.....................................
:   :   :   : 2 :   :   :   :   :   :
.....................................
:   :   : 2 :   :   :   :   :   :   :
.....................................
:   | 3 :   :   :   :   :   :   :   :
.   .———.............................
:       :   :   :   :   :   :   :   :
.....................................

init-time = 2m 5.48s, solve-time = 13.12s, total-time = 2m 18.59s
nb-facts=<Fact-77395>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL  3-2-2-2-2-2-2-3, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . . . .
. 3 . . . . . . . .
. . 2 . . . . . . .
. . . 2 . . . . . .
. . . . 2 . . . . .
. . . . . 2 . . . .
. . . . . . 2 . . .
. . . . . . . 2 . .
. . . . . . . . 3 .
. . . . . . . . . .

start init-grid-structure 0.0096898078918457
start create-csp-variables
start create-labels 0.00168919563293457
start init-physical-csp-links 0.00969600677490234
start init-physical-non-csp-links 7.41573309898376
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.84872007369995
     start init-physical-BN-non-csp-links at local time 7.61353397369385
     start init-physical-BP-non-csp-links at local time 15.6033670902252
     end init-physical-BP-non-csp-links at local time 188.941148042679
end init-physical-non-csp-links 196.356934070587
start init-corner-B-c-values 196.366867780685
start init-outer-B-candidates 196.366913795471
start init-outer-I-candidates 196.367562770844
start init-H-candidates 196.367879867554
start init-V-candidates 196.370968818665
start init-P-candidates 196.373581886292
start init-inner-I-candidates 196.379018783569
start init-inner-N-and-B-candidates 196.380520820618
start solution 196.394300937653
entering BRT
w[1]-diagonal-3-2s-3-in-{r2c2...r9c9} ==> Vr9c10 = 1, Vr2c2 = 1, Hr10c9 = 1, Hr2c2 = 1, Vr10c10 = 0, Vr1c2 = 0, Hr10c10 = 0, Hr2c1 = 0
w[1]-3-in-r9c9-closed-se-corner ==> Pr9c9 ≠ se, Pr9c9 ≠ nw, Pr9c9 ≠ o
3160 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 1031 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................................
:       :   :   :   :   :   :   :   :   :
.   .———.................................
:   | 3 :   :   :   :   :   :   :   :   :
.........................................
:   :   : 2 :   :   :   :   :   :   :   :
.........................................
:   :   :   : 2 :   :   :   :   :   :   :
.........................................
:   :   :   :   : 2 :   :   :   :   :   :
.........................................
:   :   :   :   :   : 2 :   :   :   :   :
.........................................
:   :   :   :   :   :   : 2 :   :   :   :
.........................................
:   :   :   :   :   :   :   : 2 :   :   :
.........................................
:   :   :   :   :   :   :   :   : 3 |   :
.................................———.   .
:   :   :   :   :   :   :   :   :       :
.........................................

init-time = 3m 16.39s, solve-time = 20.26s, total-time = 3m 36.66s
nb-facts=<Fact-93774>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
10 10
. . . . . . . . . .
. . . . . . . . 3 . 
. . . . . . . 2 . .
. . . . . . 2 . . .
. . . . . 2 . . . .
. . . . 2 . . . . .
. . . 2 . . . . . .
. . 2 . . . . . . .
. 3 . . . . . . . .
. . . . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . . . .
. . . . . . . . 3 .
. . . . . . . 2 . .
. . . . . . 2 . . .
. . . . . 2 . . . .
. . . . 2 . . . . .
. . . 2 . . . . . .
. . 2 . . . . . . .
. 3 . . . . . . . .
. . . . . . . . . .

start init-grid-structure 3.19480895996094e-05
start create-csp-variables
start create-labels 0.0019690990447998
start init-physical-csp-links 0.0134601593017578
start init-physical-non-csp-links 9.84561014175415
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 2.02568101882935
     start init-physical-BN-non-csp-links at local time 7.91800999641418
     start init-physical-BP-non-csp-links at local time 16.6426069736481
     end init-physical-BP-non-csp-links at local time 203.809972047806
end init-physical-non-csp-links 213.655637025833
start init-corner-B-c-values 213.655959844589
start init-outer-B-candidates 213.656033992767
start init-outer-I-candidates 213.656831979752
start init-H-candidates 213.657180786133
start init-V-candidates 213.660491943359
start init-P-candidates 213.663576841354
start init-inner-I-candidates 213.669816970825
start init-inner-N-and-B-candidates 213.671526908875
start solution 213.686823129654
entering BRT
w[1]-diagonal-3-2s-3-in-{r2c9...r9c2} ==> Vr2c10 = 1, Vr9c2 = 1, Hr10c2 = 1, Hr2c9 = 1, Vr1c10 = 0, Vr10c2 = 0, Hr10c1 = 0, Hr2c10 = 0
w[1]-3-in-r9c2-closed-sw-corner ==> Pr9c3 ≠ sw, Pr9c3 ≠ ne, Pr9c3 ≠ o
3160 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 1031 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................................
:   :   :   :   :   :   :   :   :       :
.................................———.   .
:   :   :   :   :   :   :   :   : 3 |   :
.........................................
:   :   :   :   :   :   :   : 2 :   :   :
.........................................
:   :   :   :   :   :   : 2 :   :   :   :
.........................................
:   :   :   :   :   : 2 :   :   :   :   :
.........................................
:   :   :   :   : 2 :   :   :   :   :   :
.........................................
:   :   :   : 2 :   :   :   :   :   :   :
.........................................
:   :   : 2 :   :   :   :   :   :   :   :
.........................................
:   | 3 :   :   :   :   :   :   :   :   :
.   .———.................................
:       :   :   :   :   :   :   :   :   :
.........................................

init-time = 3m 33.69s, solve-time = 20.28s, total-time = 3m 53.97s
nb-facts=<Fact-93774>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
