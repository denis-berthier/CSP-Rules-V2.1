
## CONTRIBUTING TO CSP-RULES

Any contribution to CSP-Rules is welcome.<br>
There are several ways you can contribute to it, either at the general level or at the level of some of its applications.<br>
The following are non restrictive suggestions.<br>

## Contributing to CLIPS<br>
The most general way of contributing to CSP-Rules would be to add to CLIPS some of the libraries for basic structures that it is missing. In particular: low density graphs or sparse binary matrices. If one has to get out of the CLIPS universe to use such structures, it may be simpler to not use CLIPS at all. Notice that this is mainly a work of interfacing C or C++ code with CLIPS, as such libraries already exist.<br>
I have variants of the existing chain rules that could run faster and use less memory if the existence of a binary link between two candidates could be decided by a fast table look-up.<br><br>


## Contributing to SudoRules<br>
SudoRules is the source of my work on CSP-Rules, but there are some specialised Sudoku specific rules that it doesn't include, such as:<br>
- exotic Fish<br>
- single digit patterns<br>
- variants of the sk-loops<br>
- variants of Exocets<br>
- more rules for Uniqueness<br><br>


## Contributing to SlitherRules<br>
When all the print options are activated, SlitherRules prints out a lot of whips[1]. Most of these are consequences of the W1-equiv and not-W1-equiv rules; this is because I have coded only the H and V implications of these rules, but not their P and B ones.<br>
A main contribution to SlitherRules that would make its output look nicer without turning off some otherwise useful print-options would be to code all these additional eliminations. However, this is a huge amount of work and this is why I haven't done it.<br><br>


## Contributing to the Examples<br>
Adding more examples is not a goal _per se_. However, if you find an example with some interesting characteristics not shown in the other examples, you can propose it for inclusion.<br><br>








