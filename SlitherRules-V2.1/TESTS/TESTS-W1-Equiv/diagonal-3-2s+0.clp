
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-3-2s+0
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


DIAGONAL-3-2+0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve 
5 5 
. . . . .
. 3 . . .
. . 2 0 . 
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
. . 2 0 .
. . . . .
. . . . .

start init-grid-structure 3.98159027099609e-05
start create-csp-variables
start create-labels 0.00076603889465332
start init-physical-csp-links 0.00434494018554688
start init-physical-non-csp-links 1.0126838684082
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.206855058670044
     start init-physical-BN-non-csp-links at local time 0.820284128189087
     start init-physical-BP-non-csp-links at local time 1.52077198028564
     end init-physical-BP-non-csp-links at local time 9.90694713592529
end init-physical-non-csp-links 10.9196779727936
start init-corner-B-c-values 10.9199979305267
start init-outer-B-candidates 10.920040845871
start init-outer-I-candidates 10.9204058647156
start init-H-candidates 10.9205930233002
start init-V-candidates 10.9214808940887
start init-P-candidates 10.9223198890686
start init-inner-I-candidates 10.9237999916077
start init-inner-N-and-B-candidates 10.9242029190063
start solution 10.9275431632996
entering BRT
w0-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[1]-diagonal-3-2+0-in-{r2c2...r3c3+r3c4} ==> Vr4c4 = 1, Vr2c2 = 1, Hr4c3 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
749 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.............   .....
:   :   : 2   0     :
.........———.   .....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.93s, solve-time = 1.04s, total-time = 11.97s
nb-facts=<Fact-27699>
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
. 3 . . .
. . 2 . . 
. . 0 . .
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
. . 0 . .
. . . . .

start init-grid-structure 0.00230789184570312
start create-csp-variables
start create-labels 0.000432014465332031
start init-physical-csp-links 0.00285005569458008
start init-physical-non-csp-links 0.835919141769409
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.200235843658447
     start init-physical-BN-non-csp-links at local time 0.748719930648804
     start init-physical-BP-non-csp-links at local time 1.43211483955383
     end init-physical-BP-non-csp-links at local time 10.2805910110474
end init-physical-non-csp-links 11.1165471076965
start init-corner-B-c-values 11.1191229820251
start init-outer-B-candidates 11.1191709041595
start init-outer-I-candidates 11.1195909976959
start init-H-candidates 11.1198070049286
start init-V-candidates 11.1208078861237
start init-P-candidates 11.1215767860413
start init-inner-I-candidates 11.1229379177094
start init-inner-N-and-B-candidates 11.1233108043671
start solution 11.126984834671
entering BRT
w0-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[1]-diagonal-3-2+0-in-{r2c2...r3c3+r4c3} ==> Vr3c4 = 1, Vr2c2 = 1, Hr4c4 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
749 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 |   :   :
.........   .———.....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.13s, solve-time = 1.04s, total-time = 12.17s
nb-facts=<Fact-27699>
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
. 0 2 . . 
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . 3 .
. 0 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00298881530761719
start create-csp-variables
start create-labels 0.000573158264160156
start init-physical-csp-links 0.0032351016998291
start init-physical-non-csp-links 0.874503135681152
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.197679042816162
     start init-physical-BN-non-csp-links at local time 0.755985021591187
     start init-physical-BP-non-csp-links at local time 1.3697521686554
     end init-physical-BP-non-csp-links at local time 10.3405511379242
end init-physical-non-csp-links 11.2150919437408
start init-corner-B-c-values 11.2184739112854
start init-outer-B-candidates 11.218523979187
start init-outer-I-candidates 11.21892786026
start init-H-candidates 11.2191429138184
start init-V-candidates 11.2201550006866
start init-P-candidates 11.2211120128632
start init-inner-I-candidates 11.222993850708
start init-inner-N-and-B-candidates 11.2234258651733
start solution 11.2270810604095
entering BRT
w0-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-diagonal-3-2+0-in-{r2c4...r3c3+r3c2} ==> Vr2c5 = 1, Vr4c3 = 1, Hr4c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
749 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....   .............
:     0   2 :   :   :
.....   .———.........
:   :   |   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.23s, solve-time = 1.17s, total-time = 12.39s
nb-facts=<Fact-27699>
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
. . 0 . .
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
. . 0 . .
. . . . .

start init-grid-structure 0.00307393074035645
start create-csp-variables
start create-labels 0.0005950927734375
start init-physical-csp-links 0.00338506698608398
start init-physical-non-csp-links 0.864315986633301
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.19583797454834
     start init-physical-BN-non-csp-links at local time 0.779757022857666
     start init-physical-BP-non-csp-links at local time 1.4834611415863
     end init-physical-BP-non-csp-links at local time 10.1909029483795
