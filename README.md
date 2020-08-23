# CSP-Rules-V2.1
 
## A general Pattern-Based solver of finite Constraint Satisfaction Problems</b>



## 1. What is CSP-Rules?<br>
A _finite binary Constraint Satisfaction Problems_ (CSP) is defined by a finite set of variables (hereafter called the CSP-Variables), each with a finite domain; the problem is to find a value for each variable in its domain, in such a way that these values satisfy a set of pre-defined binary constraints. A typical popular example is Sudoku.<br>
**_CSP-Rules is a general pattern-based (or rule-based) solver of finite binary CSPs_**. <br>
It includes a Latin Squares solver, a Sudoku solver, a Futoshiki solver, a Kakuro solver, a solver of Map Colouring Problems, a Hidato solver, a Numbrix solver and a Slitherlink solver. <br><br>

## 2. The [PBCS] or CSP-Rules approach to CSP solving<br>
In the CSP-Rules approach, a possible value of a CSP-Variable is called a _candidate_ and a binary constraint is represented by a _direct contradiction link_ (or _link_ for short) between two candidates.<br>
CSP-Rules is inherently associated with the approach to CSP solving defined and largely illustrated in my book “**_Pattern-Based Constraint Satisfaction and Logic Puzzles_**” ([PBCS]). This approach can be traced back, in the particular Sudoku context, to my much older book “**_The Hidden Logic of Sudoku_**” ([HLS]). CSP-Rules is best considered as a companion to [PBCS] and [HLS]. The books develop the theoretical part and the software is the proof that the theories are widely applicable.<br><br>

In the [PBCS] approach, pertaining to the very general “progressive domain restriction” family of CSP solving techniques, the domain of each CSP-Variable is represented by a monotonously decreasing set of candidates and the fundamental concept is that of a **_resolution rule_**, i.e. a rule of the form “pattern => elimination of a candidate” or  (more rarely in practice) “pattern => assertion of a value for a CSP-Variable”.<br>
Here, “pattern” is a clearly defined set of logical conditions, based only on the fixed set of CSP-Variables, the fixed set of links (i.e. of direct binary contradictions) between candidates and on the current situation (i.e. the remaining candidates for each variable). This pattern must be precisely defined so as to imply the conclusion in an otherwise context-independent way (i.e. in a way that does not depend on any CSP-Variable, link, candidate or value not explicitly mentioned in the pattern). Of course, the resolution rule itself must be provable from the CSP axioms.<br><br>

Considering this definition, an implementation in terms of rules of a forward-chaining inference engine seemed relevant (in spite of possible a priori performance issues). Both the oldest and the current implementations of CSP-Rules are therefore based on **_CLIPS_**, the most widely used (and tested) inference engine. CLIPS is written in C, is highly portable, has been public since 1996; it implements the RETE algorithm with drastic performance improvements – and it’s open source and free.<br><br>

**_One essential aspect of the [PBCS] approach is the introduction of additional CSP-Variables_**: the set of CSP-Variables is extended beyond the originally given ones. As a simple illustration of this idea in the Sudoku case, in addition to the “natural” rc CSP-Variables (represented by the cells of the standard Sudoku grid), I introduced (in [HLS1]) new rn, cn and bn variables, represented by the cells of the three additional spaces of my “Extended Sudoku Board” (a copy of which is present in the “Publications” folder of CSP-Rules-V2.1.)<br>
A priori, CSP-Rules deals only with binary constraints, but the applications studied in [PBCS] and included in the CSP-Rules-V2.1 package (namely: solvers for Latin Squares, Sudoku, Futoshiki, Kakuro, Map Colouring, Numbrix, Hidato and Slithering) show that  many types of non-binary constraints can be efficiently transformed into binary ones by adding problem-specific CSP-Variables, thus making them amenable to the CSP-Rules treatment.<br><br>

Patterns in CSP-Rules can take many forms, but the most powerful generic ones are various kinds of chains (bivalue-chains, z-chains, t-whips, whips, g-whips…). **_A chain is defined as a continuous sequence of candidates, where continuity means that each candidate is linked to the previous one_**. In the context of logic games, these chains can be considered as logical abstractions of the universal, spontaneous practice of human solvers wondering “can this candidate be true?” and checking for a possible contradiction implied by such a hypothesis; but they also suggest much more constrained ways of proceeding. In particular, the continuity condition is a very strong guide for a human solver looking for chain patterns. More generally, **_the absence of OR-branching in any of the CSP-Rules chain patterns means that each of them supports a single stream of reasoning_**.<br>
Instead of having zillions of application-specific rules (like e.g. most existing rule-based Sudoku solvers), the resolution backbone of CSP-Rules consists of only a few types of universal rules – though it remains perfectly compatible with the addition of any number of application-specific rules (see the Slitherlink chapter).<br><br>

