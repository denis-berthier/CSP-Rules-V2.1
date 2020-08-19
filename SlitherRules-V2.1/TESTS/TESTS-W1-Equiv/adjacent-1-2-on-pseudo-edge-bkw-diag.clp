
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-1-2-ON-PSEUDO-EDGE-BACKWARD-DIAGONAL-2s-3
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
(progn
(bind ?*simulated-eliminations*
(create$
    (value-row-col-to-V-label 1 1 4)
))


(solve
5 5
. . . . .
. . 2 1 .
. . . 3 .
. . . . .
. . . . .
)
(bind ?*simulated-eliminations* (create$))
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 2 1 .
. . . 3 .
. . . . .
. . . . .

start init-grid-structure 0.00525593757629395
start create-csp-variables
start create-labels 0.00043177604675293
start init-physical-csp-links 0.00281691551208496
start init-physical-non-csp-links 1.02117776870728
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.275627851486206
     start init-physical-BN-non-csp-links at local time 0.967536926269531
     start init-physical-BP-non-csp-links at local time 1.67311096191406
     end init-physical-BP-non-csp-links at local time 10.8916928768158
end init-physical-non-csp-links 11.9129149913788
start init-corner-B-c-values 11.9183900356293
start init-outer-B-candidates 11.9184310436249
start init-outer-I-candidates 11.918662071228
start init-H-candidates 11.9188740253448
start init-V-candidates 11.9192218780518
start init-P-candidates 11.9195408821106
start init-inner-I-candidates 11.9204840660095
start init-inner-N-and-B-candidates 11.9207649230957
start solution 11.9235508441925
Simulated elimination of 1314
entering BRT
V-single: Vr1c4 = 0
Starting_init_links_with_<Fact-27459>
788 candidates, 2673 csp-links and 10981 links. Density = 3.54%
starting non trivial part of solution
Entering_level_W1_with_<Fact-54772>
whip[1]: Vr1c4{0 .} ==> Br1c4 ≠ wne, Pr1c4 ≠ se, Pr1c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ ns, Pr2c4 ≠ nw, Br1c3 ≠ e, Br1c3 ≠ ne, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ esw, Br1c3 ≠ wne, Br1c3 ≠ nes, Br1c4 ≠ w, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Br2c4{w .} ==> Pr2c5 ≠ sw, Pr3c4 ≠ ne, Pr3c5 ≠ nw, Pr2c4 ≠ se
whip[1]: Pr2c4{sw .} ==> Br2c3 ≠ se, Br2c3 ≠ ew
whip[1]: Br2c3{sw .} ==> Pr2c3 ≠ o, Pr2c3 ≠ nw, Pr3c4 ≠ nw
whip[1]: Pr2c3{sw .} ==> Br1c2 ≠ se, Br1c2 ≠ esw, Br1c2 ≠ nes
whip[1]: Br3c4{nes .} ==> Pr4c5 ≠ se, Pr3c4 ≠ o, Pr3c5 ≠ o, Pr3c5 ≠ ne, Pr4c4 ≠ o, Pr4c4 ≠ sw, Pr4c5 ≠ o
whip[1]: Pr4c5{sw .} ==> Br4c5 ≠ nw, Br4c5 ≠ swn, Br4c5 ≠ wne
whip[1]: Pr4c4{ew .} ==> Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c3 ≠ ne
whip[1]: Pr3c5{sw .} ==> Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br3c5 ≠ se, Br3c5 ≠ o, Br3c5 ≠ e, Br3c5 ≠ s
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Pr3c4{sw .} ==> Br3c3 ≠ sw, Br3c3 ≠ o, Br3c3 ≠ s, Br3c3 ≠ w
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
Entering_level_W2_with_<Fact-54798>
Entering_level_W3_with_<Fact-57578>
whip[3]: Br2c4{w s} - Pr2c4{sw o} - Br2c3{ne .} ==> Pr3c4 ≠ se
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ nw, Br3c4 ≠ swn, Br3c4 ≠ wne
whip[1]: Br3c4{nes .} ==> Hr4c4 ≠ 0, Vr3c5 ≠ 0, Pr3c5 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ nw, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ ew, Pr4c5 ≠ sw
V-single: Vr3c5 = 1
H-single: Hr4c4 = 1
P-single: Pr4c5 = nw
H-single: Hr4c5 = 0
V-single: Vr4c5 = 0
whip[1]: Vr3c5{1 .} ==> Br3c5 ≠ n, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ nes
whip[1]: Hr4c4{1 .} ==> Br4c4 ≠ o, Br4c4 ≠ e, Br4c4 ≠ s, Br4c4 ≠ w, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Pr4c5{nw .} ==> Br4c5 ≠ n, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c5 ≠ swn, Br4c4 ≠ ne, Br4c4 ≠ wne, Br4c4 ≠ nes, Br4c5 ≠ w, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ nes
whip[1]: Br4c5{se .} ==> Pr4c6 ≠ nw, Pr4c6 ≠ sw, Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ nw, Nr4c5 ≠ 3
whip[1]: Pr4c4{ew .} ==> Br3c3 ≠ se, Br3c3 ≠ esw, Br3c3 ≠ nes
whip[1]: Br2c3{sw .} ==> Pr2c3 ≠ se, Pr3c3 ≠ ns, Pr3c3 ≠ nw
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ se, Br2c2 ≠ esw, Br2c2 ≠ nes
whip[1]: Pr2c3{sw .} ==> Br1c2 ≠ nw, Br1c2 ≠ o, Br1c2 ≠ n, Br1c2 ≠ w
whip[1]: Br1c2{wne .} ==> Nr1c2 ≠ 0
whip[3]: Pr6c5{ew ne} - Br5c5{n esw} - Pr5c5{ew .} ==> Br5c4 ≠ e
whip[3]: Pr5c5{sw se} - Br5c5{se nw} - Pr6c5{o .} ==> Br5c4 ≠ ew
Entering_level_W4_with_<Fact-62575>
Entering_level_W5_with_<Fact-71301>
whip[5]: Pr2c6{sw nw} - Br1c5{s nes} - Pr2c5{nw ew} - Br2c4{w n} - Pr3c5{ns .} ==> Br2c5 ≠ n
whip[5]: Pr3c3{sw se} - Br2c3{sw ns} - Pr2c4{sw ew} - Br2c4{w n} - Pr3c4{ns .} ==> Br3c3 ≠ nw
whip[5]: Pr3c3{sw se} - Br2c3{sw ns} - Pr2c4{sw ew} - Br2c4{w n} - Pr3c4{ns .} ==> Br3c3 ≠ swn
whip[1]: Br3c3{wne .} ==> Pr4c3 ≠ ne
GRID 0 NOT SOLVED. 290 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]

