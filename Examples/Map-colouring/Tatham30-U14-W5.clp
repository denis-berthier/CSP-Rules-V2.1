
https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:ibmfbbaakacddbccgcaadacaaabaddbabaaaacbbcahaeaabbabbbfbbaababaaafbaddbgblecbdgcadalabaaaeadcaenacbfdfbbaabpaibbaaecaaacagababcdadbdcbdabeabbeeaabcfahcccabaadbcacacafaadcdbbdbabccddcafacamcf,a203b1b2b1b03b3e123b


(solve 4 30
"..BBY...R.G...B.Y.B.G....Y...B"
1 2 4 5 10 12 :
2 3 5 6 7 8 :
3 8 14 21 22 :
4 9 11 :
5 6 10 13 :
6 7 13 :
7 8 13 :
8 13 21 :
9 12 15 16 18 :
10 12 13 16 17 19 20 :
11 12 :
12 16 :
13 17 21 28 :
14 21 22 :
15 18 23 :
16 18 19 :
17 20 24 25 28 :
18 19 23 :
19 20 24 27 29 :
20 24 :
21 22 28 :
22 28 :
23 26 27 :
24 25 29 :
25 28 29 :
26 27 30 :
27 29 :
28 29 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
11 givens and 76 candidates
entering BRT
Starting_init_links_with_<Fact-808>

Resolution state after Singles:
43 candidates, 30 csp-links and 77 links. Density = 8.53%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1025>
Entering_relation_bivalue_with_<Fact-1026>
Entering_level_BC2_with_<Fact-1057>
Entering_level_tW2_with_<Fact-1105>
Entering_level_W2_with_<Fact-1171>
Entering_level_BC3_with_<Fact-1172>
Entering_level_tW3_with_<Fact-1216>
Entering_level_W3_with_<Fact-1294>
whip[3]: X2{R G} - X6{G B} - X13{B .} ==> X7 ≠ R
whip[3]: X24{R G} - X25{G B} - X28{B .} ==> X29 ≠ R
Entering_level_BC4_with_<Fact-1310>
Entering_level_tW4_with_<Fact-1362>
Entering_level_W4_with_<Fact-1435>
Entering_level_BC5_with_<Fact-1436>
Entering_level_tW5_with_<Fact-1486>
t-whip[5]: X13{B R} - X10{R G} - X1{G R} - X2{R G} - X6{G .} ==> X7 ≠ B
biv-chain[3]: X7{G Y} - X8{Y R} - X2{R G} ==> X6 ≠ G
biv-chain[4]: X10{G R} - X13{R B} - X6{B R} - X2{R G} ==> X1 ≠ G
single ==> X1 = R
single ==> X2 = G
single ==> X7 = Y
single ==> X8 = R
single ==> X13 = B
single ==> X6 = R
single ==> X28 = R
single ==> X22 = Y
single ==> X14 = R
single ==> X10 = G
single ==> X16 = Y
single ==> X12 = B
single ==> X18 = G
single ==> X23 = R
single ==> X27 = G
single ==> X29 = Y
single ==> X20 = R
single ==> X24 = G
single ==> X25 = B
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[5]
X1 = R
X2 = G
X3 = B
X4 = B
X5 = Y
X6 = R
X7 = Y
X8 = R
X9 = R
X10 = G
X11 = G
X12 = B
X13 = B
X14 = R
X15 = B
X16 = Y
X17 = Y
X18 = G
X19 = B
X20 = R
X21 = G
X22 = Y
X23 = R
X24 = G
X25 = B
X26 = Y
X27 = G
X28 = R
X29 = Y
X30 = B
Puzzle :
init-time = 0.01s, solve time = 0.02s, total-time = 0.03s
nb-facts=<Fact-1622>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"RGBBYRYRRGGBBRBYYGBRGYRGBYGRYB"
