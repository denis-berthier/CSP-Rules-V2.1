# Sudoku_Hierarchical_Classifier
**Computes the universal T&amp;E-classification of Sudoku puzzles and their B, BxB or BxBB sub-classifications**<br><br>

### The author of the Sudoku Hierarchical Classifier (SHC) is François Cordoliani.
#### This software is proposed here on his behalf.<br><br>

The development of the SHC was based on the same references as CSP-Rules or SudoRules (recalled at the end) but the implementations were totally independent.<br>
All the classification results of the SHC and of SudoRules completely coincide on the large collections of puzzles used to compare them.<br>
The SHC is much faster than SudoRules for the functionalities it implements. <br>
As shown by recent discoveries of hard puzzles, the T&E-depth and BxB parts have been very useful in the search for the "hardest" puzzles.<br><br>
For full details about the concepts and theories underlying the SHC, see [CRT] or [PBCS].<br>
For a much shorter (almost) self-contained introduction to them and for the analysis of some of the SHC results, see [HCCS].<br><br>

WARNING 1: Due to possible confusions with the BpB rating, what was previously called the BpB classification is now called the BxB classification. Similarly, what was previously called the BpBB classification is now called the BxBB classification. Corresponding name changes have therefore been made in the command line. Nothing else has changed.<br>

WARNING 2: This new version of the command line abstract syntax is significantly different from version 6.1: it is simpler and it allows using sukakus as inputs. All the commands that were previoulsy valid remain valid - provided that they were consistent (-examples and -puzzle in the same command line is not consistent).<br><br>


### 1) THE SHC FILE STRUCTURE

examples/B-input.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/B-output.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/B-output-expected.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/B-messages.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/BxB-input.tx<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/BxB-output.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/BxB-output-expected.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/BxB-messages.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/BxBB-input.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/BxBB-output.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/BxBB-output-expected.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/BxBB-messages.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TE-input.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TE-output.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TE-output-expected.txt<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/TE-messages.txt<br>
input.txt<br>
LICENSE<br>
output.txt<br>
README.txt<br>
SHC.jar<br>
Expand.jar<br><br>


### 2) RUNNING THE SHC

As SHC is a Java program, you must first make sure you have Java installed on your machine.<br>
The executable version of the SHC is a typical .jar file, SHC.jar, in the SHC root directory. As such, it is launched in that directory, in a standard way, by the following command line:<br>

**\<java\> -jar SHC.jar \<CLASSIF\> (\<PUZZLE-TYPE\>) \<TECHNICAL-OPTIONS\> (\<INOUT-SPECS\>)**
<br>
where, as usual in abstract syntax descriptions:<br>
**▸**	 any part withing chevrons (i.e. \< and \> ) must be expanded; <br>
**▸**	 := means the left-hand side must be expanded according to the right-hand side; <br>
**▸**	 parts within parentheses are optional;<br>
**▸**	 a - sign at the start of a symbol means that it is a keyword;<br>
**▸** a star at the end of a part means "repeat this part any number of times (possibly 0)";<br>
**▸** a vertical bar (|) on the right-hand side of a definition means OR.<br>
Note : a variant is allowed, in which \<TECHNICAL-OPTIONS> and (\<INOUT-SPECS\>) are permuted.<br>
<br>
<br>
**▸**	 **\<java\>** := java | java.exe <br>
(depending on your operating system)<br>
<br>

**▸**	 **\<CLASSIF\>** := version | TE-depth | B | BxB | BxBB; this is a mandatory choice, where you decide which of the four available classifications will be applied to the selection of puzzles defined by the \<INOUT-SPECS\>; (version is considered as the "empty classification"; it only outputs the SHC version number); <br>
<br>

**▸**	 **\<PUZZLE-TYPE\>** := sudoku | sukaku<br>
Default value is sudoku.<br>
<br>

**▸**	 **\<TECHNICAL-OPTIONS\>** := \<technical-option\>*<br>

**▸**	\<technical-option\> := -erase \<erase\> | -auto-end \<auto-end\> | -max-time \<max-time\> | -max-length \<max-length\> | -buffer-size \<buffer-size\>. <br>