end init-physical-non-csp-links 11.0552580356598
start init-corner-B-c-values 11.0585570335388
start init-outer-B-candidates 11.0586040019989
start init-outer-I-candidates 11.0589709281921
start init-H-candidates 11.0591690540314
start init-V-candidates 11.0601298809052
start init-P-candidates 11.0609028339386
start init-inner-I-candidates 11.0623259544373
start init-inner-N-and-B-candidates 11.0627160072327
start solution 11.0658578872681
entering BRT
w0-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[1]-diagonal-3-2+0-in-{r2c4...r3c3+r4c3} ==> Vr2c5 = 1, Vr3c3 = 1, Hr4c2 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw
P-single: Pr4c3 = nw
749 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   | 2 :   :   :
.....———.   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.07s, solve-time = 1.18s, total-time = 12.24s
nb-facts=<Fact-27699>
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
. . 2 0 . 
. 3 . . .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 0 .
. 3 . . .
. . . . .

start init-grid-structure 0.00287389755249023
start create-csp-variables
start create-labels 0.000433921813964844
start init-physical-csp-links 0.00270891189575195
start init-physical-non-csp-links 0.877933979034424
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.191808938980103
     start init-physical-BN-non-csp-links at local time 0.786782026290894
     start init-physical-BP-non-csp-links at local time 1.47482395172119
     end init-physical-BP-non-csp-links at local time 10.3699669837952
end init-physical-non-csp-links 11.2479379177094
start init-corner-B-c-values 11.2510638237
start init-outer-B-candidates 11.2511060237885
start init-outer-I-candidates 11.2514610290527
start init-H-candidates 11.2516539096832
start init-V-candidates 11.2524228096008
start init-P-candidates 11.2531378269196
start init-inner-I-candidates 11.2544629573822
start init-inner-N-and-B-candidates 11.2548189163208
start solution 11.2578101158142
entering BRT
w0-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[1]-diagonal-3-2+0-in-{r4c2...r3c3+r3c4} ==> Vr2c4 = 1, Vr4c2 = 1, Hr5c2 = 1, Hr3c3 = 1, Vr5c2 = 0, Hr5c1 = 0
749 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   |   :   :
.........———.   .....
:   :   : 2   0     :
.............   .....
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

init-time = 11.26s, solve-time = 1.01s, total-time = 12.27s
nb-facts=<Fact-27699>
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
. . 0 . .
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
. . 0 . .
. . 2 . .
. 3 . . .
. . . . .

start init-grid-structure 0.00239300727844238
start create-csp-variables
start create-labels 0.000494003295898438
start init-physical-csp-links 0.00362801551818848
start init-physical-non-csp-links 0.894551038742065
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.194599866867065
     start init-physical-BN-non-csp-links at local time 0.770041942596436
     start init-physical-BP-non-csp-links at local time 1.47187900543213
     end init-physical-BP-non-csp-links at local time 10.3527069091797
end init-physical-non-csp-links 11.2472970485687
start init-corner-B-c-values 11.249979019165
start init-outer-B-candidates 11.2500200271606
start init-outer-I-candidates 11.2504301071167
start init-H-candidates 11.2507190704346
start init-V-candidates 11.2519569396973
start init-P-candidates 11.2530651092529
start init-inner-I-candidates 11.2549910545349
start init-inner-N-and-B-candidates 11.2554469108582
start solution 11.25932097435
entering BRT
w0-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[1]-diagonal-3-2+0-in-{r4c2...r3c3+r2c3} ==> Vr3c4 = 1, Vr4c2 = 1, Hr5c2 = 1, Hr3c4 = 1, Vr5c2 = 0, Hr5c1 = 0
749 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .———.....
:   :   : 2 |   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

init-time = 11.26s, solve-time = 1.19s, total-time = 12.45s
nb-facts=<Fact-27699>
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
. 0 2 . . 
. . . 3 .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 0 2 . .
. . . 3 .
. . . . .

start init-grid-structure 0.0022881031036377
start create-csp-variables
start create-labels 0.000750064849853516
start init-physical-csp-links 0.00368618965148926
start init-physical-non-csp-links 0.897022008895874
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.200016975402832
     start init-physical-BN-non-csp-links at local time 0.784331083297729
     start init-physical-BP-non-csp-links at local time 1.48465394973755
     end init-physical-BP-non-csp-links at local time 10.4337439537048
end init-physical-non-csp-links 11.330806016922
start init-corner-B-c-values 11.3333280086517
start init-outer-B-candidates 11.3333690166473
start init-outer-I-candidates 11.3337240219116
start init-H-candidates 11.3339140415192
start init-V-candidates 11.3346869945526
start init-P-candidates 11.3354370594025
start init-inner-I-candidates 11.3367600440979
start init-inner-N-and-B-candidates 11.3371150493622
start solution 11.3401870727539
entering BRT
w0-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-diagonal-3-2+0-in-{r4c4...r3c3+r3c2} ==> Vr4c5 = 1, Vr2c3 = 1, Hr5c4 = 1, Hr3c3 = 1, Vr5c5 = 0, Hr5c5 = 0
749 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   |   :   :   :
.....   .———.........
:     0   2 :   :   :
.....   .............
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

