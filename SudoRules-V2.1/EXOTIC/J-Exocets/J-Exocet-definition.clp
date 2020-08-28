

[b]J-EXOCET: back to the basics[/b]


As I was writing a new version of SudoRules, I found a few improvements to my J-Exocet code (leading to significant speed increase). They are related to the view that the core of a J-Exocet is its pseudo-fish pattern (and not the Base and Target Cells - which are too unspecific).
Also, I wasn't satisfied by my own reformulation (ref. b) because it didn't fully implerment the fish-as-core view and I decided to improve it by making it effective in the definition. This led me to a definition in 3 independent steps (see next post).
Finally, I wasn't satisfied with my own proof (or with any other). You'll see that the proof requires some subtelty in reasoning with candidates vs decided values.


[b]1.) PURPOSE OF THIS THREAD:[/b]
This thread is limited to discussing the PATTERN-BASED view of J-Exocets, both the basic non-degenerated J-Exocets (as defined in the next post) and their pattern-based extensions.
By "pattern-based", I mean that the pattern and the target candidates must be fully specified in purely descriptive terms and must in particular be enough to prove all the eliminations by pure logic, in a puzzle independent way.

Thus, the more general Exocets and any extension based on the definition of a partial pattern and requiring additional procedures for checking its validity in any particular puzzle are totally out of topic (in any case, they already have their own old thread). I don't mean to lessen the preliminary work on Exocets, but the extent of a thread should not be too broad.

For any pattern-based extension, a representative example should be provided (preferably for the J-Exocet-in-columns form, for consistency of presentation with the basic case); comparative statistics (based on well-defined collections of puzzles) and/or complexity considerations are most welcome.
Special cases allowing additional eliminations are also welcome, provided that they can be given a pattern-based description.



[b]2.) REFERENCES:[/b]
a) David's original post: http://forum.enjoysudoku.com/jexocet-pattern-defintion-t31133.html
b) my reformulation: http://forum.enjoysudoku.com/jexocet-pattern-defintion-t31133-12.html
c) my extension: http://forum.enjoysudoku.com/jexocet-pattern-defintion-t31133-145.html
d) Blue's extension: http://forum.enjoysudoku.com/jexocet-pattern-defintion-t31133-152.html



[b]3.) ORGANISATION OF THE FIRST POSTS:[/b]
The next post gives the basic definitions. The next ones give some of the possible extensions. I'll complete them with references to later posts, if necessary.


--------------------------------------------------------------------------------------------

[b]BASIC NON-DEGENERATED J-EXOCETS[/b]


[b]0.) PRELIMINARY REMARKS[/b]

- in this post, I deal only with basic, non-degenerated J-Exocets;
- I speak of "base digit" instead of "base candidate" because what we generally call a candidate is a <cell, digit> pair;
- in order to avoid cumbersone vocalulary ("lines", "units"), I deal only with J-Exocet-in-columns; J-Exocet-in-rows is obtained by trivial row-column symmetry;
- I keep capital letters everywhere for the J-Exocet specific vocabulary;
- as of now, only this basic non-degenerated pattern is implemented in SudoRules.


[b]1.) DEFINITION: PATTERN OF CELLS FOR A J-EXOCET-IN-COLUMNS[/b]

(graphics copied from David's original post)

  *-------*-------*-------*
  | B B . | . . . | . . . |  B = Base Cells, in the Base Row and the Base Block
  | . . . | Q . . | R . . |  Q = first Object Cell Pair
  | . . . | Q . . | R . . |  R = second Object Cell Pair
  *-------*-------*-------*
  | . . S | S . . | S . . |  S = cross-line Cells
  | . . S | S . . | S . . |  . = any candidates (including Base Digits)
  | . . S | S . . | S . . |    
  *-------*-------*-------*
  | . . S | S . . | S . . |  
  | . . S | S . . | S . . |      
  | . . S | S . . | S . . |   
  *-------*-------*-------*
  

A Pattern of Cells for a J-Exocet-in-columns is defined by:

1.1) a row (called the Base Row) and a block (called the Base Block) intersecting the Base Row; the horizontal 3-row band (or "floor") containing the Base Row (and the Base Block) is called the JE band;
1.2) three different "S" columns: SB intersecting the Base Block, and SQ and SR not intersecting it (SQ and SR may be in the same vertical 3-column band or "tower"); S cells are the cells of the S columns outside the JE Band;
1.3) a Base Cell Pair (B) consisting of the two cells lying in both the Base Row and the Base Block, but not in column SB;

