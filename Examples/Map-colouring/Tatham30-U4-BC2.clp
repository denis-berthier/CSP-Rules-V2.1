

(solve 4 30
".....B.BG......RR.G..G.Y...GRR"
1 2 8 9 11 :
2 3 9 :
3 4 9 10 14 :
4 5 10 12 13 :
5 6 7 13 17 20 23 :
6 7 :
7 17 :
8 11 15 :
9 11 14 :
10 12 14 18 22 25 26 :
11 14 15 16 :
12 13 19 23 25 :
13 19 23 24 :
14 18 :
15 16 :
16 18 21 :
17 20 :
18 21 22 :
19 23 24 :
20 23 30 :
21 22 26 28 :
22 26 :
23 24 25 27 30 :
25 26 27 :
26 27 28 29 :
27 29 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
11 givens and 76 candidates
entering BRT
single ==> X23 = B
single ==> X13 = R
single ==> X12 = Y
single ==> X11 = Y
single ==> X1 = R
single ==> X15 = G
Starting_init_links_with_<Fact-799>

Resolution state after Singles:
33 candidates, 15 csp-links and 40 links. Density = 7.58%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-912>
Entering_relation_bivalue_with_<Fact-913>
Entering_level_BC2_with_<Fact-938>
biv-chain[2]: X10{B R} - X14{R B} ==> X3 ≠ B, X18 ≠ B
single ==> X18 = Y
single ==> X21 = B
single ==> X26 = Y
single ==> X27 = G
single ==> X25 = R
single ==> X10 = B
single ==> X4 = G
single ==> X5 = Y
single ==> X7 = G
single ==> X20 = G
single ==> X14 = R
single ==> X3 = Y
single ==> X2 = B
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = BC[2]
X1 = R
X2 = B
X3 = Y
X4 = G
X5 = Y
X6 = B
X7 = G
X8 = B
X9 = G
X10 = B
X11 = Y
X12 = Y
X13 = R
X14 = R
X15 = G
X16 = R
X17 = R
X18 = Y
X19 = G
X20 = G
X21 = B
X22 = G
X23 = B
X24 = Y
X25 = R
X26 = Y
X27 = G
X28 = G
X29 = R
X30 = R
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-964>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"RBYGYBGBGBYYRRGRRYGGBGBYRYGGRR"
