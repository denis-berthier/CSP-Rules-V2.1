
https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:dbebabaakbbaaaaafbhaageabcaagacabdbabbgbcbaadcacbcbaaaacbacbcdaacbbabaaaiacacabaaagcabbbbbcbfadaaaaajaaeadiadaoaaahcdebbbbmabeafbbidcafbaacaafeacafdacbaabcbkbbaabcacaaabbaaaaaaaaccaaaabbbbbccaabaadaababbaaadabbeajbbacbq,3b0b32b2d1e0a312b3a

(solve 4 30
"B..R..BG..G....Y.....R.BYG..B."
1 2 9 12 :
2 3 8 9 13 17 :
3 4 5 8 10 15 :
4 5 :
5 6 7 10 :
6 7 10 11 :
8 13 14 15 :
9 12 16 17 :
10 11 15 21 :
12 16 :
13 14 18 19 :
14 15 19 20 :
15 20 21 :
16 17 :
17 18 22 23 25 :
18 19 23 26 30 :
19 20 26 :
20 21 24 26 27 29 30 :
21 24 27 28 :
22 25 :
23 25 26 30 :
24 27 :
26 30 :
27 28 29 :
28 29 :
29 30:
)


***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
11 givens and 76 candidates
entering BRT
Starting_init_links_with_<Fact-793>

Resolution state after Singles:
48 candidates, 39 csp-links and 110 links. Density = 9.75%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1094>
Entering_relation_bivalue_with_<Fact-1095>
Entering_level_BC2_with_<Fact-1114>
Entering_level_tW2_with_<Fact-1132>
Entering_level_W2_with_<Fact-1175>
Entering_level_BC3_with_<Fact-1176>
Entering_level_tW3_with_<Fact-1188>
Entering_level_W3_with_<Fact-1236>
whip[3]: X3{Y B} - X10{B R} - X6{R .} ==> X5 ≠ Y
single ==> X5 = G
Entering_level_BC4_with_<Fact-1238>
Entering_level_tW4_with_<Fact-1248>
Entering_level_W4_with_<Fact-1297>
whip[4]: X20{R Y} - X15{Y B} - X3{B Y} - X10{Y .} ==> X21 ≠ R
t-whip[3]: X21{G Y} - X20{Y R} - X27{R .} ==> X28 ≠ G
Entering_level_BC5_with_<Fact-1333>
Entering_level_tW5_with_<Fact-1337>
t-whip[5]: X2{Y R} - X9{R G} - X17{G B} - X23{B R} - X18{R .} ==> X13 ≠ Y
whip[3]: X13{R B} - X19{B Y} - X20{Y .} ==> X14 ≠ R
biv-chain[3]: X13{R B} - X14{B Y} - X20{Y R} ==> X19 ≠ R
biv-chain[2]: X19{Y B} - X14{B Y} ==> X20 ≠ Y
single ==> X20 = R
biv-chain[2]: X21{Y G} - X27{G Y} ==> X28 ≠ Y
single ==> X28 = R
biv-chain[2]: X15{Y B} - X3{B Y} ==> X10 ≠ Y
biv-chain[2]: X3{B Y} - X15{Y B} ==> X10 ≠ B
single ==> X10 = R
single ==> X6 = Y
biv-chain[2]: X14{B Y} - X19{Y B} ==> X13 ≠ B
single ==> X13 = R
single ==> X2 = Y
single ==> X3 = B
single ==> X15 = Y
single ==> X14 = B
single ==> X19 = Y
single ==> X18 = B
single ==> X17 = G
single ==> X9 = R
single ==> X12 = G
single ==> X23 = R
single ==> X30 = Y
single ==> X21 = G
single ==> X27 = Y
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[5]
X1 = B
X2 = Y
X3 = B
X4 = R
X5 = G
X6 = Y
X7 = B
X8 = G
X9 = R
X10 = R
X11 = G
X12 = G
X13 = R
X14 = B
X15 = Y
X16 = Y
X17 = G
X18 = B
X19 = Y
X20 = R
X21 = G
X22 = R
X23 = R
X24 = B
X25 = Y
X26 = G
X27 = Y
X28 = R
X29 = B
X30 = Y
Puzzle :
init-time = 0.01s, solve time = 0.02s, total-time = 0.03s
nb-facts=<Fact-1484>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"BYBRGYBGRRGGRBYYGBYRGRRBYGYRBY"