init-time = 11.34s, solve-time = 1.02s, total-time = 12.36s
nb-facts=<Fact-27699>
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
. . 0 . .
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
. . 0 . .
. . 2 . .
. . . 3 .
. . . . .

start init-grid-structure 0.00355100631713867
start create-csp-variables
start create-labels 0.000532865524291992
start init-physical-csp-links 0.00314998626708984
start init-physical-non-csp-links 0.908342838287354
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.187968015670776
     start init-physical-BN-non-csp-links at local time 0.784137964248657
     start init-physical-BP-non-csp-links at local time 1.48960995674133
     end init-physical-BP-non-csp-links at local time 10.3774039745331
end init-physical-non-csp-links 11.2857859134674
start init-corner-B-c-values 11.2896130084991
start init-outer-B-candidates 11.2896509170532
start init-outer-I-candidates 11.2899799346924
start init-H-candidates 11.2901620864868
start init-V-candidates 11.2909591197968
start init-P-candidates 11.2916960716248
start init-inner-I-candidates 11.2930300235748
start init-inner-N-and-B-candidates 11.2933931350708
start solution 11.2964730262756
entering BRT
w0-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[1]-diagonal-3-2+0-in-{r4c4...r3c3+r2c3} ==> Vr4c5 = 1, Vr3c3 = 1, Hr5c4 = 1, Hr3c2 = 1, Vr5c5 = 0, Hr5c5 = 0
w[1]-3-in-r4c4-closed-se-corner ==> Pr4c4 ≠ nw
P-single: Pr3c3 = sw
749 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.....———.   .........
:   :   | 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

init-time = 11.3s, solve-time = 1.01s, total-time = 12.3s
nb-facts=<Fact-27699>
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

DIAGONAL 3-2-2+0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve 
6 6 
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 0 . 
. . . . . .
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
. . . 2 0 .
. . . . . .
. . . . . .

start init-grid-structure 4.38690185546875e-05
start create-csp-variables
start create-labels 0.000954866409301758
start init-physical-csp-links 0.00569701194763184
start init-physical-non-csp-links 1.70798301696777
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.364289045333862
     start init-physical-BN-non-csp-links at local time 1.3932900428772
     start init-physical-BP-non-csp-links at local time 2.77696704864502
     end init-physical-BP-non-csp-links at local time 18.4197020530701
end init-physical-non-csp-links 20.1277129650116
start init-corner-B-c-values 20.1280238628387
start init-outer-B-candidates 20.128072977066
start init-outer-I-candidates 20.1285569667816
start init-H-candidates 20.1287679672241
start init-V-candidates 20.1300690174103
start init-P-candidates 20.1312069892883
start init-inner-I-candidates 20.1333229541779
start init-inner-N-and-B-candidates 20.1339128017426
start solution 20.1388380527496
entering BRT
w0-0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
w[1]-diagonal-3-2-2+0-in-{r2c2...r4c4+r4c5} ==> Vr5c5 = 1, Vr2c2 = 1, Hr5c4 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
1098 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 405 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.................   .....
:   :   :   : 2   0     :
.............———.   .....
:   :   :   :   |   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 20.14s, solve-time = 2.22s, total-time = 22.36s
nb-facts=<Fact-37757>
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
. 3 . . . .
. . 2 . . .
. . . 2 . . 
. . . 0 . .
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
. . . 0 . .
. . . . . .

start init-grid-structure 0.00553297996520996
start create-csp-variables
start create-labels 0.000864982604980469
start init-physical-csp-links 0.0056910514831543
start init-physical-non-csp-links 1.52479887008667
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.356445074081421
     start init-physical-BN-non-csp-links at local time 1.42890191078186
     start init-physical-BP-non-csp-links at local time 2.66190600395203
     end init-physical-BP-non-csp-links at local time 18.9694159030914
end init-physical-non-csp-links 20.4942510128021
start init-corner-B-c-values 20.5006241798401
start init-outer-B-candidates 20.50066614151
start init-outer-I-candidates 20.5010550022125
start init-H-candidates 20.5012710094452
start init-V-candidates 20.5023391246796
start init-P-candidates 20.5033051967621
start init-inner-I-candidates 20.5051200389862
start init-inner-N-and-B-candidates 20.505627155304
start solution 20.5100018978119
entering BRT
w0-0-in-r5c4 ==> Hr6c4 = 0, Hr5c4 = 0, Vr5c5 = 0, Vr5c4 = 0
w[1]-diagonal-3-2-2+0-in-{r2c2...r4c4+r5c4} ==> Vr4c5 = 1, Vr2c2 = 1, Hr5c5 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
1098 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 405 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 |   :   :
.............   .———.....
:   :   :     0     :   :
.............   .........
:   :   :   :   :   :   :
.........................

init-time = 20.51s, solve-time = 2.21s, total-time = 22.72s
nb-facts=<Fact-37757>
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
. 0 2 . . . 
. . . . . .
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
. 0 2 . . .
. . . . . .
. . . . . .

