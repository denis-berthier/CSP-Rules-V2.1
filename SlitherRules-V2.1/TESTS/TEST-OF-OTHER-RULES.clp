
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              TEST OF OTHER RULES
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

1-IN-A-CORNER+2

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve
5 5 
. . . . 1
. . . . 2
. . . . . 
. . . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . 1 . . . . 2 . . . . . . . . . . . . . . .)
328 csp-variables, 810 candidates, 2858 csp-links and 13655 links. Initial density = 1.04190511071434
entering level W1 with <Fact-76505>
whip[1]: Br1c5{w .} ==> Hr1c5 <> 1
H-single : Hr1c5 = 0
P-single : Pr1c6 = o
V-single : Vr1c6 = 0
B-single : Br1c6 = o
B-single : Br0c5 = o
whip[1]: Pr2c6{sw .} ==> Br2c5 <> es
whip[1]: Br2c5{sw .} ==> Pr2c5 <> nw
whip[1]: Pr2c5{sw .} ==> Br1c4 <> es
whip[1]: Pr2c5{sw .} ==> Br1c4 <> esw
whip[1]: Pr2c5{sw .} ==> Br1c4 <> nes
whip[1]: Br2c5{sw .} ==> Pr2c5 <> o
whip[1]: Br2c5{sw .} ==> Pr3c6 <> nw
whip[1]: Pr3c6{sw .} ==> Br3c5 <> n
whip[1]: Pr3c6{sw .} ==> Br3c5 <> ns
whip[1]: Pr3c6{sw .} ==> Br3c5 <> nw
whip[1]: Pr3c6{sw .} ==> Br3c5 <> swn
whip[1]: Pr2c6{sw .} ==> Br2c5 <> ew
whip[1]: Pr2c6{sw .} ==> Br2c5 <> ns
whip[1]: Br2c5{sw .} ==> Pr3c5 <> se
whip[1]: Pr3c5{sw .} ==> Br3c5 <> wne
whip[1]: Br2c5{sw .} ==> Pr3c5 <> ew
whip[1]: Pr2c6{sw .} ==> Br2c5 <> nw
whip[1]: Br2c5{sw .} ==> Pr2c5 <> se
whip[1]: Pr2c5{sw .} ==> Br1c4 <> o
whip[1]: Pr2c5{sw .} ==> Br1c4 <> n
whip[1]: Pr2c5{sw .} ==> Br1c4 <> w
whip[1]: Pr2c5{sw .} ==> Br1c4 <> nw
whip[1]: Br2c5{sw .} ==> Pr3c6 <> o
whip[1]: Pr3c6{sw .} ==> Br3c5 <> o
whip[1]: Pr3c6{sw .} ==> Br3c5 <> s
whip[1]: Pr3c6{sw .} ==> Br3c5 <> w
whip[1]: Br3c5{nes .} ==> Pr4c6 <> o
whip[1]: Pr4c6{sw .} ==> Br4c5 <> o
whip[1]: Pr4c6{sw .} ==> Br4c5 <> s
whip[1]: Pr4c6{sw .} ==> Br4c5 <> w
whip[1]: Pr4c6{sw .} ==> Br4c5 <> sw
whip[1]: Pr3c6{sw .} ==> Br3c5 <> sw
whip[1]: Br3c5{nes .} ==> Vr3c6 <> 0
V-single : Vr3c6 = 1                          ; <<<<<<<<<<<<<<<<<<<<<<<<<<<
B-single : Br3c6 = w
whip[1]: Pr4c6{ns .} ==> Br4c5 <> ne
whip[1]: Pr4c6{ns .} ==> Br4c5 <> wne
whip[1]: Pr4c6{ns .} ==> Br4c5 <> nes
whip[1]: Br2c5{sw .} ==> Pr3c5 <> ns
whip[1]: Pr3c5{sw .} ==> Br3c4 <> esw
whip[1]: Pr3c5{sw .} ==> Br3c4 <> ew
whip[1]: Pr3c5{sw .} ==> Br3c4 <> es
whip[1]: Pr3c5{sw .} ==> Br3c4 <> e
whip[1]: Br2c5{sw .} ==> Pr3c5 <> nw
whip[1]: Pr3c5{sw .} ==> Br2c4 <> es
whip[1]: Pr3c5{sw .} ==> Br2c4 <> esw
whip[1]: Pr3c5{sw .} ==> Br2c4 <> nes
whip[1]: Pr3c5{sw .} ==> Br3c4 <> swn
whip[1]: Pr3c5{sw .} ==> Br3c4 <> nw
whip[1]: Pr3c5{sw .} ==> Br3c4 <> ns
whip[1]: Pr3c5{sw .} ==> Br3c4 <> n
whip[1]: Pr1c5{sw .} ==> Br1c4 <> e
whip[1]: Pr1c5{sw .} ==> Br1c4 <> ew
whip[1]: Pr1c5{sw .} ==> Br1c4 <> ns
whip[1]: Pr1c5{sw .} ==> Br1c4 <> swn
whip[1]: Br1c5{w .} ==> Pr2c5 <> ne
whip[1]: Pr2c5{sw .} ==> Br2c4 <> o
whip[1]: Pr2c5{sw .} ==> Br2c4 <> s
whip[1]: Pr2c5{sw .} ==> Br2c4 <> w
whip[1]: Pr2c5{sw .} ==> Br2c4 <> sw
whip[1]: Br1c5{w .} ==> Pr2c5 <> sw
whip[1]: Pr2c5{ns .} ==> Br2c4 <> ne
whip[1]: Pr2c5{ns .} ==> Br2c4 <> wne

