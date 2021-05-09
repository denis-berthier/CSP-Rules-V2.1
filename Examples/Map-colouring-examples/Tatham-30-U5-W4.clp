

(solve 4 30
"...RG.BBB.Y...Y..R....Y..G.G.."
1 2 9 10 11 :
2 3 8 11 :
3 4 8 :
4 5 8 :
5 6 12 13 16 19 :
6 7 13 14 15 :
7 14 :
8 12 :
9 10 18 :
10 11 18 19 22 23 24 :
11 12 :
12 19 :
13 15 16 17 :
14 15 20 25 :
15 17 20 :
16 17 19 :
17 19 20 21 :
19 21 22 :
20 21 25 27 :
21 22 27 :
22 23 24 26 27 29 :
23 24 :
25 27 28 29 30 :
26 27 :
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
11 givens and 76 candidates
entering BRT
single ==> X12 = R
single ==> X10 = G
single ==> X1 = R
single ==> X2 = G
single ==> X3 = Y
single ==> X6 = R
single ==> X13 = B
single ==> X14 = G
Starting_init_links_with_<Fact-801>

Resolution state after Singles:
36 candidates, 24 csp-links and 64 links. Density = 10.16%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-980>
Entering_relation_bivalue_with_<Fact-981>
Entering_level_BC2_with_<Fact-994>
Entering_level_tW2_with_<Fact-1008>
Entering_level_W2_with_<Fact-1037>
Entering_level_BC3_with_<Fact-1038>
Entering_level_tW3_with_<Fact-1046>
Entering_level_W3_with_<Fact-1081>
Entering_level_BC4_with_<Fact-1082>
Entering_level_tW4_with_<Fact-1088>
Entering_level_W4_with_<Fact-1114>
whip[4]: X20{B R} - X25{R Y} - X29{Y R} - X22{R .} ==> X27 ≠ B
biv-chain[3]: X27{Y R} - X22{R B} - X19{B Y} ==> X21 ≠ Y
t-whip[3]: X27{Y R} - X20{R B} - X25{B .} ==> X29 ≠ Y
biv-chain[2]: X29{R B} - X22{B R} ==> X27 ≠ R
single ==> X27 = Y
biv-chain[2]: X25{R B} - X29{B R} ==> X30 ≠ R
biv-chain[2]: X29{B R} - X25{R B} ==> X30 ≠ B
single ==> X30 = Y
biv-chain[4]: X20{B R} - X25{R B} - X29{B R} - X22{R B} ==> X21 ≠ B
biv-chain[2]: X17{R G} - X21{G R} ==> X20 ≠ R
single ==> X20 = B
single ==> X25 = R
single ==> X29 = B
single ==> X22 = R
single ==> X21 = G
single ==> X17 = R
single ==> X16 = Y
single ==> X19 = B
single ==> X24 = B
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[4]
X1 = R
X2 = G
X3 = Y
X4 = R
X5 = G
X6 = R
X7 = B
X8 = B
X9 = B
X10 = G
X11 = Y
X12 = R
X13 = B
X14 = G
X15 = Y
X16 = Y
X17 = R
X18 = R
X19 = B
X20 = B
X21 = G
X22 = R
X23 = Y
X24 = B
X25 = R
X26 = G
X27 = Y
X28 = G
X29 = B
X30 = Y
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1236>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"RGYRGRBBBGYRBGYYRRBBGRYBRGYGBY"
