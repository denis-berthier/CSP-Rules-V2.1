LICENSE = since=2005,author=gsf

G ==
X ==
NC ==

BACKDOOR ==
BBSS == 1
LABEL ==
LINE ==
PRINT == 1
SUDZ == 1
SUMMARY == 0
TIMING ==
UNIQUE ==

if SUDZ && "$(CC.HOSTTYPE)" && ! "$(CC.STDINCLUDE:X=bzlib.h:T=F)"
:PACKAGE: ast
end

sudoku :: sudoku.c -lsudz

sudz :LIBRARY: sudzlib.c sudata.c subcanon.c $(SUDZ:+$$(_PACKAGE_ast:?-lbz?-lbz2?))

pseudocoup :: pseudocoup.c

sudocoup :: UNIQUE=1 sudocoup.c

sudocoo :: sudocoo.c

sudz :: sudz.c -lsudz

:TEST: sudoku sudocoo sudocoup pseudocoup

:: README RELEASE NOTES Makefile canon.c data \
	sudoku.mm sudoku+data.mm faq.sudoku.mm ternary.mm

:SAVE: testsudoku.sh testsudoku.out testsudocoup.sh testsudocoup.out \
	testsudocoo.sh testsudocoo.out testpseudocoup.sh testpseudocoup.out
