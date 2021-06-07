

(solve 4 30
"....G.YRR.GY...G..R...G.BG...G"
1 2 9 11 12 13 :
2 3 9 :
3 4 9 13 16 20 :
4 5 6 14 15 16 :
5 6 :
6 7 10 15 :
7 8 10 :
8 10 :
9 12 :
10 15 17 19 :
11 13 18 :
12 13 :
13 18 20 :
14 15 16 17 21 :
15 17 :
16 20 21 :
17 19 21 22 23 :
18 20 25 26 :
19 23 :
20 21 24 26 27 :
21 22 23 24 :
22 23 :
23 24 28 :
24 27 28 29 :
25 26 :
26 27 29 :
27 29 :
28 29 30 :
29 30 :

)


***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
12 givens and 72 candidates
entering BRT
single ==> X1 = B
single ==> X13 = R
single ==> X18 = Y
single ==> X20 = B
single ==> X3 = Y
single ==> X2 = G
Starting_init_links_with_<Fact-801>

Resolution state after Singles:
36 candidates, 25 csp-links and 64 links. Density = 10.16%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-982>
Entering_relation_bivalue_with_<Fact-983>
Entering_level_BC2_with_<Fact-998>
biv-chain[2]: X4{B R} - X6{R B} ==> X15 ≠ B
biv-chain[2]: X4{R B} - X6{B R} ==> X15 ≠ R
biv-chain[2]: X24{Y R} - X27{R Y} ==> X29 ≠ Y
biv-chain[2]: X24{R Y} - X27{Y R} ==> X29 ≠ R
single ==> X29 = B
Entering_level_tW2_with_<Fact-1045>
Entering_level_W2_with_<Fact-1083>
Entering_level_BC3_with_<Fact-1084>
biv-chain[3]: X15{Y G} - X10{G B} - X17{B Y} ==> X14 ≠ Y
biv-chain[3]: X17{Y B} - X14{B R} - X21{R Y} ==> X22 ≠ Y
Entering_level_tW3_with_<Fact-1166>
Entering_level_W3_with_<Fact-1221>
Entering_level_BC4_with_<Fact-1222>
Entering_level_tW4_with_<Fact-1282>
Entering_level_W4_with_<Fact-1341>
Entering_level_BC5_with_<Fact-1342>
biv-chain[5]: X4{B R} - X6{R B} - X10{B G} - X15{G Y} - X17{Y B} ==> X14 ≠ B
single ==> X14 = R
single ==> X4 = B
single ==> X6 = R
single ==> X21 = Y
single ==> X17 = B
single ==> X10 = G
single ==> X15 = Y
single ==> X22 = R
single ==> X24 = R
single ==> X27 = Y
single ==> X28 = Y
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = BC[5]
X1 = B
X2 = G
X3 = Y
X4 = B
X5 = G
X6 = R
X7 = Y
X8 = R
X9 = R
X10 = G
X11 = G
X12 = Y
X13 = R
X14 = R
X15 = Y
X16 = G
X17 = B
X18 = Y
X19 = R
X20 = B
X21 = Y
X22 = R
X23 = G
X24 = R
X25 = B
X26 = G
X27 = Y
X28 = Y
X29 = B
X30 = G
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1357>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"BGYBGRYRRGGYRRYGBYRBYRGRBGYYBG"


