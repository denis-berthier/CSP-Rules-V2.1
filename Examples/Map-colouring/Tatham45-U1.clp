

(solve 4 45
"R..YB.RY.GB.....Y...R..R.B...........Y.YBRBGB"
1 2 9 11 :
2 3 11 12 :
3 4 5 6 14 :
4 5 :
5 6 :
6 7 10 14 15 18 :
7 8 10 :
8 10 :
9 11 13 :
10 15 16 :
11 12 13 19 22 :
12 14 19 20 23 24 :
13 21 22 :
14 17 18 20 :
15 16 18 25 26 29 :
16 26 :
17 18 20 27 :
18 25 27 :
19 22 23 :
20 24 27 30 :
21 22 36 :
22 23 32 36 :
23 24 30 32 34 :
24 30 :
25 27 28 31 33 :
26 29 39 40 :
27 30 31 33 :
28 29 33 35 :
29 35 38 39 :
30 33 34 37 :
31 33 :
32 34 41 44 :
33 35 37 :
34 37 :
35 37 38 39 42 :
36 41 :
37 42 45 :
38 39 :
39 40 43 :
40 43 :
41 44 :
42 44 45 :
44 45 :
)





***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
18 givens and 108 candidates
entering BRT
single ==> X6 = Y
single ==> X15 = R
single ==> X16 = Y
single ==> X29 = G
single ==> X35 = B
single ==> X39 = R
Starting_init_links_with_<Fact-1208>

Resolution state after Singles:
59 candidates, 45 csp-links and 121 links. Density = 7.07%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-1543>
Entering_relation_bivalue_with_<Fact-1544>
Entering_level_BC2_with_<Fact-1569>
Entering_level_tW2_with_<Fact-1593>
Entering_level_W2_with_<Fact-1651>
Entering_level_BC3_with_<Fact-1652>
Entering_level_tW3_with_<Fact-1670>
Entering_level_W3_with_<Fact-1734>
Entering_level_BC4_with_<Fact-1735>
Entering_level_tW4_with_<Fact-1745>
Entering_level_W4_with_<Fact-1793>
whip[4]: X18{G B} - X25{B Y} - X28{Y R} - X33{R .} ==> X27 ≠ G
t-whip[4]: X27{R B} - X18{B G} - X25{G Y} - X28{Y .} ==> X33 ≠ R
biv-chain[2]: X33{G Y} - X37{Y G} ==> X30 ≠ G
biv-chain[2]: X37{Y G} - X33{G Y} ==> X30 ≠ Y
single ==> X30 = B
single ==> X20 = G
single ==> X12 = Y
single ==> X2 = G
single ==> X3 = R
single ==> X14 = B
single ==> X18 = G
single ==> X23 = G
single ==> X19 = R
single ==> X22 = Y
single ==> X13 = G
single ==> X9 = Y
single ==> X32 = R
single ==> X34 = Y
single ==> X37 = G
single ==> X33 = Y
single ==> X25 = B
single ==> X28 = R
single ==> X36 = G
single ==> X27 = R
single ==> X31 = G
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[4]
X1 = R
X2 = G
X3 = R
X4 = Y
X5 = B
X6 = Y
X7 = R
X8 = Y
X9 = Y
X10 = G
X11 = B
X12 = Y
X13 = G
X14 = B
X15 = R
X16 = Y
X17 = Y
X18 = G
X19 = R
X20 = G
X21 = R
X22 = Y
X23 = G
X24 = R
X25 = B
X26 = B
X27 = R
X28 = R
X29 = G
X30 = B
X31 = G
X32 = R
X33 = Y
X34 = Y
X35 = B
X36 = G
X37 = G
X38 = Y
X39 = R
X40 = Y
X41 = B
X42 = R
X43 = B
X44 = G
X45 = B
Puzzle :
init-time = 0.02s, solve time = 0.02s, total-time = 0.04s
nb-facts=<Fact-1860>
***********************************************************************************************
***  MapRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
