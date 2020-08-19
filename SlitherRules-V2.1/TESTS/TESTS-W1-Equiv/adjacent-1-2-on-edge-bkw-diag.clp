
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-1-2-ON-EDGE-BACKWARD-DIAGONAL-2s-3
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





-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

;;; proof of the rule in W3

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

(solve
5 5
. 1 2 . .
. 3 . . .
. . . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 2 . .
. 3 . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 3.69548797607422e-05
start create-csp-variables
start create-labels 0.000777006149291992
start init-physical-csp-links 0.00507116317749023
start init-physical-non-csp-links 1.02482795715332
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.2207350730896
     start init-physical-BN-non-csp-links at local time 0.768244981765747
     start init-physical-BP-non-csp-links at local time 1.41578102111816
     end init-physical-BP-non-csp-links at local time 10.088240146637
end init-physical-non-csp-links 11.1130940914154
start init-corner-B-c-values 11.1133518218994
start init-outer-B-candidates 11.1134059429169
start init-outer-I-candidates 11.1136529445648
start init-H-candidates 11.1138389110565
start init-V-candidates 11.1142480373383
start init-P-candidates 11.1146938800812
start init-inner-I-candidates 11.115984916687
start init-inner-N-and-B-candidates 11.1163249015808
start solution 11.119668006897
entering BRT
Starting_init_links_with_<Fact-27458>
789 candidates, 2674 csp-links and 11094 links. Density = 3.57%
starting non trivial part of solution
Entering_level_W1_with_<Fact-54999>
whip[1]: Br1c2{w .} ==> Pr1c3 ≠ sw, Pr2c2 ≠ ne, Pr2c3 ≠ nw, Pr1c2 ≠ se
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ se, Br1c1 ≠ e
whip[1]: Br1c1{wne .} ==> Pr2c2 ≠ nw
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ ew, Br1c3 ≠ sw
whip[1]: Br1c3{se .} ==> Pr1c4 ≠ o, Pr2c3 ≠ ne
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ se, Br1c4 ≠ o, Br1c4 ≠ e, Br1c4 ≠ s
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Br2c2{nes .} ==> Pr3c3 ≠ se, Pr2c2 ≠ o, Pr2c3 ≠ o, Pr3c2 ≠ o, Pr3c2 ≠ sw, Pr3c3 ≠ o
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ nw, Br3c3 ≠ swn, Br3c3 ≠ wne
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c1 ≠ ne
whip[1]: Pr2c3{sw .} ==> Br2c3 ≠ se, Br2c3 ≠ o, Br2c3 ≠ e, Br2c3 ≠ s
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Pr2c2{sw .} ==> Br2c1 ≠ sw, Br2c1 ≠ o, Br2c1 ≠ s, Br2c1 ≠ w
whip[1]: Br2c1{nes .} ==> Nr2c1 ≠ 0
Entering_level_W2_with_<Fact-55029>
Entering_level_W3_with_<Fact-57890>
whip[3]: Br1c3{ns ne} - Pr1c3{se ew} - Br1c2{e .} ==> Pr2c3 ≠ sw
whip[1]: Pr2c3{ew .} ==> Br2c2 ≠ wne, Br2c2 ≠ nes, Br1c3 ≠ ne
whip[1]: Br1c3{se .} ==> Pr1c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ ns
whip[1]: Pr2c4{sw .} ==> Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Pr1c4{ew .} ==> Hr1c4 ≠ 0, Br1c4 ≠ ew, Br1c4 ≠ w
H-single: Hr1c4 = 1
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o, Pr1c5 ≠ o, Pr1c5 ≠ se
B-single: Br0c4 = s
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ wne, Br1c5 ≠ o, Br1c5 ≠ s
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Br2c2{swn .} ==> Hr3c2 ≠ 0, Vr2c2 ≠ 0, Pr2c2 ≠ ew, Pr3c2 ≠ ns, Pr3c2 ≠ nw, Pr3c2 ≠ se, Pr3c2 ≠ ew, Pr3c3 ≠ ne, Pr3c3 ≠ ns
V-single: Vr2c2 = 1
H-single: Hr3c2 = 1
P-single: Pr3c2 = ne
H-single: Hr3c1 = 0
V-single: Vr3c2 = 0
whip[1]: Vr2c2{1 .} ==> Br2c1 ≠ n, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ swn
whip[1]: Hr3c2{1 .} ==> Br3c2 ≠ o, Br3c2 ≠ e, Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ n, Br2c1 ≠ se, Br2c1 ≠ esw, Br2c1 ≠ nes, Br3c1 ≠ e, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c2 ≠ nw, Br3c2 ≠ swn, Br3c2 ≠ wne
whip[1]: Br3c2{nes .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ ns, Pr4c2 ≠ nw
whip[1]: Br3c1{sw .} ==> Pr3c1 ≠ ne, Pr3c1 ≠ se, Nr3c1 ≠ 3
whip[1]: Pr3c3{sw .} ==> Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn
whip[3]: Pr2c6{nw sw} - Br1c5{nes sw} - Pr2c5{o .} ==> Br2c5 ≠ wne
whip[3]: Pr2c2{sw se} - Br1c2{w s} - Pr1c2{ew .} ==> Br1c1 ≠ nw
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 2
Entering_level_W4_with_<Fact-62922>
Entering_level_W5_with_<Fact-71902>
whip[5]: Pr2c3{se ew} - Br1c2{n s} - Pr1c3{ew o} - Br1c3{nw se} - Pr2c4{o .} ==> Br2c3 ≠ nes
whip[1]: Br2c3{wne .} ==> Pr3c4 ≠ nw
whip[5]: Pr2c3{se ew} - Br1c2{n s} - Pr1c3{ew o} - Br1c3{nw se} - Pr2c4{o .} ==> Br2c3 ≠ ne
GRID 0 NOT SOLVED. 289 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]

.............———.....
:   : 1 : 2 :   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.12s, solve-time = 1m 31.56s, total-time = 1m 42.68s
nb-facts=<Fact-91826>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------


(solve
5 5 
. 1 2 . .
. 3 . . .
. . . . . 
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 2 . .
. 3 . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.0028989315032959
start create-csp-variables
start create-labels 0.00049901008605957
start init-physical-csp-links 0.00310802459716797
start init-physical-non-csp-links 0.864860057830811
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.205147981643677
     start init-physical-BN-non-csp-links at local time 0.782219171524048
     start init-physical-BP-non-csp-links at local time 1.42543601989746
     end init-physical-BP-non-csp-links at local time 10.0187520980835
end init-physical-non-csp-links 10.883661031723
start init-corner-B-c-values 10.8868029117584
start init-outer-B-candidates 10.8868539333344
start init-outer-I-candidates 10.8872489929199
start init-H-candidates 10.8874530792236
start init-V-candidates 10.8884460926056
start init-P-candidates 10.8891990184784
start init-inner-I-candidates 10.8907051086426
start init-inner-N-and-B-candidates 10.8910980224609
start solution 10.8942811489105
entering BRT
w[1]-adjacent-1-2-on-edge-in-r1{c2 c3}-bkwd-diag-2s-3...r2c2 ==> Vr2c2 = 1, Hr3c2 = 1, Hr1c4 = 1
779 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.............———.....
:   : 1 : 2 :   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.89s, solve-time = 0.97s, total-time = 11.87s
nb-facts=<Fact-27661>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve
5 5
. . 2 1 .
. . . 3 .
. . . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 2 1 .
. . . 3 .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00328612327575684
start create-csp-variables
start create-labels 0.000494956970214844
start init-physical-csp-links 0.0029749870300293
start init-physical-non-csp-links 0.828368902206421
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.178818941116333
     start init-physical-BN-non-csp-links at local time 0.68005895614624
     start init-physical-BP-non-csp-links at local time 1.26930689811707
     end init-physical-BP-non-csp-links at local time 9.0108118057251
end init-physical-non-csp-links 9.83922696113586
start init-corner-B-c-values 9.84274101257324
start init-outer-B-candidates 9.84278202056885
start init-outer-I-candidates 9.84312915802002
start init-H-candidates 9.84331393241882
start init-V-candidates 9.84415698051453
start init-P-candidates 9.84495806694031
start init-inner-I-candidates 9.84637403488159
start init-inner-N-and-B-candidates 9.84674215316772
start solution 9.8498420715332
entering BRT
w[1]-adjacent-1-2-on-edge-in-r1{c4 c3}-bkwd-diag-2s-3...r2c4 ==> Vr2c5 = 1, Hr3c4 = 1, Hr1c2 = 1
779 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....———.............
:   :   : 2 : 1 :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 9.85s, solve-time = 0.86s, total-time = 10.71s
nb-facts=<Fact-27661>
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
. . . . .
. 3 . . .
. 1 2 . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. 3 . . .
. 1 2 . .

start init-grid-structure 0.00246620178222656
start create-csp-variables
start create-labels 0.000396966934204102
start init-physical-csp-links 0.00267505645751953
start init-physical-non-csp-links 0.898098945617676
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.189749002456665
     start init-physical-BN-non-csp-links at local time 0.764311075210571
     start init-physical-BP-non-csp-links at local time 1.45647192001343
     end init-physical-BP-non-csp-links at local time 9.46806192398071
end init-physical-non-csp-links 10.366201877594
start init-corner-B-c-values 10.3688499927521
start init-outer-B-candidates 10.3688931465149
start init-outer-I-candidates 10.3692450523376
start init-H-candidates 10.3694291114807
start init-V-candidates 10.3704199790955
start init-P-candidates 10.3712050914764
start init-inner-I-candidates 10.3725960254669
start init-inner-N-and-B-candidates 10.3729701042175
start solution 10.37610912323
entering BRT
w[1]-adjacent-1-2-on-edge-in-r5{c2 c3}-bkwd-diag-2s-3...r4c2 ==> Vr4c2 = 1, Hr6c4 = 1, Hr4c2 = 1
779 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   : 1 : 2 :   :   :
.............———.....

init-time = 10.38s, solve-time = 0.86s, total-time = 11.23s
nb-facts=<Fact-27661>
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
. . . . .
. . 3 . .
. 2 1 . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . 3 . .
. 2 1 . .

start init-grid-structure 0.00235390663146973
start create-csp-variables
start create-labels 0.000447988510131836
start init-physical-csp-links 0.00318098068237305
start init-physical-non-csp-links 0.919898986816406
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.210475921630859
     start init-physical-BN-non-csp-links at local time 0.814099073410034
     start init-physical-BP-non-csp-links at local time 1.49312090873718
     end init-physical-BP-non-csp-links at local time 9.61302208900452
end init-physical-non-csp-links 10.5329558849335
start init-corner-B-c-values 10.5355458259583
start init-outer-B-candidates 10.5355899333954
start init-outer-I-candidates 10.5359499454498
start init-H-candidates 10.5361409187317
start init-V-candidates 10.5369927883148
start init-P-candidates 10.537752866745
start init-inner-I-candidates 10.5390968322754
start init-inner-N-and-B-candidates 10.5394659042358
start solution 10.5425291061401
entering BRT
w[1]-adjacent-1-2-on-edge-in-r5{c3 c2}-bkwd-diag-2s-3...r4c3 ==> Vr4c4 = 1, Hr6c1 = 1, Hr4c3 = 1
779 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.........———.   .....
:   :   : 3 |   :   :
.....................
:   : 2 : 1 :   :   :
.———.................

init-time = 10.54s, solve-time = 0.87s, total-time = 11.42s
nb-facts=<Fact-27661>
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
1 3 . . .
2 . . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
1 3 . . .
2 . . . .
. . . . .
. . . . .

start init-grid-structure 0.00215315818786621
start create-csp-variables
start create-labels 0.000431060791015625
start init-physical-csp-links 0.00277113914489746
start init-physical-non-csp-links 0.856207132339478
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.201498985290527
     start init-physical-BN-non-csp-links at local time 0.781876087188721
     start init-physical-BP-non-csp-links at local time 1.47442293167114
     end init-physical-BP-non-csp-links at local time 10.4744620323181
end init-physical-non-csp-links 11.3307089805603
start init-corner-B-c-values 11.3330800533295
start init-outer-B-candidates 11.3331210613251
start init-outer-I-candidates 11.3334820270538
start init-H-candidates 11.3336730003357
start init-V-candidates 11.3344991207123
start init-P-candidates 11.3352200984955
start init-inner-I-candidates 11.3365530967712
start init-inner-N-and-B-candidates 11.3369121551514
start solution 11.3399260044098
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r2 r3}c1-bkwd-diag-2s-3...r2c2 ==> Vr2c3 = 1, Vr4c1 = 1, Hr2c2 = 1
w[1]-3-in-r2c2-closed-ne-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ne, Pr3c2 ≠ o
779 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :       :   :   :
.....———.   .........
: 1 : 3 |   :   :   :
.....................
: 2 :   :   :   :   :
.....................
|   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.34s, solve-time = 0.87s, total-time = 12.21s
nb-facts=<Fact-27661>
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
2 . . . .
1 3 . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
2 . . . .
1 3 . . .
. . . . .
. . . . .

start init-grid-structure 0.00219416618347168
start create-csp-variables
start create-labels 0.000423908233642578
start init-physical-csp-links 0.0036308765411377
start init-physical-non-csp-links 0.849096059799194
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.210956811904907
     start init-physical-BN-non-csp-links at local time 0.780749797821045
     start init-physical-BP-non-csp-links at local time 1.47616291046143
     end init-physical-BP-non-csp-links at local time 9.56806087493896
end init-physical-non-csp-links 10.4171929359436
start init-corner-B-c-values 10.4196040630341
start init-outer-B-candidates 10.4196441173553
start init-outer-I-candidates 10.4200820922852
start init-H-candidates 10.4202690124512
start init-V-candidates 10.4210550785065
start init-P-candidates 10.4217641353607
start init-inner-I-candidates 10.4230930805206
start init-inner-N-and-B-candidates 10.4234640598297
start solution 10.4265029430389
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r3 r2}c1-bkwd-diag-2s-3...r3c2 ==> Vr3c3 = 1, Vr1c1 = 1, Hr4c2 = 1
w[1]-3-in-r3c2-closed-se-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ o
779 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
|   :   :   :   :   :
.....................
: 2 :   :   :   :   :
.....................
: 1 : 3 |   :   :   :
.....———.   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.43s, solve-time = 0.86s, total-time = 11.29s
nb-facts=<Fact-27661>
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
. . . 3 1
. . . . 2
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . 3 1
. . . . 2
. . . . .
. . . . .