**_One more essential aspect of the CSP-Rules resolution paradigm is its insistence on using the “simplest-first strategy"_**. Indeed, much of my approach can be considered as a detailed study into possible meanings of “**_simplest-first search_**”. At each step of the resolution process, the simplest available rule is applied. Here, “simplest” is not to be understood as it is generally done in the world of AI, i.e. in an abstract logical way that has never had any real application. Simplest is defined precisely in terms of the patterns making the conditions of the rules. In case of chains, simplicity is easy to define: a chain (of any type) is simpler than another chain (of any type) if it is shorter, where the length of a chain is defined as the number of CSP-Variables its definition involves. For chains of same lengths but of different types, it’s also easy to define their relative simplicity (see chapter 4 of the Basic User Manual). As a result, for each family of rules, an intrinsic rating of the difficulty of instances can be defined and it can often be obtained at the end of a single resolution path. The simplest-first strategy is intimately related to the **_confluence property_** (see [PBCS]).<br><br>


## 3. The contents of CSP-Rules<br>
CSP-Rules consists of a generic part (in the folder “CSP-Rules-Generic”) together with a few application-specific parts aimed at solving some familiar logic puzzles. The application-specific parts are integral members of CSP-Rules. They were chosen in order to illustrate how, by the proper choice of additional CSP-Variables, the generic concepts can be used in so different CSPs as the above-mentioned ones, including some non-binary ones.<br>
The generic part consists of powerful generic resolution rules together with a general mechanism for managing the whole system, including the outputting of solutions in an easy-to-understand, universal notation. The generic part cannot be run alone. It requires an application-specific part to feed it with problem instances in the proper format.<br>
Each application-specific part consists of a specific interfacing with the generic part of CSP-Rules, specific commands for launching the resolution process (they are reviewed in the application-specific chapters in Part II of the Basic User Manual [BUM]), plus a configuration file allowing the user to select general settings and which families of rules he wants to apply. It often also contains application-specific resolution rules.<br><br>



## 4. Example:<br>
For making the above more explicit, consider the following (moderately difficult) Sudoku puzzle (created by "Mith"):<br>

...
. . . 1 3 . . . . <br>
. 1 . . . 4 5 . . <br>
. . 2 . . . . 6 . <br>
1 . . 3 . . . 7 . <br>
2 . . . 5 . . . 8 <br>
. 4 . . . 6 . . 9 <br>
. 5 . . . . 7 . . <br>
. . 6 7 . . . 9 . <br>
. . . . 8 9 . . . <br>
...

Here is how the problem is given to SudoRules (the part of CSP-Rules that deals with the Sudoku CSP):<br>
(solve "...13.....1...45....2....6.1..3...7.2...5...8.4...6..9.5....7....67...9.....89...")<br><br>

