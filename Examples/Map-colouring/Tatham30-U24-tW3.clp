https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:jabbfbcaaeaafaabbdabdadbfaabababaabcbabdabbabbbafbbabbcaabdahcdbaaabbddbbbdbfabaaaeadbbcaacanaaccabaaaabcagbbaaaaaagbaaadbacdacaacbbbadaiadbaaaabbafiababadabachadfcgacbcaaaabbdbcaadacabbdaabdadaabeafaabdcabadbbcdeaaafacaaadbaadadbbaaaeagaa,3a1a132a13k0a0b2110

(solve 4 30
"B.Y.YBG.YB...........R.R..GYYR"
1 2 7 8 11 14 :
2 3 6 8 :
3 4 6 :
4 5 6 9 13 17 :
6 9 12 13 :
7 10 11 14 :
8 12 14 15 :
9 13 :
10 14 15 22 :
11 14 :
12 13 15 16 18 19 :
13 16 17 18 20 23 :
14 15 :
15 19 21 22 :
16 18 :
17 20 24 :
18 19 23 25 26 :
19 21 23 25 26 :
20 23 24 28 :
21 22 25 29 :
22 27 :
23 26 30 :
24 28 :
25 26 29 30 :
26 30 :
29 30 :
)


***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
13 givens and 68 candidates
entering BRT
Starting_init_links_with_<Fact-797>

Resolution state after Singles:
45 candidates, 42 csp-links and 117 links. Density = 11.82%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1118>
Entering_relation_bivalue_with_<Fact-1119>
Entering_level_BC2_with_<Fact-1138>
biv-chain[2]: X4{G R} - X13{R G} ==> X17 ≠ G
biv-chain[2]: X21{B G} - X25{G B} ==> X19 ≠ B
biv-chain[2]: X21{G B} - X25{B G} ==> X19 ≠ G
Entering_level_tW2_with_<Fact-1172>
Entering_level_W2_with_<Fact-1222>
Entering_level_BC3_with_<Fact-1223>
Entering_level_tW3_with_<Fact-1237>
t-whip[3]: X19{R Y} - X15{Y G} - X12{G .} ==> X18 ≠ R
t-whip[3]: X15{G Y} - X19{Y R} - X12{R .} ==> X8 ≠ G
biv-chain[2]: X14{Y R} - X8{R Y} ==> X15 ≠ Y
single ==> X15 = G
single ==> X21 = B
single ==> X25 = G
biv-chain[2]: X19{Y R} - X12{R Y} ==> X18 ≠ Y
single ==> X18 = B
single ==> X26 = Y
single ==> X19 = R
single ==> X12 = Y
single ==> X8 = R
single ==> X2 = G
single ==> X14 = Y
single ==> X11 = R
single ==> X23 = G
single ==> X13 = R
single ==> X4 = G
single ==> X16 = G
single ==> X20 = B
single ==> X17 = Y
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[3]
X1 = B
X2 = G
X3 = Y
X4 = G
X5 = Y
X6 = B
X7 = G
X8 = R
X9 = Y
X10 = B
X11 = R
X12 = Y
X13 = R
X14 = Y
X15 = G
X16 = G
X17 = Y
X18 = B
X19 = R
X20 = B
X21 = B
X22 = R
X23 = G
X24 = R
X25 = G
X26 = Y
X27 = G
X28 = Y
X29 = Y
X30 = R
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1300>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"BGYGYBGRYBRYRYGGYBRBBRGRGYGYYR"