start init-grid-structure 0.00427508354187012
start create-csp-variables
start create-labels 0.000529050827026367
start init-physical-csp-links 0.00344204902648926
start init-physical-non-csp-links 1.60510206222534
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.364742994308472
     start init-physical-BN-non-csp-links at local time 1.4193708896637
     start init-physical-BP-non-csp-links at local time 2.59457492828369
     end init-physical-BP-non-csp-links at local time 18.1306490898132
end init-physical-non-csp-links 19.7357890605927
start init-corner-B-c-values 19.740266084671
start init-outer-B-candidates 19.7403080463409
start init-outer-I-candidates 19.7407209873199
start init-H-candidates 19.7409360408783
start init-V-candidates 19.7422361373901
start init-P-candidates 19.7432720661163
start init-inner-I-candidates 19.745236158371
start init-inner-N-and-B-candidates 19.7458300590515
start solution 19.7503380775452
entering BRT
w0-0-in-r4c2 ==> Hr5c2 = 0, Hr4c2 = 0, Vr4c3 = 0, Vr4c2 = 0
w[1]-diagonal-3-2-2+0-in-{r2c5...r4c3+r4c2} ==> Vr2c6 = 1, Vr5c3 = 1, Hr5c3 = 1, Hr2c5 = 1, Vr1c6 = 0, Hr2c6 = 0
1098 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 405 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.....   .................
:     0   2 :   :   :   :
.....   .———.............
:   :   |   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 19.75s, solve-time = 2.21s, total-time = 21.96s
nb-facts=<Fact-37757>
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
. . 0 . . .
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
. . 0 . . .
. . . . . .

start init-grid-structure 0.00330901145935059
start create-csp-variables
start create-labels 0.000735998153686523
start init-physical-csp-links 0.00409817695617676
start init-physical-non-csp-links 1.63130807876587
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.374536991119385
     start init-physical-BN-non-csp-links at local time 1.42038702964783
     start init-physical-BP-non-csp-links at local time 2.71610403060913
     end init-physical-BP-non-csp-links at local time 19.8897869586945
end init-physical-non-csp-links 21.5211379528046
start init-corner-B-c-values 21.5246691703796
start init-outer-B-candidates 21.5247139930725
start init-outer-I-candidates 21.5251350402832
start init-H-candidates 21.5253500938416
start init-V-candidates 21.526486158371
start init-P-candidates 21.5276570320129
start init-inner-I-candidates 21.5295460224152
start init-inner-N-and-B-candidates 21.530070066452
start solution 21.53440284729
entering BRT
w0-0-in-r5c3 ==> Hr6c3 = 0, Hr5c3 = 0, Vr5c4 = 0, Vr5c3 = 0
w[1]-diagonal-3-2-2+0-in-{r2c5...r4c3+r5c3} ==> Vr2c6 = 1, Vr4c3 = 1, Hr5c2 = 1, Hr2c5 = 1, Vr1c6 = 0, Hr2c6 = 0
1098 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 405 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   | 2 :   :   :   :
.....———.   .............
:   :     0     :   :   :
.........   .............
:   :   :   :   :   :   :
.........................

init-time = 21.53s, solve-time = 2.28s, total-time = 23.81s
nb-facts=<Fact-37757>
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
. . . . . .
. . . 2 0 .
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
. . . . . .
. . . 2 0 .
. . 2 . . .
. 3 . . . .
. . . . . .

start init-grid-structure 0.00382494926452637
start create-csp-variables
start create-labels 0.000571012496948242
start init-physical-csp-links 0.00351595878601074
start init-physical-non-csp-links 1.47923588752747
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.313771963119507
     start init-physical-BN-non-csp-links at local time 1.21812510490417
     start init-physical-BP-non-csp-links at local time 2.3323130607605
     end init-physical-BP-non-csp-links at local time 19.6846640110016
end init-physical-non-csp-links 21.163948059082
start init-corner-B-c-values 21.1679821014404
start init-outer-B-candidates 21.1680250167847
start init-outer-I-candidates 21.1684401035309
start init-H-candidates 21.1686511039734
start init-V-candidates 21.1697459220886
start init-P-candidates 21.1710329055786
start init-inner-I-candidates 21.1729469299316
start init-inner-N-and-B-candidates 21.1734628677368
start solution 21.1778709888458
entering BRT
w0-0-in-r3c5 ==> Hr4c5 = 0, Hr3c5 = 0, Vr3c6 = 0, Vr3c5 = 0
w[1]-diagonal-3-2-2+0-in-{r5c2...r3c4+r3c5} ==> Vr2c5 = 1, Vr5c2 = 1, Hr6c2 = 1, Hr3c4 = 1, Vr6c2 = 0, Hr6c1 = 0
1098 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 405 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   |   :   :
.............———.   .....
:   :   :   : 2   0     :
.................   .....
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

init-time = 21.18s, solve-time = 2.38s, total-time = 23.56s
nb-facts=<Fact-37757>
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
. . . 0 . .
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
. . . 0 . .
. . . 2 . .
. . 2 . . .
. 3 . . . .
. . . . . .