start init-grid-structure 0.0028679370880127
start create-csp-variables
start create-labels 0.000485897064208984
start init-physical-csp-links 0.00288486480712891
start init-physical-non-csp-links 0.879262924194336
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.205664873123169
     start init-physical-BN-non-csp-links at local time 0.803540945053101
     start init-physical-BP-non-csp-links at local time 1.52601289749146
     end init-physical-BP-non-csp-links at local time 9.73761487007141
end init-physical-non-csp-links 10.6169238090515
start init-corner-B-c-values 10.6200189590454
start init-outer-B-candidates 10.6200611591339
start init-outer-I-candidates 10.6204099655151
start init-H-candidates 10.6205971240997
start init-V-candidates 10.6214320659637
start init-P-candidates 10.6222240924835
start init-inner-I-candidates 10.623575925827
start init-inner-N-and-B-candidates 10.6239521503448
start solution 10.6270458698273
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r2 r3}c5-bkwd-diag-2s-3...r2c4 ==> Vr4c6 = 1, Vr2c4 = 1, Hr2c4 = 1
w[1]-3-in-r2c4-closed-nw-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ o
779 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :       :   :
.........   .———.....
:   :   :   | 3 : 1 :
.....................
:   :   :   :   : 2 :
.....................
:   :   :   :   :   |
.....................
:   :   :   :   :   :
.....................