And here is how the solution of this puzzle will appear (with variants, depending on which resolution rules have been selected by the user).<br>
Each line starts with the name of a precise pattern, including its size (as described in detail in [PBCS]); the name is followed by the full details of its instantiation and, after a "==>" sign, by the eliminations it allows:<br>
...
217 candidates, 1371 csp-links and 1371 links. Density = 5.85%<br>
whip[1]: r1n6{c2 .} ==> r2c1 ≠ 6<br>
hidden-single-in-a-column ==> r1c1 = 6<br>
naked-pairs-in-a-block: b5{r4c6 r6c4}{n2 n8} ==> r6c5 ≠ 2, r4c5 ≠ 2<br>
hidden-pairs-in-a-block: b1{r1c3 r3c1}{n4 n5} ==> r3c1 ≠ 9, r3c1 ≠ 8, r3c1 ≠ 7, r3c1 ≠ 3, r1c3 ≠ 9, r1c3 ≠ 8, r1c3 ≠ 7<br>
swordfish-in-columns: n5{c1 c4 c8}{r6 r3 r9} ==> r9c9 ≠ 5, r6c3 ≠ 5, r3c6 ≠ 5<br>
z-chain[4]: r3c6{n7 n8} - r4c6{n8 n2} - b2n2{r1c6 r2c4} - r2n6{c4 .} ==> r2c5 ≠ 7<br>
z-chain[5]: r2n6{c4 c5} - b2n2{r2c5 r1c6} - r4c6{n2 n8} - r3c6{n8 n7} - r3c5{n7 .} ==> r2c4 ≠ 9<br>
z-chain[3]: r7n9{c3 c1} - r2n9{c1 c5} - r4n9{c5 .} ==> r5c3 ≠ 9<br>
z-chain[5]: r5c3{n7 n3} - r6c3{n3 n8} - b5n8{r6c4 r4c6} - r3c6{n8 n7} - r5n7{c6 .} ==> r6c1 ≠ 7<br>
z-chain[5]: r2n6{c5 c4} - b2n2{r2c4 r1c6} - r4c6{n2 n8} - r3c6{n8 n7} - r3c5{n7 .} ==> r2c5 ≠ 9<br>
whip[1]: b2n9{r3c5 .} ==> r3c2 ≠ 9, r3c7 ≠ 9<br>
hidden-single-in-a-block ==> r1c7 = 9<br>
whip[1]: c2n9{r5 .} ==> r4c3 ≠ 9<br>
hidden-pairs-in-a-block: b4{r4c2 r5c2}{n6 n9} ==> r5c2 ≠ 7, r5c2 ≠ 3, r4c2 ≠ 8<br>
whip[1]: b4n7{r6c3 .} ==> r2c3 ≠ 7, r9c3 ≠ 7<br>
biv-chain[3]: r1n5{c6 c3} - r4c3{n5 n8} - r4c6{n8 n2} ==> r1c6 ≠ 2<br>
whip[1]: r1n2{c9 .} ==> r2c8 ≠ 2, r2c9 ≠ 2<br>
hidden-pairs-in-a-row: r2{n2 n6}{c4 c5} ==> r2c4 ≠ 8<br>
biv-chain[4]: r3n5{c4 c1} - b4n5{r6c1 r4c3} - r4n8{c3 c6} - c4n8{r6 r3} ==> r3c4 ≠ 9<br>
hidden-single-in-a-block ==> r3c5 = 9<br>
naked-single ==> r4c5 = 4<br>
naked-single ==> r5c4 = 9<br>
naked-single ==> r5c2 = 6<br>
naked-single ==> r4c2 = 9<br>
hidden-single-in-a-column ==> r6c5 = 7<br>
naked-single ==> r5c6 = 1<br>
hidden-single-in-a-row ==> r5c3 = 7<br>
whip[1]: r5n3{c8 .} ==> r6c7 ≠ 3, r6c8 ≠ 3<br>
biv-chain[3]: b6n3{r5c7 r5c8} - r2c8{n3 n8} - b9n8{r7c8 r8c7} ==> r8c7 ≠ 3<br>
biv-chain[3]: c4n4{r7 r9} - c4n5{r9 r3} - r3c1{n5 n4} ==> r7c1 ≠ 4<br>
biv-chain[4]: r3c1{n4 n5} - r6n5{c1 c8} - b6n1{r6c8 r6c7} - b3n1{r3c7 r3c9} ==> r3c9 ≠ 4<br>
finned-x-wing-in-rows: n4{r3 r8}{c1 c7} ==> r9c7 ≠ 4<br>
z-chain[3]: r8n4{c9 c1} - r3n4{c1 c7} - r5n4{c7 .} ==> r9c8 ≠ 4<br>
z-chain[3]: r8n4{c9 c1} - r3n4{c1 c7} - r5n4{c7 .} ==> r7c8 ≠ 4<br>
z-chain[4]: r8n4{c9 c1} - r3c1{n4 n5} - c4n5{r3 r9} - c4n4{r9 .} ==> r7c9 ≠ 4<br>
z-chain[4]: c2n8{r3 r8} - c7n8{r8 r3} - r1n8{c8 c6} - r4n8{c6 .} ==> r2c3 ≠ 8<br>
finned-x-wing-in-rows: n8{r2 r7}{c8 c1} ==> r8c1 ≠ 8<br>
biv-chain[3]: b4n3{r6c1 r6c3} - r2c3{n3 n9} - b7n9{r7c3 r7c1} ==> r7c1 ≠ 3<br>
z-chain[3]: r2n8{c8 c1} - c2n8{r3 r8} - c7n8{r8 .} ==> r1c8 ≠ 8<br>
biv-chain[4]: r1c8{n2 n4} - r1c3{n4 n5} - c1n5{r3 r6} - c8n5{r6 r9} ==> r9c8 ≠ 2<br>
biv-chain[4]: r8c1{n3 n4} - r3c1{n4 n5} - r1n5{c3 c6} - r8n5{c6 c9} ==> r8c9 ≠ 3<br>
z-chain[5]: r7n9{c3 c1} - r7n8{c1 c8} - c7n8{r8 r3} - c4n8{r3 r6} - r6c3{n8 .} ==> r7c3 ≠ 3<br>
z-chain[5]: b9n8{r8c7 r7c8} - r2c8{n8 n3} - r5c8{n3 n4} - c7n4{r5 r3} - c7n8{r3 .} ==> r8c7 ≠ 2<br>
z-chain[5]: b9n8{r8c7 r7c8} - r2c8{n8 n3} - r5c8{n3 n4} - c7n4{r5 r3} - c7n8{r3 .} ==> r8c7 ≠ 1<br>
z-chain[5]: r3n4{c1 c7} - r8n4{c7 c9} - r8n5{c9 c6} - b2n5{r1c6 r3c4} - r3c1{n5 .} ==> r9c1 ≠ 4<br>
biv-chain[5]: r3n1{c9 c7} - r3n4{c7 c1} - r8c1{n4 n3} - r9c1{n3 n7} - r2n7{c1 c9} ==> r3c9 ≠ 7<br>
z-chain[5]: r9c1{n3 n7} - r9c2{n7 n2} - r8c2{n2 n8} - r8c7{n8 n4} - r8c1{n4 .} ==> r9c3 ≠ 3<br>
biv-chain[4]: r9c3{n1 n4} - r1c3{n4 n5} - c1n5{r3 r6} - c8n5{r6 r9} ==> r9c8 ≠ 1<br>
biv-chain[3]: r9c8{n3 n5} - r8n5{c9 c6} - b8n3{r8c6 r7c6} ==> r7c8 ≠ 3, r7c9 ≠ 3<br>
hidden-single-in-a-row ==> r7c6 = 3<br>
whip[1]: r8n3{c2 .} ==> r9c1 ≠ 3, r9c2 ≠ 3<br>
naked-single ==> r9c1 = 7<br>
naked-single ==> r9c2 = 2<br>
hidden-single-in-a-row ==> r2c9 = 7<br>
whip[1]: c7n2{r6 .} ==> r4c9 ≠ 2, r6c8 ≠ 2<br>
naked-pairs-in-a-block: b3{r1c8 r1c9}{n2 n4} ==> r3c7 ≠ 4<br>
(singles to the end)<br><br>
...

