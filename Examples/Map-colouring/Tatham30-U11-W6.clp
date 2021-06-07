

https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:leiaeaabadhabacbefbeebfbaadaiababcbcbcebbaaadabeaadegaaaacabgcecebfabacacaibbbacdaebdbeaeabbbalchgceiaiebbeaibbbbedbcahbcccdbababaaaeaaaaagaabbbbdbabaabaadaabhbbadabagdaaabaaaaabbdbaaadbaaaacawbcac,03b1d3d3230a1d21a10a


(solve 4 30
"RB..Y....B....BGBR.Y....GY.YR."
1 2 11 15 :
2 3 11 :
3 4 11 12 :
4 5 6 12 13 :
5 6 7 9 :
6 7 8 14 :
7 8 9 10 :
8 10 14 :
9 10 16 17 :
10 13 14 16 :
11 12 15 18 21 :
12 13 19 21 22 :
13 14 19 22 23 24 27 :
15 18 20 :
16 17 23 24 :
17 24 :
18 21 26:
19 22 :
21 22 25 26 :
22 25 27 :
23 24 :
24 27 28 :
25 26 27 30 :
27 28 29 30 :
28 29 :
29 30 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
13 givens and 68 candidates
entering BRT
single ==> X27 = B
single ==> X30 = Y
single ==> X24 = R
single ==> X21 = B
single ==> X9 = R
single ==> X7 = G
Starting_init_links_with_<Fact-793>

Resolution state after Singles:
34 candidates, 24 csp-links and 57 links. Density = 10.16%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-958>
Entering_relation_bivalue_with_<Fact-959>
Entering_level_BC2_with_<Fact-972>
Entering_level_tW2_with_<Fact-980>
Entering_level_W2_with_<Fact-1007>
Entering_level_BC3_with_<Fact-1008>
Entering_level_tW3_with_<Fact-1010>
t-whip[3]: X22{R Y} - X13{Y G} - X12{G .} ==> X19 ≠ R
t-whip[3]: X13{G Y} - X22{Y R} - X12{R .} ==> X4 ≠ G, X19 ≠ G
Entering_level_W3_with_<Fact-1066>
whip[3]: X13{Y G} - X12{G R} - X22{R .} ==> X19 ≠ Y
single ==> X19 = B
Entering_level_BC4_with_<Fact-1068>
Entering_level_tW4_with_<Fact-1070>
Entering_level_W4_with_<Fact-1085>
Entering_level_BC5_with_<Fact-1086>
Entering_level_tW5_with_<Fact-1088>
Entering_level_W5_with_<Fact-1103>
Entering_level_BC6_with_<Fact-1104>
Entering_level_tW6_with_<Fact-1106>
t-whip[6]: X4{R B} - X6{B R} - X8{R Y} - X14{Y G} - X13{G Y} - X22{Y .} ==> X12 ≠ R
biv-chain[2]: X12{G Y} - X11{Y G} ==> X3 ≠ G
biv-chain[2]: X13{Y G} - X12{G Y} ==> X22 ≠ Y
single ==> X22 = R
biv-chain[2]: X11{Y G} - X12{G Y} ==> X3 ≠ Y
single ==> X3 = R
single ==> X4 = B
single ==> X6 = R
single ==> X8 = Y
single ==> X14 = G
single ==> X13 = Y
single ==> X12 = G
single ==> X11 = Y
single ==> X23 = B
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[6]
X1 = R
X2 = B
X3 = R
X4 = B
X5 = Y
X6 = R
X7 = G
X8 = Y
X9 = R
X10 = B
X11 = Y
X12 = G
X13 = Y
X14 = G
X15 = B
X16 = G
X17 = B
X18 = R
X19 = B
X20 = Y
X21 = B
X22 = R
X23 = B
X24 = R
X25 = G
X26 = Y
X27 = B
X28 = Y
X29 = R
X30 = Y
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1151>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"RBRBYRGYRBYGYGBGBRBYBRBRGYBYRY"
