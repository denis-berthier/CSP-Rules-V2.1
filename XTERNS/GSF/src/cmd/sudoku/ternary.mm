.xx noindex
.MT 4
.TL
A Ternary Monoid for Sudoku Coloring
.AU "gsf"

.H 1 "Introduction"
A traditional 9x9 sudoku puzzle can be modeled as a multigraph with 81 vertices,
one for each cell, where the edges represent the row, column and box cell value
constraints between cells.
The 9 cell values are represented as the edge colors 1 through 9.
A sudoku solution corresponds to a vertex coloring of the multigraph.

.H 1 "Edge Types"
In this model there are four edge types for each of the 9 colors:
.VL 6
.LI
.B 0-edge
No relationship.
.LI
.B 1-edge
If one vertex is color
.I c
then the other vertex is not color
.IR c .
.LI
.B 2-edge
If one vertex is not color
.I c
then the other vertex is.
.LI
.B 3-edge
One vertex is color
.I c
if and only if the other vertex is not.
A 3-edge is both a 1-edge and a 2-edge (conveniently 3=1+2).
.LE
.P
In some sudoku formulations 1-edges and 2-edges are considered
.I weak
and 3-edges are considered
.IR strong .

.H 1 "Color Induced Subgraphs"
Each color induces a subgraph (a graph, not a multigraph) on the
original multigraph that can be examined independently.
In particular, some edge configurations can be shown to admit or
preclude the induced color on constituent vertices.
The remainder of this note assumes edges in the color induced subgraphs.

.H 1 "Edge Relationships"
Two edges that share at least one vertex are
.IR adjacent .
Adjacent edges can be joined to form a
.IR path .
A
.I cycle
is a path where every edge is adjacent to two other edges.
The cycle size is the number of edges in the cycle.
The smallest cycle size is 3.
A
.I segment
is a subset of edges that form a path.
Segments of size three (three edges) can be combined to form a new edge
according to the following ternary "multiplication" table on the four
edge types:
.P
.L

.DS

      000 0      100 0      200 0      300 0
      010 0      110 0      210 0      310 0
      020 0      120 0      220 0      320 0
      030 0      130 0      230 0      330 0
      001 0      101 0      201 0      301 0
      011 0      111 0      211 0      311 0
      021 0      121 1      221 0      321 1
      031 0      131 1      231 0      331 1
      002 0      102 0      202 0      302 0
      012 0      112 0      212 2      312 2
      022 0      122 0      222 0      322 0
      032 0      132 0      232 2      332 2
      003 0      103 0      203 0      303 0
      013 0      113 0      213 2      313 2
      023 0      123 1      223 0      323 1
      033 0      133 1      233 2      333 3
.DE
.R

.P
For example, a segment { 1-edge 3-edge 1-edge } (denoted 131) is equivalent
to a single 1-edge.
0 is the multiplicative zero: a 0-edge in combination with any other
two edges is equivalent to a 0-edge.
From a coloring viewpoint 0-edges provide zero information.
The multiplicative identity element is an adjacent pair of 3-edges:
adjacent 3-edges in combination with any other edge type is equivalent to
that edge type.

.H 1 "Ternary Monoid"
A
.I monoid
is a set with an associative
.I operation
on the set elements that also contains an identity element.
Edge multiplication operates on three edges, hence
.IR ternary .
The ternary operator is
.IR closed ,
a monoid requirement.
This particular monoid also has a multiplicative zero element.

.H 1 "Relationship to Coloring"
Cycles are the key to extracting coloring information.
Using ternary edge multiplication any odd cycle can be
collapsed into a tri-cycle (cycle of size three).
This next figure shows the seven tri-cycles that provide
coloring information.
.L

.DS

        (0)            (0)            (0)
        / \\            / \\            / \\ 
       1   1          1   1          3   3
      /     \\        /     \\        /     \\ 
     *---2---*      *---3---*      *---2---* 

        112            113            233



        (1)            (1)            (1)            (1)
        / \\            / \\            / \\            / \\ 
       2   2          2   3          3   3          2   2
      /     \\        /     \\        /     \\        /     \\ 
     *---1---*      *---1---*      *---1---*      *---3---* 

        122            123            133            223

.DE
.R

.P
(0) means that the vertex cannot be the induced subgraph color, and
(1) means that the vertex must be the induced subgraph color.
The tri-cycles 111, 222, 333, and any tri-cycles containing 0-edges do
not provide any assignment/elimination information.

.H 1 "Cycle Coloring Algorithm"
The cycle coloring algorithm is simple:
.P
.NL
.LI
Induce a subgraph for each color.
.LI
Determine the type 1,2,3 edges.
.LI
Combine edges into paths until odd cycles are formed.
.LI
Collapse each odd cycle into a tri-cycle using the ternary multiplication operator.
If the tri-cycle matches one of the seven forms above then
apply the color elimination or assignment.
.LE

.H 1 "X and Y cycles"
X cycles contain 1-edges and 3-edges.
Y cycles contain all edge types.
Even though all edge types correspond to one color in the induced subgraph,
2-edges are formed by bi-value vertices in the original multigraph,
and then mapped into the subgraph.
A bi-value vertex can admit only one of two colors.
A single 2-edge consists of one or more edges between bi-value vertices in
the multigraph, where both endpoints contain the induced subgraph color.
.P
2-edge construction can lead to contradictions in the multigraph
(and not by cycles in the induced subgraph).
These contradictions are called
.IR y-knots .

