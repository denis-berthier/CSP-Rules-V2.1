https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#10x10n20:daaaeaeaafabaaagbaaacbacaabaaacaiaciaacbbaebcbaaaacdcbaeaabaeaagaccabacddcbad,0221021f2a13a2a

10x10n20

daaaeaeaafabaaagbaaacbacaabaaacaiaciaacbbaebcbaaaacdcbaeaabaeaagaccabacddcbad
length = 77

0221021f2a13a2a
length = 15



(solve 4 20
"RGGYRGY......G.YB..G"
1 2 8 :
3 4 8 9 12 :
4 5 9 :
5 6 7 9 13 16
6 7 :
8 10 11 12 :
9 13 :
10 11 14 17 :
11 12 14 18 :
12 13 15 18 19 20 :
13 15 16 :
14 17 18 :
15 16 :
16 20 :
17 18 19 :
18 19 :

)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
11 givens and 36 candidates
entering BRT
single ==> X9 = B
single ==> X13 = G
Starting_init_links_with_<Fact-485>

Resolution state after Singles:
19 candidates, 13 csp-links and 33 links. Density = 19.3%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-580>
Entering_relation_bivalue_with_<Fact-581>
Entering_level_BC2_with_<Fact-590>
Entering_level_tW2_with_<Fact-594>
Entering_level_W2_with_<Fact-611>
Entering_level_BC3_with_<Fact-612>
Entering_level_tW3_with_<Fact-614>
t-whip[3]: X8{B Y} - X10{Y R} - X11{R .} ==> X12 ≠ B
biv-chain[2]: X12{R Y} - X18{Y R} ==> X11 ≠ R, X19 ≠ R
biv-chain[2]: X11{Y B} - X8{B Y} ==> X10 ≠ Y, X12 ≠ Y
single ==> X12 = R
single ==> X15 = B
single ==> X18 = Y
single ==> X11 = B
single ==> X8 = Y
single ==> X19 = G
single ==> X10 = R
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[3]
X1 = R
X2 = G
X3 = G
X4 = Y
X5 = R
X6 = G
X7 = Y
X8 = Y
X9 = B
X10 = R
X11 = B
X12 = R
X13 = G
X14 = G
X15 = B
X16 = Y
X17 = B
X18 = Y
X19 = G
X20 = G
Puzzle :
init-time = 0.01s, solve time = 0.0s, total-time = 0.01s
nb-facts=<Fact-650>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"RGGYRGYYBRBRGGBYBYGG"
