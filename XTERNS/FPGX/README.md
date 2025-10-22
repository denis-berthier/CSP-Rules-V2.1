## FPGX is a faster derivative of Sudoku Explainer

#### PGExplainer is 1to9only's version of Sudoku Explainer. 
It is available here: https://github.com/1to9only/PGExplainer , where more detail about the available options can be found.<br>
It is a faster and parallelised version of Sudoku Explainer.<br>

1to9only says: "PGExplainer is a Minimal SudokuExplainer, to rate (ER/EP/ED) sudoku puzzles.<br>
It is Nicolas Juillerat's SudokuExplainer 1.2.1, with Glenn Fowler's serate code (SE 1.2.1.3), with the multi-threaded chaining code from SukakuExplainer, and with a number of additional code changes by me.<br>
All code not needed in the serate process have also been removed."<br>

Usage:<br>
java -cp PGExplainer.jar sudoku.serate --input=input.txt --output=output.txt<br>
Replace "java" by "java.exe" on Windows.<br><br>


#### PGXplainer is also due to 1to90nly. 
It is available here: https://github.com/1to9only/PGXplainer .<br>
1to9only says: "This is a clone of [PGExplainer] with my fixed lksudoku's fix to Chaining."<br>
It fixes some problems of isomorphism dependency in SudokuExplainer.<br><br>


#### FPGX includes into PGXplainer speed improvements made to PGExplainer by creint.
It is thus a faster version of PGXplainer. <br>
It is also a faster version of the original Sudoku Explainer, with fixes for some problems of isomorphism dependency.
FPGX is the version used to produce the FPGX ratings in the small CB collection folders.<br>
See [HCCS] for my own estimates of the (noticeable) speed improvements.


If, for any reason, you want to recompile FPGX:<br>
go to the root FPGX folder and type:<br>
javac -g:none -Xlint -d class src/sudoku/*.java<br><br>

If you want to re-build the jar  file, go to the class sub-folder (cd class) and type:<br>
jar -cfm ../FPGX.jar META-INF/MANIFEST.MF *<br><br>

To run FPGX, go to the root FPGX folder and type:<br>
java -jar FPGX.jar --input=input.txt --output=output.txt<br>

options:
* the -M option allows to rate sudokus with Multiple solutions (it disables the rules for uniqueness);
* the -N and -D options disable Nested and Dynamic chains<br>
