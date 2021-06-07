
https://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/map.html#20x15n30:canadceabbeafbcaaabacddbccbadiaaaababbaaabdbaccalaaabbaaacbbcbaadbcbbabbbaaddabcadnbaaebgbbalababadcgbabhadbeaadaahadbaefabahdbaabibgccboaiccacbbbdaacaenbcaabaacabacabbcaaafacbaaaecafbccbebaaaadabcbbahbbaf,3a2c1132c0a10b1e32c


(solve 4 30
"B.G...YYBG...R.YR..Y.....BG..."
1 2 8 11 :
2 3 4 8 12 16  :
3 4 9 :
4 5 10 13 17 :
5 6 7 10 13 :
6 7 13 14 18 19 :
8 12 :
10 13 17 :
11 12 15 20 22 :
12 15 :
13 17 19 :
14 18 :
15 16 20 23 :
16 17 23 :
17 19 21 23 24 25 :
18 19 21 :
19 21 :
20 22 23 :
21 25 27 28 :
22 23 26 :
23 24 26 :
24 25 29 30 :
25 27 29 :
27 28 29 30 :
28 30 :
29 30 :
)


***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
12 givens and 72 candidates
entering BRT
single ==> X23 = G
single ==> X22 = R
single ==> X11 = G
single ==> X2 = R
single ==> X12 = B
single ==> X15 = R
Starting_init_links_with_<Fact-791>

Resolution state after Singles:
35 candidates, 22 csp-links and 59 links. Density = 9.92%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-956>
Entering_relation_bivalue_with_<Fact-957>
Entering_level_BC2_with_<Fact-972>
biv-chain[2]: X4{B Y} - X13{Y B} ==> X5 ≠ B
single ==> X5 = R
biv-chain[2]: X24{B Y} - X25{Y B} ==> X29 ≠ B
biv-chain[2]: X24{Y B} - X25{B Y} ==> X29 ≠ Y
single ==> X29 = R
Entering_level_tW2_with_<Fact-1008>
Entering_level_W2_with_<Fact-1041>
Entering_level_BC3_with_<Fact-1042>
Entering_level_tW3_with_<Fact-1054>
t-whip[3]: X6{G B} - X13{B Y} - X19{Y .} ==> X18 ≠ G
biv-chain[2]: X18{Y B} - X21{B Y} ==> X19 ≠ Y
biv-chain[2]: X6{B G} - X19{G B} ==> X13 ≠ B, X18 ≠ B
single ==> X18 = Y
single ==> X21 = B
single ==> X19 = G
single ==> X6 = B
single ==> X25 = Y
single ==> X24 = B
single ==> X30 = Y
single ==> X28 = R
single ==> X13 = Y
single ==> X4 = B
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[3]
X1 = B
X2 = R
X3 = G
X4 = B
X5 = R
X6 = B
X7 = Y
X8 = Y
X9 = B
X10 = G
X11 = G
X12 = B
X13 = Y
X14 = R
X15 = R
X16 = Y
X17 = R
X18 = Y
X19 = G
X20 = Y
X21 = B
X22 = R
X23 = G
X24 = B
X25 = Y
X26 = B
X27 = G
X28 = R
X29 = R
X30 = Y
Puzzle :
init-time = 0.01s, solve time = 0.01s, total-time = 0.02s
nb-facts=<Fact-1113>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"BRGBRBYYBGGBYRRYRYGYBRGBYBGRRY"