.....................
:   :   :       :   :
.....................
:   :   : 2 : 1 :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................
:   :   :   :   :   :
.....................

init-time = 11.92s, solve-time = 1m 16.85s, total-time = 1m 28.77s
nb-facts=<Fact-89540>
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



(progn
(bind ?*simulated-eliminations*
(create$
    (value-row-col-to-V-label 1 1 4)
))


(solve
5 5
. . . . .
. . 2 1 .
. . . 3 .
. . . . .
. . . . .
)
(bind ?*simulated-eliminations* (create$))
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 2 1 .
. . . 3 .
. . . . .
. . . . .

start init-grid-structure 0.00252294540405273
start create-csp-variables
start create-labels 0.000417947769165039
start init-physical-csp-links 0.00253891944885254
start init-physical-non-csp-links 0.899580955505371
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.19337797164917
     start init-physical-BN-non-csp-links at local time 0.738461017608643
     start init-physical-BP-non-csp-links at local time 1.39054989814758
     end init-physical-BP-non-csp-links at local time 9.46584391593933
end init-physical-non-csp-links 10.3654627799988
start init-corner-B-c-values 10.3681840896606
start init-outer-B-candidates 10.3682260513306
start init-outer-I-candidates 10.3685619831085
start init-H-candidates 10.3687310218811
start init-V-candidates 10.3695840835571
start init-P-candidates 10.3703420162201
start init-inner-I-candidates 10.3718180656433
start init-inner-N-and-B-candidates 10.3722009658813
start solution 10.3753249645233
Simulated elimination of 1314
entering BRT
V-single: Vr1c4 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r2{c4 c3}-bkwd-diag-2s-3...r3c4 ==> Vr3c5 = 1, Hr4c4 = 1
w[1]-3-in-r3c4-closed-se-corner ==> Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o
778 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :       :   :
.....................
:   :   : 2 : 1 :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................
:   :   :   :   :   :
.....................

init-time = 10.38s, solve-time = 0.89s, total-time = 11.27s
nb-facts=<Fact-27662>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 1 3)
))