## 5. License:<br>
CSP-Rules V2.1 is distributed under the GNU GPL v3.0 license (see the full text in the Docs folder).<br><br>


## 6. Installation:<br>
Download CSP-Rules V2.1 from the master branch (by clicking "Code" button and then the "Download zip" option), unzip the resulting file, rename it to "CSP-Rules-V2.1" (i.e. delete the possible "-master" part in its name, go to the "Docs" folder and read the Basic User Manual for an easy installation step and for how to use CSP-Rules.<br>
For ease of use, executable versions of CLIPS are delivered in the "CLIPS" folder. However, if you are using a Mac, due to the strict MACOS security rules, you may have to recompile your own version of the CLIPS core. Go to https://sourceforge.net/p/clipsrules/code/HEAD/tree/branches/63x/, click "download snapshot", unzip the file thus obtained. In a Terminal, go to the core directory, type "make". You will get a "Clips" executable file in this directory; move it to the CLIPS folder of CSP-Rules-V2.1. <br><br>


## 7. References <br>
(A copy of  each reference is present in the "Publications" folder)<br>
_Articles:_<br>
<> [Berthier 2008a]: BERTHIER D., From Constraints to Resolution Rules, Part I: Conceptual Framework, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 08), December 5-13, 2008, Springer. Published as a chapter of Advanced Techniques in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 165-170, Springer, 2010.<br>
<> [Berthier 2008b]: BERTHIER D., From Constraints to Resolution Rules, Part II: chains, braids, confluence and T&E, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 08), December 5-13, 2008, Springer. Published as a chapter of Advanced Techniques in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 171-176, Springer, 2010.<br>
<> [Berthier 2009]: BERTHIER D., Unbiased Statistics of a CSP - A Controlled-Bias Generator, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 09), December 4-12, 2009, Springer. Published as a chapter of Innovations in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 11-17, Springer, 2010.<br>

_Books:_<br>
<> [BUM]: BERTHIER D., Basic User Manual for CSP-Rules V2.1, Lulu.com Publishers, August 2020.<br>
<> [CRT]: BERTHIER D., Constraint Resolution Theories, Lulu.com Publishers, October 2011.<br>
<> [HLS1: BERTHIER D., The Hidden Logic of Sudoku, First Edition, Lulu.com Publishers, May 2007.<br>
<> [HLS2]: BERTHIER D., The Hidden Logic of Sudoku, Second Edition, Lulu.com Publishers, November 2007.<br>
<> [HLS]: any of [HLS1] or [HLS2]<br>
<> [PBCS1]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles, Lulu.com Publishers, July 2012.<br>
<> [PBCS2]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (Second Edition), Lulu.com Publishers, November 2015.<br>
<> [PBCS]:any of [PBCS1] or [PBCS2].<br><br>