1.4) an Object Cell Pair in column SQ, in the JE Band, but not in the Base Row, consisting of a Target Cell and a Companion Cell;
1.5) an Object Cell Pair in column SR, in the JE Band, but not in the Base Row, consisting of a Target Cell and a Companion Cell;
(the two Targets Cells may be in the same row or not).

Remarks:
1.1) This definition is broader than David's original one (ref. a): it includes my extension (ref. c).
1.2) Allowing the two S-columns to be in the same vertical band doesn't entail much complexity change: from 3x3=9 to C(6, 2)= 15. This is an increase factor = ~ 1.67 for the pattern of cells (with no additional factor for Base Digits, because there's no reason for having more possibilities for a Base Digit when the two columns are in the same vertical band).
1.3) It doesn't depend on any puzzle data.



[b]2.) DEFINITION: BASE DIGIT[/b]
Given a pattern of cells for a J-Exocet-in-columns, a Base Digit, for this pattern of cells is a digit d satisfying the following conditions:
2.1) all its occurrences (as a candidate or as a decided value) in the S cells are contained in two rows;
2.2) it does not appear (as a candidate or as a decided value) in the Companion Cells.

Remarks:
2.1) These properties of d may appear at any time in the resolution process; but once they have appeared, they are persistent: they remain true forever, even in a solution grid.
2.2) It is essential for persistency that a candidate that has been deleted in a previous step cannot re-appear by magic.
2.3) Persistency is essential for the proof of the next lemma.
2.4) The necessity of persistency in the proof of the next lemma forbids any non-degeneracy condition (such as not being decided in any of the S columns) to be added to the definition of a Base Digit.




[b]3.) BASE DIGIT LEMMA[/b]

Base Digit lemma: Given a pattern of cells for a J-Exocet-in-columns and a Base Digit d for this pattern of cells in some solution resolution state RS, one has: if d is not a candidate or a decided value for any of the two Target Cells in P then d cannot be the value of any of the two Base Cells in P.

Proof:
If the puzzle has no solution, there's nothing to prove.
Otherwise, let P be any solution grid. Notice that we do not suppose uniqueness!

By persistency, d still has the properties of a Base Digit in P.
Suppose that in P, d is not the value of any of the Target Cells. Then, by conditions 2.1 and 2.2, all the occurences of d (necessarily as decided values) in the S, Q and R cells are contained in two rows outside the JE Band.
The rules of Sudoku then imply that d must appear somewhere (necessarily as a decided value) in column SQ outside the Q cells and somewhere (necessarily as a decided value) in column SR outside the R cells. There are only two possibilities:
- if the place of d in any of columns SQ or SR is in the Base Row, then d cannot be the value of any of the Base Cells (obvious);
- otherwise, by condition 2.1, d must appear somewhere (necessarily as a decided value) in the S cells of column SQ and somewhere (necessarily as a decided value) in the S cells of column SR; of course, it must be in a different row for each column. As, by condition 2.1, there are only two rows available for the 3 S columns, it implies that d cannot appear in the S cells of the SB column. Therefore, in this SB column, d must appear (necessarily as a decided value) somewhere inside the Base Block. Which entails in particular that d cannot be the value of any of the Base Cells.
We have thus proven that, for any solution P, if a Base Digit is not the value of any of the Target Cells in P, then it cannot be the value of any of the Base Cells in P.
Therefore, in any solution P, if a Base Digit is the value of a Target Cell, then it must be the value of one of the two Base Cells.