.H 1 "The Algorithm in Action"
Download my solver and run it with the
.B -v2
option on some puzzles known to require/contain coloring,
turbot fish, kites, and or skyscrapers.
The X and Y cycles are labeled, and the collapse from full cycles
to tri-cycles is denoted by "=>".
.P
For example, this puzzle
.DS
  ......5.9..7..462.....2..7......6.134.6...8.587.1......2..7.....358..2..1.8......
.DE
contains a few y-cycles and y-knots:

.DS
  y-cycle  5  9  6a [21]-[71][92][97]=[33]-  =>  [21]-[97]=[33]-
.DE
denotes a Y cycle number 5 on color 9 of size 6 (6 vertices, 6 edges).
Cycle numbers may be passed to the -Kc option to display cycles in postscript.
In the cycle output,
1-edges are denoted by "-" ([21]-[71]),
2-edges are denoted by "=" ([97]=[33]),
and 3-edges are denoted by adjacent vertex labels ([71][92]).
The size for x-cycles and y-cycles includes sizes for segments hidden
by 2-edges and
.IR "box hinges" .
A box hinge is a pseudo 1-edge formed by two 1-edges that meet at a right
angle in a box.
e.g., [97]=[33] contains some bivalue edges not displayed in the
.B -v2
trace.
.B -v3
lists the y-edge details, which for [97]=[33] is:
.DS
  y-edge      9  3  [33]1[37]3[97]9
.DE
(color 9, size 3, no edge type notation between vertices).
This cycle collapses to a 112 tri-cycle: two 1-edges ([21]-[97] and [33]-[21])
and one 2-edge ([97]=[33]).
From the 112 tri-cycle figure above, vertex (cell) [21] cannot be the color 9.
.P
.DS
  y-cycle  4  5  9a [96]-[66][65][25]=[98]  =>  [96]-[78][98]-
.DE
denotes a Y cycle number 4 on color 5 of size 9 (9 vertices, 9 edges).
The [25]=[98] details (listed by
.BR -v3 )
are:
.DS
  y-edge      5  6  [25]1[29]8[79]1[78]8[18]3[98]5
.DE
(color 5, size 6).
This cycle collapses to a 113 tri-cycle with two 1-edges ([96]-[78] and [98]-[96])
and one 3-edge ([78][98]).
From the 113 tri-cycle figure above vertex (cell) [96] cannot be the color 5.
.P
This cycle exposes a deficiency in the y-cycle trace.
The algorithm collapses edge segments as it progresses and must emit hints
for cycle reconstruction.
In some cases the reconstruction may trace artifacts of the algorithm rather
than the actual segments from the original cycle.
.B -v5
displays the original edge triplets (four vertices) that are used by the
reconstruction.
In this case the following triplets were used (to seemingly pull [78] from thin air):
.DS
  y-trip 190  5     [96]-[25][65]-[78]
  y-trip 184  5     [78][98]=[25][65]
.DE
Although the display may seem incorrect, the underlying logic is sound.
.P
This y-knot
.DS
  y-knot   8  1  9z [25]5[34]3[14]7[54]2[56]7[16]8[18]3[29]8[22]5[25]5
.DE
is on color 8 and contains 9 vertices/edges.
The y-knot premise is that the first cell is not the color ([25]!=8).
In this case it leads to the contradiction [22]=5 and [25]=5;
therefore [25]=8.
y-knots are essentially y-edges
.IR "gone bad" .

.H 1 "Pseudo Edges"
The beauty of the ternary edge collapse algorithm is that only edge types matter,
not how the edges were derived.
2-edges show that edges need not follow intuitive paths through a sudoku puzzle grid,
and there are other 1-edge derivations besides
.IR "cell [rc] sees cell [r'c']" .
One such derivation is the
.I "box hinge"
illustrated by this puzzle:
.DS
  6..8352.9.89.......5219..8.92..8.7.383.9..4..41..23896.983.........7893...3.591.8

    6     47   147  |  8     3     5   |  2    147    9
   137    8     9   | 2467   46   2467 | 356  14567  1457
    37    5     2   |  1     9    467  |  36    8     47
  ------------------+------------------+------------------
    9     2     56  | 456    8    146  |  7     15    3
    8     3    567  |  9     16   167  |  4    125   125
    4     1     57  |  57    2     3   |  8     9     6
  ------------------+------------------+------------------
   1257   9     8   |  3    146   1246 |  56  24567  2457
   125    46   1456 | 246    7     8   |  9     3    245
    27   467    3   | 246    5     9   |  1    2467   8
.DE
If [79]=4 (cell r7c9 is color 4) then [78][76][75]^4 (cells r7c568 are not color 4)
and one of [84] or [94] must be 4, which implies [44]^4 and [24]^4.
Hinges are traced by
.BR -v4 :
.DS
  x-hinge     4  8  [79][44]
.DE
which denotes and x-hinge on color 4 in box 8 with cells [79][44].
x-hinges are treated as normal 1-edges by the ternary collapse algorithm.
Here is the x-cycle that incorporates the hinge:
.DS
  x-cycle  1  4  6a [79]-[39][36]-[46][44]-  =>  [79]-[46][44]-
.DE
The cycle size 6 includes 1 for the hinge.
Tri-cycle type 113 means that cell r7c9 cannot be color 4, denoted this
way in the trace:
.DS
  X1  [79]^4
.DE
which reads: 1 X cycle elimination; r7c9 cannot be color 4.

.H 1 "Conclusion"
The literature has no concrete (i.e., useful) examples of ternary monoids or other algebras.
My original notes on this are dated 2005-10-21 -- talk about writer's block.
