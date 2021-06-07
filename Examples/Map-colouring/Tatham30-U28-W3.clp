https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:aadabbaafabbddaababadacababacafaiaadcaabedeeabcceagbaaaceacafaiccbaacadbccaacaaelaaadacbdbfaaaabeacbaaablabbeadbbehbgcgaeaaajdcdcadciabaibacafhababdaadbabdaadbeabcbacbbbadabagafabacebdacbabbdaacgbabaaaahabaabgbb,b3a01231g0a1c2a3102b

(solve 4 30
"..B.RYGBY.......R.Y...G.BYRG.."
1 2 9 12 :
2 3 4 11 12 14 :
3 4 :
4 5 10 11 :
5 6 10 :
6 7 10 13 :
7 8 13 :
8 13 :
9 12 16 17 :
10 11 15 :
11 13 14 15 18 19 21 22 28 :
12 14 16 :
13 15 19 25 26 :
14 16 18 20 21 24 :
16 17 21 :
17 20 23 :
18 21 :
19 22 25 :
20 23 24 :
21 24 28 :
22 25 28 30 :
23 24 :
24 28 :
25 26 29 30 :
26 27 29 :
28 30 :
27 29 :
28 30 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
13 givens and 68 candidates
entering BRT
single ==> X29 = G
single ==> X22 = R
single ==> X11 = B
single ==> X10 = G
single ==> X4 = Y
single ==> X30 = Y
single ==> X13 = R
single ==> X15 = Y
Starting_init_links_with_<Fact-795>

Resolution state after Singles:
31 candidates, 19 csp-links and 47 links. Density = 10.11%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-930>
Entering_relation_bivalue_with_<Fact-931>
Entering_level_BC2_with_<Fact-940>
Entering_level_tW2_with_<Fact-942>
Entering_level_W2_with_<Fact-961>
Entering_level_BC3_with_<Fact-962>
Entering_level_tW3_with_<Fact-964>
Entering_level_W3_with_<Fact-983>
whip[3]: X2{G R} - X12{R B} - X16{B .} ==> X14 ≠ G
biv-chain[2]: X14{R Y} - X21{Y R} ==> X18 ≠ R, X24 ≠ R
biv-chain[2]: X24{Y B} - X20{B Y} ==> X14 ≠ Y
single ==> X14 = R
single ==> X2 = G
single ==> X12 = B
single ==> X1 = R
single ==> X16 = G
single ==> X21 = Y
single ==> X18 = G
single ==> X24 = B
single ==> X20 = Y
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[3]
X1 = R
X2 = G
X3 = B
X4 = Y
X5 = R
X6 = Y
X7 = G
X8 = B
X9 = Y
X10 = G
X11 = B
X12 = B
X13 = R
X14 = R
X15 = Y
X16 = G
X17 = R
X18 = G
X19 = Y
X20 = Y
X21 = Y
X22 = R
X23 = G
X24 = B
X25 = B
X26 = Y
X27 = R
X28 = G
X29 = G
X30 = Y
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1010>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"RGBYRYGBYGBBRRYGRGYYYRGBBYRGGY"

