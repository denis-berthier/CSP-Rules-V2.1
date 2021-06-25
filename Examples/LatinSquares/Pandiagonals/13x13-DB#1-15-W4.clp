1234567..A.CD.......ACD9.B.B........CD...8......................8........................................................................................................ # A


1 2 3 4 5 6 7 . . A . C D 
. . . . . . . A C D 9 . B 
. B . . . . . . . . C D . 
. . 8 . . . . . . . . . . 
. . . . . . . . . . . . 8 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 
. . . . . . . . . . . . . 

(Generated from an acyclic grid)

(solve "1234567..A.CD.......ACD9.B.B........CD...8......................8........................................................................................................ # A")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1234567..A.CD.......ACD9.B.B........CD...8......................8........................................................................................................ # A
20 givens, 1222 candidates
entering BRT
Starting_init_links_with_<Fact-13316>
Resolution state after Singles:
1           2           3           4           5           6           7           89B         9B          A           8B          C           D           
34567       45678       1567        12678       1237        12348       123458      A           C           D           9           12345678    B           
2456789A    B           24679A      13579A      124689A     1235789A    1234689     12345789    12345689    12345678    C           D           1345679A    
235679ACD   134679AD    8           23569ABCD   134679ABCD  124579BCD   123569BD    1234679BC   123457ABD   1234569B    234567A     1345679AB   124567C     
23467BC     134579ACD   124569AD    1235679AC   234679BCD   134579BD    124569ABC   123567BD    1234679AB   234579C     13456BD     1245679AB   8           
234579AB    134568C     1245679ABCD 12356789D   1234679     2345789ABC  134568ABD   12456789B   2356789A    1346789BC   124578ABD   123569      1234679A    
2345689ABD  1345679A    124567BC    12356789BD  12346789A   123457A     2345689AB   3456789C    1456789ABD  1256789BC   12367AD     1234789AB   123459C     
2345689BCD  13456789D   1245679B    1235678BC   1234678ABD  12345789A   234569AC    3456789BCD  1456789ABD  125679C     123678ABD   123479AB    123459AC    
2345789BCD  1345689D    1245679AB   123567AB    1234678B    2345789AC   1345689AD   1245679C    235679AD    1346789BC   12457ABD    1235689AB   1234679AC   
2346789BD   1345789AC   12456BD     12356789AB  234679A     134578BC    1245689ABCD 1235679D    1234679A    234579BC    134568ABD   12456789AB  1235679C    
2356789ABC  134678AD    124579AB    235689C     1346789ABD  124579AB    12356C      12346789BCD 1234579AD   1234569C    2345678ABD  13456789B   1245679     
245678ABD   1356789A    24679AC     135789ABCD  124689BCD   123579AD    123469AB    123457BC    12345689ABD 123456789   1234567     23456789B   1345679AC   
3456789AB   456789AC    15679ABCD   126789ABCD  12379ACD    123489BCD   123459ABD   1234569B    12345678B   123456789BC 12345678D   12345679A   234567A     

1222 candidates, 23160 csp-links and 23160 links. Density = 3.1%
Starting non trivial part of solution.
Entering_level_W1_with_<Fact-105959>
whip[1]: r1n8{c11 .} ==> r11c8 ≠ 8, r11c11 ≠ 8
whip[1]: r1n9{c9 .} ==> r8c2 ≠ 9, r7c2 ≠ 9, r13c8 ≠ 9

Resolution state after Singles and whips[1]:
1           2           3           4           5           6           7           89B         9B          A           8B          C           D           
34567       45678       1567        12678       1237        12348       123458      A           C           D           9           12345678    B           
2456789A    B           24679A      13579A      124689A     1235789A    1234689     12345789    12345689    12345678    C           D           1345679A    
235679ACD   134679AD    8           23569ABCD   134679ABCD  124579BCD   123569BD    1234679BC   123457ABD   1234569B    234567A     1345679AB   124567C     
23467BC     134579ACD   124569AD    1235679AC   234679BCD   134579BD    124569ABC   123567BD    1234679AB   234579C     13456BD     1245679AB   8           
234579AB    134568C     1245679ABCD 12356789D   1234679     2345789ABC  134568ABD   12456789B   2356789A    1346789BC   124578ABD   123569      1234679A    
2345689ABD  134567A     124567BC    12356789BD  12346789A   123457A     2345689AB   3456789C    1456789ABD  1256789BC   12367AD     1234789AB   123459C     
2345689BCD  1345678D    1245679B    1235678BC   1234678ABD  12345789A   234569AC    3456789BCD  1456789ABD  125679C     123678ABD   123479AB    123459AC    
2345789BCD  1345689D    1245679AB   123567AB    1234678B    2345789AC   1345689AD   1245679C    235679AD    1346789BC   12457ABD    1235689AB   1234679AC   
2346789BD   1345789AC   12456BD     12356789AB  234679A     134578BC    1245689ABCD 1235679D    1234679A    234579BC    134568ABD   12456789AB  1235679C    
2356789ABC  134678AD    124579AB    235689C     1346789ABD  124579AB    12356C      1234679BCD  1234579AD   1234569C    234567ABD   13456789B   1245679     
245678ABD   1356789A    24679AC     135789ABCD  124689BCD   123579AD    123469AB    123457BC    12345689ABD 123456789   1234567     23456789B   1345679AC   
3456789AB   456789AC    15679ABCD   126789ABCD  12379ACD    123489BCD   123459ABD   123456B     12345678B   123456789BC 12345678D   12345679A   234567A     