.................   .
:   :   :   :   : 1  
.....................
:   :   :   :   : 2 :
.....................
:   :   :   :   :   |
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 45.214687, nb-facts=<Fact-76796>




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

IMPOSSIBLE PATTERNS (FOR GLOBAL REASONS)

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

2s+3 in a corner (Raetsel #14)


(solve 
2 2 
. 2 
2 3 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  new H/V - N - P - B - I order for Singles   *****
(. 2 2 3)
85 csp-variables, 94 candidates, 103 csp-links and 537 links. Initial density = 3.07137954701441
3 in corner r2c2 ==> Vr2c3 = 1, Hr3c2 = 1, 
2 in corner r2c1 ==> Vr1c1 = 1, 
2 in corner r1c2 ==> Hr1c1 = 1, 
P-single : Pr1c1 = se
P-single : Pr3c3 = nw
B-single : Br0c1 = s
B-single : Br1c0 = e
B-single : Br3c2 = n
B-single : Br2c3 = w
entering level B2I with <Fact-8934>
border r2{c2 c3} ==> Ir2c2 = in
border r1{c0 c1} ==> Ir1c1 = in
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = B2I

X-
-X

.———.....
|   : 2 :
.........
: 2 : 3 |
.....———.

Grid solved : computation-time 0.312884, nb-facts=<Fact-8939>




(solve 
5 5 
. 2 . . .
2 3 . . .
. . . . . 
. . . . .
. . . . . 
)

impossible but can't be proven by whips, g-whips, ...
only by the one-loop condition




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

SQUARES WITH 2

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



/Users/berthier/Documents/Projets/CSP-Rules/CSP-Rules-V1.2/SlitherRules-V1.1/SPECIFIC/Slitherlink-diag322.png

Can the outer borders of the 1st 3 be found by whips? Yes

(solve 
6 6  
. . . . . . 
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . 3 . .
. . . 0 . . 
)

*****  SlitherRules 1.1 based on CSP-Rules 1.2, config: Ba+W   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . 3 . . . . . 0 . .)
409 csp-variables, 998 candidates, 3754 csp-links and 18586 links. Initial density = 0.933964217301202
zero in cell r6c4 ==> Hr7c4 = 0, Hr6c4 = 0, Vr6c5 = 0, Vr6c4 = 0, 
adjacent 3-0 c4{r5 r6} ==> Vr5c5 = 1, Vr5c4 = 1, Hr6c5 = 1, Hr6c3 = 1, Hr5c4 = 1, 
3-in cell-r5c4-reached-by-a-horizontal-border ==> 
B-single : Br5c4 = wne
B-single : Br7c4 = o
P-single : Pr6c5 = ne
P-single : Pr6c4 = nw
P-single : Pr5c5 = sw
H-single : Hr5c5 = 0
V-single : Vr4c5 = 0
3-in-r5c4-reached-by-two-no-borders-in-ne-corner ==> 
P-single : Pr5c4 = se
H-single : Hr5c3 = 0
V-single : Vr4c4 = 0
3-in-r5c4-reached-by-two-no-borders-in-nw-corner ==> 
B-single : Br4c4 = ns
H-single : Hr4c4 = 1
P-single : Pr7c5 = o
H-single : Hr7c5 = 0
B-single : Br7c5 = o
P-single : Pr7c4 = o
H-single : Hr7c3 = 0
B-single : Br7c3 = o
entering level B2I with <Fact-103338>
no border c5{r6 r7} ==> Ir6c5 = out
no border r6{c4 c5} ==> Ir6c4 = out
no border r6{c3 c4} ==> Ir6c3 = out
border c3{r5 r6} ==> Ir5c3 = in
no border c3{r4 r5} ==> Ir4c3 = in
no border r4{c3 c4} ==> Ir4c4 = in
no border r4{c4 c5} ==> Ir4c5 = in
no border c5{r4 r5} ==> Ir5c5 = in
border r5{c4 c5} ==> Ir5c4 = out
border c4{r3 r4} ==> Ir3c4 = out
entering level W1 with <Fact-103349>
whip[1]: Pr7c6{o .} ==> Br6c6 <> nes
whip[1]: Br6c6{o .} ==> Pr6c7 <> sw
whip[1]: Pr6c7{o .} ==> Br5c6 <> s
whip[1]: Pr6c7{o .} ==> Br5c6 <> ns
whip[1]: Pr6c7{o .} ==> Br5c6 <> sw
whip[1]: Pr6c7{o .} ==> Br5c6 <> swn
whip[1]: Pr7c6{o .} ==> Br6c6 <> es
whip[1]: Pr7c6{o .} ==> Br6c6 <> nw
whip[1]: Pr7c6{o .} ==> Br6c6 <> w
whip[1]: Pr6c3{ne .} ==> Br6c2 <> nes
whip[1]: Pr7c3{o .} ==> Br6c2 <> wne
whip[1]: Pr7c3{o .} ==> Br6c2 <> swn
whip[1]: Pr7c3{o .} ==> Br6c2 <> sw
whip[1]: Pr7c3{o .} ==> Br6c2 <> ew
whip[1]: Pr7c3{o .} ==> Br6c2 <> ns
whip[1]: Pr7c3{o .} ==> Br6c2 <> ne
whip[1]: Pr7c3{o .} ==> Br6c2 <> s
whip[1]: Pr7c3{o .} ==> Br6c2 <> e
whip[1]: Pr6c6{nw .} ==> Br5c6 <> esw
whip[1]: Pr6c3{ne .} ==> Br5c2 <> nes
whip[1]: Pr6c3{ne .} ==> Br5c2 <> esw
whip[1]: Pr6c3{ne .} ==> Br5c2 <> es
whip[1]: Pr4c5{nw .} ==> Br3c5 <> swn
whip[1]: Pr4c5{nw .} ==> Br3c5 <> esw
whip[1]: Pr4c5{nw .} ==> Br3c5 <> sw
whip[1]: Pr4c5{nw .} ==> Br3c5 <> ne
whip[1]: Pr4c4{ne .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Br2c2{nes .} ==> Pr2c3 <> se
whip[1]: Pr2c3{sw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{sw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{sw .} ==> Br2c3 <> wne
whip[1]: Br2c2{nes .} ==> Pr2c3 <> ns
whip[1]: Br2c2{nes .} ==> Pr2c2 <> sw
whip[1]: Pr2c2{o .} ==> Br2c1 <> ne
whip[1]: Pr2c2{o .} ==> Br2c1 <> wne
whip[1]: Pr2c2{o .} ==> Br2c1 <> nes
whip[1]: Br2c2{nes .} ==> Pr2c2 <> ns
whip[1]: Br2c2{nes .} ==> Hr2c2 <> 0
H-single : Hr2c2 = 1 ;;; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
whip[1]: Pr2c2{ew .} ==> Br1c1 <> es
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Br2c2{swn .} ==> Pr3c2 <> ew
whip[1]: Br2c2{swn .} ==> Pr3c2 <> se
whip[1]: Pr3c2{sw .} ==> Br3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br3c2 <> swn
whip[1]: Pr3c2{sw .} ==> Br3c2 <> wne
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ew
whip[1]: Pr2c2{ne .} ==> Br1c1 <> s
whip[1]: Br1c1{wne .} ==> Pr2c1 <> se
whip[1]: Pr2c1{o .} ==> Br2c1 <> nw
whip[1]: Pr2c1{o .} ==> Br2c1 <> swn
whip[1]: Pr2c2{ne .} ==> Br1c1 <> swn
whip[1]: Br1c1{wne .} ==> Pr2c1 <> ne
whip[1]: Pr2c1{ns .} ==> Br2c1 <> n
whip[1]: Pr2c1{ns .} ==> Hr2c1 <> 1
H-single : Hr2c1 = 0
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ne
P-single : Pr2c2 = se
V-single : Vr1c2 = 0
3-in-r2c2-reached-by-two-no-borders-in-nw-corner ==> Vr2c2 = 1,  ;;; <<<<<<<<<<<<<<<<<<<<<<
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Pr4c4{ne .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> se
whip[1]: Pr4c5{ew .} ==> Br3c5 <> e
whip[1]: Pr4c5{ew .} ==> Br3c5 <> n
whip[1]: Pr4c5{ew .} ==> Br3c5 <> o
GRID 0 SOLVED. rating-type = Ba+W, MOST COMPLEX RULE TRIED = bivalue

------
------
---O--
--XXX-
--XOX-
--OOO-
Grid solved : computation-time 96.490121, nb-facts=<Fact-103638>




Can this be solved by whips ? yes
/Users/berthier/Documents/Projets/CSP-Rules/CSP-Rules-V1.2/SlitherRules-V1.1/SPECIFIC/Slitherlink-diag3_1.png

(solve 
5 5  
. . . . . 
. 3 . . .
. . 1 0 .
. . 0 . .
. . . . .
)
*****  SlitherRules 1.1 based on CSP-Rules 1.2, config: Ba+W   *****
(. . . . . . 3 . . . . . 1 0 . . . 0 . . . . . . .)
303 csp-variables, 680 candidates, 2422 csp-links and 11808 links. Initial density = 1.27869704582864
zero in cell r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0, 
zero in cell r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0, 
P-single : Pr4c4 = o
entering level B2I with <Fact-69190>
entering level W1 with <Fact-69191>
whip[1]: Pr5c4{o .} ==> Br5c4 <> nes
whip[1]: Pr5c4{o .} ==> Br5c4 <> esw
whip[1]: Pr5c4{o .} ==> Br5c4 <> sw
whip[1]: Pr5c4{o .} ==> Br5c4 <> ew
whip[1]: Pr5c4{o .} ==> Br5c4 <> ns
whip[1]: Pr5c4{o .} ==> Br5c4 <> ne
whip[1]: Pr5c4{o .} ==> Br5c4 <> w
whip[1]: Pr5c4{o .} ==> Br5c4 <> n
whip[1]: Pr5c3{o .} ==> Br5c2 <> swn
whip[1]: Pr5c3{o .} ==> Br5c2 <> esw
whip[1]: Pr5c3{o .} ==> Br5c2 <> ew
whip[1]: Pr5c3{o .} ==> Br5c2 <> es
whip[1]: Pr5c3{o .} ==> Br5c2 <> nw
whip[1]: Pr5c3{o .} ==> Br5c2 <> ns
whip[1]: Pr5c3{o .} ==> Br5c2 <> e
whip[1]: Pr5c3{o .} ==> Br5c2 <> n
whip[1]: Pr4c5{o .} ==> Br4c5 <> nes
whip[1]: Pr4c5{o .} ==> Br4c5 <> esw
whip[1]: Pr4c5{o .} ==> Br4c5 <> sw
whip[1]: Pr4c5{o .} ==> Br4c5 <> ew
whip[1]: Pr4c5{o .} ==> Br4c5 <> ns
whip[1]: Pr4c5{o .} ==> Br4c5 <> ne
whip[1]: Pr4c5{o .} ==> Br4c5 <> w
whip[1]: Pr4c5{o .} ==> Br4c5 <> n
whip[1]: Br3c3{w .} ==> Pr3c3 <> o
whip[1]: Br3c3{w .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Br2c2{nes .} ==> Pr2c3 <> se
whip[1]: Pr2c3{sw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{sw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{sw .} ==> Br2c3 <> wne
whip[1]: Br2c2{nes .} ==> Pr2c3 <> ns
whip[1]: Br2c2{nes .} ==> Pr2c2 <> sw
whip[1]: Pr2c2{o .} ==> Br2c1 <> ne
whip[1]: Pr2c2{o .} ==> Br2c1 <> wne
whip[1]: Pr2c2{o .} ==> Br2c1 <> nes
whip[1]: Br2c2{nes .} ==> Pr2c2 <> ns
whip[1]: Br2c2{nes .} ==> Hr2c2 <> 0
H-single : Hr2c2 = 1 ;;; <<<<<<<<<<<<<<<<<<<<<<<<<<
whip[1]: Pr2c2{ew .} ==> Br1c1 <> es
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Br2c2{swn .} ==> Pr3c2 <> ew
whip[1]: Br2c2{swn .} ==> Pr3c2 <> se
whip[1]: Pr3c2{sw .} ==> Br3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br3c2 <> swn
whip[1]: Pr3c2{sw .} ==> Br3c2 <> wne
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ew
whip[1]: Pr2c2{ne .} ==> Br1c1 <> s
whip[1]: Br1c1{wne .} ==> Pr2c1 <> se
whip[1]: Pr2c1{o .} ==> Br2c1 <> nw
whip[1]: Pr2c1{o .} ==> Br2c1 <> swn
whip[1]: Pr2c2{ne .} ==> Br1c1 <> swn
whip[1]: Br1c1{wne .} ==> Pr2c1 <> ne
whip[1]: Pr2c1{ns .} ==> Br2c1 <> n
whip[1]: Pr2c1{ns .} ==> Hr2c1 <> 1
H-single : Hr2c1 = 0
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ne
P-single : Pr2c2 = se
V-single : Vr1c2 = 0
3-in-r2c2-reached-by-two-no-borders-in-nw-corner ==> Vr2c2 = 1, ;;; <<<<<<<<<<<<<<<<
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr4c3{o .} ==> Br3c2 <> sw
whip[1]: Pr4c3{o .} ==> Br3c2 <> ew
whip[1]: Pr4c3{o .} ==> Br3c2 <> ns
whip[1]: Pr4c3{o .} ==> Br3c2 <> ne
whip[1]: Pr4c3{o .} ==> Br3c2 <> s
whip[1]: Pr4c3{o .} ==> Br3c2 <> e
whip[1]: Pr3c5{o .} ==> Br2c5 <> nes
whip[1]: Pr3c5{o .} ==> Br2c5 <> wne
whip[1]: Pr3c5{o .} ==> Br2c5 <> ew
whip[1]: Pr3c5{o .} ==> Br2c5 <> es
whip[1]: Pr3c5{o .} ==> Br2c5 <> nw
whip[1]: Pr3c5{o .} ==> Br2c5 <> ns
whip[1]: Pr3c5{o .} ==> Br2c5 <> w
whip[1]: Pr3c5{o .} ==> Br2c5 <> s
whip[1]: Pr3c4{o .} ==> Br2c3 <> sw
whip[1]: Pr3c4{o .} ==> Br2c3 <> ew
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Pr3c4{o .} ==> Br2c3 <> ne
whip[1]: Pr3c4{o .} ==> Br2c3 <> s
whip[1]: Pr3c4{o .} ==> Br2c3 <> e
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
GRID 0 SOLVED. rating-type = Ba+W, MOST COMPLEX RULE TRIED = bivalue

-----
-----
-----
-----
-----
Grid solved : computation-time 38.026255, nb-facts=<Fact-69441>





