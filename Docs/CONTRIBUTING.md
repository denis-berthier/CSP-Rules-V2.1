
## CONTRIBUTING TO CSP-RULES

Any contribution to CSP-Rules is welcome.<br>
There are several ways you can contribute to it, either at the general level or at the level of some of its applications.<br>
The following are non restrictive suggestions, any other idea is welcome, but **the general rules of good conduct will be applied strictly: no PR that doesn't respect them will be taken into consideration**.<br>
As a general background for these rules, you should always keep in mind that **the CSP-Rules user is not supposed to be a programmer, let alone an expert one**.<br><br>

## General rules of "good conduct" 

* Because I was new to GitHub, I haven't followed the usual procedures for my first commits. Don't follow my bad example. Instead, for any change you want to propose, make a fork and a Pull Request.<br><br>

* **Before you propose any change to anything existing, make sure you understand how it works in the current release and what your changes imply**. Provide examples, if they are useful to understand the proposed changes.<br>
* **Read the Basic User Manual** before proposing changes to the general CSP-Rules way of working or to the configuration files (the latter are the interface between CSP-Rules and the user).<br>
* Before proposing any change, test it thouroughly on your local machine(s) and make sure it is not dependent on your OS or your local settings, write a clear description of what it does.<br>
* Priorities among changes are as follows (higher priorities first):
    - changes that fix a bug,<br> 
    - changes that add new functionalities,<br>
    - changes that (for some reason  to be explained) modify something that works.<br><br>

* **CSP-Rules is designed to be runnable from any directory**. Don't propose changes that would restrict this freedom of use.<br>
* **Don't propose changes that would make CSP-Rules globally dependent on any external software** (other than its already existing dependency on CLIPS). Exceptionally, such dependencies may be accepted for additional parts that have no impact on the normal working of CSP-Rules (such as running automatic tests of an application).<br>
* Do not make a single Pull Request for unrelated modifications.<br>


## Contributing to CLIPS 
The most general way of contributing to CSP-Rules would be to add to CLIPS some of the libraries for basic structures that it is missing.<br>
In particular: low density graphs or sparse binary matrices. If one has to get out of the CLIPS universe to use such structures, it may be simpler in the end not to use CLIPS at all.<br>
Notice that this is mainly a work of interfacing C or C++ code with CLIPS, as such libraries already exist.<br>
I have variants of the existing chain rules that could run faster and use less memory if the existence of a binary link between two candidates could be decided by a fast table look-up. <br><br>


## Contributing to the GENERIC part of CSP-Rules 
It is very unlikely you will find a bug in the generic part of CSP-Rules: it has been tested on millions of puzzles.<br>
If you find possible improvements to the existing generic rules (e.g. speed increases), make sure they are improvements for ALL the applications.<br>
If you have ideas for including additional generic resolution rules, make sure they are really generic and try to provide simple examples for at least 3 different applications.<br><br>



## Contributing to SudoRules 
SudoRules is the source of my work on CSP-Rules, but there are some specialised Sudoku-specific rules that it doesn't include, such as:<br>
- exotic Fish (a good way to do your first steps in CLIPS programming, as you can start from the existing Fish rules)<br>
- single digit patterns<br>
- variants of the sk-loops<br>
- variants of JExocets<br>
- more rules for Uniqueness<br><br>


## Contributing to SlitherRules 
When all the print options are activated, SlitherRules prints out a lot of whips[1]. Most of these are consequences of the W1-equiv and not-W1-equiv rules; this is because I have coded only the H and V implications of these rules, but not their P and B ones. They can easily be discarded by setting <br>
A main contribution to SlitherRules that would make its output look nicer without turning off some otherwise useful print-options would be to code all these additional eliminations. However, this is a huge amount of work and this is why I haven't done it.<br><br>


## Contributing to the Examples 
Adding more examples is not a goal _per se_. However, if you find an example with some interesting characteristics not shown in the other examples, or an example that provides a better illustration of the existing rules, you can propose it for inclusion or as a replacement for an existing one.<br><br>


## Adding a graphical interface
The user interacts with a CSP-Rules application by choosing in the associated configuration file which rules he wants to apply (and which kind of output he wants). One may want to replace this by a graphical interface, where the same functionalities would be provided by buttons. Portability across platforms should be taken into consideration. I recommend contactig me before starting work on this topic.<br><br>








