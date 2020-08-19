
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF GRID CORNERS
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

1 IN A CORNER, , REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



(solve 
5 5 
1 . . . .
. . . . .
. . . . . 
. . . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 . . . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00264692306518555
start create-csp-variables
start create-labels 0.000442981719970703
start init-physical-csp-links 0.00267720222473145
start init-physical-non-csp-links 0.852352142333984
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.214601993560791
     start init-physical-BN-non-csp-links at local time 0.803040027618408
     start init-physical-BP-non-csp-links at local time 1.52081704139709
     end init-physical-BP-non-csp-links at local time 9.61660194396973
end init-physical-non-csp-links 10.4690041542053
start init-corner-B-c-values 10.4719779491425
start init-outer-B-candidates 10.4720189571381
start init-outer-I-candidates 10.4723789691925
start init-H-candidates 10.4725658893585
start init-V-candidates 10.4734330177307
start init-P-candidates 10.4742050170898
start init-inner-I-candidates 10.4755318164825
start init-inner-N-and-B-candidates 10.475891828537
start solution 10.4791350364685
entering BRT
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
818 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 298 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.   .................
  1 :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.48s, solve-time = 0.77s, total-time = 11.25s
nb-facts=<Fact-27674>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
5 5 
1 . . . 1
. . . . .
. . . . . 
. . . . .
1 . . . 1 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 . . . 1
. . . . .
. . . . .
. . . . .
1 . . . 1

start init-grid-structure 0.00291299819946289
start create-csp-variables
start create-labels 0.00044703483581543
start init-physical-csp-links 0.00287508964538574
start init-physical-non-csp-links 0.893646001815796
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.214354991912842
     start init-physical-BN-non-csp-links at local time 0.762369871139526
     start init-physical-BP-non-csp-links at local time 1.48430585861206
     end init-physical-BP-non-csp-links at local time 10.79567694664
end init-physical-non-csp-links 11.6893579959869
start init-corner-B-c-values 11.6924879550934
start init-outer-B-candidates 11.6925280094147
start init-outer-I-candidates 11.6928770542145
start init-H-candidates 11.6930930614471
start init-V-candidates 11.6938829421997
start init-P-candidates 11.6946048736572
start init-inner-I-candidates 11.695955991745
start init-inner-N-and-B-candidates 11.6963169574738
start solution 11.6994059085846
entering BRT
w[1]-1-in-se-corner ==> Vr5c6 = 0, Hr6c5 = 0
w[1]-1-in-sw-corner ==> Vr5c1 = 0, Hr6c1 = 0
w[1]-1-in-ne-corner ==> Vr1c6 = 0, Hr1c5 = 0
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
776 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.   .............   .
  1 :   :   :   : 1
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
  1 :   :   :   : 1
.   .............   .

init-time = 11.7s, solve-time = 0.99s, total-time = 12.69s
nb-facts=<Fact-27668>
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

3 IN A CORNER, , REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve 
5 5 
3 . . . .
. . . . .
. . . . . 
. . . . .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . . . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00278306007385254
start create-csp-variables
start create-labels 0.000463962554931641
start init-physical-csp-links 0.00280499458312988
start init-physical-non-csp-links 0.887050151824951
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.197604179382324
     start init-physical-BN-non-csp-links at local time 0.775225162506104
     start init-physical-BP-non-csp-links at local time 1.48988795280457
     end init-physical-BP-non-csp-links at local time 10.4962041378021
end init-physical-non-csp-links 11.3833010196686
start init-corner-B-c-values 11.3864710330963
start init-outer-B-candidates 11.3865110874176
start init-outer-I-candidates 11.3868479728699
start init-H-candidates 11.3870260715485
start init-V-candidates 11.3878090381622
start init-P-candidates 11.3885450363159
start init-inner-I-candidates 11.3898510932922
start init-inner-N-and-B-candidates 11.3902039527893
start solution 11.3933510780334
entering BRT
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
818 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 298 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.———.................
| 3 :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.39s, solve-time = 0.77s, total-time = 12.16s
nb-facts=<Fact-27684>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


(solve 
5 5 
3 . . . 3
. . . . .
. . . . . 
. . . . .
3 . . . 3 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . . . 3
. . . . .
. . . . .
. . . . .
3 . . . 3

start init-grid-structure 0.00283002853393555
start create-csp-variables
start create-labels 0.000412940979003906
start init-physical-csp-links 0.00253796577453613
start init-physical-non-csp-links 0.883435010910034
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.205759048461914
     start init-physical-BN-non-csp-links at local time 0.803597927093506
     start init-physical-BP-non-csp-links at local time 1.48412013053894
     end init-physical-BP-non-csp-links at local time 10.6190340518951
end init-physical-non-csp-links 11.5025129318237
start init-corner-B-c-values 11.5055348873138
start init-outer-B-candidates 11.5055739879608
start init-outer-I-candidates 11.5059340000153
start init-H-candidates 11.5061278343201
start init-V-candidates 11.506954908371
start init-P-candidates 11.5076599121094
start init-inner-I-candidates 11.5089728832245
start init-inner-N-and-B-candidates 11.509330034256
start solution 11.5123760700226
entering BRT
w[1]-3-in-se-corner ==> Vr5c6 = 1, Hr6c5 = 1
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
w[1]-3-in-ne-corner ==> Vr1c6 = 1, Hr1c5 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
776 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.———.............———.
| 3 :   :   :   : 3 |
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
| 3 :   :   :   : 3 |
.———.............———.

init-time = 11.51s, solve-time = 0.98s, total-time = 12.5s
nb-facts=<Fact-27708>
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

2 IN A CORNER

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve 
5 5 
2 . . . .
. . . . .
. . . . . 
. . . . .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 . . . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00310611724853516
start create-csp-variables
start create-labels 0.00045013427734375
start init-physical-csp-links 0.00281810760498047
start init-physical-non-csp-links 0.90929102897644
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.190879106521606
     start init-physical-BN-non-csp-links at local time 0.807131052017212
     start init-physical-BP-non-csp-links at local time 1.54508709907532
     end init-physical-BP-non-csp-links at local time 9.83036112785339
end init-physical-non-csp-links 10.7396810054779
start init-corner-B-c-values 10.7429890632629
start init-outer-B-candidates 10.7430300712585
start init-outer-I-candidates 10.7433681488037
start init-H-candidates 10.7435550689697
start init-V-candidates 10.7443470954895
start init-P-candidates 10.7450790405273
start init-inner-I-candidates 10.7463731765747
start init-inner-N-and-B-candidates 10.7467401027679
start solution 10.749862909317
entering BRT
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
813 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 298 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....———.............
: 2 :   :   :   :   :
.....................
|   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.75s, solve-time = 0.77s, total-time = 11.52s
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
2 . . . 2
. . . . .
. . . . . 
. . . . .
2 . . . 2 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 . . . 2
. . . . .
. . . . .
. . . . .
2 . . . 2

start init-grid-structure 0.00226807594299316
start create-csp-variables
start create-labels 0.000442028045654297
start init-physical-csp-links 0.00307106971740723
start init-physical-non-csp-links 0.890985012054443
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.203906059265137
     start init-physical-BN-non-csp-links at local time 0.79389500617981
     start init-physical-BP-non-csp-links at local time 1.51154613494873
     end init-physical-BP-non-csp-links at local time 10.5108361244202
end init-physical-non-csp-links 11.4018590450287
start init-corner-B-c-values 11.4043381214142
start init-outer-B-candidates 11.4043781757355
start init-outer-I-candidates 11.404708147049
start init-H-candidates 11.4048871994019
start init-V-candidates 11.4056651592255
start init-P-candidates 11.4063930511475
start init-inner-I-candidates 11.4077141284943
start init-inner-N-and-B-candidates 11.4080669879913
start solution 11.4111068248749
entering BRT
w[1]-2-in-se-corner ==> Vr4c6 = 1, Hr6c4 = 1
w[1]-2-in-sw-corner ==> Vr4c1 = 1, Hr6c2 = 1
w[1]-2-in-ne-corner ==> Vr2c6 = 1, Hr1c4 = 1
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
756 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....———.....———.....
: 2 :   :   :   : 2 :
.....................
|   :   :   :   :   |
.....................
:   :   :   :   :   :
.....................
|   :   :   :   :   |
.....................
: 2 :   :   :   : 2 :
.....———.....———.....

init-time = 11.41s, solve-time = 0.99s, total-time = 12.4s
nb-facts=<Fact-27692>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