(solve
5 5
. . . . .
. 1 2 . .
. 3 . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 1 2 . .
. 3 . . .
. . . . .
. . . . .

start init-grid-structure 0.00275397300720215
start create-csp-variables
start create-labels 0.000411033630371094
start init-physical-csp-links 0.00295615196228027
start init-physical-non-csp-links 0.871700048446655
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.177938938140869
     start init-physical-BN-non-csp-links at local time 0.670223951339722
     start init-physical-BP-non-csp-links at local time 1.28082799911499
     end init-physical-BP-non-csp-links at local time 9.95258188247681
end init-physical-non-csp-links 10.8243210315704
start init-corner-B-c-values 10.8272838592529
start init-outer-B-candidates 10.8273320198059
start init-outer-I-candidates 10.827675819397
start init-H-candidates 10.8278529644012
start init-V-candidates 10.8289079666138
start init-P-candidates 10.8296828269958
start init-inner-I-candidates 10.8310978412628
start init-inner-N-and-B-candidates 10.8314700126648
start solution 10.8349039554596
Simulated elimination of 1313
entering BRT
V-single: Vr1c3 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r2{c2 c3}-bkwd-diag-2s-3...r3c2 ==> Vr3c2 = 1, Hr4c2 = 1
w[1]-3-in-r3c2-closed-sw-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ o
778 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :       :   :   :
.....................
:   : 1 : 2 :   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.83s, solve-time = 0.96s, total-time = 11.79s
nb-facts=<Fact-27662>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 5 4)
))


(solve
5 5
. . . . .
. . . . .
. . . 3 .
. . 2 1 .
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
. . 2 1 .
. . . . .

start init-grid-structure 0.00335288047790527
start create-csp-variables
start create-labels 0.000453948974609375
start init-physical-csp-links 0.00281405448913574
start init-physical-non-csp-links 0.830787897109985
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.217633008956909
     start init-physical-BN-non-csp-links at local time 0.804597854614258
     start init-physical-BP-non-csp-links at local time 1.51429200172424
     end init-physical-BP-non-csp-links at local time 10.7138729095459
end init-physical-non-csp-links 11.544695854187
start init-corner-B-c-values 11.5483419895172
start init-outer-B-candidates 11.5483868122101
start init-outer-I-candidates 11.5487480163574
start init-H-candidates 11.5489349365234
start init-V-candidates 11.5501120090485
start init-P-candidates 11.5509498119354
start init-inner-I-candidates 11.5524249076843
start init-inner-N-and-B-candidates 11.5528059005737
start solution 11.5560801029205
Simulated elimination of 1354
entering BRT
V-single: Vr5c4 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r4{c4 c3}-bkwd-diag-2s-3...r3c4 ==> Vr3c5 = 1, Hr3c4 = 1
w[1]-3-in-r3c4-closed-ne-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ne, Pr4c4 ≠ o
778 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   : 2 : 1 :   :
.....................
:   :   :       :   :
.....................

init-time = 11.56s, solve-time = 0.87s, total-time = 12.43s
nb-facts=<Fact-27662>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 5 3)
))