init-time = 10.63s, solve-time = 0.88s, total-time = 11.5s
nb-facts=<Fact-27661>
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
. . . . 2
. . . 3 1
. . . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . 2
. . . 3 1
. . . . .
. . . . .

start init-grid-structure 0.00217914581298828
start create-csp-variables
start create-labels 0.000564098358154297
start init-physical-csp-links 0.0036931037902832
start init-physical-non-csp-links 0.866553068161011
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.209978818893433
     start init-physical-BN-non-csp-links at local time 0.801583051681519
     start init-physical-BP-non-csp-links at local time 1.49406003952026
     end init-physical-BP-non-csp-links at local time 9.49982690811157
end init-physical-non-csp-links 10.3664109706879
start init-corner-B-c-values 10.368803024292
start init-outer-B-candidates 10.3688430786133
start init-outer-I-candidates 10.3691880702972
start init-H-candidates 10.3693730831146
start init-V-candidates 10.3701810836792
start init-P-candidates 10.3709070682526
start init-inner-I-candidates 10.3722410202026
start init-inner-N-and-B-candidates 10.3726160526276
start solution 10.3759300708771
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r3 r2}c5-bkwd-diag-2s-3...r3c4 ==> Vr1c6 = 1, Vr3c4 = 1, Hr4c4 = 1
w[1]-3-in-r3c4-closed-sw-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ ne, Pr3c5 ≠ o
779 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   |
.....................
:   :   :   :   : 2 :
.....................
:   :   :   | 3 : 1 :
.........   .———.....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.38s, solve-time = 0.86s, total-time = 11.24s
nb-facts=<Fact-27661>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

