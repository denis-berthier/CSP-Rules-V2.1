
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              TEST OF THE non-W1 EDGE RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - June 2020              ;;;
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

DIAGONAL3-2s+1-ON-EDGE,   NOT REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




(solve 
5 5 
. 2 1 . .
. . 3 . .
. . . . .
. . . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. 2 1 . . . . 3 . . . . . . . . . . . . . . . . .)
328 csp-variables, 789 candidates, 2674 csp-links and 12874 links. Initial density = 1.0353335520771
entering level W1 with <Fact-73729>
whip[1]: Br2c3{nes .} ==> Pr2c3 <> o
whip[1]: Br2c3{nes .} ==> Pr2c3 <> nw
whip[1]: Pr2c3{sw .} ==> Br1c2 <> es
whip[1]: Br1c2{sw .} ==> Pr1c2 <> o
whip[1]: Pr1c2{sw .} ==> Br1c1 <> o
whip[1]: Pr1c2{sw .} ==> Br1c1 <> s
whip[1]: Br2c3{nes .} ==> Pr2c4 <> o
whip[1]: Br2c3{nes .} ==> Pr2c4 <> ne
whip[1]: Pr2c4{sw .} ==> Br1c4 <> sw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> esw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> swn
whip[1]: Br2c3{nes .} ==> Pr3c3 <> o
whip[1]: Br2c3{nes .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{ne .} ==> Br3c2 <> ne
whip[1]: Pr3c3{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c3{ne .} ==> Br3c2 <> nes
whip[1]: Br2c3{nes .} ==> Pr3c4 <> o
whip[1]: Br2c3{nes .} ==> Pr3c4 <> se
whip[1]: Pr3c4{sw .} ==> Br3c4 <> nw
whip[1]: Pr3c4{sw .} ==> Br3c4 <> swn
whip[1]: Pr3c4{sw .} ==> Br3c4 <> wne
whip[1]: Br1c3{w .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{sw .} ==> Br2c2 <> o
whip[1]: Pr2c3{sw .} ==> Br2c2 <> s
whip[1]: Pr2c3{sw .} ==> Br2c2 <> w
whip[1]: Pr2c3{sw .} ==> Br2c2 <> sw
whip[1]: Br1c3{w .} ==> Pr2c4 <> nw
whip[1]: Pr2c4{sw .} ==> Br2c4 <> o
whip[1]: Pr2c4{sw .} ==> Br2c4 <> e
whip[1]: Pr2c4{sw .} ==> Br2c4 <> s
whip[1]: Pr2c4{sw .} ==> Br2c4 <> es
whip[1]: Br1c3{w .} ==> Pr1c4 <> sw
whip[1]: Pr1c4{o .} ==> Br1c4 <> w
whip[1]: Pr1c4{o .} ==> Br1c4 <> ew
whip[1]: Br1c3{w .} ==> Pr1c3 <> se
whip[1]: Pr1c3{sw .} ==> Br1c2 <> ew
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   : 2 : 1 :   :   :
.....................
:   :   : 3 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................







(solve 
4 4
. 1 2 .
. 3 . .
. . . .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. 1 2 . . 3 . . . . . . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7124 links. Initial density = 1.49880499545562
diagonal-3-2s+1-on-edge-{r2c2...r1c3}+r1c2 ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c2 = 0, Hr3c1 = 0
P-single : Pr3c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   : 1 : 2 :   :
.................
:   | 3 :   :   :
.   .———.........
:       :   :   :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.24489000000005, nb-facts=<Fact-44760>




(solve
4 4
. 2 1 .
. . 3 .
. . . .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. 2 1 . . . 3 . . . . . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7124 links. Initial density = 1.49880499545562
diagonal-3-2s+1-on-edge-{r2c3...r1c2}+r1c3 ==> Vr2c4 = 1, Hr3c3 = 1, Vr3c4 = 0, Hr3c4 = 0
P-single : Pr3c4 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   : 2 : 1 :   :
.................
:   :   : 3 |   :
.........———.   .
:   :   :       :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.20020299999999, nb-facts=<Fact-44760>




(solve
4 4
. . . .
2 . . .
1 3 . .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . 2 . . . 1 3 . . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7124 links. Initial density = 1.49880499545562
diagonal-3-2s+1-on-edge-{r3c2...r2c1}+r3c1 ==> Vr3c3 = 1, Hr4c2 = 1, Vr4c3 = 0, Hr4c3 = 0
P-single : Pr4c3 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
: 2 :   :   :   :
.................
: 1 : 3 |   :   :
.....———.   .....
:   :       :   :
.................

Grid solved : computation-time 6.24304899999998, nb-facts=<Fact-44760>



(solve
4 4
. . . .
1 3 . .
2 . . .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . 1 3 . . 2 . . . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7124 links. Initial density = 1.49880499545562
diagonal-3-2s+1-on-edge-{r2c2...r3c1}+r2c1 ==> Vr2c3 = 1, Hr2c2 = 1, Vr1c3 = 0, Hr2c3 = 0
P-single : Pr2c3 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :       :   :
.....———.   .....
: 1 : 3 |   :   :
.................
: 2 :   :   :   :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.26165700000001, nb-facts=<Fact-44760>




(solve 
4 4
. . . .
. . . .
. 3 . .
. 1 2 .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . 3 . . . 1 2 .)
229 csp-variables, 488 candidates, 1471 csp-links and 7124 links. Initial density = 1.49880499545562
diagonal-3-2s+1-on-edge-{r3c2...r4c3}+r4c2 ==> Vr3c2 = 1, Hr3c2 = 1, Vr2c2 = 0, Hr3c1 = 0
P-single : Pr3c2 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:       :   :   :
.   .———.........
:   | 3 :   :   :
.................
:   : 1 : 2 :   :
.................

Grid solved : computation-time 6.26565900000003, nb-facts=<Fact-44760>




(solve 
4 4
. . . .
. . . .
. 3 . .
. 1 2 .
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . 3 . . . 1 2 .)
229 csp-variables, 488 candidates, 1471 csp-links and 7124 links. Initial density = 1.49880499545562
diagonal-3-2s+1-on-edge-{r3c2...r4c3}+r4c2 ==> Vr3c2 = 1, Hr3c2 = 1, Vr2c2 = 0, Hr3c1 = 0
P-single : Pr3c2 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:       :   :   :
.   .———.........
:   | 3 :   :   :
.................
:   : 1 : 2 :   :
.................

Grid solved : computation-time 6.331681, nb-facts=<Fact-44760>




(solve
4 4
. . . .
. . . .
. . 3 .
. 2 1 .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . 2 1 .)
229 csp-variables, 488 candidates, 1471 csp-links and 7124 links. Initial density = 1.49880499545562
diagonal-3-2s+1-on-edge-{r3c3...r4c2}+r4c3 ==> Vr3c4 = 1, Hr3c3 = 1, Vr2c4 = 0, Hr3c4 = 0
P-single : Pr3c4 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:   :   :       :
.........———.   .
:   :   : 3 |   :
.................
:   : 2 : 1 :   :
.................

Grid solved : computation-time 6.32054099999999, nb-facts=<Fact-44760>




(solve
4 4
. . . .
. . . 2
. . 3 1
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 2 . . 3 1 . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7124 links. Initial density = 1.49880499545562
diagonal-3-2s+1-on-edge-{r3c3...r2c4}+r3c4 ==> Vr3c3 = 1, Hr4c3 = 1, Vr4c3 = 0, Hr4c2 = 0
P-single : Pr4c3 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:   :   :   : 2 :
.................
:   :   | 3 : 1 :
.....   .———.....
:   :       :   :
.................

Grid solved : computation-time 6.406362, nb-facts=<Fact-44760>





(solve
4 4
. . . .
. . 3 1
. . . 2
. . . .
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 1 . . . 2 . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7124 links. Initial density = 1.49880499545562
diagonal-3-2s+1-on-edge-{r2c3...r3c4}+r2c4 ==> Vr2c3 = 1, Hr2c3 = 1, Vr1c3 = 0, Hr2c2 = 0
P-single : Pr2c3 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :       :   :
.....   .———.....
:   :   | 3 : 1 :
.................
:   :   :   : 2 :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.26615400000003, nb-facts=<Fact-44760>






;;; 5




(solve 
5 5
. . 1 2 .
. . 2 . .
. 3 . . .
. . . . .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . 1 2 . . . 2 . . . 3 . . . . . . . . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12458 links. Initial density = 1.03574991686066
diagonal-3-2s+1-on-edge-{r3c2...r1c4}+r1c3 ==> Vr3c2 = 1, Hr4c2 = 1, Vr4c2 = 0, Hr4c1 = 0
P-single : Pr4c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   : 1 : 2 :   :
.....................
:   :   : 2 :   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 14.132734, nb-facts=<Fact-72316>



(solve
5 5
. 2 1 . .
. . 2 . .
. . . 3 .
. . . . .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. 2 1 . . . . 2 . . . . . 3 . . . . . . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12458 links. Initial density = 1.03574991686066
diagonal-3-2s+1-on-edge-{r3c4...r1c2}+r1c3 ==> Vr3c5 = 1, Hr4c4 = 1, Vr4c5 = 0, Hr4c5 = 0
P-single : Pr4c5 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   : 2 : 1 :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 14.694174, nb-facts=<Fact-72316>



(solve
5 5
. . . . .
2 . . . .
1 2 . . .
. . 3 . .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 2 . . . . 1 2 . . . . . 3 . . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12458 links. Initial density = 1.03574991686066
diagonal-3-2s+1-on-edge-{r4c3...r2c1}+r3c1 ==> Vr4c4 = 1, Hr5c3 = 1, Vr5c4 = 0, Hr5c4 = 0
P-single : Pr5c4 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
: 2 :   :   :   :   :
.....................
: 1 : 2 :   :   :   :
.....................
:   :   : 3 |   :   :
.........———.   .....
:   :   :       :   :
.....................

Grid solved : computation-time 15.404324, nb-facts=<Fact-72316>



(solve
5 5
. . . . .
. . 3 . .
1 2 . . .
2 . . . .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . 1 2 . . . 2 . . . . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12458 links. Initial density = 1.03574991686066
diagonal-3-2s+1-on-edge-{r2c3...r4c1}+r3c1 ==> Vr2c4 = 1, Hr2c3 = 1, Vr1c4 = 0, Hr2c4 = 0
P-single : Pr2c4 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :       :   :
.........———.   .....
:   :   : 3 |   :   :
.....................
: 1 : 2 :   :   :   :
.....................
: 2 :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 15.643188, nb-facts=<Fact-72316>




(solve 
5 5
. . . . .
. . . . .
. 3 . . .
. . 2 . .
. . 1 2 .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 . . . . . 2 . . . . 1 2 .)
328 csp-variables, 776 candidates, 2578 csp-links and 12458 links. Initial density = 1.03574991686066
diagonal-3-2s+1-on-edge-{r3c2...r5c4}+r5c3 ==> Vr3c2 = 1, Hr3c2 = 1, Vr2c2 = 0, Hr3c1 = 0
P-single : Pr3c2 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   : 1 : 2 :   :
.....................

Grid solved : computation-time 16.171712, nb-facts=<Fact-72316>



(solve
5 5
. . . . .
. . . . .
. . . 3 .
. . 2 . .
. 2 1 . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 3 . . . 2 . . . 2 1 . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12458 links. Initial density = 1.03574991686066
diagonal-3-2s+1-on-edge-{r3c4...r5c2}+r5c3 ==> Vr3c5 = 1, Hr3c4 = 1, Vr2c5 = 0, Hr3c5 = 0
P-single : Pr3c5 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   : 2 :   :   :
.....................
:   : 2 : 1 :   :   :
.....................

Grid solved : computation-time 16.354792, nb-facts=<Fact-72316>



(solve
5 5
. . . . .
. . . . 2
. . . 2 1
. . 3 . .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . 2 . . . 2 1 . . 3 . . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12458 links. Initial density = 1.03574991686066
diagonal-3-2s+1-on-edge-{r4c3...r2c5}+r3c5 ==> Vr4c3 = 1, Hr5c3 = 1, Vr5c3 = 0, Hr5c2 = 0
P-single : Pr5c3 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
:   :   :   :   : 2 :
.....................
:   :   :   : 2 : 1 :
.....................
:   :   | 3 :   :   :
.....   .———.........
:   :       :   :   :
.....................

Grid solved : computation-time 16.04843, nb-facts=<Fact-72316>



(solve
5 5
. . . . .
. . 3 . .
. . . 2 1
. . . . 2
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . 2 1 . . . . 2 . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12458 links. Initial density = 1.03574991686066
diagonal-3-2s+1-on-edge-{r2c3...r4c5}+r3c5 ==> Vr2c3 = 1, Hr2c3 = 1, Vr1c3 = 0, Hr2c2 = 0
P-single : Pr2c3 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :       :   :   :
.....   .———.........
:   :   | 3 :   :   :
.....................
:   :   :   : 2 : 1 :
.....................
:   :   :   :   : 2 :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 16.179814, nb-facts=<Fact-72316>











---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL3-2s+1-ON-PSEUDO-EDGE,   NOT REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 1 3)
    )
)
(solve 
4 4
. . . .
. 1 2 .
. 3 . .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 1 2 . . 3 . . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7034 links. Initial density = 1.47987006429461
Simulated elimination of 1313
V-single : Vr1c3 = 0
diagonal-3-2s+1-on-pseudo-edge-{r3c2...r2c3}+r2c2 ==> Vr3c2 = 1, Hr4c2 = 1, Vr4c2 = 0, Hr4c1 = 0
P-single : Pr4c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :       :   :
.................
:   : 1 : 2 :   :
.................
:   | 3 :   :   :
.   .———.........
:       :   :   :
.................

Grid solved : computation-time 6.36076199999997, nb-facts=<Fact-44401>



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 1 3)
    )
)
(solve
4 4
. . . .
. 2 1 .
. . 3 .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 2 1 . . . 3 . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7034 links. Initial density = 1.47987006429461
Simulated elimination of 1313
V-single : Vr1c3 = 0
diagonal-3-2s+1-on-pseudo-edge-{r3c3...r2c2}+r2c3 ==> Vr3c4 = 1, Hr4c3 = 1, Vr4c4 = 0, Hr4c4 = 0
P-single : Pr4c4 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :       :   :
.................
:   : 2 : 1 :   :
.................
:   :   : 3 |   :
.........———.   .
:   :   :       :
.................

Grid solved : computation-time 6.34682100000003, nb-facts=<Fact-44401>




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 1)
    )
)
(solve
4 4
. . . .
. 2 . .
. 1 3 .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 2 . . . 1 3 . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7034 links. Initial density = 1.47987006429461
Simulated elimination of 1231
H-single : Hr3c1 = 0
diagonal-3-2s+1-on-pseudo-edge-{r3c3...r2c2}+r3c2 ==> Vr3c4 = 1, Hr4c3 = 1, Vr4c4 = 0, Hr4c4 = 0
P-single : Pr4c4 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:   : 2 :   :   :
.   .............
:   : 1 : 3 |   :
.........———.   .
:   :   :       :
.................

Grid solved : computation-time 6.30606600000004, nb-facts=<Fact-44401>



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 1)
    )
)
(solve
4 4
. . . .
. 1 3 .
. 2 . .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 1 3 . . 2 . . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7034 links. Initial density = 1.47987006429461
Simulated elimination of 1231
H-single : Hr3c1 = 0
diagonal-3-2s+1-on-pseudo-edge-{r2c3...r3c2}+r2c2 ==> Vr2c4 = 1, Hr2c3 = 1, Vr1c4 = 0, Hr2c4 = 0
P-single : Pr2c4 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :       :
.........———.   .
:   : 1 : 3 |   :
.   .............
:   : 2 :   :   :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.30206300000003, nb-facts=<Fact-44401>





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 4 3)
    )
)
(solve
4 4
. . . .
. 3 . .
. 1 2 .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 3 . . . 1 2 . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7034 links. Initial density = 1.47987006429461
Simulated elimination of 1343
V-single : Vr4c3 = 0
diagonal-3-2s+1-on-pseudo-edge-{r2c2...r3c3}+r3c2 ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:       :   :   :
.   .———.........
:   | 3 :   :   :
.................
:   : 1 : 2 :   :
.................
:   :       :   :
.................

Grid solved : computation-time 6.37025299999999, nb-facts=<Fact-44401>




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 4 3)
    )
)
(solve
4 4
. . . .
. . 3 .
. 2 1 .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . 2 1 . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7034 links. Initial density = 1.47987006429461
Simulated elimination of 1343
V-single : Vr4c3 = 0
diagonal-3-2s+1-on-pseudo-edge-{r2c3...r3c2}+r3c3 ==> Vr2c4 = 1, Hr2c3 = 1, Vr1c4 = 0, Hr2c4 = 0
P-single : Pr2c4 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :       :
.........———.   .
:   :   : 3 |   :
.................
:   : 2 : 1 :   :
.................
:   :       :   :
.................

Grid solved : computation-time 6.33490699999999, nb-facts=<Fact-44401>




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 4)
    )
)
(solve
4 4
. . . .
. . 2 .
. 3 1 .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 2 . . 3 1 . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7034 links. Initial density = 1.47987006429461
Simulated elimination of 1234
H-single : Hr3c4 = 0
diagonal-3-2s+1-on-pseudo-edge-{r3c2...r2c3}+r3c3 ==> Vr3c2 = 1, Hr4c2 = 1, Vr4c2 = 0, Hr4c1 = 0
P-single : Pr4c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:   :   : 2 :   :
.............   .
:   | 3 : 1 :   :
.   .———.........
:       :   :   :
.................

Grid solved : computation-time 6.35608100000002, nb-facts=<Fact-44401>



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 4)
    )
)
(solve
4 4
. . . .
. 3 1 .
. . 2 .
. . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 3 1 . . . 2 . . . . .)
229 csp-variables, 488 candidates, 1471 csp-links and 7034 links. Initial density = 1.47987006429461
Simulated elimination of 1234
H-single : Hr3c4 = 0
diagonal-3-2s+1-on-pseudo-edge-{r2c2...r3c3}+r2c3 ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:       :   :   :
.   .———.........
:   | 3 : 1 :   :
.............   .
:   :   : 2 :   :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.382498, nb-facts=<Fact-44401>


