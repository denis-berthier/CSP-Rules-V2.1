.xx noindex
.MT 4
.TL
sudoku data

.H 1
This directory contains NxN sudoku data, where N is the square of the
sudoku box size B.

.VL 2
.LI
.xx link="q1-hardest.dat"
The "hardest" puzzles scraped from the forums, sorted by my solver's
.B -q1
rating in reverse order.
.LE

.H 1
The remaining file names follow the form \fIname-N-serial\fP\fB.dat\fP for
uncompressed data and \fIname-N-serial\fP\fB.gz\fP for
.BR gzip (1)
compressed data.
In general
.B .gz
files must be uncompressed before processing.
.BR sudoku (1)
and
.BR sudocoo (1)
process \fB*-9-*.dat\fP files.
.BR sudocoup (1)
processes files up to N=64 (where N is a compile time option) and
.BR pseudocoup (1)
processes all size
.B N
files (where N is a compile time option), modulo memory constraints.
.B pseudocoup
algorithms leave room for improvement.

.VL 2
.LI
.xx link="inferior-9-1.dat"
Player's forum
.xx link="http://www.sudoku.com/forums/viewtopic.php?t=3609	inferior thread"
data scraped from the forum and collected from a long running
.BR sudoku (1)
with these options:
.EX
-g
-e "V"
-f "%#tq,%(steps)x,%(clues)x,%(minimal)[-][M][SM]x,%#0v,gsf,%(%Y-%m-%d:%H:%M)T"
-q{FN}-G -B
-m -sg
-Ysudoku17.dat -Z1000000
.EE
.L "-q{FN}-G -B"
specifies the
.I inferior
criterion: naked and hidden single placements / eliminations applied in batches.
The output is piped into the AT&T ast
.BR sort (1)
with a plugin that gleans minima (and / or maxima) from a continuous data stream:
.EX
sort -t, -k1,1 -k2,2n -lglean,flush,min="3,3n",min="4,4" inferior.dat - > inferior-g.dat
.EE
where
.B inferior.dat
is the previous minimal catalog and
.B inferior-g.dat
contains new minima in monotonic decreasing order, which must be re-sorted to collect
the new minimal inferior puzzles.
The data is CSV (comma separated value), one puzzle per line, where the first line
describes the fields.
.BR sudoku (1)
uses the first line to determine the CSV field that contains the puzzle.
.sp
The following table lists the minimal # clues by symmetry (rows) and steps (columns):
.EX
     1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31
  O 34 28 25 23 22 18 18 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 18 18 18 18
  I 40 32 28 28 24 24 24 20 24 24 24 24 24 24 25 24 28 28 28 21 21 21 24 24 24 20 24 -- -- -- --
 II 40 32 24 24 21 20 20 20 24 24 24 24 24 24 24 24 24 24 28 24 20 24 28 28 28 -- -- -- -- -- --
III 40 32 28 25 22 22 22 22 24 24 24 24 24 24 24 23 24 24 24 26 24 24 -- 24 -- -- -- -- -- -- --
 IV 39 31 26 26 24 20 20 20 24 24 23 23 23 22 23 24 24 24 24 23 19 24 22 24 26 -- -- -- -- -- --
  V 38 31 26 24 20 20 18 18 22 22 21 22 21 22 22 22 22 22 22 22 20 22 19 24 19 23 25 20 -- -- --
 VI 38 31 27 24 23 23 22 20 22 22 22 22 22 21 21 22 22 21 22 22 22 24 23 23 23 24 -- -- -- -- --
VII 38 30 25 23 22 22 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 22 21 23 24 23 -- -- --
.EE
.LI
.xx link="ulterior-9-1.dat"
Player's forum
.xx link="http://www.sudoku.com/forums/viewtopic.php?t=4193	ulterior thread"
data scraped from the forum and collected from a long running
.BR sudoku (1)
with these options:
.EX
-g
-e "V"
-f "%#tq,%(steps)x,%(clues)x,%(minimal)[-][M][SM]x,%#0v,gsf,%(%Y-%m-%d:%H:%M)T"
-q{B2:N}-G -Q!{FN} -AB
-m -sg
-Ysudoku17.dat -Z1000000
.EE
.L "-q{B2:N}-G -Q!{FN} -AB"
specifies the
.I ulterior
criterion: box-line type 2 placements / eliminations applied as a batch; hidden single placements
applied as a batch; and the combined B2:N placements / eliminations counted as one step, and in
addition, not solveable by naked and hidden singles.
The output is piped into the AT&T ast
.BR sort (1)
with a plugin that gleans minima (and / or maxima) from a continuous data stream:
.EX
sort -t, -k1,1 -k2,2n -lglean,flush,min="3,3n",min="4,4" ulterior.dat - > ulterior-g.dat
.EE
where
.B ulterior.dat
is the previous minimal catalog and
.B ulterior-g.dat
contains new minima in monotonic decreasing order, which must be re-sorted to collect
the new minimal ulterior puzzles.
The data is CSV (comma separated value), one puzzle per line, where the first line
describes the fields.
.BR sudoku (1)
uses the first line to determine the CSV field that contains the puzzle.
.sp
The following table lists the minimal # clues by symmetry (rows) and steps (columns):
.EX
     1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33
  O -- -- -- 30 -- 18 18 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 17 18 17 18 18
  I 48 40 32 40 32 28 28 28 28 28 28 24 24 28 24 24 28 28 28 -- -- 28 -- -- 20 -- 20 -- -- -- -- -- --
 II -- 36 32 36 28 28 28 24 24 24 24 24 24 24 24 24 24 25 24 28 28 25 24 28 -- -- -- -- -- -- -- -- --
III -- -- 32 32 29 28 26 25 26 24 26 24 24 24 24 24 24 26 26 26 24 28 30 22 -- -- -- -- -- -- -- -- --
 IV -- -- 30 34 28 28 26 25 24 24 24 24 24 24 24 24 24 24 24 26 25 24 30 -- -- -- 24 -- -- -- -- -- --
  V -- -- -- 36 28 24 24 24 22 22 22 22 22 22 22 22 22 22 22 22 22 22 22 22 24 20 20 -- -- -- -- -- --
 VI -- -- -- 32 27 24 24 23 23 23 23 22 22 22 22 22 22 22 22 23 23 22 24 23 24 25 25 25 -- -- -- -- --
VII -- -- 32 32 27 24 24 23 18 18 18 18 18 18 18 18 18 18 18 18 22 18 18 22 18 24 18 18 -- -- -- -- --
.EE
.LI
.xx link="p-144-1.gz"
70.1% clue 144x144 puzzle generated by
.BR pseudocoup (1).
Generation time 13m29s, solution time 14.2s, @ 3.2Ghz.
.LI
.xx link="p-256-1.gz"
75.3% clue 256x256 puzzle generated by
.BR pseudocoup (1).
Generation time 11h29m, solution time 3m26s, @ 3.2Ghz.
.LE
