
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              special singles
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



(progn

(bind ?*simulated-eliminations*
(create$
(value-row-col-to-H-label 1 2 2)
(value-row-col-to-V-label 0 2 2)
)
)
(solve
4 4
. . . .
. 2 . .
. . . .
. . . .
)

(bind ?*simulated-eliminations*
(create$
)
)
)









---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

rule5#31

(progn

(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 2 2)
(value-row-col-to-V-label 1 2 4)
)
)

(solve 
5 5 
. . . . .
. 2 2 . .
. . . . .
. . . . .
. . . . . 
)
(bind ?*simulated-eliminations*
(create$
)
)
)

***********************************************************************************************
***  SlitherRules 2.0c.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r278
***********************************************************************************************

. . . . .
. 2 2 . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.0
start create-csp-variables
start create-labels 0.0
start init-physical-csp-links 0.0
start init-physical-non-csp-links 2.0
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.0
     start init-physical-BN-non-csp-links at local time 1.0
     start init-physical-BP-non-csp-links at local time 2.0
     end init-physical-BP-non-csp-links at local time 17.0
end init-physical-non-csp-links 19.0
start init-corner-B-c-values 19.0
start init-outer-B-candidates 19.0
start init-outer-I-candidates 19.0
start init-H-candidates 19.0
start init-V-candidates 19.0
start init-P-candidates 19.0
start init-inner-I-candidates 19.0
start init-inner-N-and-B-candidates 19.0
start solution 19.0
Simulated elimination of 1324
Simulated elimination of 1322
entering BRT
V-single: Vr2c4 = 0
V-single: Vr2c2 = 0
Starting_init_links_with_<Fact-27607>
774 candidates, 2548 csp-links and 10267 links. Density = 3.43204602358006%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-53241>
whip[1]: Br2c2{ne .} ==> Pr2c3 ≠ o, ne
whip[1]: Br2c3{ns .} ==> Pr2c3 ≠ nw
whip[1]: Br2c2{ne .} ==> Pr3c3 ≠ o, se
whip[1]: Br2c3{nw .} ==> Pr3c3 ≠ sw
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ ne, wne, nes
whip[1]: Pr3c3{ew .} ==> Br3c3 ≠ wne, nw, swn
whip[1]: Pr2c3{sw .} ==> Br1c2 ≠ nes, se, esw
whip[1]: Pr2c3{sw .} ==> Br1c3 ≠ swn, sw, esw
Entering_level_W1_with_<Fact-53258>
Entering_relation_bivalue_with_<Fact-53259>
Entering_level_BC2_with_<Fact-53474>
Entering_level_W2_with_<Fact-53595>
Entering_level_BC3_with_<Fact-56476>
Entering_level_W3_with_<Fact-56549>
whip[3]: Pr2c2{ew nw} - Br1c1{s se} - Pr1c2{o .} ==> Br1c2 ≠ w
whip[3]: Br2c3{sw nw} - Pr2c3{sw se} - Br2c2{ne .} ==> Pr3c3 ≠ ns
whip[1]: Pr3c3{ew .} ==> Vr3c3 ≠ 1
V-single: Vr3c3 = 0 <<<<<<<<<<<<<<<<<<<<<<<
whip[3]: Br2c2{ns se} - Pr3c3{ew nw} - Br2c3{ns .} ==> Pr2c3 ≠ ns
whip[1]: Pr2c3{sw .} ==> Vr1c3 ≠ 1
V-single: Vr1c3 = 0 <<<<<<<<<<<<<<<<<<<<<







---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

rule5#32

(progn

(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 2 2)
(value-row-col-to-V-label 1 1 3)
(value-row-col-to-V-label 1 3 3)
)
)

(solve
5 5
. . . . .
. 2 2 . .
. . . . .
. . . . .
. . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0c.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r278
***********************************************************************************************

. . . . .
. 2 2 . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.0
start create-csp-variables
start create-labels 0.0
start init-physical-csp-links 0.0
start init-physical-non-csp-links 2.0
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.0
     start init-physical-BN-non-csp-links at local time 2.0
     start init-physical-BP-non-csp-links at local time 3.0
     end init-physical-BP-non-csp-links at local time 18.0
end init-physical-non-csp-links 20.0
start init-corner-B-c-values 20.0
start init-outer-B-candidates 20.0
start init-outer-I-candidates 20.0
start init-H-candidates 20.0
start init-V-candidates 20.0
start init-P-candidates 20.0
start init-inner-I-candidates 20.0
start init-inner-N-and-B-candidates 20.0
start solution 20.0
Simulated elimination of 1333
Simulated elimination of 1313
Simulated elimination of 1322
entering BRT
V-single: Vr3c3 = 0
V-single: Vr2c2 = 0
V-single: Vr1c3 = 0
Starting_init_links_with_<Fact-27608>
751 candidates, 2308 csp-links and 9475 links. Density = 3.36440301819796%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51178>
whip[1]: Br2c2{ne .} ==> Pr2c3 ≠ o
whip[1]: Br2c2{ne .} ==> Pr3c3 ≠ o
whip[1]: Pr3c3{ew .} ==> Br2c3 ≠ ne
whip[1]: Br2c3{sw .} ==> Pr2c4 ≠ sw
whip[1]: Pr2c3{sw .} ==> Br2c3 ≠ se
whip[1]: Br2c3{sw .} ==> Pr3c4 ≠ nw
Entering_level_W1_with_<Fact-51191>
Entering_relation_bivalue_with_<Fact-51192>
Entering_level_BC2_with_<Fact-51407>
Entering_level_W2_with_<Fact-51536>
Entering_level_BC3_with_<Fact-54315>
Entering_level_W3_with_<Fact-54400>
whip[3]: Pr2c2{ew nw} - Br1c1{s se} - Pr1c2{o .} ==> Br1c2 ≠ w
whip[3]: Pr3c3{ew nw} - Br2c2{ns se} - Pr2c3{ew .} ==> Br2c3 ≠ ew
whip[1]: Br2c3{sw .} ==> Vr2c4 ≠ 1
V-single: Vr2c4 = 0 <<<<<<<<<<<<<<<<<<<<<<<
Entering_level_BC4_with_<Fact-59075>









---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


noline+diagonal-2-2+noline
rule5#33

(progn

(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 2 2)
(value-row-col-to-V-label 1 3 4)
)
)

