https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:jacdbachbaadgabbbaaaaabfabababfabaaaaacagalaabeaaaaaaadbbebacabbdaaabafbaeaacaababbacbcbaabadafacbgaeaabcceamarcebebaaabcbbcbbfbacbcfabcgaacccaacbbdbaeabagabaababfabehbdbaagadbaacaacaaecaacaicbabahciccaaaabeeaabadafabac,a3a102a1c2210d2a000a1c3

(solve 4 30
".B.YRG.Y...GGYR....G.RRR.Y...B"
1 2 9 15 16 :
2 3 9 10 :
3 4 6 10 13 14 19 :
4 5 6 7 :
5 7 8 12 :
6 7 11 14 :
7 11 :
8 11 12 21 :
9 10 16 17 18 :
10 13 18 :
11 12 14 21 :
13 18 19 25 :
14 19 21 :
15 16 20 :
16 17 20 22 23 27 28 :
17 18 22 25 28 :
18 25 :
19 21 25 :
20 23 :
21 24 25 26 :
23 27 29 :
24 26 :
25 26 28 29 :
27 28 29 :
28 29 :
29 30 :
)


***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
15 givens and 60 candidates
entering BRT
single ==> X7 = B
single ==> X11 = R
single ==> X3 = R
single ==> X10 = Y
single ==> X19 = B
single ==> X21 = G
single ==> X25 = R
single ==> X18 = B
Starting_init_links_with_<Fact-799>

Resolution state after Singles:
24 candidates, 11 csp-links and 28 links. Density = 10.14%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-880>
Entering_relation_bivalue_with_<Fact-881>
Entering_level_BC2_with_<Fact-892>
Entering_level_tW2_with_<Fact-902>
Entering_level_W2_with_<Fact-921>
Entering_level_BC3_with_<Fact-922>
Entering_level_tW3_with_<Fact-928>
t-whip[3]: X16{B Y} - X17{Y G} - X28{G .} ==> X27 ≠ B
biv-chain[2]: X27{G Y} - X29{Y G} ==> X28 ≠ G
biv-chain[2]: X28{Y B} - X16{B Y} ==> X17 ≠ Y, X27 ≠ Y
single ==> X27 = G
single ==> X29 = Y
single ==> X28 = B
single ==> X16 = Y
single ==> X1 = G
single ==> X9 = R
single ==> X17 = G
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[3]
X1 = G
X2 = B
X3 = R
X4 = Y
X5 = R
X6 = G
X7 = B
X8 = Y
X9 = R
X10 = Y
X11 = R
X12 = G
X13 = G
X14 = Y
X15 = R
X16 = Y
X17 = G
X18 = B
X19 = B
X20 = G
X21 = G
X22 = R
X23 = R
X24 = R
X25 = R
X26 = Y
X27 = G
X28 = B
X29 = Y
X30 = B
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-959>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"GBRYRGBYRYRGGYRYGBBGGRRRRYGBYB"
