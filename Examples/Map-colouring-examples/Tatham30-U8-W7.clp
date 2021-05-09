


(solve 4 30
"Y.B.R..YG.B.......R.R....R.BRG"
1 2 9 11 :
2 3 9 :
3 4 9 15 :
4 5 6 12 15 17 18 :
6 7 12 13 :
7 8 10 13 14 16 :
8 10 :
9 11 15 :
10 14 16 21 :
11 15 17 23 24 :
12 13  18 19 20 :
13 16 19 20 22 :
14 16 :
15 17 :
16 21 :
17 18 20 23 :
18 20 :
19 20 :
20 22 23 25 :
21 22 25 28 :
22 25 :
23 24 25 26 27 29 :
24 26 27 :
25 29 :
26 27 :
27 30 :
28 29 :
)

***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
12 givens and 72 candidates
entering BRT
single ==> X2 = R
Starting_init_links_with_<Fact-786>

Resolution state after Singles:
49 candidates, 48 csp-links and 129 links. Density = 10.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1143>
Entering_relation_bivalue_with_<Fact-1144>
Entering_level_BC2_with_<Fact-1157>
biv-chain[2]: X23{Y G} - X24{G Y} ==> X27 ≠ Y
single ==> X27 = B
Entering_level_tW2_with_<Fact-1168>
Entering_level_W2_with_<Fact-1197>
Entering_level_BC3_with_<Fact-1198>
Entering_level_tW3_with_<Fact-1200>
t-whip[3]: X4{G Y} - X15{Y R} - X17{R .} ==> X18 ≠ G
Entering_level_W3_with_<Fact-1238>
Entering_level_BC4_with_<Fact-1239>
Entering_level_tW4_with_<Fact-1241>
Entering_level_W4_with_<Fact-1266>
Entering_level_BC5_with_<Fact-1267>
Entering_level_tW5_with_<Fact-1269>
Entering_level_W5_with_<Fact-1289>
Entering_level_BC6_with_<Fact-1290>
Entering_level_tW6_with_<Fact-1292>
t-whip[6]: X4{G Y} - X15{Y R} - X17{R G} - X23{G Y} - X20{Y B} - X12{B .} ==> X6 ≠ G
Entering_level_W6_with_<Fact-1326>
whip[6]: X4{Y G} - X12{G B} - X13{B G} - X20{G Y} - X17{Y R} - X18{R .} ==> X6 ≠ Y
whip[6]: X23{Y G} - X17{G R} - X15{R Y} - X4{Y G} - X12{G B} - X18{B .} ==> X20 ≠ Y
t-whip[3]: X20{B G} - X23{G Y} - X25{Y .} ==> X22 ≠ B
t-whip[3]: X20{B G} - X22{G Y} - X13{Y .} ==> X12 ≠ B
biv-chain[2]: X4{Y G} - X12{G Y} ==> X18 ≠ Y
Entering_level_BC7_with_<Fact-1571>
Entering_level_tW7_with_<Fact-1573>
t-whip[7]: X23{Y G} - X20{G B} - X25{B Y} - X22{Y G} - X13{G Y} - X12{Y G} - X4{G .} ==> X17 ≠ Y
biv-chain[3]: X17{G R} - X18{R B} - X20{B G} ==> X23 ≠ G
single ==> X23 = Y
single ==> X24 = G
biv-chain[2]: X25{G B} - X20{B G} ==> X22 ≠ G
single ==> X22 = Y
biv-chain[2]: X13{G B} - X20{B G} ==> X12 ≠ G
single ==> X12 = Y
single ==> X4 = G
single ==> X17 = R
single ==> X15 = Y
single ==> X18 = B
single ==> X20 = G
single ==> X13 = B
single ==> X6 = R
single ==> X7 = G
single ==> X10 = B
single ==> X16 = Y
single ==> X14 = R
single ==> X25 = B
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = tW[7]
X1 = Y
X2 = R
X3 = B
X4 = G
X5 = R
X6 = R
X7 = G
X8 = Y
X9 = G
X10 = B
X11 = B
X12 = Y
X13 = B
X14 = R
X15 = Y
X16 = Y
X17 = R
X18 = B
X19 = R
X20 = G
X21 = R
X22 = Y
X23 = Y
X24 = G
X25 = B
X26 = R
X27 = B
X28 = B
X29 = R
X30 = G
Puzzle :
init-time = 0.01s, solve time = 0.02s, total-time = 0.03s
nb-facts=<Fact-1653>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

"YRBGRRGYGBBYBRYYRBRGRYYGBRBBRG"