Remarks:
3.1) The situation described in the formulation of the lemma is that of a (possibly degenerated) Finned-Swordfish.
3.2) This lemma is not enough to allow any elimination in the Target Cells when there is only one Base Digit, because we don't know to which Target Cell(s) the constraint should apply.
3.3) There is no converse lemma such as: if a Base Digit is the value of a Base Cell, then it must be the value of one of the two Target Cells.





[b]4.) DEFINITION: BASIC Jk-EXOCET-IN-COLUMNS[/b]
A Basic Jk-Exocet-in-columns is defined by:
- a pattern of cells for a J-Exocet-in-columns,
- an integer k ≥ 2,
- a set of k different Base Digits for this pattern of cells,
where the above data satisfy the following conditions:
- conditions on Base Cells and Base Digits:
4.1) Base Cells are undecided;
4.2) Base Cells contain only Base Digits;
4.3) each Base Digit appears as a candidate in at least one of the Base Cells;
4.4) none of the Base Digits is decided in any of the S columns;
- conditions on Target Cells:
4.5) each Target Cell contains at least one Base Digit (plus possibly non-Base Digits);
4.6) together, the Target Cells contain at least two different Base Digits;
4.7) at least one of the Target Cells contains at least one non-Base Digit.


Role of each condition:
- condition 4.1: to avoid degenerated cases;
- condition 4.2: essential in the proof of the elimination rule;
- condition 4.3: minimise k; there is no useless Base Digit (that would reduce the possibilities of elimination);
- condition 4.4: to avoid degenerated cases;
- condition 4.5: to avoid a priori contradictions, that would otherwise result from the Base Digit lemma;
- condition 4.6: to avoid a priori contradictions, that would otherwise result from the Base Digit lemma;
- condition 4.7: to avoid unproductive patterns (allowing no elimination).


Remarks:
4.1) Condition 4.4 may seem to contradict remark 2.4, but it doesn't. It only says that, at the time a Jk-Exocet is spotted, it isn't degenerated; it doesn't say anything about what it becomes later. It merely means we are only looking for non-degenerated Jk-Exocets.
4.2) Condition 4.4 may probably be somehow relaxed; I haven't yet investigated the useful possibilities.




[b]5.) Jk-EXOCET-IN-COLUMNS: ELIMINATION RULE[/b]

Theorem: if a Jk-Exocet is present in some resolution state, then its non-Base Digits can be eliminated (as candidates) from its Target Cells.

Proof:
Let P be some solution (again, we do not suppose uniqueness!) and let a and b be the values of the two Base Cells in P; by condition 4.2, they are Base Digits. By the Base Digit lemma (applied twice, separately to a and b), the values of the two Target Cells must be a and b.
That's valid for any solution P.
If we do not know P, then we do not know what a and b are precisely (we only know that they are Base Digits) and we do not know where exactly each of them will occur in the Target Cells, but this is enough to know that the Target Cells can contain no non-Base Digit in any solution grid.



Remarks:
5.1) The proof of the elimination rule requires at least two Base Digits.
5.2) The total number of candidates in the Base Cells didn't play any role in the proof. IN particular, I've been unable to find anyreason for the usual condition that the Base Cells must be restricted to a set of 3 or 4 digits.
5.3) The number of Base Digits (provided that k ≥ 2) didn't play any role in the proof.





[b]6.) MINIMUM SET OF PATTERNS THAT SHOULD BE USED BEFORE J-EXOCETS[/b]

As appears from the Jk-Exocet lemma, finned-fish are a basic ingredient in J-Exocets. Therefore, they should be applied (and not only the rules in SSTS) before any J-Exocet is searched for.
This is also a matter of mere consistency with the complexity hierarchy. In this respect, many other simple rules should be applied before any Jk-Exocet, e.g. bivalue-chains and g-bivalue-chains of length ≤ 3k+2.




[b]7.) CLASSIFICATION OF THE Jk-EXOCET IN MY HIERARCHY[/b]

The basic factor in the broad classification of a pattern in my hierarchy is the number of CSP-variables (i.e., for Sudoku, of rc-, rn-, cn- or bn- cells) necessary to formulate it.

