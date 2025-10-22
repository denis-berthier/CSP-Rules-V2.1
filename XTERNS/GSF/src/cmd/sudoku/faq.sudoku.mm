.xx title="sudoku FAQ"
.MT 4
.TL

.H 1 "sudoku FAQ"
.NL

.LI
the program core dumps / crashes when I do this
.sp
Send a private message with the command line and input data
that exposes the problem.
.sp

.LI
the command line examples crash and burn on windows
.sp
.BR sudoku (1)
is a command line program.
Command line programs require special treatment on windows:
.NL
.LI
Run from a UWIN or Cygwin shell prompt and ignore the rest ...
.LI
'...' is not a windows quoting character.
.LI
Run from
.B cmd.exe
to retain screen output in the
.B cmd.exe
window using using "..." to quote space characters in arguments.
.LI
Place the command line in a batch file,
use "..." to quote space characters,
and double each
.BI % digit
=>
.BI %% digit
to make it literal (% is the batch command argument expansion prefix).
.LI
Place the command line in a shortcut,
use "..." to quote space characters,
double each
.B %
=>
.B %%
to make it literal (% is the system variable expansion prefix).
When the shortcut completes its window is closed, and along with it
any output it may have written to the screen.
You can redirect output using
.B ">" or
.BI -o " file.out"
or add the
.B -W
option to pause until control-C or the window is closed.
.LE
.sp

.LE
