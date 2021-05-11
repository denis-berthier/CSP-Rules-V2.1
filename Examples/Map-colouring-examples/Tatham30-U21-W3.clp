https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:eazebccabaabacagbbaabdakadfbakadcaahabbbadbdaddaaeabaadaaabaaadjcbaaaabaadbhbdbaddaacacabcaaaaaafbbcbbaaahacbfdbagadbabbabaebbabbhbaacaadbdcbccabdaddaaeceaaacacfefbaiaaaeaibaaaacacaacaacaaacaachbedcaaaaacaidaafacabaaa,1a2b3b0h3a0b2b13121


(solve 4 30
"Y.G..B..R........B.R..G..YBYGY"
1 2 4 5 :
2 3 5 6 7 8 :
3 8 9 :
4 5 11 :
5 6 11 13 15 20 22 26 :
6 7 13 16 :
7 8 10 14 :
8 9 10 12 14 :
9 12 18 :
10 14 :
11 15 19 20 :
12 14 18 21 28 :
13 16 24 27 :
14 16 17 21 25 :
15 20 :
16 24 25 :
17 21 25 :
19 20 22 23 :
20 22 23 :
21 25 28 30 :
22 23 26 29 :
24 25 27 :
25 27 30 :
26 27 29 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
12 givens and 72 candidates
entering BRT
single ==> X22 = B
single ==> X19 = Y
single ==> X12 = G
single ==> X5 = G
single ==> X11 = B
single ==> X4 = R
single ==> X15 = Y
single ==> X2 = R
Starting_init_links_with_<Fact-803>

Resolution state after Singles:
35 candidates, 26 csp-links and 61 links. Density = 10.25%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-980>
Entering_relation_bivalue_with_<Fact-981>
Entering_level_BC2_with_<Fact-992>
Entering_level_tW2_with_<Fact-998>
Entering_level_W2_with_<Fact-1025>
Entering_level_BC3_with_<Fact-1026>
Entering_level_tW3_with_<Fact-1028>
Entering_level_W3_with_<Fact-1052>
whip[3]: X13{R Y} - X24{Y G} - X25{G .} ==> X16 ≠ R
biv-chain[3]: X13{R Y} - X16{Y G} - X25{G R} ==> X24 ≠ R
biv-chain[2]: X24{G Y} - X16{Y G} ==> X25 ≠ G
single ==> X25 = R
single ==> X21 = B
single ==> X14 = Y
single ==> X7 = G
single ==> X8 = B
single ==> X10 = R
single ==> X16 = G
single ==> X24 = Y
single ==> X13 = R
single ==> X17 = G
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[3]
X1 = Y
X2 = R
X3 = G
X4 = R
X5 = G
X6 = B
X7 = G
X8 = B
X9 = R
X10 = R
X11 = B
X12 = G
X13 = R
X14 = Y
X15 = Y
X16 = G
X17 = G
X18 = B
X19 = Y
X20 = R
X21 = B
X22 = B
X23 = G
X24 = Y
X25 = R
X26 = Y
X27 = B
X28 = Y
X29 = G
X30 = Y
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1083>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"YRGRGBGBRRBGRYYGGBYRBBGYRYBYGY"
