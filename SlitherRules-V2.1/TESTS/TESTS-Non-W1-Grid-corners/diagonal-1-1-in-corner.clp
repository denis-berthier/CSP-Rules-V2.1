
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-1-1-IN-CORNER
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





(solve
5 5 
. . . . .
. . . . .
. . . . . 
. . . . .
. . . . . 
)


---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONALS 1s IN CORNERS, NOT REDUCIBLE TO W1, BUT REDUCIBLE TO W3

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve 
5 5 
. 1 . . .
1 . . . .
. . . . . 
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 . . .
1 . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.0030519962310791
start create-csp-variables
start create-labels 0.000391006469726562
start init-physical-csp-links 0.0023350715637207
start init-physical-non-csp-links 0.883156061172485
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.190871000289917
     start init-physical-BN-non-csp-links at local time 0.774426937103271
     start init-physical-BP-non-csp-links at local time 1.47476100921631
     end init-physical-BP-non-csp-links at local time 10.3807399272919
end init-physical-non-csp-links 11.2639381885529
start init-corner-B-c-values 11.2671849727631
start init-outer-B-candidates 11.2672529220581
start init-outer-I-candidates 11.2675929069519
start init-H-candidates 11.2678380012512
start init-V-candidates 11.2686750888824
start init-P-candidates 11.2695889472961
start init-inner-I-candidates 11.2712740898132
start init-inner-N-and-B-candidates 11.2716770172119
start solution 11.2751960754395
entering BRT
diagonal-1-1-in-nw-corner ==> Vr1c2 = 0, Hr2c1 = 0
800 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:     1 :   :   :   :
.   .................
: 1 :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.28s, solve-time = 0.9s, total-time = 12.17s
nb-facts=<Fact-27650>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


with W3: PROOF
(solve 
3 3
. 1 .
1 . .
. . .
)
entering level BC2 with <Fact-24955>
entering level W2 with <Fact-25044>
entering level BC3 with <Fact-25981>
entering level W3 with <Fact-26054>
whip[3]: Br1c1{o wne} - Pr2c1{ne ns} - Br2c1{s .} ==> Pr2c2 ≠ ns
whip[1]: Pr2c2{ew .} ==> Vr1c2 ≠ 1
V-single: Vr1c2 = 0
whip[1]: Pr2c2{ew .} ==> Br2c2 ≠ w, esw, sw, ew
whip[3]: Pr1c2{o ew} - Br1c2{s n} - Pr2c2{ew .} ==> Br1c1 ≠ swn
whip[1]: Br1c1{o .} ==> Hr2c1 ≠ 1
H-single: Hr2c1 = 0
whip[1]: Pr2c2{o .} ==> Br2c2 ≠ nes, n, ne, ns
whip[1]: Br1c1{o .} ==> Nr1c1 ≠ 3
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[3]

---
---
---

.............
:     1 :   :
.   .........
: 1 :   :   :
.............
:   :   :   :
.............

Grid solved : computation-time 440.449007, nb-facts=<Fact-28371>

with gW2? no





(solve
5 5  
. 1 . 1 . 
1 . . . 1
. . . . .
1 . . . 1
. 1 . 1 .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 . 1 .
1 . . . 1
. . . . .
1 . . . 1
. 1 . 1 .

start init-grid-structure 0.00273013114929199
start create-csp-variables
start create-labels 0.000493049621582031
start init-physical-csp-links 0.00280117988586426
start init-physical-non-csp-links 0.860833168029785
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.215967178344727
     start init-physical-BN-non-csp-links at local time 0.804614067077637
     start init-physical-BP-non-csp-links at local time 1.46831703186035
     end init-physical-BP-non-csp-links at local time 10.1763260364532
end init-physical-non-csp-links 11.0371980667114
start init-corner-B-c-values 11.0401721000671
start init-outer-B-candidates 11.0402131080627
start init-outer-I-candidates 11.0405631065369
start init-H-candidates 11.0407471656799
start init-V-candidates 11.0417420864105
start init-P-candidates 11.0425050258636
start init-inner-I-candidates 11.0438480377197
start init-inner-N-and-B-candidates 11.0442190170288
start solution 11.0472030639648
entering BRT
diagonal-1-1-in-nw-corner ==> Vr1c2 = 0, Hr2c1 = 0
diagonal-1-1-in-ne-corner ==> Vr1c5 = 0, Hr2c5 = 0
diagonal-1-1-in-sw-corner ==> Vr5c2 = 0, Hr5c1 = 0
diagonal-1-1-in-se-corner ==> Vr5c5 = 0, Hr5c5 = 0
704 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 291 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:     1 :   : 1     :
.   .............   .
: 1 :   :   :   : 1 :
.....................
:   :   :   :   :   :
.....................
: 1 :   :   :   : 1 :
.   .............   .
:     1 :   : 1     :
.....................

init-time = 11.05s, solve-time = 0.94s, total-time = 11.99s
nb-facts=<Fact-27566>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