start init-grid-structure 0.00342297554016113
start create-csp-variables
start create-labels 0.000558853149414062
start init-physical-csp-links 0.00362992286682129
start init-physical-non-csp-links 1.59133505821228
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.360507965087891
     start init-physical-BN-non-csp-links at local time 1.42766904830933
     start init-physical-BP-non-csp-links at local time 2.67633891105652
     end init-physical-BP-non-csp-links at local time 19.8595659732819
end init-physical-non-csp-links 21.4509420394897
start init-corner-B-c-values 21.4546000957489
start init-outer-B-candidates 21.4546520709991
start init-outer-I-candidates 21.4551260471344
start init-H-candidates 21.4553508758545
start init-V-candidates 21.4565739631653
start init-P-candidates 21.4575440883636
start init-inner-I-candidates 21.4595890045166
start init-inner-N-and-B-candidates 21.4601268768311
start solution 21.4645478725433
entering BRT
w0-0-in-r2c4 ==> Hr3c4 = 0, Hr2c4 = 0, Vr2c5 = 0, Vr2c4 = 0
w[1]-diagonal-3-2-2+0-in-{r5c2...r3c4+r2c4} ==> Vr3c5 = 1, Vr5c2 = 1, Hr6c2 = 1, Hr3c5 = 1, Vr6c2 = 0, Hr6c1 = 0
1098 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 405 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.............   .........
:   :   :     0     :   :
.............   .———.....
:   :   :   : 2 |   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

init-time = 21.46s, solve-time = 2.2s, total-time = 23.66s
nb-facts=<Fact-37757>
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
. . . . . .
. 0 2 . . .
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
. . . . . .
. 0 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .

start init-grid-structure 0.00378894805908203
start create-csp-variables
start create-labels 0.000551939010620117
start init-physical-csp-links 0.00357890129089355
start init-physical-non-csp-links 1.54603290557861
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.32707405090332
     start init-physical-BN-non-csp-links at local time 1.35751819610596
     start init-physical-BP-non-csp-links at local time 2.51140213012695
     end init-physical-BP-non-csp-links at local time 19.7446920871735
end init-physical-non-csp-links 21.2907738685608
start init-corner-B-c-values 21.2948229312897
start init-outer-B-candidates 21.2948651313782
start init-outer-I-candidates 21.2952620983124
start init-H-candidates 21.2954769134521
start init-V-candidates 21.2965219020844
start init-P-candidates 21.2975001335144
start init-inner-I-candidates 21.2994799613953
start init-inner-N-and-B-candidates 21.3000059127808
start solution 21.3046271800995
entering BRT
w0-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-diagonal-3-2-2+0-in-{r5c5...r3c3+r3c2} ==> Vr5c6 = 1, Vr2c3 = 1, Hr6c5 = 1, Hr3c3 = 1, Vr6c6 = 0, Hr6c6 = 0
1098 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 405 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   |   :   :   :   :
.....   .———.............
:     0   2 :   :   :   :
.....   .................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

init-time = 21.3s, solve-time = 2.23s, total-time = 23.54s
nb-facts=<Fact-37757>
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
. . 0 . . .
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
. . 0 . . .
. . 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .

start init-grid-structure 0.00471806526184082
start create-csp-variables
start create-labels 0.000669956207275391
start init-physical-csp-links 0.00487589836120605
start init-physical-non-csp-links 1.65586709976196
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.377660036087036
     start init-physical-BN-non-csp-links at local time 1.45280909538269
     start init-physical-BP-non-csp-links at local time 2.79466319084167
     end init-physical-BP-non-csp-links at local time 18.8846909999847
end init-physical-non-csp-links 20.5406060218811
start init-corner-B-c-values 20.5455610752106
start init-outer-B-candidates 20.5456030368805
start init-outer-I-candidates 20.5459949970245
start init-H-candidates 20.5461869239807
start init-V-candidates 20.5472359657288
start init-P-candidates 20.5482089519501
start init-inner-I-candidates 20.5500540733337
start init-inner-N-and-B-candidates 20.5505659580231
start solution 20.554881811142
entering BRT
w0-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[1]-diagonal-3-2-2+0-in-{r5c5...r3c3+r2c3} ==> Vr5c6 = 1, Vr3c3 = 1, Hr6c5 = 1, Hr3c2 = 1, Vr6c6 = 0, Hr6c6 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
P-single: Pr3c3 = sw
1098 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 405 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........   .............
:   :     0     :   :   :
.....———.   .............
:   :   | 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

init-time = 20.55s, solve-time = 2.32s, total-time = 22.88s
nb-facts=<Fact-37757>
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

DIAGONAL 3-2-2-2-2+0, REDUCIBLE TO W1

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
. . . . . 2 0 .
. . . . . . . .
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
. . . . . 2 0 .
. . . . . . . .
. . . . . . . .

