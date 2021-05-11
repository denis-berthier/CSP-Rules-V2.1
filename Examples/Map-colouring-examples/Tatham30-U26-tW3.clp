https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:daafaaebdbeaeagbbaoaaadaacgbaaaacddcbaaaacdeabccbacbdbacaabbaccahbaaaaabccacaaaaaaaabbdcbcbacbkbabkaabbaaaodabfaodadeaabfacajbadibafdabcdahbaajcbbabcbbabbcbaadcaccecaeacaaaabbcdabaaaaakdaaicaadbabbbbabagcaahag,a2e0e23b00e2c21


(solve 4 30
".G.....R.....GB..RR.....G...GY"
1 2 8 9 12 15 18 :
2 3 5 :
3 4 5 6 :
4 6 7 11 :
5 6 8 9 10 14 :
6 11 14 16 :
7 11 17 :
9 10 13 14 :
10 14 :
11 16 17 22 24 25 27 :
12 13 15 :
13 14 15 20 23 :
14 16 19 20 :
15 18 23 :
16 19 21 22 24 :
17 25 26 27 :
18 23 :
19 20 21 :
20 21 23 :
21 23 24 28 :
22 24 :
23 29 :
24 27 28 :
25 27 :
26 27 30 :
27 28 30 :
)


***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
9 givens and 84 candidates
entering BRT
single ==> X23 = Y
single ==> X13 = R
single ==> X20 = B
single ==> X21 = G
single ==> X1 = Y
single ==> X9 = B
single ==> X5 = Y
single ==> X10 = R
single ==> X12 = G
Starting_init_links_with_<Fact-818>

Resolution state after Singles:
44 candidates, 37 csp-links and 92 links. Density = 9.73%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1079>
Entering_relation_bivalue_with_<Fact-1080>
Entering_level_BC2_with_<Fact-1089>
biv-chain[2]: X3{B R} - X6{R B} ==> X4 ≠ B
biv-chain[2]: X3{R B} - X6{B R} ==> X4 ≠ R
Entering_level_tW2_with_<Fact-1103>
Entering_level_W2_with_<Fact-1131>
Entering_level_BC3_with_<Fact-1132>
Entering_level_tW3_with_<Fact-1136>
t-whip[3]: X16{Y B} - X6{B R} - X11{R .} ==> X22 ≠ Y, X24 ≠ Y
biv-chain[2]: X24{R B} - X27{B R} ==> X11 ≠ R, X28 ≠ R
biv-chain[2]: X16{B Y} - X11{Y B} ==> X6 ≠ B, X22 ≠ B, X24 ≠ B
single ==> X24 = R
single ==> X22 = G
single ==> X27 = B
single ==> X11 = Y
single ==> X4 = G
single ==> X16 = B
single ==> X17 = R
single ==> X7 = B
single ==> X26 = G
single ==> X28 = Y
single ==> X6 = R
single ==> X3 = B
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[3]
X1 = Y
X2 = G
X3 = B
X4 = G
X5 = Y
X6 = R
X7 = B
X8 = R
X9 = B
X10 = R
X11 = Y
X12 = G
X13 = R
X14 = G
X15 = B
X16 = B
X17 = R
X18 = R
X19 = R
X20 = B
X21 = G
X22 = G
X23 = Y
X24 = R
X25 = G
X26 = G
X27 = B
X28 = Y
X29 = G
X30 = Y
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1198>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"YGBGYRBRBRYGRGBBRRRBGGYRGGBYGY"