;;; 5




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 1 4)
    )
)
(solve
5 5
. . . . .
. . 1 2 .
. . 2 . .
. 3 . . .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 1 2 . . . 2 . . . 3 . . . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12368 links. Initial density = 1.02826737612238
Simulated elimination of 1314
V-single : Vr1c4 = 0
diagonal-3-2s+1-on-pseudo-edge-{r4c2...r2c4}+r2c3 ==> Vr4c2 = 1, Hr5c2 = 1, Vr5c2 = 0, Hr5c1 = 0
P-single : Pr5c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :       :   :
.....................
:   :   : 1 : 2 :   :
.....................
:   :   : 2 :   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

Grid solved : computation-time 16.604123, nb-facts=<Fact-71957>



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 1 3)
    )
)
(solve
5 5
. . . . .
. 2 1 . .
. . 2 . .
. . . 3 .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 2 1 . . . . 2 . . . . . 3 . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12368 links. Initial density = 1.02826737612238
Simulated elimination of 1313
V-single : Vr1c3 = 0
diagonal-3-2s+1-on-pseudo-edge-{r4c4...r2c2}+r2c3 ==> Vr4c5 = 1, Hr5c4 = 1, Vr5c5 = 0, Hr5c5 = 0
P-single : Pr5c5 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :       :   :   :
.....................
:   : 2 : 1 :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 1)
    )
)
(solve
5 5
. . . . .
. 2 . . .
. 1 2 . .
. . . 3 .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 2 . . . . 1 2 . . . . . 3 . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12368 links. Initial density = 1.02826737612238
Simulated elimination of 1231
H-single : Hr3c1 = 0
diagonal-3-2s+1-on-pseudo-edge-{r4c4...r2c2}+r3c2 ==> Vr4c5 = 1, Hr5c4 = 1, Vr5c5 = 0, Hr5c5 = 0
P-single : Pr5c5 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
:   : 2 :   :   :   :
.   .................
:   : 1 : 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

Grid solved : computation-time 16.638401, nb-facts=<Fact-71957>




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 1)
    )
)
(solve
5 5
. . . . .
. . . 3 .
. 1 2 . .
. 2 . . .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . 1 2 . . . 2 . . . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12368 links. Initial density = 1.02826737612238
Simulated elimination of 1241
H-single : Hr4c1 = 0
diagonal-3-2s+1-on-pseudo-edge-{r2c4...r4c2}+r3c2 ==> Vr2c5 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
P-single : Pr2c5 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   : 1 : 2 :   :   :
.   .................
:   : 2 :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 16.618949, nb-facts=<Fact-71957>




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 5 4)
    )
)
(solve
5 5
. . . . .
. 3 . . .
. . 2 . .
. . 1 2 .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 2 . . . . 1 2 . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12368 links. Initial density = 1.02826737612238
Simulated elimination of 1354
V-single : Vr5c4 = 0
diagonal-3-2s+1-on-pseudo-edge-{r2c2...r4c4}+r4c3 ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   : 1 : 2 :   :
.....................
:   :   :       :   :
.....................

Grid solved : computation-time 16.546116, nb-facts=<Fact-71957>



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 5 3)
    )
)
(solve
5 5
. . . . .
. . . 3 .
. . 2 . .
. 2 1 . .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . . 2 . . . 2 1 . . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12368 links. Initial density = 1.02826737612238
Simulated elimination of 1353
V-single : Vr5c3 = 0
diagonal-3-2s+1-on-pseudo-edge-{r2c4...r4c2}+r4c3 ==> Vr2c5 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
P-single : Pr2c5 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   : 2 :   :   :
.....................
:   : 2 : 1 :   :   :
.....................
:   :       :   :   :
.....................

Grid solved : computation-time 16.592614, nb-facts=<Fact-71957>



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 5)
    )
)
(solve
5 5
. . . . .
. . . 2 .
. . 2 1 .
. 3 . . .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 2 . . . 2 1 . . 3 . . . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12368 links. Initial density = 1.02826737612238
Simulated elimination of 1235
H-single : Hr3c5 = 0
diagonal-3-2s+1-on-pseudo-edge-{r4c2...r2c4}+r3c4 ==> Vr4c2 = 1, Hr5c2 = 1, Vr5c2 = 0, Hr5c1 = 0
P-single : Pr5c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
:   :   :   : 2 :   :
.................   .
:   :   : 2 : 1 :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 5)
    )
)
(solve
5 5
. . . . .
. 3 . . .
. . 2 1 .
. . . 2 .
. . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 2 1 . . . . 2 . . . . . .)
328 csp-variables, 776 candidates, 2578 csp-links and 12368 links. Initial density = 1.02826737612238
Simulated elimination of 1245
H-single : Hr4c5 = 0
diagonal-3-2s+1-on-pseudo-edge-{r2c2...r4c4}+r3c4 ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 : 1 :   :
.................   .
:   :   :   : 2 :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 16.448901, nb-facts=<Fact-71957>



(bind ?*simulated-eliminations*
    (create$ 
    )
)