start init-grid-structure 0.0044090747833252
start create-csp-variables
start create-labels 0.000878095626831055
start init-physical-csp-links 0.00590205192565918
start init-physical-non-csp-links 4.81945705413818
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.30595993995667
     start init-physical-BN-non-csp-links at local time 4.75517988204956
     start init-physical-BP-non-csp-links at local time 9.08372592926025
     end init-physical-BP-non-csp-links at local time 69.6773538589478
end init-physical-non-csp-links 74.4968600273132
start init-corner-B-c-values 74.5015029907227
start init-outer-B-candidates 74.50155210495
start init-outer-I-candidates 74.5021109580994
start init-H-candidates 74.502387046814
start init-V-candidates 74.5044310092926
start init-P-candidates 74.5062980651855
start init-inner-I-candidates 74.5099251270294
start init-inner-N-and-B-candidates 74.5109651088715
start solution 74.5197389125824
entering BRT
w0-0-in-r6c7 ==> Hr7c7 = 0, Hr6c7 = 0, Vr6c8 = 0, Vr6c7 = 0
w[1]-diagonal-3-2-2-2-2+0-in-{r2c2...r6c6+r6c7} ==> Vr7c7 = 1, Vr2c2 = 1, Hr7c6 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
1988 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 681 VALUES MISSING.
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
.........................   .....
:   :   :   :   :   : 2   0     :
.....................———.   .....
:   :   :   :   :   :   |   :   :
.................................
:   :   :   :   :   :   :   :   :
.................................

init-time = 1m 14.52s, solve-time = 7.86s, total-time = 1m 22.38s
nb-facts=<Fact-62613>
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
. 3 . . . . . .
. . 2 . . . . .
. . . 2 . . . .
. . . . 2 . . .
. . . . . 2 . .
. . . . . 0 . .
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
. . . . . 0 . .
. . . . . . . .

start init-grid-structure 0.00608015060424805
start create-csp-variables
start create-labels 0.000824213027954102
start init-physical-csp-links 0.00631499290466309
start init-physical-non-csp-links 4.04941701889038
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.970538854598999
     start init-physical-BN-non-csp-links at local time 4.1161208152771
     start init-physical-BP-non-csp-links at local time 8.46376490592957
     end init-physical-BP-non-csp-links at local time 72.0537250041962
end init-physical-non-csp-links 76.10320520401
start init-corner-B-c-values 76.1095330715179
start init-outer-B-candidates 76.1095850467682
start init-outer-I-candidates 76.1101729869843
start init-H-candidates 76.110435962677
start init-V-candidates 76.1122670173645
start init-P-candidates 76.1139349937439
start init-inner-I-candidates 76.1171431541443
start init-inner-N-and-B-candidates 76.1181581020355
start solution 76.1264908313751
entering BRT
w0-0-in-r7c6 ==> Hr8c6 = 0, Hr7c6 = 0, Vr7c7 = 0, Vr7c6 = 0
w[1]-diagonal-3-2-2-2-2+0-in-{r2c2...r6c6+r7c6} ==> Vr6c7 = 1, Vr2c2 = 1, Hr7c7 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
1988 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 681 VALUES MISSING.
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
:   :   :   :   :   : 2 |   :   :
.....................   .———.....
:   :   :   :   :     0     :   :
.....................   .........
:   :   :   :   :   :   :   :   :
.................................

init-time = 1m 16.13s, solve-time = 8.2s, total-time = 1m 24.32s
nb-facts=<Fact-62613>
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
. 0 2 . . . . .
. . . . . . . .
. . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . .
. . . . . . 3 .
. . . . . 2 . .
. . . . 2 . . .
. . . 2 . . . .
. 0 2 . . . . .
. . . . . . . .
. . . . . . . .

start init-grid-structure 0.0059199333190918
start create-csp-variables
start create-labels 0.000777006149291992
start init-physical-csp-links 0.00559186935424805
start init-physical-non-csp-links 4.12393689155579
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.867251873016357
     start init-physical-BN-non-csp-links at local time 3.8153669834137
     start init-physical-BP-non-csp-links at local time 8.03077387809753
     end init-physical-BP-non-csp-links at local time 64.9418919086456
end init-physical-non-csp-links 69.065878868103
start init-corner-B-c-values 69.072035074234
start init-outer-B-candidates 69.0720970630646
start init-outer-I-candidates 69.0726690292358
start init-H-candidates 69.0729649066925
start init-V-candidates 69.0748600959778
start init-P-candidates 69.0765099525452
start init-inner-I-candidates 69.0796990394592
start init-inner-N-and-B-candidates 69.0806128978729
start solution 69.0894470214844
entering BRT
w0-0-in-r6c2 ==> Hr7c2 = 0, Hr6c2 = 0, Vr6c3 = 0, Vr6c2 = 0
w[1]-diagonal-3-2-2-2-2+0-in-{r2c7...r6c3+r6c2} ==> Vr2c8 = 1, Vr7c3 = 1, Hr7c3 = 1, Hr2c7 = 1, Vr1c8 = 0, Hr2c8 = 0
1988 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 681 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

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
.....   .........................
:     0   2 :   :   :   :   :   :
.....   .———.....................
:   :   |   :   :   :   :   :   :
.................................
:   :   :   :   :   :   :   :   :
.................................