(solve
5 5
. . . . .
. 2 . . .
. . 2 . .
. . . . .
. . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0c.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r278
***********************************************************************************************

. . . . .
. 2 . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.0
start create-csp-variables
start create-labels 0.0
start init-physical-csp-links 0.0
start init-physical-non-csp-links 2.0
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.0
     start init-physical-BN-non-csp-links at local time 2.0
     start init-physical-BP-non-csp-links at local time 3.0
     end init-physical-BP-non-csp-links at local time 18.0
end init-physical-non-csp-links 20.0
start init-corner-B-c-values 20.0
start init-outer-B-candidates 20.0
start init-outer-I-candidates 20.0
start init-H-candidates 20.0
start init-V-candidates 20.0
start init-P-candidates 20.0
start init-inner-I-candidates 20.0
start init-inner-N-and-B-candidates 20.0
start solution 20.0
Simulated elimination of 1334
Simulated elimination of 1322
entering BRT
V-single: Vr3c4 = 0
V-single: Vr2c2 = 0
Starting_init_links_with_<Fact-27607>
774 candidates, 2548 csp-links and 10267 links. Density = 3.43204602358006%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-53241>
whip[1]: Br2c2{ne .} ==> Pr2c3 ≠ o, ne
whip[1]: Br2c2{ne .} ==> Pr3c3 ≠ o, se
whip[1]: Br3c3{ns .} ==> Pr3c3 ≠ nw
whip[1]: Br3c3{ns .} ==> Pr4c3 ≠ o, sw
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, wne, nes
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ se
whip[1]: Br2c2{ns .} ==> Hr2c2 ≠ 0
H-single: Hr2c2 = 1 <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
whip[1]: Br1c2{nes .} ==> Nr1c2 ≠ 0
whip[1]: Pr2c2{ew .} ==> Br1c1 ≠ o, se, nw
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 0, 2
whip[1]: Pr2c3{sw .} ==> Br2c3 ≠ wne, nw, swn
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ nw
whip[1]: Br3c3{sw .} ==> Hr4c3 ≠ 0
H-single: Hr4c3 = 1 <<<<<<<<<<<<<<<<<<<<<<<<<<<
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ nes, se, esw
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ s, nw, swn, wne, se, o, e
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Pr2c3{sw .} ==> Br1c3 ≠ swn, sw, esw








---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

rule5#34

(progn

(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 2 2)
(value-row-col-to-H-label 0 2 2)
(value-row-col-to-H-label 0 4 3)
)
)

(solve
5 5
. . . . .
. 2 . . .
. . 2 . .
. . . . .
. . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0c.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r278
***********************************************************************************************

. . . . .
. 2 . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.0
start create-csp-variables
start create-labels 0.0
start init-physical-csp-links 0.0
start init-physical-non-csp-links 2.0
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.0
     start init-physical-BN-non-csp-links at local time 2.0
     start init-physical-BP-non-csp-links at local time 3.0
     end init-physical-BP-non-csp-links at local time 18.0
end init-physical-non-csp-links 20.0
start init-corner-B-c-values 20.0
start init-outer-B-candidates 20.0
start init-outer-I-candidates 20.0
start init-H-candidates 20.0
start init-V-candidates 20.0
start init-P-candidates 20.0
start init-inner-I-candidates 20.0
start init-inner-N-and-B-candidates 20.0
start solution 20.0
Simulated elimination of 1322
Simulated elimination of 243
Simulated elimination of 222
entering BRT
V-single: Vr2c2 = 0
H-single: Hr4c3 = 1
H-single: Hr2c2 = 1
Starting_init_links_with_<Fact-27608>
756 candidates, 2425 csp-links and 9669 links. Density = 3.38799537475034%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51800>
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 0
whip[1]: Br4c3{n .} ==> Nr4c3 ≠ 0
whip[1]: Br2c2{ne .} ==> Pr3c3 ≠ o, se, nw
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ se
whip[1]: Br3c3{sw .} ==> Vr3c4 ≠ 1
V-single: Vr3c4 = 0 <<<<<<<<<<<<<<<<<<
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ s, wne, swn, nw, se, o, e
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Pr2c2{ne .} ==> Br1c1 ≠ nw, o, se
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 2, 0
whip[1]: Pr2c3{nw .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ nw, wne, swn
whip[1]: Pr4c3{ne .} ==> Br3c2 ≠ se, nes, esw
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ ne, nes, wne
Entering_level_W1_with_<Fact-51830>
Entering_relation_bivalue_with_<Fact-51831>




