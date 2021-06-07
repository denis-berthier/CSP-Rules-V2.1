

(solve 4 30
"..G....RB.....YY....B...B.R.G."
1 2 9 12 16 18 :
2 3 7 9 :
3 4 6 7 :
4 5 6 8 :
5 8 10 :
6 7 8 11 14 :
7 9 13 14 :
8 10 11 15 :
9 13 :
10 15 21 22 :
11 14 15 17 20 :
12 13 18 19 :
13 14 19 :
14 17 19 :
15 20 21 :
16 18 :
17 19 20 21 26 :
18 19 25 :
19 25 26 :
20 21 :
21 22 23 24 26 28 :
22 24 27 :
23 24 27 28 30 :
24 27 :
25 26 29 :
26 28 29 30 :
28 30 :
)


***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
9 givens and 84 candidates
entering BRT
single ==> X10 = G
single ==> X22 = Y
single ==> X24 = G
single ==> X23 = Y
Starting_init_links_with_<Fact-823>

Resolution state after Singles:
46 candidates, 35 csp-links and 93 links. Density = 8.99%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1082>
Entering_relation_bivalue_with_<Fact-1083>
Entering_level_BC2_with_<Fact-1106>
biv-chain[2]: X1{R G} - X18{G R} ==> X12 ≠ R
biv-chain[2]: X1{G R} - X18{R G} ==> X12 ≠ G
Entering_level_tW2_with_<Fact-1140>
Entering_level_W2_with_<Fact-1189>
Entering_level_BC3_with_<Fact-1190>
Entering_level_tW3_with_<Fact-1210>
Entering_level_W3_with_<Fact-1256>
Entering_level_BC4_with_<Fact-1257>
Entering_level_tW4_with_<Fact-1273>
t-whip[4]: X7{R Y} - X6{Y B} - X11{B G} - X14{G .} ==> X13 ≠ R
t-whip[4]: X11{G B} - X6{B Y} - X7{Y R} - X14{R .} ==> X17 ≠ G
biv-chain[2]: X17{R Y} - X26{Y R} ==> X19 ≠ R
biv-chain[2]: X19{G Y} - X13{Y G} ==> X14 ≠ G
biv-chain[2]: X13{Y G} - X19{G Y} ==> X12 ≠ Y, X14 ≠ Y
single ==> X12 = B
biv-chain[2]: X26{Y R} - X17{R Y} ==> X19 ≠ Y
single ==> X19 = G
single ==> X13 = Y
single ==> X7 = R
single ==> X2 = Y
single ==> X14 = B
single ==> X6 = Y
single ==> X4 = B
single ==> X5 = Y
single ==> X11 = G
single ==> X20 = R
single ==> X17 = Y
single ==> X26 = R
single ==> X28 = G
single ==> X30 = B
single ==> X18 = R
single ==> X1 = G
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[4]
X1 = G
X2 = Y
X3 = G
X4 = B
X5 = Y
X6 = Y
X7 = R
X8 = R
X9 = B
X10 = G
X11 = G
X12 = B
X13 = Y
X14 = B
X15 = Y
X16 = Y
X17 = Y
X18 = R
X19 = G
X20 = R
X21 = B
X22 = Y
X23 = Y
X24 = G
X25 = B
X26 = R
X27 = R
X28 = G
X29 = G
X30 = B
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.03s
nb-facts=<Fact-1402>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"GYGBYYRRBGGBYBYYYRGRBYYGBRRGGB"
