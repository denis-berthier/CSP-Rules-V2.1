# CSP-Rules-V2.1
 
## A general Pattern-Based solver of finite Constraint Satisfaction Problems</b>

<br><br>
<a href="https://doi.org/10.5281/zenodo.17491941"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.17491941.svg" alt="DOI"></a> <br>
[This is the permanent, version independent DOI, always referring to the latest release. <br>
Note that minor (cosmetic) updates on GitHub don't give rise to a new release; if you want the latest update, download directly from GitHub.]
<br><br>


## 1. What is CSP-Rules?<br>
A _finite binary Constraint Satisfaction Problems_ (CSP) is defined by a finite set of variables (hereafter called the CSP-Variables), each with a finite domain; the problem is to find a value for each variable in its domain, in such a way that these values satisfy a set of pre-defined binary constraints. A typical popular example is Sudoku.<br>
**_CSP-Rules is a general pattern-based (or rule-based) solver of finite binary CSPs_**. <br>
It includes a Latin Squares solver, a Sudoku solver, a Futoshiki solver, a Kakuro solver, a solver of Map Colouring Problems, a Hidato solver, a Numbrix solver and a Slitherlink solver. <br><br>

## 2. The [PBCS] or CSP-Rules approach to CSP solving<br>
In the CSP-Rules approach, a possible value of a CSP-Variable is called a _candidate_ and a binary constraint is represented by a _direct contradiction link_ (or _link_ for short) between two candidates.<br>
CSP-Rules is inherently associated with the approach to CSP solving defined and largely illustrated in my book “**_Pattern-Based Constraint Satisfaction and Logic Puzzles_**” ([PBCS]). This approach can be traced back, in the particular Sudoku context, to my much older book “**_The Hidden Logic of Sudoku_**” ([HLS]). CSP-Rules is best considered as a companion to [PBCS] and [HLS]. The books develop the theoretical part and the software is the proof that the theories are widely applicable. They are included in the "Publications" folder.<br><br>

In the [PBCS] approach, pertaining to the very general “progressive domain restriction” family of CSP solving techniques, the domain of each CSP-Variable is represented by a monotonously decreasing set of candidates and the fundamental concept is that of a **_resolution rule_**, i.e. a rule of the form “pattern => elimination of a candidate” or  (more rarely in practice) “pattern => assertion of a value for a CSP-Variable”.<br>
Here, “pattern” is a clearly defined set of logical conditions, based only on the fixed set of CSP-Variables, the fixed set of links (i.e. of direct binary contradictions) between candidates and on the current situation (i.e. the remaining candidates for each variable). This pattern must be precisely defined so as to imply the conclusion in an otherwise context-independent way (i.e. in a way that does not depend on any CSP-Variable, link, candidate or value not explicitly mentioned in the pattern). Of course, the resolution rule itself must be provable from the CSP axioms.<br><br>

Considering this definition, an implementation in terms of rules of a forward-chaining inference engine seemed relevant (in spite of possible a priori performance issues). Both the oldest and the current implementations of CSP-Rules are therefore based on **_CLIPS_**, the most widely used (and tested) inference engine. CLIPS is written in C, is highly portable, has been public since 1996; it implements the RETE algorithm with drastic performance improvements – and it’s open source and free.<br><br>

**_One essential aspect of the [PBCS] approach is the introduction of additional CSP-Variables_**: the set of CSP-Variables is extended beyond the originally given ones. As a simple illustration of this idea in the Sudoku case, in addition to the “natural” rc CSP-Variables (represented by the cells of the standard Sudoku grid), I introduced (in [HLS1]) new rn, cn and bn variables, represented by the cells of the three additional spaces of my “Extended Sudoku Board” (a copy of which is present in the “Publications” folder of CSP-Rules-V2.1.)<br>
A priori, CSP-Rules deals only with binary constraints, but the applications studied in [PBCS] and included in the CSP-Rules-V2.1 package (namely: solvers for Latin Squares, Sudoku, Futoshiki, Kakuro, Map Colouring, Numbrix, Hidato and Slithering) show that  many types of non-binary constraints can be efficiently transformed into binary ones by adding problem-specific CSP-Variables, thus making them amenable to the CSP-Rules treatment.<br><br>

Patterns in CSP-Rules can take many forms, but the most powerful generic ones are various kinds of chains (bivalue-chains, z-chains, t-whips, whips, g-whips…). **_A chain is defined as a continuous sequence of candidates, where continuity means that each candidate is linked to the previous one_**. In the context of logic games, these chains can be considered as logical abstractions of the universal, spontaneous practice of human solvers wondering “can this candidate be true?” and checking for a possible contradiction implied by such a hypothesis; but they also suggest much more constrained ways of proceeding. In particular, the continuity condition is a very strong guide for a human solver looking for chain patterns. More generally, **_the absence of OR-branching in any of the CSP-Rules chain patterns means that each of them supports a single stream of reasoning_**.<br>
Instead of having zillions of application-specific rules (like e.g. most existing rule-based Sudoku solvers), the resolution backbone of CSP-Rules consists of only a few types of universal rules – though it remains perfectly compatible with the addition of any number of application-specific rules (see the Slitherlink chapter).<br><br>

**_One more essential aspect of the CSP-Rules resolution paradigm is its insistence on using the “simplest-first strategy"_**. Indeed, much of my approach can be considered as a detailed study into possible meanings of “**_simplest-first search_**”. At each step of the resolution process, the simplest available rule is applied. Here, “simplest” is not to be understood as it is generally done in the world of AI, i.e. in an abstract logical way that has never had any real application. Simplest is defined precisely in terms of the patterns making the conditions of the rules. In case of chains, simplicity is easy to define: a chain (of any type) is simpler than another chain (of any type) if it is shorter, where **the length of a chain is defined as the number of CSP-Variables its definition involves** - a notion that can be defined in pure logical terms, contrary to more usual notions of complexity based on the number of "inferences". For chains of same lengths but of different types, it’s also easy to define their relative simplicity (see chapter 4 of the Basic User Manual). As a result, for each family of rules, an intrinsic **rating** of the difficulty of instances can be defined and it can often be obtained at the end of a single resolution path. The simplest-first strategy is intimately related to the **_confluence property_** (see [PBCS]).<br><br>


## 3. The contents of CSP-Rules<br>
CSP-Rules consists of **a generic part** (in the “CSP-Rules-Generic” folder) together with **a few application-specific parts** aimed at solving some familiar logic puzzles. The application-specific parts are integral members of CSP-Rules. They were chosen in order to illustrate how, by the proper choice of additional CSP-Variables, the generic concepts can be used in so different CSPs as the above-mentioned ones, including some non-binary ones.<br><br>
The generic part consists of powerful generic resolution rules (such as **bivalue-chains, z-chains, t-whips, whips, braids, g-whips**...) together with a general mechanism for managing the whole system, including the outputting of solutions in an easy-to-understand, universal notation. The generic part cannot be run alone. It requires an application-specific part to feed it with problem instances in the proper format.<br><br>
Each application-specific part consists of a specific interfacing with the generic part of CSP-Rules, specific commands for launching the resolution process (they are reviewed in the application-specific chapters in Part II of the User Manual[BUM] or [AUM]), plus a configuration file allowing the user to select general settings and which families of rules he wants to apply. It often also contains application-specific resolution rules.<br><br>
Notice that the more recent releases contain  a whole new set of powerful generic resolution rules (**ORk-forcing-whips and ORk-whips**) able to deal with any exotic, application-specific OR-relation - in particular (but not restricted to) those that can be deduced from the newly discovered impossible Tridagon pattern in Sudoku. These rules allow to smoothly extend the previous family of ratings.In Sudoku, they allow to simplify puzzles in T&E(3) to puzzles in T&E(1 or more rarely 2).<br><br>



## 4. Examples<br>
For making the above more explicit, consider the following (moderately difficult) Sudoku puzzle (created by Philip Newman (alias "mith" on the Sudoku forums):<br>

```
   +-------+-------+-------+ 
   | . . . | 1 3 . | . . . | 
   | . 1 . | . . 4 | 5 . . | 
   | . . 2 | . . . | . 6 . | 
   +-------+-------+-------+ 
   | 1 . . | 3 . . | . 7 . | 
   | 2 . . | . 5 . | . . 8 | 
   | . 4 . | . . 6 | . . 9 | 
   +-------+-------+-------+ 
   | . 5 . | . . . | 7 . . | 
   | . . 6 | 7 . . | . 9 . | 
   | . . . | . 8 9 | . . . | 
   +-------+-------+-------+ 
```

The problem can be given to SudoRules (the part of CSP-Rules that deals with the Sudoku CSP) in several forms, including the following two:<br>
— using the "line format" for Sudoku puzzles, widespread in the Sudoku community: <br>
```
(solve "...13.....1...45....2....6.1..3...7.2...5...8.4...6..9.5....7....67...9.....89...") 
```
<br>
— using a more visually appealing format: <br>

```
(solve-sudoku-list 
    . . .  1 3 .  . . .
    . 1 .  . . 4  5 . .
    . . 2  . . .  . 6 .
    1 . .  3 . .  . 7 .
    2 . .  . 5 .  . . 8
    . 4 .  . . 6  . . 9
    . 5 .  . . .  7 . .
    . . 6  7 . .  . 9 .
    . . .  . 8 9  . . .
 ) 
```

And here is how the solution of this puzzle will appear (with variants, depending on which resolution rules have been selected by the user).<br>
The resolution path is a constructive proof of the solution.
Each line starts with the name of a precise pattern, including its size (as described in detail in [PBCS]); the name is followed by the full details of its instantiation and, after a "==>" sign, by the eliminations it allows:<br>

```
217 candidates, 1371 csp-links and 1371 links. Density = 5.85% 
whip[1]: r1n6{c2 .} ==> r2c1 ≠ 6 
hidden-single-in-a-column ==> r1c1 = 6 
naked-pairs-in-a-block: b5{r4c6 r6c4}{n2 n8} ==> r6c5 ≠ 2, r4c5 ≠ 2 
hidden-pairs-in-a-block: b1{r1c3 r3c1}{n4 n5} ==> r3c1 ≠ 9, r3c1 ≠ 8, r3c1 ≠ 7, r3c1 ≠ 3, r1c3 ≠ 9, r1c3 ≠ 8, r1c3 ≠ 7 
swordfish-in-columns: n5{c1 c4 c8}{r6 r3 r9} ==> r9c9 ≠ 5, r6c3 ≠ 5, r3c6 ≠ 5 
z-chain[4]: r3c6{n7 n8} - r4c6{n8 n2} - b2n2{r1c6 r2c4} - r2n6{c4 .} ==> r2c5 ≠ 7 
z-chain[5]: r2n6{c4 c5} - b2n2{r2c5 r1c6} - r4c6{n2 n8} - r3c6{n8 n7} - r3c5{n7 .} ==> r2c4 ≠ 9 
z-chain[3]: r7n9{c3 c1} - r2n9{c1 c5} - r4n9{c5 .} ==> r5c3 ≠ 9 
z-chain[5]: r5c3{n7 n3} - r6c3{n3 n8} - b5n8{r6c4 r4c6} - r3c6{n8 n7} - r5n7{c6 .} ==> r6c1 ≠ 7 
z-chain[5]: r2n6{c5 c4} - b2n2{r2c4 r1c6} - r4c6{n2 n8} - r3c6{n8 n7} - r3c5{n7 .} ==> r2c5 ≠ 9 
whip[1]: b2n9{r3c5 .} ==> r3c2 ≠ 9, r3c7 ≠ 9 
hidden-single-in-a-block ==> r1c7 = 9 
whip[1]: c2n9{r5 .} ==> r4c3 ≠ 9 
hidden-pairs-in-a-block: b4{r4c2 r5c2}{n6 n9} ==> r5c2 ≠ 7, r5c2 ≠ 3, r4c2 ≠ 8 
whip[1]: b4n7{r6c3 .} ==> r2c3 ≠ 7, r9c3 ≠ 7 
biv-chain[3]: r1n5{c6 c3} - r4c3{n5 n8} - r4c6{n8 n2} ==> r1c6 ≠ 2 
whip[1]: r1n2{c9 .} ==> r2c8 ≠ 2, r2c9 ≠ 2 
hidden-pairs-in-a-row: r2{n2 n6}{c4 c5} ==> r2c4 ≠ 8 
biv-chain[4]: r3n5{c4 c1} - b4n5{r6c1 r4c3} - r4n8{c3 c6} - c4n8{r6 r3} ==> r3c4 ≠ 9 
hidden-single-in-a-block ==> r3c5 = 9 
naked-single ==> r4c5 = 4 
naked-single ==> r5c4 = 9 
naked-single ==> r5c2 = 6 
naked-single ==> r4c2 = 9 
hidden-single-in-a-column ==> r6c5 = 7 
naked-single ==> r5c6 = 1 
hidden-single-in-a-row ==> r5c3 = 7 
whip[1]: r5n3{c8 .} ==> r6c7 ≠ 3, r6c8 ≠ 3 
biv-chain[3]: b6n3{r5c7 r5c8} - r2c8{n3 n8} - b9n8{r7c8 r8c7} ==> r8c7 ≠ 3 
biv-chain[3]: c4n4{r7 r9} - c4n5{r9 r3} - r3c1{n5 n4} ==> r7c1 ≠ 4 
biv-chain[4]: r3c1{n4 n5} - r6n5{c1 c8} - b6n1{r6c8 r6c7} - b3n1{r3c7 r3c9} ==> r3c9 ≠ 4 
finned-x-wing-in-rows: n4{r3 r8}{c1 c7} ==> r9c7 ≠ 4 
z-chain[3]: r8n4{c9 c1} - r3n4{c1 c7} - r5n4{c7 .} ==> r9c8 ≠ 4 
z-chain[3]: r8n4{c9 c1} - r3n4{c1 c7} - r5n4{c7 .} ==> r7c8 ≠ 4 
z-chain[4]: r8n4{c9 c1} - r3c1{n4 n5} - c4n5{r3 r9} - c4n4{r9 .} ==> r7c9 ≠ 4 
z-chain[4]: c2n8{r3 r8} - c7n8{r8 r3} - r1n8{c8 c6} - r4n8{c6 .} ==> r2c3 ≠ 8 
finned-x-wing-in-rows: n8{r2 r7}{c8 c1} ==> r8c1 ≠ 8 
biv-chain[3]: b4n3{r6c1 r6c3} - r2c3{n3 n9} - b7n9{r7c3 r7c1} ==> r7c1 ≠ 3 
z-chain[3]: r2n8{c8 c1} - c2n8{r3 r8} - c7n8{r8 .} ==> r1c8 ≠ 8 
biv-chain[4]: r1c8{n2 n4} - r1c3{n4 n5} - c1n5{r3 r6} - c8n5{r6 r9} ==> r9c8 ≠ 2 
biv-chain[4]: r8c1{n3 n4} - r3c1{n4 n5} - r1n5{c3 c6} - r8n5{c6 c9} ==> r8c9 ≠ 3 
z-chain[5]: r7n9{c3 c1} - r7n8{c1 c8} - c7n8{r8 r3} - c4n8{r3 r6} - r6c3{n8 .} ==> r7c3 ≠ 3 
z-chain[5]: b9n8{r8c7 r7c8} - r2c8{n8 n3} - r5c8{n3 n4} - c7n4{r5 r3} - c7n8{r3 .} ==> r8c7 ≠ 2 
z-chain[5]: b9n8{r8c7 r7c8} - r2c8{n8 n3} - r5c8{n3 n4} - c7n4{r5 r3} - c7n8{r3 .} ==> r8c7 ≠ 1 
z-chain[5]: r3n4{c1 c7} - r8n4{c7 c9} - r8n5{c9 c6} - b2n5{r1c6 r3c4} - r3c1{n5 .} ==> r9c1 ≠ 4 
biv-chain[5]: r3n1{c9 c7} - r3n4{c7 c1} - r8c1{n4 n3} - r9c1{n3 n7} - r2n7{c1 c9} ==> r3c9 ≠ 7 
z-chain[5]: r9c1{n3 n7} - r9c2{n7 n2} - r8c2{n2 n8} - r8c7{n8 n4} - r8c1{n4 .} ==> r9c3 ≠ 3 
biv-chain[4]: r9c3{n1 n4} - r1c3{n4 n5} - c1n5{r3 r6} - c8n5{r6 r9} ==> r9c8 ≠ 1 
biv-chain[3]: r9c8{n3 n5} - r8n5{c9 c6} - b8n3{r8c6 r7c6} ==> r7c8 ≠ 3, r7c9 ≠ 3 
hidden-single-in-a-row ==> r7c6 = 3 
whip[1]: r8n3{c2 .} ==> r9c1 ≠ 3, r9c2 ≠ 3 
naked-single ==> r9c1 = 7 
naked-single ==> r9c2 = 2 
hidden-single-in-a-row ==> r2c9 = 7 
whip[1]: c7n2{r6 .} ==> r4c9 ≠ 2, r6c8 ≠ 2 
naked-pairs-in-a-block: b3{r1c8 r1c9}{n2 n4} ==> r3c7 ≠ 4 
(singles to the end) 

     +-------+-------+-------+
     ! 6 7 5 ! 1 3 8 ! 9 2 4 ! 
     ! 8 1 9 ! 2 6 4 ! 5 3 7 ! 
     ! 4 3 2 ! 5 9 7 ! 8 6 1 ! 
     +-------+-------+-------+
     ! 1 9 8 ! 3 4 2 ! 6 7 5 ! 
     ! 2 6 7 ! 9 5 1 ! 3 4 8 ! 
     ! 5 4 3 ! 8 7 6 ! 2 1 9 ! 
     +-------+-------+-------+
     ! 9 5 1 ! 4 2 3 ! 7 8 6 ! 
     ! 3 8 6 ! 7 1 5 ! 4 9 2 ! 
     ! 7 2 4 ! 6 8 9 ! 1 5 3 ! 
     +-------+-------+-------+
```

Here is a slightly simpler example (puzzle created by JPF), illustrating another familiar input format for Sudoku:<br> 

```
(solve-sudoku-grid 
     +-------+-------+-------+
     ! . . . ! 1 2 3 ! 4 . . ! 
     ! . . 4 ! . . . ! . 5 . ! 
     ! . 6 . ! . 4 7 ! . . 8 ! 
     +-------+-------+-------+
     ! . 4 . ! 9 . . ! 8 . 7 ! 
     ! . 9 . ! . . . ! 5 . 3 ! 
     ! . . 7 ! . . 4 ! . . 9 ! 
     +-------+-------+-------+
     ! . . . ! 2 7 . ! . 8 . ! 
     ! . 5 . ! . . . ! 9 . . ! 
     ! . . 6 ! 3 9 5 ! . . . ! 
     +-------+-------+-------+
) 
```

and its solution, illustrating various types of generic chains typical of CSP-Rules: <br>

```
singles ==> r3c4 = 5, r1c9 = 6, r8c4 = 4, r7c9 = 5, r9c9 = 4, r7c1 = 4, r7c3 = 9, r5c8 = 4, r5c4 = 7, r2c6 = 9 
153 candidates, 801 csp-links and 801 links. Density = 6.89% 
whip[1]: r9n8{c2 .} ==> r8c3 ≠ 8, r8c1 ≠ 8 
whip[1]: r1n8{c3 .} ==> r2c2 ≠ 8, r2c1 ≠ 8 
hidden-pairs-in-a-block: b9{r7c7 r8c8}{n3 n6} ==> r8c8 ≠ 7, r8c8 ≠ 2, r8c8 ≠ 1, r7c7 ≠ 1 
hidden-single-in-a-row ==> r8c1 = 7 
hidden-pairs-in-a-column: c5{n3 n5}{r4 r6} ==> r6c5 ≠ 8, r6c5 ≠ 6, r6c5 ≠ 1, r4c5 ≠ 6, r4c5 ≠ 1 
z-chain[3]: b6n2{r6c8 r6c7} - c2n2{r6 r2} - c9n2{r2 .} ==> r9c8 ≠ 2 
biv-chain[3]: c9n1{r2 r8} - r9c8{n1 n7} - b3n7{r1c8 r2c7} ==> r2c7 ≠ 1 
biv-chain[4]: r6c4{n8 n6} - c7n6{r6 r7} - r7c6{n6 n1} - c5n1{r8 r5} ==> r5c5 ≠ 8 
biv-chain[4]: r7c6{n1 n6} - c7n6{r7 r6} - r6c4{n6 n8} - c6n8{r5 r8} ==> r8c6 ≠ 1 
z-chain[4]: r6n5{c1 c5} - r6n3{c5 c2} - r7n3{c2 c7} - c7n6{r7 .} ==> r6c1 ≠ 6 
t-whip[4]: r2c9{n1 n2} - r8n2{c9 c3} - r3n2{c3 c1} - r3n9{c1 .} ==> r3c8 ≠ 1 
whip[4]: r2c9{n1 n2} - r2c1{n2 n3} - r3c3{n3 n2} - r8n2{c3 .} ==> r2c2 ≠ 1 
z-chain[2]: r2n1{c1 c9} - b9n1{r8c9 .} ==> r9c1 ≠ 1 
z-chain[4]: c7n6{r6 r7} - r7c6{n6 n1} - c2n1{r7 r9} - c8n1{r9 .} ==> r6c7 ≠ 1 
whip[1]: b6n1{r6c8 .} ==> r9c8 ≠ 1 
singles ==> r9c8 = 7, r1c8 = 9, r3c1 = 9, r2c7 = 7, r1c2 = 7, r3c3 ≠ 3 
finned-x-wing-in-rows: n2{r8 r2}{c9 c3} ==> r3c3 ≠ 2 
singles to the end 

     +-------+-------+-------+
     ! 5 7 8 ! 1 2 3 ! 4 9 6 ! 
     ! 3 2 4 ! 6 8 9 ! 7 5 1 ! 
     ! 9 6 1 ! 5 4 7 ! 2 3 8 ! 
     +-------+-------+-------+
     ! 6 4 5 ! 9 3 2 ! 8 1 7 ! 
     ! 8 9 2 ! 7 6 1 ! 5 4 3 ! 
     ! 1 3 7 ! 8 5 4 ! 6 2 9 ! 
     +-------+-------+-------+
     ! 4 1 9 ! 2 7 6 ! 3 8 5 ! 
     ! 7 5 3 ! 4 1 8 ! 9 6 2 ! 
     ! 2 8 6 ! 3 9 5 ! 1 7 4 ! 
     +-------+-------+-------+
```

<br>
Notice that <strong><em>more interactive ways of solving a CSP</em></strong> are described in the User Manual. These include focused eliminations or taking into account additional (extra-logical) requirements on the number of steps in the resolution path.
<br><br>

## 5. CSP-Rules as a versatile research tool<br>
The above description of CSP-Rules as a solver of finite CSPs remains true, but as years have passsed and with all the aadditions made to the original release, CSP-Rules has also appeared to be a very versatile research tool. <br>
Not that it wasn't one since the start: the systematic classification of large collections of CSPs according to various generic ratings based on different families of resolution rules and the comparison of the resolution power of such rules have always been at the heart of the original motivation. The controlled-bias collection (https://github.com/denis-berthier/Controlled-bias_Sudoku_generator_and_collection) is probably the best large-scale illustration of it.<br>
But one can mention a few additions to the original "research tool" facet, dedicated to more specific application-specific topics:
- using CSP-Rules as a proof assistant: <br>
-- see the SlitherRules application <br>
-- or, in SudoRules, the proof in T&E(3) of the impossibility of the trivalue oddagon pattern or the analysis of eleven's 630 impossible patterns and the T&E(n) levels required for them.
- using the recently added SudoRules Expansion kit as a means for the first systematic exploration of the T&E(n) domains in Sudoku.
<br><br>

## 6. Installation and updates<br>
Download CSP-Rules V2.1 from the master branch (by clicking the "Code" button and then the "Download zip" option), unzip the resulting file, rename it to "CSP-Rules-V2.1" (in particular, delete the possible "-master" part in its name, go to the "Docs" folder and read the Basic User Manual for an easy installation step and for how to use CSP-Rules.<br><br>
For ease of use, executable versions of CLIPS are delivered in the "CLIPS" folder. However, if you are using a Mac, due to the strict MacOS security rules, you may have to allow it to run or to recompile your own version of the CLIPS core. Go to https://sourceforge.net/p/clipsrules/code/HEAD/tree/branches/63x/core/, click "download snapshot", unzip the file thus obtained. In a Terminal, go to the core directory, type "make". You will get a "clips" executable file in this directory; move it to the CLIPS folder of CSP-Rules-V2.1. <br><br>
Notice that _the installation procedure must be redone every time you download a new release_. In order to avoid re-compiling CLIPS, you can keep a copy of it outside the CSP-Rules-V2.1 folder; you can similarly make a backup copy of your most frequently used config file(s).<br><br>
CSP-Rules-V2.1 was first published on August 19th, 2020.<br>
See the UPDATES.md file for a detailed list of the updates (i.e. of additional functionalities) since the first release. 
<br><br>

## 7. Structure of directories<br>
| CSP-Rules | CSP-Rules-V2.1 | CSP-Rules-Generic | ... | <br>
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| Docs | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| FutoRules-V2.1 | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| FutoRules-V2.1-config.clp |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| HidatoRules-V2.1 | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| HidatoRules-V2.1-config.clp |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| KakuRules-V2.1 | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| KakuRules-V2.1-config.clp |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| LatinRules-V2.1 | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| LatinRules-V2.1-config.clp |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| MapRules-V2.1 | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| MapRules-V2.1-config.clp |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| SudoRules-V20.1 | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| SudoRules-V20.1-config.clp |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| SlitherRules-V20.1 | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| SlitherRules-V20.1-config.clp |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| README.md |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| UPDATES.md |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| ;;; external or semi-external applications:
|<br>
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| CLIPS | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| XTERNS | UTIL | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| SHC | SHC.jar |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| Expand.jar |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| examples | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|  GSF | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|  SER | ... |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|  FPGX | ... |<br>
;;; companion folders: <br>
| CSP-Rules         | CSP-Rules-Examples | … (basic CSP-Rules examples) |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| CBGC | ... (the Controlled-Bias Generator and Collection, updated) |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| SUDCL | ... (the classification results of various Sudoku collections) |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| SUDEXP | ... (new, the expansion results of various Sudoku collections) |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| TE3-classif | ... (deprecated, now included in SUDCL ) |<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| TE2-classif | ... (deprecated, now included in SUDCL ) |
<br><br>

## 8. License<br>
The software parts in CSP-Rules V2.1 are distributed under the GNU GPL v3.0 license (see the full text in the Docs folder).<br>
Of course, the other publications (books, articles, conference proceedings...) remain protected by their original respective copyrights; this also applies to the CLIPS software.
<br><br>

## 9. Companion repositories<br>
CSP-Rules-V2.1 has six companion repositories on GitHub:
* one including typical examples for each of the CSP-Rules applications. The first releases of CSP-Rules-V2.1 had an EXAMPLES folder.
For easier additions to the examples, not requiring to make an update to CSP-Rules itself, this folder has now been moved to an independent repository: https://github.com/denis-berthier/CSP-Rules-Examples.
* one including all the sofware, the collection of puzzles generated by it and various classification results related to the controlled-bias generation of puzzles: https://github.com/denis-berthier/Controlled-bias_Sudoku_generator_and_collection
* one including various classifications of Sudoku puzzles in T&E(3): https://github.com/denis-berthier/Classifications-of-TE3-Sudokus<br>
* one including the BxB classification of Sudoku puzzles in T&E(2): https://github.com/denis-berthier/Classification-of-TE2-Sudokus<br>
* one including various Sudoku puzzle collections and their universal classifications (as obtained in [UMNR] or [HCCS]); it also includes the previous two, that are now deprecated): https://github.com/denis-berthier/Sudoku-classif<br>
* one for the Sudoku Hierarchical Classifier (SHC), a java implementation by François Cordoliani of the classification techniques described in [CRT], [PBCS] and recalled as part of [HCCS]: https://github.com/denis-berthier/Sudoku_Hierarchical_Classifier<br>

See these repositories for a detailed description of their contents.
<br><br>

## 10. References<br>
(A copy of  the references is present in the "Publications" folder. Each of them can also be downloaded from ResearchGate: https://www.researchgate.net/profile/Denis-Berthier/research)<br>
### Articles<br>
* [Berthier 2008a]: BERTHIER D., From Constraints to Resolution Rules, Part I: Conceptual Framework, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 08), December 5-13, 2008, Springer. Published as a chapter of Advanced Techniques in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 165-170, Springer, 2010.<br>
* [Berthier 2008b]: BERTHIER D., From Constraints to Resolution Rules, Part II: chains, braids, confluence and T&E, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 08), December 5-13, 2008, Springer. Published as a chapter of Advanced Techniques in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 171-176, Springer, 2010.<br>
* [Berthier 2009]: BERTHIER D., Unbiased Statistics of a CSP - A Controlled-Bias Generator, International Joint Conferences on Computer, Information, Systems Sciences and Engineering (CISSE 09), December 4-12, 2009, Springer. Published as a chapter of Innovations in Computing Sciences and Software Engineering, Khaled Elleithy Editor, pp. 11-17, Springer, 2010.<br><br>

### Books<br>
* [AUM]: BERTHIER D., Augmented User Manual for CSP-Rules V2.1, Lulu Press, November 2021.<br>
* [BUM1]: BERTHIER D., Basic User Manual for CSP-Rules V2.1, Lulu Press, August 2020.<br>
* [BUM2]: BERTHIER D., Basic User Manual for CSP-Rules V2.1 (Second Edition), Lulu Press, November 2021.<br>
* [CRT]: BERTHIER D., Constraint Resolution Theories, Lulu Press, October 2011.<br>
* [HCCS1]: BERTHIER D., Hierarchical Classifications in Constraint Satisfaction, Lulu Press, October 2023.<br>
* [HCCS2]: BERTHIER D., Hierarchical Classifications in Constraint Satisfaction (Second Edition), Lulu Press, July 2024.<br>
* [HCCS3]: BERTHIER D., Hierarchical Classifications in Constraint Satisfaction (Third Edition), Lulu Press, October 2025.<br>
* [HCCS]: any of [HCCS1], [HCCS2] or [HCCS3].<br>
* [HLS1]: BERTHIER D., The Hidden Logic of Sudoku, First Edition, Lulu Press, May 2007.<br>
* [HLS2]: BERTHIER D., The Hidden Logic of Sudoku, Second Edition, Lulu Press, November 2007.<br>
* [HLS]: any of [HLS1] or [HLS2]<br>
* [PBCS1]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles, Lulu Press, July 2012.<br>
* [PBCS2]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (Second Edition), Lulu Press, November 2015.<br>
* [PBCS3]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (Third Edition), Lulu Press, November 2021.<br>
* [PBCS]: any of [PBCS1], [PBCS2] or [PBCS3].<br>
* [UMRN]: BERTHIER D., User Manual and Research Notebooks for CSP-Rules, Lulu Press, July 2023.<br><br>