For a Jk-Exocet, one needs:
- 2 rc-cells for the Base Cells
- 3k cn-cells (3 cn-cells for the S-columns of each Basic Digit)

Broad classification is therefore 3k+2.



--------------------------------------------------------------------------------------------
[b]RESERVED[/b]

If, for any reason appearing anywhere in this thread, the above definitions, theorems or proofs should have to be modified, it will appear here together with the main reason for the modification.
Conversely, if no change appears here, it means they have resisted analysis.




--------------------------------------------------------------------------------------------
[b]FRANKEN EXTENSION[/b]

Franken extension: in condition 2.2, "contained in two rows" can be replaced by "contained in two rows or blocks". The rest goes on unchanged.
Complexity increase for the pattern of cells is by a factor 3 ("2 rows" replaced by "2 rows, or 1 row and 1 block, or 2 blocks").

I call it Franken J-Exocet, because the finned swordfish appearing in the Basic Digit lemma has to be replaced by a finned Franken swordfish.

Any concrete example and comparison of frequency and/or complexity between the Basic and the Franken cases is welcome.




--------------------------------------------------------------------------------------------
[b]LARGER FISH EXTENSIONS[/b]

Extension: there is no a priori reason not to consider situations with 2 S-columns and 1 row satisfying condition 2.1 (finned-x-wing), or 4 S-columns and 3 rows satisfying condition 2.1 (finned-Jellyfish), or even more.
I haven't coded these extensions in SudoRules, but I think that:
- the first is worth exploring;
- the second may lead to rather complex and rare patterns.

Any concrete example and comparison of frequency and/or complexity between the Basic and these extended cases is welcome.



--------------------------------------------------------------------------------------------
[b]BLUE'S EXTENSION[/b] 

(see http://forum.enjoysudoku.com/jexocet-pattern-defintion-t31133-152.html)

There's no reason to restrict the Target Cells to the JE Band. 
From an abstract POV, this extension is the perfect completion of the fish-as-core view.

For easier reference, I copy below part of Blue's post:

[code]
*-------*-------*-------*
| B B . | . . . | . . . |  B = base cells
| . . . | S . . | S . . |  S = fish column cells
| . . . | S . . | S . . |
*-------*-------*-------*
| . . S | S . . | S . . |  T : two S cells are designated as Target Cells
| . . S | S . . | S . . |
| . . S | S . . | S . . |
*-------*-------*-------*
| . . S | S . . | S . . |  Requirement: for each Base Digit, the candidates
| . . S | S . . | S . . |  in the S cells are restricted to two rows and the
| . . S | S . . | S . . |  Target Cells
*-------*-------*-------*
[/code]


The proofs work in much the same way as in the basic case.


Notice that the extension can be done in two stages:

1) allow the Target Cells to be any of the S cells, resp. in the SQ and SR columns;
this entails a complexity increase from 2x2 = 4 possibilities for Target Cells to 8x8 = 64 possibilities, i.e. an increase factor of 16

2) allow one of the Target Cells to be an S cell in the SB column
this entails 6x8x2 new additional possibilities for Target Cells, leading to a total increase factor of 40

Notice that this increase factor of 16 (resp. 40) is only for the pattern of cells. It should be increased by the larger possibilities it opens for Basic Digits.


Any concrete example and comparison of frequency and/or complexity between the basic and Blue's case is welcome.



--------------------------------------------------------------------------------------------
[b]DEGENERATED CASES[/b]

[reserved for summary of degenerated cases and references to where they appear]

possibility of allowing decided Basic Digits in some of the S columns

--------------------------------------------------------------------------------------------









--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

Extensions:

David, p. 8:

Here's an interesting case (one of two) arising from a puzzle posted by Champagne on page 3

The base cells hold 3 digits (124) but in the S cells only one instance of digit (2) is possible - in column 1.
Consequently (2) can be eliminated immediately from the base digits, as either, it would have to occupy both target cells, or one target cell and another cell in sight of the base cells. 

