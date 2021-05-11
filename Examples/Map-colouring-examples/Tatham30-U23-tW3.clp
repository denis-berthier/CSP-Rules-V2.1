https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:earbcadahabcabhcibbabadcacfadbcdaaacabebabaeacbabaaababbgaaadcaacbcaecaaabbadabcgaaaebcaaabbbaabcafccbkambbeeabbabfabacccadbaacacdbacaabeclaacadbafcccdadcccaabddcabacaafdgfaababbeaefbacbgaaabbiacaaaabdbabaaaaeabaeab,02b2c1d2f1a13301b2

(solve 4 30
"RG..G...Y....G......Y.YBBRY..G"
1 2 6 10 :
2 3 6 7 :
3 4 7 8 11 :
4 5 9 11 15 16 :
5 9 :
6 7 10 12 13 :
7 8 13 14 :
8 11 13 14 17 18 19 :
9 16 24 30 :
10 12 22 25 :
11 15 20 :
12 13 17 22 25 :
13 17 :
15 16 21 :
16 19 20 21 23 24 :
17 18 25 26 27 28 :
18 19 :
19 20 23 26 29 :
20 21 :
22 25 :
23 24 29 :
24 29 30 :
25 27 :
26 28 29 :
27 28 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
12 givens and 72 candidates
entering BRT
single ==> X29 = G
single ==> X19 = B
single ==> X17 = G
single ==> X28 = B
Starting_init_links_with_<Fact-804>

Resolution state after Singles:
39 candidates, 29 csp-links and 77 links. Density = 10.39%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1019>
Entering_relation_bivalue_with_<Fact-1020>
Entering_level_BC2_with_<Fact-1037>
Entering_level_tW2_with_<Fact-1055>
Entering_level_W2_with_<Fact-1100>
Entering_level_BC3_with_<Fact-1101>
Entering_level_tW3_with_<Fact-1105>
t-whip[3]: X6{B Y} - X12{Y R} - X13{R .} ==> X7 ≠ B
biv-chain[2]: X7{R Y} - X8{Y R} ==> X3 ≠ R, X13 ≠ R
biv-chain[2]: X13{Y B} - X6{B Y} ==> X7 ≠ Y, X12 ≠ Y
single ==> X12 = R
single ==> X7 = R
single ==> X8 = Y
single ==> X3 = B
single ==> X4 = R
single ==> X11 = G
single ==> X15 = B
single ==> X20 = R
single ==> X16 = G
single ==> X13 = B
single ==> X6 = Y
single ==> X10 = G
single ==> X22 = Y
single ==> X18 = R
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[3]
X1 = R
X2 = G
X3 = B
X4 = R
X5 = G
X6 = Y
X7 = R
X8 = Y
X9 = Y
X10 = G
X11 = G
X12 = R
X13 = B
X14 = G
X15 = B
X16 = G
X17 = G
X18 = R
X19 = B
X20 = R
X21 = Y
X22 = Y
X23 = Y
X24 = B
X25 = B
X26 = R
X27 = Y
X28 = B
X29 = G
X30 = G
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1172>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"RGBRGYRYYGGRBGBGGRBRYYYBBRYBGG"
