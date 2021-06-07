

(solve 4 20
"R.YB.B....GR.RG.Y..G"
1 2 8 :
2 3 7 8 :
3 4 5 7 :
4 5 :
5 6 7 9 :
6 9 14 18 20 :
7 8 9 :
8 10 11 12 13 :
9 10 14 :
10 13 14 16 :
11 12 :
12 13 15 16 19 :
13 16 :
14 16 17 18 :
16 17 19 :
17 19 :
18 20 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
10 givens and 40 candidates
entering BRT
single ==> X18 = Y
Starting_init_links_with_<Fact-502>

Resolution state after Singles:
22 candidates, 15 csp-links and 38 links. Density = 16.45%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-611>
Entering_relation_bivalue_with_<Fact-612>
Entering_level_BC2_with_<Fact-625>
Entering_level_tW2_with_<Fact-635>
Entering_level_W2_with_<Fact-660>
Entering_level_BC3_with_<Fact-661>
Entering_level_tW3_with_<Fact-663>
Entering_level_W3_with_<Fact-683>
whip[3]: X8{B Y} - X13{Y G} - X16{G .} ==> X10 ≠ B
biv-chain[3]: X8{B Y} - X10{Y G} - X16{G B} ==> X13 ≠ B
biv-chain[2]: X13{G Y} - X10{Y G} ==> X16 ≠ G
single ==> X16 = B
single ==> X19 = G
biv-chain[2]: X10{Y G} - X13{G Y} ==> X8 ≠ Y
single ==> X8 = B
single ==> X2 = G
single ==> X7 = R
single ==> X5 = G
single ==> X9 = Y
single ==> X10 = G
single ==> X13 = Y
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[3]
X1 = R
X2 = G
X3 = Y
X4 = B
X5 = G
X6 = B
X7 = R
X8 = B
X9 = Y
X10 = G
X11 = G
X12 = R
X13 = Y
X14 = R
X15 = G
X16 = B
X17 = Y
X18 = Y
X19 = G
X20 = G
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.01s
nb-facts=<Fact-722>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"RGYBGBRBYGGRYRGBYYGG"
