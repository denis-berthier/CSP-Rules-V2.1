

(solve 4 30
"G..RGY.....BY........RG.R..B.R"
1 2 7 :
2 3 7 :
3 4 7 8 15 17 19 22 24 :
4 5 8 9 10 :
5 6 11 14 16 :
7 13 17 :
8 9 12 15 :
9 10 12 :
10 11 12 :
11 12 14 :
12 14 15 :
13 17 18 20 :
14 15 16 19 :
15 19 :
16 19 23 25 27 29 :
17 20 21 24 :
18 20 26 :
19 22 24 27 :
20 21 24 26 28 :
21 24 :
23 25 :
24 26 27 28 30 :
25 29 :
26 28 :
27 29 30 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
11 givens and 76 candidates
entering BRT
Starting_init_links_with_<Fact-793>

Resolution state after Singles:
49 candidates, 42 csp-links and 110 links. Density = 9.35%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1100>
Entering_relation_bivalue_with_<Fact-1101>
Entering_level_BC2_with_<Fact-1120>
Entering_level_tW2_with_<Fact-1140>
Entering_level_W2_with_<Fact-1196>
Entering_level_BC3_with_<Fact-1197>
Entering_level_tW3_with_<Fact-1209>
t-whip[3]: X20{R G} - X24{G Y} - X26{Y .} ==> X18 ≠ R
Entering_level_W3_with_<Fact-1282>
whip[3]: X16{Y B} - X27{B G} - X24{G .} ==> X19 ≠ Y
biv-chain[3]: X16{Y B} - X19{B G} - X24{G Y} ==> X27 ≠ Y
biv-chain[2]: X27{G B} - X19{B G} ==> X24 ≠ G
single ==> X24 = Y
biv-chain[2]: X26{G R} - X20{R G} ==> X18 ≠ G
single ==> X18 = B
biv-chain[2]: X3{G B} - X19{B G} ==> X15 ≠ G
biv-chain[2]: X19{B G} - X27{G B} ==> X16 ≠ B
single ==> X16 = Y
single ==> X14 = R
single ==> X11 = Y
single ==> X10 = G
single ==> X9 = Y
single ==> X8 = G
single ==> X3 = B
single ==> X7 = R
single ==> X2 = Y
single ==> X17 = G
single ==> X20 = R
single ==> X21 = B
single ==> X26 = G
single ==> X19 = G
single ==> X27 = B
single ==> X29 = G
single ==> X15 = Y
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[3]
X1 = G
X2 = Y
X3 = B
X4 = R
X5 = G
X6 = Y
X7 = R
X8 = G
X9 = Y
X10 = G
X11 = Y
X12 = B
X13 = Y
X14 = R
X15 = Y
X16 = Y
X17 = G
X18 = B
X19 = G
X20 = R
X21 = B
X22 = R
X23 = G
X24 = Y
X25 = R
X26 = G
X27 = B
X28 = B
X29 = G
X30 = R
Puzzle :
init-time = 0.01s, solve time = 0.02s, total-time = 0.03s
nb-facts=<Fact-1355>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"GYBRGYRGYGYBYRYYGBGRBRGYRGBBGR"