1217 candidates.

Entering_relation_bivalue_with_<Fact-105964>
Entering_level_S2_with_<Fact-105973>
Entering_level_BC2_with_<Fact-105976>
Entering_level_Z2_with_<Fact-105981>
z-chain[2]: a3n12{r13c2 r5c7} - d4n12{r11c7 .} ==> r13c10 ≠ 12
z-chain[2]: a4n13{r13c3 r5c8} - d5n13{r11c8 .} ==> r13c11 ≠ 13
Entering_level_tW2_with_<Fact-106204>
Entering_level_W2_with_<Fact-106205>
whip[2]: r7n13{c4 c11} - d3n13{r6c11 .} ==> r12c9 ≠ 13
whip[2]: r12n13{c6 c1} - a5n13{r10c1 .} ==> r13c5 ≠ 13
whip[2]: a6n13{r12c4 r6c11} - a5n13{r7c11 .} ==> r12c1 ≠ 13
whip[1]: r12n13{c6 .} ==> r11c5 ≠ 13
z-chain[2]: a3n13{r9c11 r4c6} - r12n13{c6 .} ==> r5c11 ≠ 13
whip[2]: r7n12{c10 c8} - r9n12{c8 .} ==> r10c13 ≠ 12
t-whip[2]: d5n12{r9c10 r5c1} - d9n12{r9c1 .} ==> r9c6 ≠ 12
t-whip[2]: r10n12{c10 c6} - r6n12{c10 .} ==> r5c2 ≠ 12
z-chain[2]: d6n12{r12c8 r10c10} - d7n12{r11c10 .} ==> r4c13 ≠ 12
t-whip[2]: c3n12{r6 r7} - d6n12{r12c8 .} ==> r6c10 ≠ 12
z-chain[2]: r6n12{c3 c6} - d6n12{r10c10 .} ==> r7c3 ≠ 12
z-chain[2]: r7n12{c13 c10} - a13n12{r9c8 .} ==> r11c4 ≠ 12
z-chain[2]: r7n12{c13 c10} - d6n12{r10c10 .} ==> r12c13 ≠ 12
whip[1]: c13n12{r9 .} ==> r8c1 ≠ 12
z-chain[2]: a2n12{r9c10 r4c5} - a3n12{r4c6 .} ==> r5c10 ≠ 12
z-chain[2]: r12n12{c5 c8} - a7n12{r7c13 .} ==> r13c4 ≠ 12
z-chain[2]: a7n12{r12c5 r13c6} - d2n12{r13c3 .} ==> r12c8 ≠ 12
whip[1]: d6n12{r10c10 .} ==> r7c10 ≠ 12
z-chain[2]: r7n12{c8 c13} - d3n12{r12c5 .} ==> r8c7 ≠ 12
z-chain[2]: a13n12{r9c8 r11c10} - d6n12{r10c10 .} ==> r9c13 ≠ 12
whip[1]: a5n12{r12c3 .} ==> r7c8 ≠ 12
hidden-single-in-a-row ==> r7c13 = 12
whip[1]: r12n12{c4 .} ==> r13c3 ≠ 12
hidden-single-in-an-anti-diagonal ==> r11c1 = 12
hidden-single-in-an-anti-diagonal ==> r12c3 = 12
hidden-single-in-an-anti-diagonal ==> r10c7 = 12
hidden-single-in-an-anti-diagonal ==> r5c4 = 12
hidden-single-in-an-anti-diagonal ==> r8c8 = 12
hidden-single-in-an-anti-diagonal ==> r4c6 = 12
hidden-single-in-a-diagonal ==> r13c5 = 12
hidden-single-in-a-column ==> r9c10 = 12
hidden-single-in-a-diagonal ==> r6c2 = 12
whip[1]: a3n13{r9c11 .} ==> r7c11 ≠ 13, r11c9 ≠ 13, r9c7 ≠ 13, r9c9 ≠ 13
whip[1]: a1n13{r11c11 .} ==> r4c5 ≠ 13
z-chain[2]: c8n13{r10 r11} - d8n13{r11c11 .} ==> r10c3 ≠ 13
z-chain[2]: c3n13{r6 r13} - a3n13{r7c9 .} ==> r5c2 ≠ 13
z-chain[2]: d6n13{r9c11 r13c7} - r12n13{c6 .} ==> r6c11 ≠ 13
z-chain[2]: r6n13{c4 c7} - a5n13{r11c2 .} ==> r7c4 ≠ 13
biv-chain[2]: d6n13{r13c7 r9c11} - r7n13{c9 c1} ==> r8c2 ≠ 13, r12c6 ≠ 13
whip[1]: c6n13{r13 .} ==> r9c2 ≠ 13
whip[1]: c2n13{r11 .} ==> r4c9 ≠ 13, r11c8 ≠ 13
whip[1]: c8n13{r10 .} ==> r5c3 ≠ 13
whip[1]: a11n13{r8c5 .} ==> r8c1 ≠ 13
whip[1]: a7n13{r13c6 .} ==> r13c4 ≠ 13
whip[1]: d3n13{r12c5 .} ==> r8c5 ≠ 13
whip[1]: r8n13{c11 .} ==> r10c11 ≠ 13
whip[1]: r10n13{c8 .} ==> r4c1 ≠ 13
hidden-single-in-an-anti-diagonal ==> r6c3 = 13
hidden-single-in-a-row ==> r11c2 = 13
hidden-single-in-an-anti-diagonal ==> r10c8 = 13
Entering_level_S3_with_<Fact-107632>
Entering_level_BC3_with_<Fact-107655>
Entering_level_Z3_with_<Fact-111152>
Entering_level_tW3_with_<Fact-114141>
t-whip[3]: a1n8{r12c12 r6c6} - r1n8{c11 c8} - a10n8{r13c9 .} ==> r12c2 ≠ 8, r2c12 ≠ 8
t-whip[3]: r2n8{c6 c7} - r1n8{c8 c11} - d5n8{r8c11 .} ==> r13c4 ≠ 8
Entering_level_W3_with_<Fact-117157>
whip[3]: d12n8{r12c1 r6c7} - c8n8{r6 r1} - c9n8{r13 .} ==> r3c5 ≠ 8
whip[3]: r1n8{c11 c8} - d7n8{r7c1 r10c11} - r13n8{c11 .} ==> r9c6 ≠ 8
whip[3]: a10n8{r10c6 r13c9} - d1n8{r13c2 r7c8} - r11n8{c12 .} ==> r10c4 ≠ 8
whip[3]: r1n8{c11 c8} - d13n8{r6c8 r13c1} - d12n8{r12c1 .} ==> r7c5 ≠ 8
whip[3]: d1n8{r13c2 r11c4} - c5n8{r12 r8} - r1n8{c11 .} ==> r6c8 ≠ 8
t-whip[2]: c8n8{r3 r7} - r11n8{c12 .} ==> r3c10 ≠ 8
z-chain[2]: d12n8{r12c1 r6c7} - r11n8{c12 .} ==> r12c5 ≠ 8
z-chain[2]: c5n8{r9 r11} - r1n8{c8 .} ==> r8c4 ≠ 8
z-chain[2]: a10n8{r10c6 r13c9} - d13n8{r13c1 .} ==> r9c7 ≠ 8
t-whip[2]: a8n8{r8c2 r11c5} - a10n8{r10c6 .} ==> r8c1 ≠ 8
whip[2]: c8n8{r3 r7} - c7n8{r7 .} ==> r3c6 ≠ 8
whip[2]: a4n8{r9c12 r6c9} - c4n8{r11 .} ==> r7c12 ≠ 8
t-whip[2]: r11n8{c12 c4} - d5n8{r13c6 .} ==> r8c2 ≠ 8
z-chain[3]: r1n8{c11 c8} - c12n8{r10 r11} - d12n8{r6c7 .} ==> r12c9 ≠ 8
t-whip[2]: r12n8{c12 c4} - r11n8{c5 .} ==> r10c12 ≠ 8
whip[2]: d5n8{r13c6 r2c4} - r12n8{c4 .} ==> r13c11 ≠ 8
z-chain[3]: d7n8{r10c11 r9c12} - a10n8{r9c5 r13c9} - r3n8{c9 .} ==> r10c1 ≠ 8
z-chain[2]: d10n8{r12c12 r9c2} - a3n8{r13c2 .} ==> r12c4 ≠ 8
t-whip[2]: r10n8{c6 c11} - c12n8{r11 .} ==> r6c6 ≠ 8
t-whip[2]: r1n8{c8 c11} - r10n8{c11 .} ==> r11c5 ≠ 8, r13c9 ≠ 8
whip[1]: a10n8{r10c6 .} ==> r8c6 ≠ 8
whip[1]: r11n8{c12 .} ==> r6c4 ≠ 8, r7c8 ≠ 8
whip[1]: c8n8{r3 .} ==> r2c7 ≠ 8
whip[1]: a12n8{r12c10 .} ==> r7c10 ≠ 8, r12c1 ≠ 8
whip[1]: d12n8{r8c5 .} ==> r8c9 ≠ 8
whip[1]: r8n8{c11 .} ==> r1c11 ≠ 8
naked-single ==> r1c11 = 11
naked-single ==> r1c9 = 9
naked-single ==> r1c8 = 8
hidden-single-in-an-anti-diagonal ==> r3c1 = 8
hidden-single-in-a-diagonal ==> r10c2 = 8
hidden-single-in-an-anti-diagonal ==> r9c5 = 8
hidden-single-in-an-anti-diagonal ==> r12c12 = 8
hidden-single-in-an-anti-diagonal ==> r13c10 = 8
hidden-single-in-an-anti-diagonal ==> r2c6 = 8
hidden-single-in-an-anti-diagonal ==> r7c9 = 8
hidden-single-in-an-anti-diagonal ==> r8c11 = 8
hidden-single-in-an-anti-diagonal ==> r4c7 = 13
hidden-single-in-an-anti-diagonal ==> r5c5 = 13
hidden-single-in-an-anti-diagonal ==> r12c4 = 13
hidden-single-in-a-column ==> r7c1 = 13
hidden-single-in-a-row ==> r9c11 = 13
hidden-single-in-an-anti-diagonal ==> r13c6 = 13
hidden-single-in-a-diagonal ==> r8c9 = 13
hidden-single-in-a-diagonal ==> r11c4 = 8
hidden-single-in-a-row ==> r6c7 = 8
whip[1]: r8n11{c12 .} ==> r6c1 ≠ 11, r10c1 ≠ 11
whip[1]: d10n11{r8c3 .} ==> r11c6 ≠ 11
whip[1]: c6n11{r10 .} ==> r5c1 ≠ 11
whip[1]: d5n11{r12c7 .} ==> r7c7 ≠ 11, r4c12 ≠ 11
whip[1]: c7n11{r13 .} ==> r12c8 ≠ 11, r13c8 ≠ 11
whip[1]: c8n11{r6 .} ==> r5c9 ≠ 11, r12c1 ≠ 11
whip[1]: a3n11{r10c12 .} ==> r10c4 ≠ 11
whip[1]: c9n11{r13 .} ==> r4c5 ≠ 11
whip[1]: c5n11{r12 .} ==> r5c12 ≠ 11
whip[1]: a8n11{r13c7 .} ==> r13c3 ≠ 11
whip[1]: d7n11{r9c12 .} ==> r9c4 ≠ 11
whip[1]: r9n11{c12 .} ==> r7c12 ≠ 11, r11c12 ≠ 11
hidden-single-in-a-diagonal ==> r12c7 = 11
hidden-single-in-a-diagonal ==> r5c6 = 11
hidden-single-in-a-column ==> r6c8 = 11
hidden-single-in-a-diagonal ==> r11c5 = 11
whip[2]: c1n9{r13 r10} - c4n9{r7 .} ==> r4c5 ≠ 9
whip[3]: d4n10{r12c6 r9c9} - r10n10{c9 c12} - d5n10{r7c12 .} ==> r4c11 ≠ 10
whip[3]: d4n10{r12c6 r7c11} - d3n10{r13c4 r5c12} - c7n10{r13 .} ==> r9c6 ≠ 10
whip[3]: d2n9{r9c7 r13c3} - c1n9{r13 r4} - c2n9{r5 .} ==> r9c13 ≠ 9
z-chain[3]: d4n9{r8c10 r12c6} - d8n9{r3c6 r10c12} - c1n9{r10 .} ==> r4c10 ≠ 9
t-whip[2]: r11n9{c13 c8} - r4n9{c8 .} ==> r8c13 ≠ 9
whip[3]: a6n9{r11c3 r5c10} - d7n9{r11c10 r9c12} - c2n9{r12 .} ==> r3c3 ≠ 9
whip[3]: d8n9{r12c10 r10c12} - a1n9{r10c10 r4c4} - d4n9{r4c1 .} ==> r8c6 ≠ 9
whip[3]: r8n9{c12 c7} - c6n9{r9 r3} - d2n9{r13c3 .} ==> r6c12 ≠ 9
t-whip[2]: a7n9{r12c5 r8c1} - d4n9{r8c10 .} ==> r12c2 ≠ 9
t-whip[2]: d4n9{r12c6 r8c10} - d8n9{r12c10 .} ==> r9c6 ≠ 9
whip[2]: d13n9{r13c1 r11c3} - r5n9{c3 .} ==> r13c7 ≠ 9
z-chain[3]: a6n9{r11c3 r5c10} - d4n9{r8c10 r12c6} - c13n9{r12 .} ==> r11c8 ≠ 9
z-chain[2]: d5n9{r7c12 r6c13} - r12n9{c6 .} ==> r7c5 ≠ 9
whip[2]: d5n9{r7c12 r4c2} - r9n9{c2 .} ==> r5c12 ≠ 9
t-whip[2]: r5n9{c10 c3} - r11n9{c10 .} ==> r13c2 ≠ 9
z-chain[2]: d1n9{r7c8 r8c7} - r11n9{c10 .} ==> r3c8 ≠ 9
z-chain[2]: a6n9{r11c3 r7c12} - d1n9{r7c8 .} ==> r11c10 ≠ 9
z-chain[2]: r11n9{c3 c13} - c2n9{r9 .} ==> r5c3 ≠ 9
z-chain[2]: r11n9{c13 c3} - a8n9{r10c4 .} ==> r12c13 ≠ 9
z-chain[2]: a2n9{r7c8 r13c1} - r11n9{c3 .} ==> r7c4 ≠ 9
t-whip[2]: a12n9{r12c10 r4c2} - a11n9{r5c2 .} ==> r6c10 ≠ 9
z-chain[2]: d2n9{r13c3 r3c13} - r11n9{c13 .} ==> r9c3 ≠ 9
whip[1]: c3n9{r13 .} ==> r13c1 ≠ 9
z-chain[2]: a2n9{r7c8 r3c4} - d13n9{r10c4 .} ==> r7c12 ≠ 9
biv-chain[2]: a6n9{r11c3 r5c10} - a2n9{r7c8 r3c4} ==> r10c4 ≠ 9
whip[1]: r10n9{c12 .} ==> r8c12 ≠ 9
whip[1]: a8n9{r12c6 .} ==> r6c6 ≠ 9
whip[1]: r6n9{c13 .} ==> r11c13 ≠ 9
hidden-single-in-a-row ==> r11c3 = 9
whip[1]: d1n9{r8c7 .} ==> r9c8 ≠ 9
whip[1]: a1n9{r10c10 .} ==> r3c4 ≠ 9
hidden-single-in-an-anti-diagonal ==> r7c8 = 9
whip[1]: d11n9{r13c12 .} ==> r10c12 ≠ 9
whip[1]: a4n9{r9c12 .} ==> r3c5 ≠ 9
whip[1]: c5n9{r12 .} ==> r9c2 ≠ 9
whip[1]: a7n9{r12c5 .} ==> r12c10 ≠ 9
whip[1]: c2n9{r5 .} ==> r4c1 ≠ 9
hidden-pairs-in-a-diagonal: d7{n9 n11}{a1 a4} ==> d7a4 ≠ 10, d7a4 ≠ 6, d7a4 ≠ 5, d7a4 ≠ 3, d7a4 ≠ 2, d7a4 ≠ 1, d7a1 ≠ 10, d7a1 ≠ 6, d7a1 ≠ 5, d7a1 ≠ 3, d7a1 ≠ 2
hidden-pairs-in-a-column: c4{n9 n11}{r4 r13} ==> r13c4 ≠ 10, r13c4 ≠ 7, r13c4 ≠ 6, r13c4 ≠ 2, r13c4 ≠ 1
hidden-pairs-in-an-anti-diagonal: a1{n9 n11}{d6 d7} ==> d6a1 ≠ 7, d6a1 ≠ 5, d6a1 ≠ 4, d6a1 ≠ 3, d6a1 ≠ 2
z-chain[2]: d3n10{r11c6 r5c12} - c4n10{r10 .} ==> r6c1 ≠ 10
t-whip[2]: c1n10{r12 r13} - c4n10{r10 .} ==> r8c5 ≠ 10, r4c9 ≠ 10
whip[1]: a6n10{r8c13 .} ==> r6c13 ≠ 10
z-chain[2]: c5n10{r10 r7} - a6n10{r7c12 .} ==> r10c11 ≠ 10
z-chain[2]: c11n10{r7 r11} - d3n10{r11c6 .} ==> r7c12 ≠ 10
z-chain[2]: a6n10{r8c13 r6c11} - r11n10{c11 .} ==> r8c6 ≠ 10
z-chain[2]: a6n10{r8c13 r6c11} - d4n10{r7c11 .} ==> r12c9 ≠ 10
z-chain[2]: r11n10{c11 c6} - c11n10{r6 .} ==> r9c9 ≠ 10
t-whip[2]: a11n10{r5c2 r3c13} - d7n10{r8c13 .} ==> r4c2 ≠ 10
z-chain[2]: d5n10{r3c3 r10c9} - r11n10{c9 .} ==> r3c6 ≠ 10
whip[1]: a4n10{r13c3 .} ==> r13c2 ≠ 10
whip[1]: d1n10{r10c5 .} ==> r10c9 ≠ 10
hidden-single-in-a-diagonal ==> r3c3 = 10
hidden-single-in-a-diagonal ==> r8c13 = 10
hidden-single-in-a-column ==> r7c11 = 10
hidden-single-in-an-anti-diagonal ==> r5c2 = 10
hidden-single-in-an-anti-diagonal ==> r3c13 = 9
hidden-single-in-an-anti-diagonal ==> r9c12 = 9
naked-single ==> r4c4 = 11
naked-single ==> r10c10 = 9
naked-single ==> r13c4 = 9
hidden-single-in-an-anti-diagonal ==> r8c1 = 9
hidden-single-in-an-anti-diagonal ==> r10c3 = 11
hidden-single-in-an-anti-diagonal ==> r13c9 = 11
hidden-single-in-a-diagonal ==> r9c1 = 11
hidden-single-in-a-row ==> r7c10 = 11
hidden-single-in-a-row ==> r8c12 = 11
hidden-single-in-a-column ==> r6c5 = 9
hidden-single-in-a-row ==> r12c6 = 9
hidden-single-in-an-anti-diagonal ==> r5c7 = 9
hidden-single-in-a-row ==> r4c2 = 9
hidden-single-in-a-diagonal ==> r13c12 = 10
hidden-single-in-a-diagonal ==> r9c7 = 10
hidden-single-in-a-diagonal ==> r12c1 = 10
hidden-single-in-a-column ==> r10c4 = 10
hidden-single-in-an-anti-diagonal ==> r11c6 = 10
hidden-single-in-a-diagonal ==> r6c9 = 10
hidden-single-in-a-column ==> r4c5 = 10
whip[3]: c1n5{r13 r6} - c4n5{r3 r8} - c7n5{r11 .} ==> r2c12 ≠ 5
whip[3]: d7n3{r13c8 r10c11} - d10n3{r13c11 r9c2} - d4n3{r6c12 .} ==> r11c8 ≠ 3
whip[3]: d7n3{r12c9 r13c8} - a2n3{r10c11 r3c4} - a4n3{r2c5 .} ==> r12c11 ≠ 3
Entering_level_BC4_with_<Fact-132128>
Entering_level_Z4_with_<Fact-132129>
Entering_level_tW4_with_<Fact-132139>
Entering_level_W4_with_<Fact-132203>
whip[4]: r2n2{c12 c5} - r10n2{c13 c1} - a3n2{r10c12 r8c10} - d13n2{r4c10 .} ==> r7c12 ≠ 2
whip[4]: r2n4{c12 c1} - c6n4{r10 r9} - d5n4{r11c8 r6c13} - c2n4{r8 .} ==> r7c7 ≠ 4
whip[4]: d6n4{r13c7 r11c9} - a3n4{r11c13 r10c12} - d13n4{r2c12 r4c10} - d10n4{r9c2 .} ==> r13c8 ≠ 4
whip[4]: a1n4{r11c11 r13c13} - a2n4{r12c13 r11c12} - c7n4{r3 r8} - r2n4{c7 .} ==> r6c11 ≠ 4
whip[3]: c3n4{r9 r5} - c11n4{r13 r11} - c7n4{r2 .} ==> r8c2 ≠ 4
whip[3]: a3n4{r13c2 r11c13} - r8n4{c3 c6} - a2n4{r13c1 .} ==> r10c5 ≠ 4
whip[3]: r8n4{c7 c3} - r9n4{c3 c13} - r6n4{c13 .} ==> r7c6 ≠ 4
whip[4]: a2n4{r12c13 r13c1} - c7n4{r13 r2} - d1n4{r8c7 r9c6} - a1n4{r6c6 .} ==> r12c11 ≠ 4
whip[4]: c5n4{r12 r8} - c6n4{r9 r10} - d9n4{r7c3 r11c12} - d13n4{r2c12 .} ==> r3c9 ≠ 4
whip[4]: c5n4{r12 r7} - c3n4{r5 r8} - d6n4{r6c1 r13c7} - r3n4{c10 .} ==> r12c9 ≠ 4
whip[3]: d9n4{r11c12 r3c7} - c9n4{r5 r11} - d8n4{r12c10 .} ==> r7c12 ≠ 4
t-whip[2]: r12n4{c13 c10} - r7n4{c5 .} ==> r4c13 ≠ 4
whip[3]: d3n4{r12c5 r5c12} - d1n4{r4c11 r8c7} - r2n4{c7 .} ==> r9c2 ≠ 4
t-whip[3]: r9n4{c13 c6} - r8n4{c7 c3} - r7n4{c3 .} ==> r4c8 ≠ 4
z-chain[3]: r4n4{c11 c12} - c2n4{r7 r2} - a7n4{r12c5 .} ==> r5c10 ≠ 4
t-whip[3]: d1n4{r13c2 r9c6} - r8n4{c7 c3} - c8n4{r3 .} ==> r13c7 ≠ 4
z-chain[3]: d6n4{r12c8 r6c1} - d11n4{r6c6 r9c3} - r7n4{c3 .} ==> r12c10 ≠ 4
t-whip[3]: c7n4{r8 r3} - a6n4{r3c8 r4c9} - c10n4{r4 .} ==> r2c1 ≠ 4
t-whip[2]: a11n4{r9c6 r11c8} - a13n4{r11c10 .} ==> r8c6 ≠ 4
z-chain[3]: r4n4{c11 c12} - r8n4{c3 c7} - a6n4{r2c7 .} ==> r3c10 ≠ 4
z-chain[2]: r3n4{c8 c5} - c2n4{r13 .} ==> r2c7 ≠ 4
whip[1]: r2n4{c12 .} ==> r5c12 ≠ 4
biv-chain[2]: a6n4{r4c9 r3c8} - c7n4{r3 r8} ==> r4c11 ≠ 4, r10c9 ≠ 4, r8c5 ≠ 4
whip[1]: a8n4{r9c3 .} ==> r6c6 ≠ 4, r12c13 ≠ 4, r9c13 ≠ 4
whip[1]: r12n4{c8 .} ==> r9c8 ≠ 4
whip[1]: d11n4{r9c3 .} ==> r5c3 ≠ 4, r7c3 ≠ 4
biv-chain[2]: r7n4{c2 c5} - a8n4{r9c3 r6c13} ==> r6c1 ≠ 4
whip[1]: c1n4{r13 .} ==> r5c9 ≠ 4
whip[1]: r5n4{c11 .} ==> r10c6 ≠ 4
hidden-single-in-a-column ==> r9c6 = 4
hidden-single-in-a-row ==> r2c2 = 4
hidden-single-in-a-diagonal ==> r10c12 = 4
hidden-single-in-a-diagonal ==> r11c10 = 4
hidden-single-in-an-anti-diagonal ==> r5c11 = 4
hidden-single-in-an-anti-diagonal ==> r12c8 = 4
hidden-single-in-an-anti-diagonal ==> r4c9 = 4
hidden-single-in-a-diagonal ==> r8c3 = 4
hidden-single-in-a-row ==> r3c7 = 4
hidden-single-in-a-diagonal ==> r6c13 = 4
hidden-single-in-a-column ==> r13c1 = 4
hidden-single-in-an-anti-diagonal ==> r7c5 = 4
whip[1]: c1n5{r6 .} ==> r4c12 ≠ 5
z-chain[2]: d2n3{r10c6 r4c12} - d5n3{r7c12 .} ==> r10c1 ≠ 3
z-chain[2]: d6n5{r11c9 r13c7} - c12n5{r5 .} ==> r6c4 ≠ 5
z-chain[2]: a2n6{r12c13 r2c3} - a12n6{r5c3 .} ==> r12c11 ≠ 6
t-whip[2]: a7n3{r9c2 r4c10} - a5n3{r6c10 .} ==> r9c9 ≠ 3
whip[1]: r9n3{c13 .} ==> r7c2 ≠ 3
z-chain[2]: d4n3{r6c12 r11c7} - d2n3{r10c6 .} ==> r6c1 ≠ 3
z-chain[2]: c1n3{r4 r5} - d4n3{r11c7 .} ==> r4c12 ≠ 3
z-chain[2]: d2n3{r10c6 r6c10} - d4n3{r6c12 .} ==> r5c1 ≠ 3
whip[1]: d5n3{r10c9 .} ==> r7c6 ≠ 3
whip[1]: r7n3{c12 .} ==> r2c12 ≠ 3
biv-chain[2]: c1n3{r4 r2} - d5n3{r10c9 r7c12} ==> r6c12 ≠ 3, r7c4 ≠ 3
whip[1]: r7n3{c12 .} ==> r2c7 ≠ 3
biv-chain[2]: d4n3{r11c7 r4c1} - r2n3{c1 c5} ==> r11c9 ≠ 3, r13c7 ≠ 3
whip[1]: d6n3{r3c4 .} ==> r3c6 ≠ 3
whip[1]: c6n3{r10 .} ==> r8c4 ≠ 3
biv-chain[2]: a10n3{r11c7 r10c6} - d5n3{r10c9 r7c12} ==> r11c12 ≠ 3, r7c7 ≠ 3
hidden-single-in-a-row ==> r7c12 = 3
whip[1]: r5n3{c9 .} ==> r4c8 ≠ 3, r12c2 ≠ 3
whip[1]: c8n3{r13 .} ==> r9c4 ≠ 3, r13c13 ≠ 3
whip[1]: r13n3{c11 .} ==> r10c11 ≠ 3
whip[1]: a2n3{r12c13 .} ==> r3c9 ≠ 3
biv-chain[2]: a1n3{r6c6 r11c11} - c7n3{r11 r8} ==> r8c6 ≠ 3
whip[1]: c6n3{r10 .} ==> r6c10 ≠ 3
z-chain[2]: a6n7{r6c11 r3c8} - d3n7{r9c8 .} ==> r4c11 ≠ 7
z-chain[2]: a6n1{r6c11 r2c7} - d5n1{r2c4 .} ==> r9c8 ≠ 1
z-chain[2]: d5n1{r11c8 r2c4} - c7n1{r2 .} ==> r11c9 ≠ 1
z-chain[2]: d5n1{r11c8 r2c4} - c5n1{r2 .} ==> r12c9 ≠ 1
t-whip[2]: d7n1{r13c8 r3c5} - d6n1{r3c4 .} ==> r13c11 ≠ 1
t-whip[2]: r9n1{c13 c3} - r13n1{c7 .} ==> r7c2 ≠ 1
z-chain[2]: a9n1{r13c8 r9c4} - d6n1{r3c4 .} ==> r13c3 ≠ 1
z-chain[2]: d2n1{r6c10 r10c6} - d3n1{r4c13 .} ==> r6c12 ≠ 1
z-chain[2]: r6n1{c11 c10} - r10n1{c6 .} ==> r12c11 ≠ 1
whip[1]: a13n1{r10c9 .} ==> r10c6 ≠ 1
whip[1]: d2n1{r6c10 .} ==> r4c10 ≠ 1, r4c8 ≠ 1
whip[1]: r4n1{c13 .} ==> r5c12 ≠ 1
biv-chain[2]: c11n1{r10 r6} - r4n1{c13 c12} ==> r11c12 ≠ 1, r13c8 ≠ 1
hidden-single-in-a-row ==> r13c7 = 1
whip[1]: c2n1{r12 .} ==> r12c5 ≠ 1
whip[1]: c5n1{r8 .} ==> r8c10 ≠ 1
hidden-single-in-a-diagonal ==> r2c3 = 1
hidden-single-in-a-column ==> r4c12 = 1
hidden-single-in-an-anti-diagonal ==> r8c4 = 1
hidden-single-in-an-anti-diagonal ==> r9c2 = 1
hidden-single-in-an-anti-diagonal ==> r6c11 = 1
hidden-single-in-an-anti-diagonal ==> r4c10 = 3
hidden-single-in-an-anti-diagonal ==> r8c2 = 3
hidden-single-in-an-anti-diagonal ==> r13c11 = 3
hidden-single-in-an-anti-diagonal ==> r6c6 = 3
hidden-single-in-an-anti-diagonal ==> r11c7 = 3
hidden-single-in-a-diagonal ==> r2c1 = 3
hidden-single-in-a-row ==> r2c7 = 5
hidden-single-in-an-anti-diagonal ==> r5c8 = 3
hidden-single-in-a-diagonal ==> r7c6 = 1
hidden-single-in-an-anti-diagonal ==> r10c13 = 1
hidden-single-in-a-diagonal ==> r12c10 = 1
hidden-single-in-a-row ==> r3c5 = 1
hidden-single-in-a-diagonal ==> r11c8 = 1
hidden-single-in-a-column ==> r5c9 = 1
hidden-single-in-a-diagonal ==> r3c4 = 3
hidden-single-in-a-column ==> r10c5 = 3
hidden-single-in-a-column ==> r9c13 = 3
hidden-single-in-a-row ==> r12c9 = 3
whip[1]: r12n2{c11 .} ==> r9c8 ≠ 2
whip[1]: a5n2{r10c1 .} ==> r4c1 ≠ 2, r3c8 ≠ 2
naked-single ==> r3c8 = 7
naked-single ==> r3c6 = 2
naked-single ==> r2c5 = 7
naked-single ==> r5c10 = 2
naked-single ==> r8c7 = 6
naked-single ==> r4c11 = 5
naked-single ==> r3c10 = 6
naked-single ==> r3c9 = 5
naked-single ==> r11c9 = 2
naked-single ==> r6c1 = 5
naked-single ==> r10c9 = 7
naked-single ==> r5c1 = 6
naked-single ==> r2c4 = 2
naked-single ==> r2c12 = 6
naked-single ==> r6c12 = 2
naked-single ==> r12c5 = 6
naked-single ==> r12c13 = 7
naked-single ==> r4c13 = 2
naked-single ==> r4c8 = 6
naked-single ==> r13c8 = 2
naked-single ==> r13c13 = 5
naked-single ==> r11c13 = 6
naked-single ==> r11c11 = 7
naked-single ==> r7c2 = 6
naked-single ==> r13c3 = 6
naked-single ==> r9c3 = 2
naked-single ==> r11c12 = 5
naked-single ==> r7c3 = 7
naked-single ==> r6c4 = 6
naked-single ==> r7c4 = 5
naked-single ==> r12c2 = 5
naked-single ==> r8c6 = 7
naked-single ==> r8c10 = 5
naked-single ==> r9c4 = 7
naked-single ==> r4c1 = 7
naked-single ==> r5c3 = 5
naked-single ==> r10c1 = 2
naked-single ==> r9c9 = 6
naked-single ==> r10c6 = 5
naked-single ==> r12c11 = 2
naked-single ==> r5c12 = 7
naked-single ==> r6c10 = 7
naked-single ==> r10c11 = 6
naked-single ==> r13c2 = 7
naked-single ==> r7c7 = 2
naked-single ==> r8c5 = 2
naked-single ==> r9c8 = 5
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[4]
   123456789ABCD
   3412785ACD96B
   8BA3124756CD9
   798BACD643512
   6A5CDB9312478
   5CD6938BA7124
   D67541298BA3C
   9341276CD58BA
   B12784A56CD93
   28BA35CD79641
   CD98BA3124756
   A5CD69B431287
   4769CD12B83A5

nb-facts = <Fact-135778>
Puzzle 1234567..A.CD.......ACD9.B.B........CD...8......................8........................................................................................................ # A :
init-time = 2.46s, solve-time = 1m 20.01s, total-time = 1m 22.48s
nb-facts=<Fact-135778>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