;;; longer diagonals of 2s

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------


(solve
6 6
. . . 1 2 .
. . . 2 . .
. . 3 . . .
. . . . . .
. . . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . 1 2 .
. . . 2 . .
. . 3 . . .
. . . . . .
. . . . . .
. . . . . .

start init-grid-structure 0.00216007232666016
start create-csp-variables
start create-labels 0.000526189804077148
start init-physical-csp-links 0.00362014770507812
start init-physical-non-csp-links 1.74365615844727
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.429957866668701
     start init-physical-BN-non-csp-links at local time 1.58101487159729
     start init-physical-BP-non-csp-links at local time 2.91743898391724
     end init-physical-BP-non-csp-links at local time 18.5010318756104
end init-physical-non-csp-links 20.2447381019592
start init-corner-B-c-values 20.2471139431
start init-outer-B-candidates 20.2471649646759
start init-outer-I-candidates 20.2477400302887
start init-H-candidates 20.2480299472809
start init-V-candidates 20.2496869564056
start init-P-candidates 20.2514929771423
start init-inner-I-candidates 20.2542240619659
start init-inner-N-and-B-candidates 20.2549629211426
start solution 20.2608699798584
entering BRT
w[1]-adjacent-1-2-on-edge-in-r1{c4 c5}-bkwd-diag-2s-3...r3c3 ==> Vr3c3 = 1, Hr4c3 = 1, Hr1c6 = 1
w[1]-3-in-r3c3-closed-sw-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
1128 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................———.
:   :   :   : 1 : 2 :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   | 3 :   :   :   :
.....   .———.............
:   :       :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 20.26s, solve-time = 1.93s, total-time = 22.2s
nb-facts=<Fact-37719>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




;;; other cases left as an exercise to the reader