**▸**	\<erase\> := true | false;<br>
By default, \<erase\> = true and the output file is emptied before writing new results to it;<br>
you may change this behaviour by specifying "-erase false"; this will allow you to recover your previous calculations in case you forgot to copy them to another file; each time the SHC is launched with this option set to false, a title line recalling which computations follow will be added before the results;<br>
(however, as previously mentioned, if -examples is selected, \<erase\> is automatically set to true and can't be changed; the reason is to allow easy comparisons with the expected results).<br>

**▸**	\<auto-end\> := true | false;<br>
By default, \<auto-end\> is true and the process fully terminates at the end of the computations; set \<auto-end\> to false if you want to recover the behaviour of the first releases (preventing the Windows console to close at the end of the computations, so that you have time to check the messages in the console); this option can be completely ignored by non-Windows users; having \<auto-end\> true by default will allow to more easily include SHC in scripts (in particular in the search for hard puzzles);<br>

**▸**	\<max-time\> is an integer, the maximum time (with default value infinite), in minutes, allocated to the computation of all the puzzles in the input file. Warning to users of old releases: this time limit no longer applies to individual puzzles in the input file.<br>


The following two options should be present only in case \<CLASSIF\> = B, BxB or BxBB; they will be recalled at the start of the program:<br>
**▸**	\<max-length\> is an integer, the maximal length allowed for braids, with default value 8 in case \<CLASSIF\> = B, 14 in case \<CLASSIF\> = BxB and 5 in case \<CLASSIF\> = BxBB; the purpose is to avoid too long calculations of the B rating for very hard puzzles in T&E(1), but to leave a wide margin of possibilities for the BxB classification, allowing to find extreme T&E(2) puzzles up to the highest known ones (i.e. up to B14B); similarly, the largest known value for BxBB is 2, so that 5 leaves a large margin for new possibilities; note that pre-checking that the puzzle(s) is (are) in T&E(1), T&E(2) or T&E(3) is under the user’s responsibility;<br>
**▸**	\<buffer-size\> is an integer defining the maximum number of partial braids the program can store; default value is 1,000,000 if \<CLASSIF\>= B or BxB and 30,000 if \<CLASSIF\>= BxBB; change it only if it is too small. <br>
<br>

**▸** **\<INOUT-SPECS\>** := -examples | \<inout-files\> | -puzzle \<individual-puzzle\> <br>
The absence of any \<INOUT-SPECS\> means that the default values for \<input-file\> and \<output-file\> will be used; they are respectively the “input.txt” and “output.txt” files of the SHC root folder;<br>

**▸**	 **_-examples_**: if the \<INOUT-SPECS\> is -examples, the predefined examples for the classification previously chosen will be run; the input and output files for the examples are  predefined and can't be changed: they are the xxx-input and xxx-output files of the "examples" folder, where xxx = \<CLASSIF\>; adapted specific values are automatically chosen for the technical-options and cannot be changed, except possibly -auto-end;  <br>

**▸**	 **_\<inout-files\>_** := \<input\> \<output\>;<br>
**▸** \<input\> := -input \<input-file\>; <br>
**▸** 	\<output\> := -output \<output-file\>; <br>
**▸**	 \<output-file\> := path to a file; it allows to specify which output file will be used for the results (classifications);<br>
**▸**	 \<input-file\> := path to a file; it allows to specify which input file will be used for the data (sudokus or sukakus, depending on \<PUZZLE-TYPE\>);<br>
Each line of \<input-file\> must start with a \<sudoku-chain\> if \<PUZZLE-TYPE\> is sudoku and a \<sukaku-chain\> if \<PUZZLE-TYPE\> is sukaku; <br>
each line may contain additonal information (e.g. SER, creator...) after the mandatory chain, as is usual in sudoku puzzle collections; it will not be taken into account;<br>
**▸**	 \<sudoku-chain\> := sudoku puzzle in the standard 81-character chain format, with each character an element of {1 2 3 4 5 6 7 8 9 0 .};<br>
**▸**	 \<sukaku-chain\> := sukaku puzzle in the standard 729-character chain format, with each character an element of {1 2 3 4 5 6 7 8 9 0 .}.<br><br>


**▸**	 **_\<individual-puzzle\>_** := \<sudoku-chain+\> | \<sukaku-chain+\> | \<sukaku-file\><br>
**▸**	 \<sudoku-chain+\> := \<sudoku-chain\>\<comments\> (with no space between the two);<br>
**▸**	 \<sukaku-chain+\> := \<sukaku-chain\>\<comments\>  (with no space between the two);<br>
**▸**	 \<comments\> := any chain with no space and no semi-colon;<br>
- \<sudoku-chain+\> is allowed only if \<PUZZLE-TYPE\> is sudoku;<br>
- \<sukaku-chain+\> or \<sukaku-file\> are allowed only if \<PUZZLE-TYPE\> is sukaku;<br>
- in the same way as \<sudoku-chain\> and \<sukaku-chain\> may be followed by additional information in each line  of input-files, additional useless information (\<comments\>) may appear in the command line between the \<sudoku-chain\> or \<sukaku-chain\> and the end of line (or the next option in casse the variant of the syntax is used); however now, for technical reasons related to the operating system, no space or semi-colon may appear in <comments>; underscores may be used instead; in any case, only the 81 or 729 first characters of \<sudoku-chain\> or \<sukaku-chain\> are taken into account.<br>

**▸**	 \<sukaku-file\> := path to a text file with very specific content; allows to deal with almost all the "markings" appearing in sukakus on Sudoku forums:<br>
- the file must have 9 "useful" lines, each containing 9 "cells", where a "useful" line is defined as a line containing at least a digit form {1 2 3 4 5 6 7 8 9};<br> 
- a "useful" line must be composed of 9 "cells" with any number of separators between them;<br>
- a separator is either a space or a member of the 3-element set {| ! :}<br>
- each cell is a chain (without surrounding double quotes) containing at least one digit from {1 2 3 4 5 6 7 8 9} plus any number of "markers" from the sets {a ...z}, {A...Z} and {# & @ $ ( = + - * ^ % ) _ , ; /}; "markers" are widely used on Sudoku forums to refer to patterns.<br>
<br>

### 3) OUTPUT OF THE SHC

For any puzzle, the result of each of the four classifications is an integer, normally positive or null.<br>
However, it may take negative values in the following cases (with corresponding remediations):<br>
-1  &nbsp;&nbsp;&nbsp;this puzzle is not in the right format, or it has no solution, or it has several solutions; check your puzzle;<br>
-2  &nbsp;&nbsp;&nbsp;after the change of meaning for \<max-time\>, this value will no longer appear;<br>
-3  &nbsp;&nbsp;&nbsp;\<buffer-size\> is too small for this puzzle; try increasing it;<br>
-4  &nbsp;&nbsp;&nbsp;other problems encountered, such as: <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<CLASSIF\> is not  relevant for this puzzle (e.g. applying the BxB classification to a puzzle in T&E(3)); check the T&E-depth of this puzzle;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\<max-length\> is too small for this puzzle (in case \<CLASSIF\> = B); try increasing it; note that if you increase \<max-length\>, you may also have to increase \<buffer-size\>.<br><br>

Notice that, in the \<CLASSIF\> = B case, what is computed is actually a **_truncated B rating_**, with all the values above \<max-length\> leading to output -4. <br>
This is justified for two reasons:<br>
▸	in order to keep computation times and memory requirements within reasonable bounds when default values are used;<br>
▸	because, in unbiased statistics, puzzles with B rating greater than 8 are rare.<br><br>
In the SHC view, the main purpose of the B rating is to provide a rough sub-classification of T&E(1). Puzzles in T&E(1) that are beyond the chosen upper bound for chains length are considered as "exceptional".<br><br>



### 4) EXAMPLES

The examples folder contains four collections of puzzles, each adapted to one of the four classifications computed by the SHC.<br>
Each collection is a small part of the large collection of puzzles used by Denis Berthier to compare the SudoRules and SHC results (which also provides a cross validation for both, as they were indepedently implemented in totally different ways).<br>
They are used to illustrate the results one can obtain with the SHC and to give an idea of the computation times one may expect.<br>
For details about the selection of examples, see [HCCS].<br><br>



### 5) EXPANSIONS BY SINGLES
A new functionality has been added to the SHC, considering the needs of the search for the hardest puzzles: expansion by Singles. Expand is launched in the SHC root directory and its nyntax is as follows:<br>
**java -jar Expand.jar (-input \<input-file\>) (-output \<output-file\>) (-erase \<erase\>) (-auto-end \<auto-end\>) (-puzzle \<puzzle>\)**<br>
with all the options working the same way as in SHC.jar.<br><br>




### 6) REFERENCES

[CRT]: BERTHIER D., Constraint Resolution Theories, Lulu.com Publishers, November 2011.<br>
[HCCS1]: BERTHIER D., Hierarchical Classifications in Constraint Satisfaction, Lulu Press, October 2023.<br>
[HCCS2]: BERTHIER D., Hierarchical Classifications in Constraint Satisfaction (Second Edition), Lulu Press, July 2024.<br>
[HCCS]: any of [HCCS1] or [HCCS2].<br>
[PBCS1]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (First Edition), Lulu Press, November 2012.<br>
[PBCS2]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (Second Edition), Lulu Press, July 2015.<br>
[PBCS3]: BERTHIER D., Pattern-Based Constraint Satisfaction and Logic Puzzles (Third Edition), Lulu Press, Novembre 2021.<br>
[PBCS]: any of [PBCS1], [PBCS2] or [PBCS3].<br>
