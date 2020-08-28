
## CONTRIBUTING TO CSP-RULES

Any contribution to CSP-Rules is welcome.<br>
There are several ways you can contribute to it, either at the general level or at the level of some of its applications.<br>
The following are non restrictive suggestions.<br><br>

## General rules of "good conduct" 
Because I was new to GitHub, I haven't followed the usual procedures for my first commits.<br>
Don't follow my bad example. Instead, for any change you want to propose, make a fork and a Pull Request.<br>
Before you propose any change to anything existing, make sure you understand how it works in the current release and what your changes imply. Provide examples.<br>
Read the Basic User Manual before proposing changes to the general CSP-Rules way of working.<br>
Do not make a single Pull Request for unrelated modifications.<br>
For any proposed change, make a clear description of what it does. <br><br>


## Contributing to CLIPS 
The most general way of contributing to CSP-Rules would be to add to CLIPS some of the libraries for basic structures that it is missing.<br>
In particular: low density graphs or sparse binary matrices. If one has to get out of the CLIPS universe to use such structures, it may be simpler to not use CLIPS at all.<br>
Notice that this is mainly a work of interfacing C or C++ code with CLIPS, as such libraries already exist.<br>
I have variants of the existing chain rules that could run faster and use less memory if the existence of a binary link between two candidates could be decided by a fast table look-up. <br><br>


## Contributing to the GENERIC part of CSP-Rules 
It is very unlikely you will find a bug in the generic part of CSP-Rules: it has been tested on millions of puzzles.<br>
If you find possible improvements to the existing generic rules (e.g. speed increases), make sure they are improvements for ALL the applications.<br>
If you have ideas for including additional generic resolution rules, make sure they are really generic and try to provide simple examples for at least 3 different applications.<br><br>



## Contributing to SudoRules 
SudoRules is the source of my work on CSP-Rules, but there are some specialised Sudoku-specific rules that it doesn't include, such as:<br>
- exotic Fish<br>
- single digit patterns<br>
- variants of the sk-loops<br>
- variants of Exocets<br>
- more rules for Uniqueness<br><br>


## Contributing to SlitherRules 
When all the print options are activated, SlitherRules prints out a lot of whips[1]. Most of these are consequences of the W1-equiv and not-W1-equiv rules; this is because I have coded only the H and V implications of these rules, but not their P and B ones.<br>
A main contribution to SlitherRules that would make its output look nicer without turning off some otherwise useful print-options would be to code all these additional eliminations. However, this is a huge amount of work and this is why I haven't done it.<br><br>


## Contributing to the Examples 
Adding more examples is not a goal _per se_. However, if you find an example with some interesting characteristics not shown in the other examples, or an example that provides a better illustration of the existing rules, you can propose it for inclusion or as a replacement for an existing one.<br><br>