(solve
5 5
. . . . .
. . . . .
. 3 . . .
. 1 2 . .
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
. 1 2 . .
. . . . .

start init-grid-structure 0.00382304191589355
start create-csp-variables
start create-labels 0.00043487548828125
start init-physical-csp-links 0.00316286087036133
start init-physical-non-csp-links 0.92440390586853
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.20716404914856
     start init-physical-BN-non-csp-links at local time 0.804793119430542
     start init-physical-BP-non-csp-links at local time 1.47837114334106
     end init-physical-BP-non-csp-links at local time 10.7695031166077
end init-physical-non-csp-links 11.693963766098
start init-corner-B-c-values 11.6980130672455
start init-outer-B-candidates 11.6980969905853
start init-outer-I-candidates 11.6987960338593
start init-H-candidates 11.6990530490875
start init-V-candidates 11.7000620365143
start init-P-candidates 11.7009510993958
start init-inner-I-candidates 11.7025089263916
start init-inner-N-and-B-candidates 11.7029569149017
start solution 11.7067160606384
Simulated elimination of 1353
entering BRT
V-single: Vr5c3 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r4{c2 c3}-bkwd-diag-2s-3...r3c2 ==> Vr3c2 = 1, Hr3c2 = 1
w[1]-3-in-r3c2-closed-nw-corner ==> Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ o
778 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   : 1 : 2 :   :   :
.....................
:   :       :   :   :
.....................

init-time = 11.71s, solve-time = 0.99s, total-time = 12.7s
nb-facts=<Fact-27662>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(bind ?*simulated-eliminations*
(create$
(value-row-col-to-H-label 1 3 1)
))


(solve
5 5
. . . . .
. 1 3 . .
. 2 . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 1 3 . .
. 2 . . .
. . . . .
. . . . .

start init-grid-structure 0.00306916236877441
start create-csp-variables
start create-labels 0.000518083572387695
start init-physical-csp-links 0.00305604934692383
start init-physical-non-csp-links 0.899992942810059
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.210943937301636
     start init-physical-BN-non-csp-links at local time 0.806581020355225
     start init-physical-BP-non-csp-links at local time 1.49222111701965
     end init-physical-BP-non-csp-links at local time 10.7385540008545
end init-physical-non-csp-links 11.6385841369629
start init-corner-B-c-values 11.6418790817261
start init-outer-B-candidates 11.6419281959534
start init-outer-I-candidates 11.6423320770264
start init-H-candidates 11.642539024353
start init-V-candidates 11.6435580253601
start init-P-candidates 11.6446859836578
start init-inner-I-candidates 11.6465380191803
start init-inner-N-and-B-candidates 11.6470170021057
start solution 11.6509101390839
Simulated elimination of 1231
entering BRT
H-single: Hr3c1 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r2 r3}c2-bkwd-diag-2s-3...r2c3 ==> Vr2c4 = 1, Hr2c3 = 1
w[1]-3-in-r2c3-closed-ne-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ o
778 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :       :   :
.........———.   .....
:   : 1 : 3 |   :   :
.   .................
:   : 2 :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.65s, solve-time = 0.88s, total-time = 12.53s
nb-facts=<Fact-27662>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(bind ?*simulated-eliminations*
(create$
(value-row-col-to-H-label 1 4 1)
))

(solve
5 5
. . . . .
. . . . .
. 2 . . .
. 1 3 . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 2 . . .
. 1 3 . .
. . . . .

start init-grid-structure 0.00307488441467285
start create-csp-variables
start create-labels 0.000662088394165039
start init-physical-csp-links 0.0040900707244873
start init-physical-non-csp-links 0.893639087677002
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.198460102081299
     start init-physical-BN-non-csp-links at local time 0.790370941162109
     start init-physical-BP-non-csp-links at local time 1.50568604469299
     end init-physical-BP-non-csp-links at local time 10.8242399692535
end init-physical-non-csp-links 11.7179131507874
start init-corner-B-c-values 11.7212898731232
start init-outer-B-candidates 11.7213521003723
start init-outer-I-candidates 11.7217578887939
start init-H-candidates 11.7219650745392
start init-V-candidates 11.7229640483856
start init-P-candidates 11.723799943924
start init-inner-I-candidates 11.7258310317993
start init-inner-N-and-B-candidates 11.7262470722198
start solution 11.7296500205994
Simulated elimination of 1241
entering BRT
H-single: Hr4c1 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r4 r3}c2-bkwd-diag-2s-3...r4c3 ==> Vr4c4 = 1, Hr5c3 = 1
w[1]-3-in-r4c3-closed-se-corner ==> Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ o
778 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 2 :   :   :   :
.   .................
:   : 1 : 3 |   :   :
.........———.   .....
:   :   :       :   :
.....................

init-time = 11.73s, solve-time = 0.9s, total-time = 12.63s
nb-facts=<Fact-27662>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(bind ?*simulated-eliminations*
(create$
(value-row-col-to-H-label 1 3 5)
))



(solve
5 5
. . . . .
. . 3 1 .
. . . 2 .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 3 1 .
. . . 2 .
. . . . .
. . . . .

start init-grid-structure 0.00353002548217773
start create-csp-variables
start create-labels 0.000581026077270508
start init-physical-csp-links 0.00330591201782227
start init-physical-non-csp-links 0.928573131561279
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.215039968490601
     start init-physical-BN-non-csp-links at local time 0.81992506980896
     start init-physical-BP-non-csp-links at local time 1.56254196166992
     end init-physical-BP-non-csp-links at local time 10.7128391265869
end init-physical-non-csp-links 11.6414570808411
start init-corner-B-c-values 11.6452231407166
start init-outer-B-candidates 11.6452729701996
start init-outer-I-candidates 11.6456320285797
start init-H-candidates 11.6458079814911
start init-V-candidates 11.6466679573059
start init-P-candidates 11.6476299762726
start init-inner-I-candidates 11.6490190029144
start init-inner-N-and-B-candidates 11.6494181156158
start solution 11.652664899826
Simulated elimination of 1235
entering BRT
H-single: Hr3c5 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r2 r3}c4-bkwd-diag-2s-3...r2c3 ==> Vr2c3 = 1, Hr2c3 = 1
w[1]-3-in-r2c3-closed-nw-corner ==> Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o
778 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :       :   :   :
.....   .———.........
:   :   | 3 : 1 :   :
.................   .
:   :   :   : 2 :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.65s, solve-time = 0.93s, total-time = 12.59s
nb-facts=<Fact-27662>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************








(bind ?*simulated-eliminations*
(create$
(value-row-col-to-H-label 1 4 5)
))

(solve
5 5
. . . . .
. . . . .
. . . 2 .
. . 3 1 .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . 2 .
. . 3 1 .
. . . . .

start init-grid-structure 0.00248885154724121
start create-csp-variables
start create-labels 0.000478029251098633
start init-physical-csp-links 0.00283598899841309
start init-physical-non-csp-links 0.933518886566162
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.19980788230896
     start init-physical-BN-non-csp-links at local time 0.802988052368164
     start init-physical-BP-non-csp-links at local time 1.53012204170227
     end init-physical-BP-non-csp-links at local time 10.7713398933411
end init-physical-non-csp-links 11.7049050331116
start init-corner-B-c-values 11.7077400684357
start init-outer-B-candidates 11.7077798843384
start init-outer-I-candidates 11.7081220149994
start init-H-candidates 11.7083060741425
start init-V-candidates 11.7092430591583
start init-P-candidates 11.7099859714508
start init-inner-I-candidates 11.7113170623779
start init-inner-N-and-B-candidates 11.7117040157318
start solution 11.7150211334229
Simulated elimination of 1245
entering BRT
H-single: Hr4c5 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r4 r3}c4-bkwd-diag-2s-3...r4c3 ==> Vr4c3 = 1, Hr5c3 = 1
w[1]-3-in-r4c3-closed-sw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ne, Pr4c4 ≠ o
778 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   : 2 :   :
.................   .
:   :   | 3 : 1 :   :
.....   .———.........
:   :       :   :   :
.....................

init-time = 11.72s, solve-time = 0.87s, total-time = 12.58s
nb-facts=<Fact-27662>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




;;; cases with longer chains of 2s left as an exercise to the reader