init-time = 1m 9.09s, solve-time = 7.83s, total-time = 1m 16.92s
nb-facts=<Fact-62613>
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
. . 0 . . . . .
. . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . .
. . . . . . 3 .
. . . . . 2 . .
. . . . 2 . . .
. . . 2 . . . .
. . 2 . . . . .
. . 0 . . . . .
. . . . . . . .

start init-grid-structure 0.00597715377807617
start create-csp-variables
start create-labels 0.000844001770019531
start init-physical-csp-links 0.00565600395202637
start init-physical-non-csp-links 4.13489603996277
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.0063009262085
     start init-physical-BN-non-csp-links at local time 3.84688305854797
     start init-physical-BP-non-csp-links at local time 7.29445695877075
     end init-physical-BP-non-csp-links at local time 71.976576089859
end init-physical-non-csp-links 76.1115109920502
start init-corner-B-c-values 76.1177320480347
start init-outer-B-candidates 76.1177821159363
start init-outer-I-candidates 76.118360042572
start init-H-candidates 76.1186180114746
start init-V-candidates 76.1204571723938
start init-P-candidates 76.1222059726715
start init-inner-I-candidates 76.125461101532
start init-inner-N-and-B-candidates 76.1263980865479
start solution 76.1343469619751
entering BRT
w0-0-in-r7c3 ==> Hr8c3 = 0, Hr7c3 = 0, Vr7c4 = 0, Vr7c3 = 0
w[1]-diagonal-3-2-2-2-2+0-in-{r2c7...r6c3+r7c3} ==> Vr2c8 = 1, Vr6c3 = 1, Hr7c2 = 1, Hr2c7 = 1, Vr1c8 = 0, Hr2c8 = 0
1988 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 681 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

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
:   :   | 2 :   :   :   :   :   :
.....———.   .....................
:   :     0     :   :   :   :   :
.........   .....................
:   :   :   :   :   :   :   :   :
.................................

init-time = 1m 16.13s, solve-time = 8.76s, total-time = 1m 24.89s
nb-facts=<Fact-62613>
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
. . . . . . . .
. . . . . 2 0 .
. . . . 2 . . .
. . . 2 . . . .
. . 2 . . . . .
. 3 . . . . . .
. . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . .
. . . . . . . .
. . . . . 2 0 .
. . . . 2 . . .
. . . 2 . . . .
. . 2 . . . . .
. 3 . . . . . .
. . . . . . . .

start init-grid-structure 0.0063481330871582
start create-csp-variables
start create-labels 0.000833988189697266
start init-physical-csp-links 0.00578498840332031
start init-physical-non-csp-links 4.21698594093323
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.02611994743347
     start init-physical-BN-non-csp-links at local time 4.22867298126221
     start init-physical-BP-non-csp-links at local time 8.18526601791382
     end init-physical-BP-non-csp-links at local time 76.5232348442078
end init-physical-non-csp-links 80.7402639389038
start init-corner-B-c-values 80.7468590736389
start init-outer-B-candidates 80.7469041347504
start init-outer-I-candidates 80.7474300861359
start init-H-candidates 80.7476861476898
start init-V-candidates 80.7495341300964
start init-P-candidates 80.7512331008911
start init-inner-I-candidates 80.7545530796051
start init-inner-N-and-B-candidates 80.7556200027466
start solution 80.7669060230255
entering BRT
w0-0-in-r3c7 ==> Hr4c7 = 0, Hr3c7 = 0, Vr3c8 = 0, Vr3c7 = 0
w[1]-diagonal-3-2-2-2-2+0-in-{r7c2...r3c6+r3c7} ==> Vr2c7 = 1, Vr7c2 = 1, Hr8c2 = 1, Hr3c6 = 1, Vr8c2 = 0, Hr8c1 = 0
1988 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 681 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.................................
:   :   :   :   :   :   :   :   :
.................................
:   :   :   :   :   :   |   :   :
.....................———.   .....
:   :   :   :   :   : 2   0     :
.........................   .....
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

init-time = 1m 20.77s, solve-time = 8.64s, total-time = 1m 29.41s
nb-facts=<Fact-62613>
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
. . . . . 0 . .
. . . . . 2 . .
. . . . 2 . . .
. . . 2 . . . .
. . 2 . . . . .
. 3 . . . . . .
. . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . .
. . . . . 0 . .
. . . . . 2 . .
. . . . 2 . . .
. . . 2 . . . .
. . 2 . . . . .
. 3 . . . . . .
. . . . . . . .

start init-grid-structure 0.00582098960876465
start create-csp-variables
start create-labels 0.000787973403930664
start init-physical-csp-links 0.00568294525146484
start init-physical-non-csp-links 4.05933284759521
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.933144092559814
     start init-physical-BN-non-csp-links at local time 3.98358297348022
     start init-physical-BP-non-csp-links at local time 7.79390907287598
     end init-physical-BP-non-csp-links at local time 66.6010499000549
