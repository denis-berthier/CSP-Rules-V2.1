
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              GLOBAL VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defglobal ?*LatinRulesLevelSymbol* = "")



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES AND FUNCTIONS RELATED TO GRID SIZE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; like SudoRules, LatinRules has its own way of dealing with the size of  puzzles
;;; grid size is 9 by default, but it can be redefined in the configuration file
(defglobal ?*grid-size* = 9)
(defglobal ?*nb-of-cells* = (* ?*grid-size* ?*grid-size*))
(defglobal ?*nb-csp-variables* = ?*nb-of-cells*)

(defglobal ?*internal-factor-0* =
    (if (< ?*grid-size* 10) then 10 else (if (< ?*grid-size* 100) then 100 else 1000))
)
(defglobal ?*internal-factor* = ?*internal-factor-0*)
(defglobal ?*internal-factor-1* = ?*internal-factor-0*)
(defglobal ?*internal-factor-2* = (* ?*internal-factor* ?*internal-factor*))
(defglobal ?*internal-factor-3* = (* ?*internal-factor-2* ?*internal-factor*))
;;; grid size:
(defglobal ?*grid-size* = (* ?*segment-size* ?*segment-size*))
(defglobal ?*nb-of-cells* = (* ?*grid-size* ?*grid-size*))
(defglobal ?*nb-csp-variables* = ?*nb-of-cells*)



