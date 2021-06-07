https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:eadaaababbebdbabaaiaaabbbgaabbgbeabbbacbabdbbcaaaabhaadcaabacabcbbdabacaabaacacaaaeaaabbbcaakddadblagavbdcaalajaaababafabaaacbacbabaeaddaebaaaaciaaacaacdadbeeaacaeacabafaaacabebadagabeiaecbbahaaaccaaaaabbccaacbkcgan,2a0a13c1c3c3b0b0d33

(solve 4 30
"G.R.YB...Y...B...B..R..R....BB"
1 2 10 :
2 3 8 10 12 :
3 4 8 :
4 5 8 9 11 :
5 6 7 9 11 13 :
6 7 :
7 13 14 :
8 11 12 17 19 :
9 11 :
10 12 16 18 23 :
11 13 15 17 :
12 16 19 :
13 14 15 :
14 15 22 :
15 17 20 21 :
16 18 19 25 :
17 19 20 :
18 23 :
19 20 25 26 27 :
20 21 22 27 :
21 22 :
22 27 30 :
23 24 25 :
24 25 28 29 :
25 26 28 :
26 27 28 :
27 28 30 :
28 30 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
11 givens and 76 candidates
entering BRT
single ==> X23 = G
single ==> X2 = B
Starting_init_links_with_<Fact-805>

Resolution state after Singles:
46 candidates, 40 csp-links and 108 links. Density = 10.43%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1104>
Entering_relation_bivalue_with_<Fact-1105>
Entering_level_BC2_with_<Fact-1126>
biv-chain[2]: X12{R G} - X16{G R} ==> X19 ≠ R
biv-chain[2]: X12{G R} - X16{R G} ==> X19 ≠ G
biv-chain[2]: X19{Y B} - X25{B Y} ==> X26 ≠ Y
biv-chain[2]: X25{B Y} - X19{Y B} ==> X26 ≠ B
Entering_level_tW2_with_<Fact-1164>
Entering_level_W2_with_<Fact-1216>
Entering_level_BC3_with_<Fact-1217>
Entering_level_tW3_with_<Fact-1233>
Entering_level_W3_with_<Fact-1286>
whip[3]: X15{Y G} - X20{G B} - X19{B .} ==> X17 ≠ Y
whip[3]: X19{Y B} - X20{B G} - X22{G .} ==> X27 ≠ Y
biv-chain[2]: X27{G R} - X26{R G} ==> X28 ≠ G
single ==> X28 = Y
single ==> X25 = B
single ==> X19 = Y
single ==> X8 = G
single ==> X4 = B
single ==> X11 = R
single ==> X9 = G
single ==> X13 = G
single ==> X7 = R
single ==> X15 = Y
single ==> X17 = B
single ==> X20 = G
single ==> X22 = Y
single ==> X27 = R
single ==> X26 = G
single ==> X12 = R
single ==> X16 = G
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[3]
X1 = G
X2 = B
X3 = R
X4 = B
X5 = Y
X6 = B
X7 = R
X8 = G
X9 = G
X10 = Y
X11 = R
X12 = R
X13 = G
X14 = B
X15 = Y
X16 = G
X17 = B
X18 = B
X19 = Y
X20 = G
X21 = R
X22 = Y
X23 = G
X24 = R
X25 = B
X26 = G
X27 = R
X28 = Y
X29 = B
X30 = B
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1309>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"GBRBYBRGGYRRGBYGBBYGRYGRBGRYBB"