end init-physical-non-csp-links 70.660425901413
start init-corner-B-c-values 70.6664807796478
start init-outer-B-candidates 70.6665279865265
start init-outer-I-candidates 70.6670598983765
start init-H-candidates 70.6673159599304
start init-V-candidates 70.6690859794617
start init-P-candidates 70.6707158088684
start init-inner-I-candidates 70.6739327907562
start init-inner-N-and-B-candidates 70.6748538017273
start solution 70.6826469898224
entering BRT
w0-0-in-r2c6 ==> Hr3c6 = 0, Hr2c6 = 0, Vr2c7 = 0, Vr2c6 = 0
w[1]-diagonal-3-2-2-2-2+0-in-{r7c2...r3c6+r2c6} ==> Vr3c7 = 1, Vr7c2 = 1, Hr8c2 = 1, Hr3c7 = 1, Vr8c2 = 0, Hr8c1 = 0
1988 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 681 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.................................
:   :   :   :   :   :   :   :   :
.....................   .........
:   :   :   :   :     0     :   :
.....................   .———.....
:   :   :   :   :   : 2 |   :   :
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

init-time = 1m 10.68s, solve-time = 7.8s, total-time = 1m 18.49s
nb-facts=<Fact-62613>
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
. . . . . . . .
. 0 2 . . . . .
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
. . . . . . . .
. 0 2 . . . . .
. . . 2 . . . .
. . . . 2 . . .
. . . . . 2 . .
. . . . . . 3 .
. . . . . . . .

start init-grid-structure 0.00609898567199707
start create-csp-variables
start create-labels 0.000784873962402344
start init-physical-csp-links 0.00570988655090332
start init-physical-non-csp-links 4.24971699714661
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.877128124237061
     start init-physical-BN-non-csp-links at local time 3.94258403778076
     start init-physical-BP-non-csp-links at local time 8.31318807601929
     end init-physical-BP-non-csp-links at local time 65.6352019309998
end init-physical-non-csp-links 69.8849699497223
start init-corner-B-c-values 69.891312122345
start init-outer-B-candidates 69.8913581371307
start init-outer-I-candidates 69.8918781280518
start init-H-candidates 69.892126083374
start init-V-candidates 69.8938701152802
start init-P-candidates 69.8955051898956
start init-inner-I-candidates 69.8986871242523
start init-inner-N-and-B-candidates 69.899610042572
start solution 69.9074308872223
entering BRT
w0-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-diagonal-3-2-2-2-2+0-in-{r7c7...r3c3+r3c2} ==> Vr7c8 = 1, Vr2c3 = 1, Hr8c7 = 1, Hr3c3 = 1, Vr8c8 = 0, Hr8c8 = 0
1988 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 681 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.................................
:   :   :   :   :   :   :   :   :
.................................
:   :   |   :   :   :   :   :   :
.....   .———.....................
:     0   2 :   :   :   :   :   :
.....   .........................
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

init-time = 1m 9.91s, solve-time = 8.18s, total-time = 1m 18.09s
nb-facts=<Fact-62613>
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
. . 0 . . . . .
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
. . 0 . . . . .
. . 2 . . . . .
. . . 2 . . . .
. . . . 2 . . .
. . . . . 2 . .
. . . . . . 3 .
. . . . . . . .

start init-grid-structure 0.00793910026550293
start create-csp-variables
start create-labels 0.00106310844421387
start init-physical-csp-links 0.0074460506439209
start init-physical-non-csp-links 4.30862903594971
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.966312885284424
     start init-physical-BN-non-csp-links at local time 3.77233505249023
     start init-physical-BP-non-csp-links at local time 7.98042798042297
     end init-physical-BP-non-csp-links at local time 80.0043048858643
end init-physical-non-csp-links 84.3129651546478
start init-corner-B-c-values 84.3211560249329
start init-outer-B-candidates 84.3212070465088
start init-outer-I-candidates 84.3217868804932
start init-H-candidates 84.3220529556274
start init-V-candidates 84.3240280151367
start init-P-candidates 84.3257279396057
start init-inner-I-candidates 84.3290219306946
start init-inner-N-and-B-candidates 84.3299551010132
start solution 84.3409850597382
entering BRT
w0-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[1]-diagonal-3-2-2-2-2+0-in-{r7c7...r3c3+r2c3} ==> Vr7c8 = 1, Vr3c3 = 1, Hr8c7 = 1, Hr3c2 = 1, Vr8c8 = 0, Hr8c8 = 0
1988 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 681 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.................................
:   :   :   :   :   :   :   :   :
.........   .....................
:   :     0     :   :   :   :   :
.....———.   .....................
:   :   | 2 :   :   :   :   :   :
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

init-time = 1m 24.34s, solve-time = 8.23s, total-time = 1m 32.57s
nb-facts=<Fact-62613>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