;;; because grid size may be changed in this file, use this function to redefine the associated internal factors
;;; As most Sudoku puzzles are 9x9, we consider it simpler to take them as the default case
;;; (the alternative would be to add an optional variable ?segment-size with default value 3
;;;  to function "solve" and to all the similar functions in file "GENERAL/solve.clp"
;;; ?segment-size could even be computed automatically from the length of the string of givens
;;; but this seems quite useless in most cases


(deffunction redefine-internal-factors ()
    (bind ?*internal-factor-0*
        (if (< ?*grid-size* 10) then 10 else (if (< ?*grid-size* 100) then 100 else 1000))
    )
    ;;; we can't use the "**" function, because it returns a real, not an integer
    (bind ?*internal-factor* ?*internal-factor-0*)
    (bind ?*internal-factor-1* ?*internal-factor*)
    (bind ?*internal-factor-2* (* ?*internal-factor* ?*internal-factor*))
    (bind ?*internal-factor-3* (* ?*internal-factor-2* ?*internal-factor*))
    (bind ?*nb-of-cells* (* ?*grid-size* ?*grid-size*))
    (bind ?*nb-csp-variables* ?*nb-of-cells*)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES USED FOR CONTROLLING WHAT IS PRINTED DURING THE RESOLUTION PROCESS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*has-whips[1]* = FALSE)

(defglobal ?*print-naked-single* = FALSE)
(defglobal ?*print-hidden-single* = FALSE)


(defglobal ?*print-naked-pairs* = FALSE)
(defglobal ?*print-hidden-pairs* = FALSE)
(defglobal ?*print-x-wing* = FALSE)

(defglobal ?*print-naked-triplets* = FALSE)
(defglobal ?*print-hidden-triplets* = FALSE)
(defglobal ?*print-swordfish* = FALSE)

(defglobal ?*print-xy-wing* = FALSE)
(defglobal ?*print-xy3-chain* = FALSE)
(defglobal ?*print-hxy3-chain* = FALSE)
(defglobal ?*print-xyz-wing* = FALSE)
(defglobal ?*print-xyt3-chain* = FALSE)
(defglobal ?*print-xyzt3-chain* = FALSE)

(defglobal ?*print-naked-quads* = FALSE)
(defglobal ?*print-hidden-quads* = FALSE)
(defglobal ?*print-jellyfish* = FALSE)


;;;; print chain rule firings according to specific categories of chains
(defglobal ?*print-xy-chain* = FALSE)
(defglobal ?*print-xy4-chain* = FALSE)
(defglobal ?*print-xy5-chain* = FALSE)
(defglobal ?*print-xy6-chain* = FALSE)
(defglobal ?*print-xy7-chain* = FALSE)
(defglobal ?*print-xy8-chain* = FALSE)
(defglobal ?*print-xy9-chain* = FALSE)
(defglobal ?*print-xy10-chain* = FALSE)
(defglobal ?*print-xy11-chain* = FALSE)
(defglobal ?*print-xy12-chain* = FALSE)
(defglobal ?*print-xy13-chain* = FALSE)
(defglobal ?*print-xy14-chain* = FALSE)
(defglobal ?*print-xy15-chain* = FALSE)
(defglobal ?*print-xy16-chain* = FALSE)

(defglobal ?*print-hxy-chain* = FALSE)
(defglobal ?*print-hxy4-chain* = FALSE)
(defglobal ?*print-hxy5-chain* = FALSE)
(defglobal ?*print-hxy6-chain* = FALSE)
(defglobal ?*print-hxy7-chain* = FALSE)
(defglobal ?*print-hxy8-chain* = FALSE)
(defglobal ?*print-hxy9-chain* = FALSE)
(defglobal ?*print-hxy10-chain* = FALSE)
(defglobal ?*print-hxy11-chain* = FALSE)
(defglobal ?*print-hxy12-chain* = FALSE)
(defglobal ?*print-hxy13-chain* = FALSE)

(defglobal ?*print-conjugacy* = FALSE)

(defglobal ?*print-xyz-chain* = FALSE)
(defglobal ?*print-xyz4-chain* = FALSE)
(defglobal ?*print-xyz5-chain* = FALSE)
(defglobal ?*print-xyz6-chain* = FALSE)
(defglobal ?*print-xyz7-chain* = FALSE)
(defglobal ?*print-xyz8-chain* = FALSE)
(defglobal ?*print-xyz9-chain* = FALSE)
(defglobal ?*print-xyz10-chain* = FALSE)
(defglobal ?*print-xyz11-chain* = FALSE)
(defglobal ?*print-xyz12-chain* = FALSE)
(defglobal ?*print-xyz13-chain* = FALSE)

(defglobal ?*print-hxyz-chain* = FALSE)
(defglobal ?*print-hxyz4-chain* = FALSE)
(defglobal ?*print-hxyz5-chain* = FALSE)
(defglobal ?*print-hxyz6-chain* = FALSE)
(defglobal ?*print-hxyz7-chain* = FALSE)
(defglobal ?*print-hxyz8-chain* = FALSE)
(defglobal ?*print-hxyz9-chain* = FALSE)
(defglobal ?*print-hxyz10-chain* = FALSE)
(defglobal ?*print-hxyz11-chain* = FALSE)
(defglobal ?*print-hxyz12-chain* = FALSE)
(defglobal ?*print-hxyz13-chain* = FALSE)

(defglobal ?*print-xyt-chain* = FALSE)
(defglobal ?*print-xyt4-chain* = FALSE)
(defglobal ?*print-xyt5-chain* = FALSE)
(defglobal ?*print-xyt6-chain* = FALSE)
(defglobal ?*print-xyt7-chain* = FALSE)
(defglobal ?*print-hxyt7-chain* = FALSE)
(defglobal ?*print-xyt8-chain* = FALSE)
(defglobal ?*print-xyt9-chain* = FALSE)
(defglobal ?*print-xyt10-chain* = FALSE)
(defglobal ?*print-xyt11-chain* = FALSE)
(defglobal ?*print-xyt12-chain* = FALSE)
(defglobal ?*print-xyt13-chain* = FALSE)
(defglobal ?*print-xyt14-chain* = FALSE)
(defglobal ?*print-xyt15-chain* = FALSE)
(defglobal ?*print-xyt16-chain* = FALSE)

(defglobal ?*print-hxyt-chain* = FALSE)
(defglobal ?*print-hxyt4-chain* = FALSE)
(defglobal ?*print-hxyt5-chain* = FALSE)
(defglobal ?*print-hxyt6-chain* = FALSE)
(defglobal ?*print-hxyt8-chain* = FALSE)
(defglobal ?*print-hxyt9-chain* = FALSE)
(defglobal ?*print-hxyt10-chain* = FALSE)
(defglobal ?*print-hxyt11-chain* = FALSE)
(defglobal ?*print-hxyt12-chain* = FALSE)
(defglobal ?*print-hxyt13-chain* = FALSE)

(defglobal ?*print-xyzt-chain* = FALSE)
(defglobal ?*print-xyzt4-chain* = FALSE)
(defglobal ?*print-xyzt5-chain* = FALSE)
(defglobal ?*print-xyzt6-chain* = FALSE)
(defglobal ?*print-xyzt7-chain* = FALSE)
(defglobal ?*print-xyzt8-chain* = FALSE)
(defglobal ?*print-xyzt9-chain* = FALSE)
(defglobal ?*print-xyzt10-chain* = FALSE)
(defglobal ?*print-xyzt11-chain* = FALSE)
(defglobal ?*print-xyzt12-chain* = FALSE)
(defglobal ?*print-xyzt13-chain* = FALSE)

(defglobal ?*print-hxyzt-chain* = FALSE)
(defglobal ?*print-hxyzt4-chain* = FALSE)
(defglobal ?*print-hxyzt5-chain* = FALSE)
(defglobal ?*print-hxyzt6-chain* = FALSE)
(defglobal ?*print-hxyzt7-chain* = FALSE)
(defglobal ?*print-hxyzt8-chain* = FALSE)
(defglobal ?*print-hxyzt9-chain* = FALSE)
(defglobal ?*print-hxyzt10-chain* = FALSE)




(defglobal ?*print-uniqueness* = FALSE)