4..........57..6...1..5..2..8.6.9.....3.7.9.....3...4..2..8..1...7..35..........2; ;1;0;r4c5 r6c5 r2c6 r8c4 124
CODE: SELECT ALL
 *-------------------------*-------------------------*-------------------------*
 | <4>     3679    2689    | 289-1   2369-1  1268    | 1378    35789   35789-1 | 
 | 2389    39      <5>     | <7>     239-14  #14-28  | <6>     389     1'34'89 | S 
 | 36789   <1>     689     | 89-4    <5>     468     | 3478    <2>     3789-4  | 
 *-------------------------*-------------------------*-------------------------*
 | 257-1   <8>     124     | <6>     #14-2   <9>     | 1237    357     357-1   | 
 | 1'256   4'56    <3>     | 258-14  <7>     258-14  | <9>     568     1'568   | S 
 | 25679-1 5679    1269    | <3>     #1-2    258-1   | 1278    <4>     5678-1  | 
 *-------------------------*-------------------------*-------------------------*
 | 3569    <2>     469     | 459     <8>     567-4   | 347     <1>     3679-4  | 
 | 1'689   4'69    <7>     | #14-29  269-14  <3>     | <5>     689     4'689   | S 
 | 35689-1 3569-4  14689   | 1459    69-14   567-14  | 3478    36789   <2>     | 
 *-------------------------*-------------------------*-------------------------*
     1       4                                                          14

JExocet:(124)r46c5,r2c6,r8c4 
Eliminations:
r46c5 <> 2 (the partial fish cells can hold only one instance in column 1)
r2c6 <> 28, r8c4 <> 29 (non-base digits in the target cells)
r1c5 <> 1, r289c5 <> 14, r5c46 <> 14, r6c6 <> 1, (seen by the base cells)
r1c4 <> 1, r3c4 <> 4, r7c6 <> 4, r9c6 <> 14 (seen by both target cells) 
r469c1,r146c9 <> 1, r9c2,r37c9 <> 4 (fin cells)










--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

David, p. 15

Double JEs 

Depending on the positions of the base cells and their corresponding targets there may be either 3 or 4 target cells. 

When there are 4 target cells
CODE: SELECT ALL
*-------------*-------------*-------------*    ab" = base digits r1c12  ab' = targets 
| ab" ab" \   | cdx cd' cdx | *   *   *   |    cd" = base digits r3c89  cd' = targets
| cdx cdx cd' | *   \   *   | ab' abx abx |    x  = any other digits 
| *   *   *   | abx ab' abx | \   cd" cd" |    \  = companion cells    
*-------------*-------------*-------------*    *  = abcd can be eliminated
This is how the two pairs of base digits are forced to repeat. 

As with the single JE, the target cells (ab)r2c6,r34 and (cd)r1c5,r2c3 must contain different digits.

1. Unconditional Eliminations 
a) Any base digit in the 6 cells seen by both base pairs and 2 two cells seen by all 4 targets
b) Any non-base digit in the 4 target cells 
c) Fin cells for the partial fish for each of the 4 base digits 

2. Conditional Eliminations 
a) If one of the target cells is known, the same digit can be eliminated from the other 3 target cells. 
b) If any of the cells containing 'x' digits are known, the non-base digits in the same mini-line can be eliminated. 
c) If one of the 'x' digits is locked in a mini-line the other 'x' digits in the mini-line can be eliminated 

3. Pattern Inferences 
a) Instances of the same digit in each pair of target cells are weakly linked 
b) The non base candidates in the mini-lines containing a target cell form a weak inference set
c) A digit confined to a mini-line containing a target cell will make a hidden triple with the true base digits in that target.

4 Proof 
1) The digits occupying the two pairs of base cells must also occupy a target cell to bring the number of truths in the partial fish columns to 3. 
2) But if a digit is true on both pairs of base cells, it can't be true in any of the target cells as each base pair see the target cells for the other. 
3) Consequently no digit can be common to both base pairs and, together, they must hold 4 different digits. 
4) From 1) this in turn will require the 4 target cells to hold one instance of each of the base digits.