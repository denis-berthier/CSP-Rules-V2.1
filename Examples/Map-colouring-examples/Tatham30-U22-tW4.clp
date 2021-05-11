https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:cbgaaadbecabebaeeabbfaiacbegaabdabaacbbbadaaaaeaebeacebbaeaadacaabaadcbadbaabbdaabadbaaaeaaabadaabeaeababaebiaraabbadahaabjabaahaagbdafafabaacaabhaacbccaabadcdaaaabbbadaadbbbaecabbaabaaedajcfchbebbbaabacagaaacadadaaaaafdcbd,a1a0a3a1c3c1a32e1a0123

(solve 4 30
".Y.R.B.Y...B...Y.BG.....Y.RYGBY"
1 2 3 12 :
2 3 :
3 4 5 12 15 16 :
4 5 :
5 6 7 10 13 17 20 :
6 7 :
7 8 9 10 13 18 21 :
8 9 :
9 11 18 :
10 13 :
11 18 24 27 :
12 14 :
13 20 21 22 :
14 15 16 19 23 :
15 16 :
16 17 23 :
17 20 22 23 25 :
18 21 24 :
19 23 28 :
20 22 :
21 22 24 :
22 24 25 26 :
23 25 28 29 :
24 26 27 :
25 26 30 :
26 27 :
28 29 :
29 30:
)


***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
13 givens and 68 candidates
entering BRT
single ==> X14 = R
single ==> X23 = B
single ==> X3 = G
single ==> X1 = R
single ==> X5 = Y
single ==> X15 = B
Starting_init_links_with_<Fact-778>

Resolution state after Singles:
33 candidates, 21 csp-links and 58 links. Density = 10.98%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-939>
Entering_relation_bivalue_with_<Fact-940>
Entering_level_BC2_with_<Fact-953>
Entering_level_tW2_with_<Fact-967>
Entering_level_W2_with_<Fact-995>
Entering_level_BC3_with_<Fact-996>
Entering_level_tW3_with_<Fact-1004>
Entering_level_W3_with_<Fact-1036>
Entering_level_BC4_with_<Fact-1037>
biv-chain[4]: X7{G R} - X9{R G} - X11{G Y} - X24{Y G} ==> X21 ≠ G
Entering_level_tW4_with_<Fact-1077>
t-whip[4]: X21{R Y} - X24{Y G} - X26{G B} - X22{B .} ==> X13 ≠ R
whip[3]: X13{G B} - X22{B R} - X17{R .} ==> X20 ≠ G
biv-chain[3]: X13{G B} - X20{B R} - X17{R G} ==> X22 ≠ G
biv-chain[2]: X22{R B} - X20{B R} ==> X17 ≠ R
single ==> X17 = G
biv-chain[2]: X20{B R} - X22{R B} ==> X13 ≠ B
single ==> X13 = G
single ==> X7 = R
single ==> X9 = G
single ==> X11 = Y
single ==> X24 = G
single ==> X26 = B
single ==> X22 = R
single ==> X20 = B
single ==> X10 = B
single ==> X21 = Y
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[4]
X1 = R
X2 = Y
X3 = G
X4 = R
X5 = Y
X6 = B
X7 = R
X8 = Y
X9 = G
X10 = B
X11 = Y
X12 = B
X13 = G
X14 = R
X15 = B
X16 = Y
X17 = G
X18 = B
X19 = G
X20 = B
X21 = Y
X22 = R
X23 = B
X24 = G
X25 = Y
X26 = B
X27 = R
X28 = Y
X29 = G
X30 = B
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1148>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"RYGRYBRYGBYBGRBYGBGBYRBGYBRYGB"
