
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              SOLVE
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





;;; BEWARE : ALL THIS IS HIGHLY NON OPTIMISED


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for initializing grid structure 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction redefine-instance-globals (?nb-rows ?nb-columns)
    (bind ?*QL-max* 0)
    (bind ?*Effective-colours* FALSE)
    (bind ?*sum-of-givens* 0)
    (bind ?*cells-with-a-given* (create$))
    ;;; redefine the global variables, depending on grid sizes
    (bind ?*grid-size* (max ?*nb-rows* ?*nb-columns*))
    (bind ?*internal-factor* (if (<= ?*grid-size* 8) then 10 else 100))
    (bind ?*internal-factor-1* ?*internal-factor*)
    (bind ?*internal-factor-2* (* ?*internal-factor-1* ?*internal-factor-1*))
    (bind ?*internal-factor-3* (* ?*internal-factor-2* 10))
    (bind ?*internal-factor-4* (* ?*internal-factor-3* 100))
    (bind ?*nb-rows* ?nb-rows)
    (bind ?*nb-columns* ?nb-columns)
    (bind ?*nb-rc-cells* (* (+ ?*nb-rows* 2) (+ ?*nb-columns* 2)))
    (bind ?*nb-H-sides* (* ?*nb-rows* (+ ?*nb-columns* 1)))
    (bind ?*nb-V-sides* (* (+ ?*nb-rows* 1) ?*nb-columns*))
    (bind ?*nb-csp-variables* (+ ?*nb-rc-cells* ?*nb-H-sides* ?*nb-V-sides*))
    (bind ?*rows* (subseq$ ?*potential-rows* 1 (+ ?*nb-rows* 2)))
	(bind ?*columns* (subseq$ ?*potential-columns* 1 (+ ?*nb-columns* 2)))
)

    
(deffunction init-generalities ()

    ;;; directions
    (assert (cardinal-point n))
    (assert (cardinal-point e))
    (assert (cardinal-point s))
    (assert (cardinal-point w))
    (assert (diagonal-vector nw))
    (assert (diagonal-vector ne))
    (assert (diagonal-vector se))
    (assert (diagonal-vector sw))
    
    ;;; binary and ternary values
    (assert (binary-value 0))
    (assert (binary-value 1))
    (assert (ternary-value 0))
    (assert (ternary-value 1))
    (assert (ternary-value 2))
    
    ;;; N values
    (assert (N-value 0))
    (assert (N-value 1))
    (assert (N-value 2))
    (assert (N-value 3))
    
    ;;; csp-variable types
    (assert (csp-variable-type N))
    (assert (csp-variable-type H))
    (assert (csp-variable-type V))
    (assert (csp-variable-type P))
    (assert (csp-variable-type B))
    (assert (csp-variable-type I))

    ;;; rows and columns
	(bind ?row 0)
	(while (<= ?row (+ ?*nb-rows* 1)) (assert (row ?row)) (bind ?row (+ ?row 1)))
	(bind ?col 0)
	(while (<= ?col (+ ?*nb-columns* 1)) (assert (column ?col)) (bind ?col (+ ?col 1)))

    ;;; corners
    (assert (inner-corner 1 1 nw))
    (assert (inner-corner 1 ?*nb-columns* ne))
    (assert (inner-corner ?*nb-rows* 1 sw))
    (assert (inner-corner ?*nb-rows* ?*nb-columns* se))
    
	;;; P and B value-numbers
    (assert (P-and-B-variable-scopes----------------------------------------------))
	(bind ?i 1)
	(while (<= ?i 7) 
        (bind ?nb (nth$ ?i ?*P-value-numbers*))
        (assert (P-value-number ?nb)) 
        (bind ?i (+ ?i 1))
    )
	(bind ?i 1)
	(while (<= ?i 15) 
        (bind ?nb (nth$ ?i ?*B-value-numbers*))
        (assert (B-value-number ?nb)) 
        (bind ?i (+ ?i 1))
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; csp variables 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction create-N-csp-variables ()
	;;; csp variables of type N (number od sides of cells)
    (assert (csp-variables-of-type-N----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-N-csp-var ?row ?col))
            (assert (csp-variable (name ?csp-var) (type N)))
            (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)

(deffunction create-H-csp-variables ()
	;;; csp variables of type H (horizontal borders)
    (assert (csp-variables-of-type-H----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row (+ ?*nb-rows* 1))
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-H-csp-var ?row ?col))
            (assert (csp-variable (name ?csp-var) (type H)))
            (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)

(deffunction create-V-csp-variables ()
	;;; csp variables of type V (vertical borders)
    (assert (csp-variables-of-type-V----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-V-csp-var ?row ?col))
            (assert (csp-variable (name ?csp-var) (type V)))
            (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


(deffunction create-P-csp-variables ()
	;;; csp variables of type P (points)
    (assert (csp-variables-of-type-P----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row (+ ?*nb-rows* 1))
        (bind ?col 1)
        (while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
            (assert (csp-variable (name ?csp-var) (type P)))
            (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


(deffunction create-B-csp-variables ()
	;;; csp variables of type B, describing the borders of cells
    ;;; (including one additional row and column of cells on each side of the grid)
    (assert (csp-variables-of-type-B----------------------------------------------))
	(bind ?row 0)
    (while (<= ?row (+ ?*nb-rows* 1))
        (bind ?col 0)
        (while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
            (assert (csp-variable (name ?csp-var) (type B)))
            (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


(deffunction create-I-csp-variables ()
    ;;; csp variables of type, describing the in/out position of cells
    ;;; (including one additional row and column of cells on each side of the grid)
    (assert (csp-variables-of-type-I----------------------------------------------))
    (bind ?row 0)
    (while (<= ?row (+ ?*nb-rows* 1))
        (bind ?col 0)
        (while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
            (assert (csp-variable (name ?csp-var) (type I)))
            (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)



(deffunction create-csp-variables ()
    (create-N-csp-variables)
    (create-H-csp-variables)
    (create-V-csp-variables)
    (create-P-csp-variables)
    (create-B-csp-variables)
    (create-I-csp-variables)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; labels 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction create-N-labels ()
	;;; labels for csp variables of type N inside the grid
    (assert (N-labels-for-inner-cells----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-N-csp-var ?row ?col))
            (bind ?value 0)
            (while (<= ?value 3)
                (bind ?lab (value-row-col-to-N-label ?value ?row ?col))
                (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type N)))
                (bind ?value (+ ?value 1))
            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


(deffunction create-H-labels ()
	;;; labels for csp variables of type H
    (assert (H-labels----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row (+ ?*nb-rows* 1))
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-H-csp-var ?row ?col))
            (bind ?lab0 (value-row-col-to-H-label 0 ?row ?col))
            (bind ?lab1 (value-row-col-to-H-label 1 ?row ?col))
            (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab0) (csp-var-type H)))
            (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab1) (csp-var-type H)))
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


(deffunction create-V-labels ()    
	;;; labels for csp variables of type V
    (assert (V-labels----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-V-csp-var ?row ?col))
            (bind ?lab0 (value-row-col-to-V-label 0 ?row ?col))
            (bind ?lab1 (value-row-col-to-V-label 1 ?row ?col))
            (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab0) (csp-var-type V)))
            (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab1) (csp-var-type V)))
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)    

    
(deffunction create-P-labels () 
	;;; labels for csp variables of type P at the four corners outside the grid
    (assert (P-labels-for-the-4-corners----------------------------------------------))
    (bind ?row 1)
    (bind ?col 1)
    (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
    (foreach ?value (create$ 1 5) ;;; no line or se
        (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type P)))
    )
    
    (bind ?row 1)
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
    (foreach ?value (create$ 1 7) ;;; no line or sw
        (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type P)))
    )

    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col 1)
    (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
    (foreach ?value (create$ 1 2) ;;; no line or ne
        (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type P)))
    )
    
    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
    (foreach ?value (create$ 1 4) ;;; no line or nw
        (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type P)))
    )
    
	;;; labels for csp variables of type P in the first row (but no corner)
    (assert (P-labels-for-the-first-outer-row----------------------------------------------))
    (bind ?row 1)
    (bind ?col 2)
    (while (<= ?col ?*nb-columns*)
        (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
        (foreach ?value (create$ 1 5 6 7) ; no line, se, ew or sw
            (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
            (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type P)))
        )
        (bind ?col (+ ?col 1))
    )
    
	;;; labels for csp variables of type P in the last row (but no corner)
    (assert (P-labels-for-the-last-outer-row----------------------------------------------))
    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col 2)
    (while (<= ?col ?*nb-columns*)
        (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
        (foreach ?value (create$ 1 2 4 6) ; no line, ne, nw or ew
            (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
            (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type P)))
        )
        (bind ?col (+ ?col 1))
    )
    
	;;; labels for csp variables of type P in the first column (but no corner)
    (assert (P-labels-for-the-first-outer-column----------------------------------------------))
    (bind ?col 1)
    (bind ?row 2)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
        (foreach ?value (create$ 1 2 3 5) ; no line, ne, ns or se
            (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
            (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type P)))
        )
        (bind ?row (+ ?row 1))
    )
    
	;;; labels for csp variables of type P in the last column (but no corner)
    (assert (P-labels-for-the-last-outer-column----------------------------------------------))
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?row 2)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
        (foreach ?value (create$ 1 3 4 7) ; no line, ns, nw or sw
            (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
            (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type P)))
        )
        (bind ?row (+ ?row 1))
    )
    
	;;; labels for csp variables of type P inside the grid
    (assert (P-labels-for-inner-cells----------------------------------------------))
	(bind ?row 2)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 2)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
            (bind ?value 1)
            (while (<= ?value 7)
                (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
                (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type P)))
                (bind ?value (+ ?value 1))
            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


(deffunction create-B-labels ()
	;;; labels for csp variables of type B at the four corners outside the grid
    (assert (B-labels-for-the-4-corners----------------------------------------------))
    (bind ?value 1) ; no border
    (bind ?row 0)
    (bind ?col 0)
    (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
    (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
    (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))

    (bind ?row 0)
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?csp-var (row-col-to-B-csp-var 0 ?col))
    (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
    (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))

    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col 0)
    (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
    (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
    (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))

    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
    (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
    (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))

	;;; labels for csp variables of type B in the first row outside the grid
    (assert (B-labels-for-the-first-outer-row----------------------------------------------))
    (bind ?row 0)
    (bind ?value 1) ; no border
    (bind ?col 1)
    (while (<= ?col ?*nb-columns*)
        (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))
        (bind ?col (+ ?col 1))
    )
    (bind ?value 4) ; only southern border
    (bind ?col 1)
    (while (<= ?col ?*nb-columns*)
        (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))
        (bind ?col (+ ?col 1))
    )
    
	;;; labels for csp variables of type B in the last row outside the grid
    (assert (B-labels-for-the-last-outer-row----------------------------------------------))
    (bind ?row (+ ?*nb-rows* 1))
    (bind ?value 1) ; no border
    (bind ?col 1)
    (while (<= ?col ?*nb-columns*)
        (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))
        (bind ?col (+ ?col 1))
    )
    (bind ?value 2) ; only northern border
    (bind ?col 1)
    (while (<= ?col ?*nb-columns*)
        (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))
        (bind ?col (+ ?col 1))
    )
    
	;;; labels for csp variables of type B in the first column outside the grid
    (assert (B-labels-for-the-first-outer-column----------------------------------------------))
    (bind ?col 0)
    (bind ?value 1) ; no border
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))
        (bind ?row (+ ?row 1))
    )
    (bind ?value 3) ; only eastern border
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))
        (bind ?row (+ ?row 1))
    )
    
	;;; labels for csp variables of type B in the last column outside the grid
    (assert (B-labels-for-the-last-outer-column----------------------------------------------))
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?value 1) ; no border
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))
        (bind ?row (+ ?row 1))
    )
    (bind ?value 5) ; only western border
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))
        (bind ?row (+ ?row 1))
    )
    
	;;; labels for csp variables of type B inside the grid
    (assert (B-labels-for-inner-cells----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
            (bind ?value 1)
            (while (<= ?value 15)
                (bind ?lab (value-row-col-to-B-label ?value ?row ?col))
                (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type B)))
                (bind ?value (+ ?value 1))
            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


(deffunction create-I-labels ()
    ;;; labels for csp variables of type I in the outer cells
    (assert (I-labels-for-the-outer-cells----------------------------------------------))
    (bind ?value 0) ; only possible value for the outer cells

    ;;; labels for csp variables of type I in the first row outside the grid
    (bind ?row 0)
    (bind ?col 0)
    (while (<= ?col (+ ?*nb-columns* 1))
        (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-I-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type I)))
        (bind ?col (+ ?col 1))
    )
    ;;; labels for csp variables of type I in the last row outside the grid
    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col 0)
    (while (<= ?col (+ ?*nb-columns* 1))
        (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-I-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type I)))
        (bind ?col (+ ?col 1))
    )
    
    ;;; labels for csp variables of type I in the first column outside the grid
    (bind ?col 0)
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-I-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type I)))
        (bind ?row (+ ?row 1))
    )
    
    ;;; labels for csp variables of type I in the last column outside the grid
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-I-label ?value ?row ?col))
        (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type I)))
        (bind ?row (+ ?row 1))
    )
    
    ;;; labels for csp variables of type I inside the grid
    ;;; two possible values: 0 and 1
    (assert (I-labels-for-the-inner-cells----------------------------------------------))
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
            (bind ?value 0)
            (while (<= ?value 1)
                (bind ?lab (value-row-col-to-I-label ?value ?row ?col))
                (assert (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab) (csp-var-type I)))
                (bind ?value (+ ?value 1))
            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


(deffunction create-labels ()
    (create-N-labels)
    (create-H-labels)
    (create-V-labels)
    (create-P-labels)
    (create-B-labels)
    (create-I-labels)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; csp links 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; the existence of physical csp-links or links does not suppose that the corresponding candidates are present

(deffunction init-physical-N-csp-links ()	
	;;; physical N csp-links
    (assert (N-csp-links----------------------------------------------))
	(bind ?row 1) ; row (changed from (bind ?row 0)
	(while (<= ?row ?*nb-rows*)
		(bind ?col 1) ; column (changed from (bind ?row 0)
		(while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-N-csp-var ?row ?col))
			(bind ?val1 0) 
			(while (<= ?val1 3)
                (bind ?lab1 (value-row-col-to-N-label ?val1 ?row ?col))
				(bind ?val2 (+ ?val1 1)) 
				(while (<= ?val2 3)
					(bind ?lab2 (value-row-col-to-N-label ?val2 ?row ?col))
					(assert (physical-csp-link ?lab1 ?lab2 ?csp-var))
					(assert (physical-link ?lab1 ?lab2 ?csp-var))
                    (add-label-link ?lab1 ?lab2)
					(bind ?val2 (+ ?val2 1))
				)
				(bind ?val1 (+ ?val1 1))
			)
			(bind ?col (+ ?col 1))
		)
		(bind ?row (+ ?row 1))
	)
)


(deffunction init-physical-H-csp-links ()	
	;;; physical H csp-links
    (assert (H-csp-links----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row (+ ?*nb-rows* 1))
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-H-csp-var ?row ?col))
            (bind ?lab1 (value-row-col-to-H-label 0 ?row ?col))
            (bind ?lab2 (value-row-col-to-H-label 1 ?row ?col))
            (assert (physical-csp-link ?lab1 ?lab2 ?csp-var))
            (assert (physical-link ?lab1 ?lab2 ?csp-var))
            (add-label-link ?lab1 ?lab2)
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)
    

(deffunction init-physical-V-csp-links ()	
	;;; physical V csp-links
    (assert (V-csp-links----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-V-csp-var ?row ?col))
            (bind ?lab1 (value-row-col-to-V-label 0 ?row ?col))
            (bind ?lab2 (value-row-col-to-V-label 1 ?row ?col))
            (assert (physical-csp-link ?lab1 ?lab2 ?csp-var))
            (assert (physical-link ?lab1 ?lab2 ?csp-var))
            (add-label-link ?lab1 ?lab2)
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


    
(deffunction init-physical-P-csp-links ()	
	;;; physical P csp-links
    (assert (P-csp-links----------------------------------------------))
	(bind ?row 1) ; row
	(while (<= ?row (+ ?*nb-rows* 1))
		(bind ?col 1) ; column
		(while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
			(bind ?val1 1)
			(while (< ?val1 7)
                (bind ?lab1 (value-row-col-to-P-label ?val1 ?row ?col))
				(bind ?val2 (+ ?val1 1)) 
				(while (<= ?val2 7)
					(bind ?lab2 (value-row-col-to-P-label ?val2 ?row ?col))
					(assert (physical-csp-link ?lab1 ?lab2 ?csp-var))
					(assert (physical-link ?lab1 ?lab2 ?csp-var))
                    (add-label-link ?lab1 ?lab2)
					(bind ?val2 (+ ?val2 1))
				)
				(bind ?val1 (+ ?val1 1))
			)
			(bind ?col (+ ?col 1))
		)
		(bind ?row (+ ?row 1))
	)
)



(deffunction init-physical-B-csp-links ()	
	;;; physical B csp-links
    (assert (B-csp-links----------------------------------------------))
	(bind ?row 0) ; row
	(while (<= ?row (+ ?*nb-rows* 1))
		(bind ?col 0) ; column
		(while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
			(bind ?val1 1) 
			(while (< ?val1 15)
                (bind ?lab1 (value-row-col-to-B-label ?val1 ?row ?col))
				(bind ?val2 (+ ?val1 1)) 
				(while (<= ?val2 15)
					(bind ?lab2 (value-row-col-to-B-label ?val2 ?row ?col))
					(assert (physical-csp-link ?lab1 ?lab2 ?csp-var))
					(assert (physical-link ?lab1 ?lab2 ?csp-var))
                    (add-label-link ?lab1 ?lab2)
					(bind ?val2 (+ ?val2 1))
				)
				(bind ?val1 (+ ?val1 1))
			)
			(bind ?col (+ ?col 1))
		)
		(bind ?row (+ ?row 1))
	)
)



(deffunction init-physical-I-csp-links ()
    ;;; physical I csp-links
    (assert (I-csp-links----------------------------------------------))
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
            (bind ?lab1 (value-row-col-to-I-label 0 ?row ?col))
            (bind ?lab2 (value-row-col-to-I-label 1 ?row ?col))
            (assert (physical-csp-link ?lab1 ?lab2 ?csp-var))
            (assert (physical-link ?lab1 ?lab2 ?csp-var))
            (add-label-link ?lab1 ?lab2)
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


(deffunction init-physical-csp-links ()	
    (init-physical-N-csp-links)
    (init-physical-H-csp-links)
    (init-physical-V-csp-links)
    (init-physical-P-csp-links)
    (init-physical-B-csp-links)
    (init-physical-I-csp-links)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; non csp links 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(deffunction init-physical-PH-and-PV-non-csp-links ()	
	;;; physical HH and PV links
    ;;; for each P csp-variable, each P-label for it gives rise to 4 such facts (fewer in the outer border)
    (assert (PH-and-PV-non-csp-links----------------------------------------------))
	(bind ?row1 1)
	(while (<= ?row1 (+ ?*nb-rows* 1))
		(bind ?col1 1)
		(while (<= ?col1 (+ ?*nb-columns* 1))
            (bind ?value1 1)
            (while (<= ?value1 7)
                (bind ?lab1 (value-row-col-to-P-label ?value1 ?row1 ?col1))
                
                ;;; lab1 contrad with northern V value
                (if (neq ?row1 1) then
                    (bind ?P-north (P-value-north ?value1))
                    (bind ?lab2 (value-row-col-to-V-label (- 1 ?P-north) (- ?row1 1) ?col1))
					(assert (physical-link ?lab1 ?lab2 PV))
                    (add-label-link ?lab1 ?lab2)
               )
                ;;; lab1 contrad with southern V value
                (if (neq ?row1 (+ ?*nb-rows* 1)) then
                    (bind ?P-south (P-value-south ?value1))
                    (bind ?lab2 (value-row-col-to-V-label (- 1 ?P-south) ?row1 ?col1))
					(assert (physical-link ?lab1 ?lab2 PV))
                    (add-label-link ?lab1 ?lab2)
                )
                ;;; lab1 contrad with western H value
                (if (neq ?col1 1) then
                    (bind ?P-west (P-value-west ?value1))
                    (bind ?lab2 (value-row-col-to-H-label (- 1 ?P-west) ?row1 (- ?col1 1)))
					(assert (physical-link ?lab1 ?lab2 PH))
                    (add-label-link ?lab1 ?lab2)
                )
                ;;; lab1 contrad with eastern H value
                (if (neq ?col1 (+ ?*nb-columns* 1)) then
                    (bind ?P-east (P-value-east ?value1))
                    (bind ?lab2 (value-row-col-to-H-label (- 1 ?P-east) ?row1 ?col1))
					(assert (physical-link ?lab1 ?lab2 PH))
                    (add-label-link ?lab1 ?lab2)
                )
                (bind ?value1 (+ ?value1 1))
            )
            (bind ?col1 (+ ?col1 1))
        )
        (bind ?row1 (+ ?row1 1))
    )
)


(deffunction init-physical-BH-and-BV-non-csp-links ()	
	;;; physical BH and BV links
    ;;; for each rc-cell, each B-label for it gives rise to 4 such facts (fewer in the outer border)
    (assert (BH-and-BV-non-csp-links----------------------------------------------))
	(bind ?row1 0)
	(while (<= ?row1 (+ ?*nb-rows* 1))
		(bind ?col1 0)
		(while (<= ?col1 (+ ?*nb-columns* 1))
            (bind ?val1 1)
            (while (<= ?val1 15)
                (bind ?lab1 (value-row-col-to-B-label ?val1 ?row1 ?col1))
                ;;; lab1 contrad with northern border
                (if (and (neq ?row1 0) (neq ?col1 0) (neq ?col1 (+ ?*nb-columns* 1))) then
                    (bind ?north (B-value-north ?val1))
                    (bind ?not-north (- 1 ?north))
                    (bind ?lab2 (value-row-col-to-H-label ?not-north ?row1 ?col1))
					(assert (physical-link ?lab1 ?lab2 BH))
                    (add-label-link ?lab1 ?lab2)
                )
                ;;; lab1 contrad with southern border
                (if (and (neq ?row1 (+ ?*nb-rows* 1)) (neq ?col1 0) (neq ?col1 (+ ?*nb-columns* 1))) then
                    (bind ?south (B-value-south ?val1))
                    (bind ?not-south (- 1 ?south))
                    (bind ?lab2 (value-row-col-to-H-label ?not-south (+ ?row1 1) ?col1))
					(assert (physical-link ?lab1 ?lab2 BH))
                    (add-label-link ?lab1 ?lab2)
                )
                ;;; lab1 contrad with western border
                (if (and (neq ?col1 0) (neq ?row1 0) (neq ?row1 (+ ?*nb-rows* 1))) then
                    (bind ?west (B-value-west ?val1))
                    (bind ?not-west (- 1 ?west))
                    (bind ?lab2 (value-row-col-to-V-label ?not-west ?row1 ?col1))
					(assert (physical-link ?lab1 ?lab2 BV))
                    (add-label-link ?lab1 ?lab2)
                )
                ;;; lab1 contrad with eastern border
                (if (and (neq ?col1 (+ ?*nb-columns* 1)) (neq ?row1 0) (neq ?row1 (+ ?*nb-rows* 1))) then
                    (bind ?east (B-value-east ?val1))
                    (bind ?not-east (- 1 ?east))
                    (bind ?lab2 (value-row-col-to-V-label ?not-east ?row1 (+ ?col1 1)))
					(assert (physical-link ?lab1 ?lab2 BV))
                    (add-label-link ?lab1 ?lab2)
                )
                (bind ?val1 (+ ?val1 1))
            )
            (bind ?col1 (+ ?col1 1))
        )
        (bind ?row1 (+ ?row1 1))
    )
)



(deffunction init-physical-BN-non-csp-links ()
    ;;; physical BP links 
    (assert (BN-non-csp-links----------------------------------------------))
	(bind ?row1 1)
	(while (<= ?row1 ?*nb-rows*)
		(bind ?col1 1)
		(while (<= ?col1 ?*nb-columns*)
            (bind ?value1 1)
            (while (<= ?value1 15)
                (bind ?lab1 (value-row-col-to-B-label ?value1 ?row1 ?col1))
                (bind ?value2 0)
                (while (<= ?value2 3)
                    (if (neq (B-value-number-of-sides ?value1) ?value2) then
                        (bind ?lab2 (value-row-col-to-N-label ?value2 ?row1 ?col1))
                        (assert (physical-link ?lab1 ?lab2 BN))
                        (add-label-link ?lab1 ?lab2)
                    )
                    (bind ?value2 (+ ?value2 1))
                )
                (bind ?value1 (+ ?value1 1))
            )
            (bind ?col1 (+ ?col1 1))
        )
        (bind ?row1 (+ ?row1 1))
    )
)



(deffunction init-physical-BP-non-csp-links ()	
    ;;; physical BP links 
    (assert (BP-non-csp-links----------------------------------------------))
	(bind ?row1 1)
	(while (<= ?row1 (+ ?*nb-rows* 1))
		(bind ?col1 1)
		(while (<= ?col1 ?*nb-columns*)
            (bind ?value1 1)
            (while (<= ?value1 15)
                (bind ?lab1 (value-row-col-to-B-label ?value1 ?row1 ?col1))
                ;;; lab1 contrad with north west corner
                (bind ?row2 ?row1)
                (bind ?col2 ?col1)
                (bind ?value2 1)
                (while (<= ?value2 7)
                    (if (not (B-value-nw-compatible-with-P-value ?value1 ?value2)) then
                        (bind ?lab2 (value-row-col-to-P-label ?value2 ?row2 ?col2))
                        (assert (physical-link ?lab1 ?lab2 BP))
                        (add-label-link ?lab1 ?lab2)
                    )
                    (bind ?value2 (+ ?value2 1))
                )
                ;;; lab1 contrad with north east corner
                (bind ?row2 ?row1)
                (bind ?col2 (+ ?col1 1))
                (bind ?value2 1)
                (while (<= ?value2 7)
                    (if (not (B-value-ne-compatible-with-P-value ?value1 ?value2)) then
                        (bind ?lab2 (value-row-col-to-P-label ?value2 ?row2 ?col2))
                        (assert (physical-link ?lab1 ?lab2 BP))
                        (add-label-link ?lab1 ?lab2)
                    )
                    (bind ?value2 (+ ?value2 1))
                )
                ;;; lab1 contrad with south east corner
                (bind ?row2 (+ ?row1 1))
                (bind ?col2 (+ ?col1 1))
                (bind ?value2 1)
                (while (<= ?value2 7)
                    (if (not (B-value-se-compatible-with-P-value ?value1 ?value2)) then
                        (bind ?lab2 (value-row-col-to-P-label ?value2 ?row2 ?col2))
                        (assert (physical-link ?lab1 ?lab2 BP))
                        (add-label-link ?lab1 ?lab2)
                    )
                    (bind ?value2 (+ ?value2 1))
                )
                ;;; lab1 contrad with south west corner
                (bind ?row2 (+ ?row1 1))
                (bind ?col2 ?col1)
                (bind ?value2 1)
                (while (<= ?value2 7)
                    (if (not (B-value-sw-compatible-with-P-value ?value1 ?value2)) then
                        (bind ?lab2 (value-row-col-to-P-label ?value2 ?row2 ?col2))
                        (assert (physical-link ?lab1 ?lab2 BP))
                        (add-label-link ?lab1 ?lab2)
                    )
                    (bind ?value2 (+ ?value2 1))
                )
                (bind ?value1 (+ ?value1 1))
            )
            (bind ?col1 (+ ?col1 1))
        )
        (bind ?row1 (+ ?row1 1))
    )
)



;;; not used:
(deffunction init-physical-PP-non-csp-links ()
    ;;; physical PP links 
    (assert (PP-non-csp-links-for-east-and-south-lines----------------------------------------------))
	(bind ?row1 1)
	(while (<= ?row1 ?*nb-rows*)
		(bind ?col1 1)
		(while (<= ?col1 ?*nb-columns*)
            (bind ?value1 1)
            (while (<= ?value1 7)
                (bind ?lab1 (value-row-col-to-P-label ?value1 ?row1 ?col1))
                ;;; lab1 contrad for east line
                (if (< ?col1 ?*nb-columns*) then
                    (bind ?col2 (+ ?col1 1))
                    (bind ?value2 1)
                    (while (<= ?value2 7)
                        (if (not (P-value-e-compatible-with-P-value ?value1 ?value2)) then
                            (bind ?lab2 (value-row-col-to-P-label ?value2 ?row1 ?col2))
                            (assert (physical-link ?lab1 ?lab2 PP))
                            (add-label-link ?lab1 ?lab2)
                        )
                        (bind ?value2 (+ ?value2 1))
                    )
                )
                ;;; lab1 contrad for south line
                (if (< ?row1 ?*nb-rows*) then
                    (bind ?row2 (+ ?row1 1))
                    (bind ?value2 1)
                    (while (<= ?value2 7)
                        (if (not (P-value-s-compatible-with-P-value ?value1 ?value2)) then
                            (bind ?lab2 (value-row-col-to-P-label ?value2 ?row2 ?col1))
                            (assert (physical-link ?lab1 ?lab2 PP))
                            (add-label-link ?lab1 ?lab2)
                        )
                        (bind ?value2 (+ ?value2 1))
                    )
                )
                ;;; unique direct lab1 contrad with se P-value
                (if (and (< ?row1 ?*nb-rows*) (< ?col1 ?*nb-columns*) (eq ?value1 5)) then ; 5 means se
                    (bind ?row2 (+ ?row1 1))
                    (bind ?col2 (+ ?col1 1))
                    (bind ?value2 4) ; 4 means nw
                    (bind ?lab2 (value-row-col-to-P-label ?value2 ?row2 ?col2))
                    (assert (physical-link ?lab1 ?lab2 PP))
                    (add-label-link ?lab1 ?lab2)
                )
                (bind ?value1 (+ ?value1 1))
            )
            (bind ?col1 (+ ?col1 1))
        )
        (bind ?row1 (+ ?row1 1))
    )
)


;;; not used:
(deffunction init-physical-BB-non-csp-links ()	
    ;;; physical BB links 
    (assert (BB-non-csp-links-along-east-and-south-borders----------------------------------------------))
	(bind ?row1 0)
	(while (<= ?row1 ?*nb-rows*)
		(bind ?col1 0)
		(while (<= ?col1 ?*nb-columns*)
            (bind ?value1 1)
            (while (<= ?value1 15)
                (bind ?lab1 (value-row-col-to-B-label ?value1 ?row1 ?col1))
                ;;; lab1 contrad with east border
                (if (neq ?row1 0) then
                    (bind ?row2 ?row1)
                    (bind ?col2 (+ ?col1 1))
                    (bind ?value2 1)
                    (while (<= ?value2 15)
                        (if (not (B-value-e-compatible-with-B-value ?value1 ?value2)) then
                            (bind ?lab2 (value-row-col-to-B-label ?value2 ?row2 ?col2))
                            (assert (physical-link ?lab1 ?lab2 BB))
                            (add-label-link ?lab1 ?lab2)
                       )
                        (bind ?value2 (+ ?value2 1))
                    )
                )
                ;;; lab1 contrad with south border
                (if (neq ?col1 0) then
                    (bind ?row2 (+ ?row1 1))
                    (bind ?col2 ?col1)
                    (bind ?value2 1)
                    (while (<= ?value2 15)
                        (if (not (B-value-s-compatible-with-B-value ?value1 ?value2)) then
                            (bind ?lab2 (value-row-col-to-B-label ?value2 ?row2 ?col2))
                            (assert (physical-link ?lab1 ?lab2 BB))
                            (add-label-link ?lab1 ?lab2)
                        )
                        (bind ?value2 (+ ?value2 1))
                    )
                )
                (bind ?value1 (+ ?value1 1))
            )
            (bind ?col1 (+ ?col1 1))
        )
        (bind ?row1 (+ ?row1 1))
    )
    (assert (BB-non-csp-links-along-south-west-and-south-east-borders----------------------------------------------))
	(bind ?row1 0)
	(while (<= ?row1 ?*nb-rows*)
        (bind ?row2 (+ ?row1 1))
		(bind ?col1 0)
		(while (<= ?col1 (+ ?*nb-columns* 1))
            (bind ?value1 1)
            (while (<= ?value1 15)
                (bind ?lab1 (value-row-col-to-B-label ?value1 ?row1 ?col1))
                ;;; lab1 contrad with south-west corner
                (if (neq ?col1 0) then
                    (bind ?col2 (- ?col1 1))
                    (bind ?value2 1)
                    (while (<= ?value2 15)
                        (if (not (B-value-sw-compatible-with-B-value ?value1 ?value2)) then
                            (bind ?lab2 (value-row-col-to-B-label ?value2 ?row2 ?col2))
                            (assert (physical-link ?lab1 ?lab2 BB))
                            (add-label-link ?lab1 ?lab2)
                        )
                        (bind ?value2 (+ ?value2 1))
                    )
                )
                ;;; lab1 contrad with south-east corner
                (if (neq ?col1 (+ ?*nb-columns* 1)) then
                    (bind ?col2 (+ ?col1 1))
                    (bind ?value2 1)
                    (while (<= ?value2 15)
                        (if (not (B-value-se-compatible-with-B-value ?value1 ?value2)) then
                            (bind ?lab2 (value-row-col-to-B-label ?value2 ?row2 ?col2))
                            (assert (physical-link ?lab1 ?lab2 BB))
                            (add-label-link ?lab1 ?lab2)
                        )
                        (bind ?value2 (+ ?value2 1))
                    )
                )
                (bind ?value1 (+ ?value1 1))
            )
            (bind ?col1 (+ ?col1 1))
        )
        (bind ?row1 (+ ?row1 1))
    )
)



(deffunction init-physical-non-csp-links ()	
    (bind ?init-physical-non-csp-links-start-time (time))
    (if ?*print-actions* then (printout t "     start init-physical-PH-and-PV-non-csp-links at local time " 0 crlf))
    (init-physical-PH-and-PV-non-csp-links)

    (if ?*print-actions* then (printout t "     start init-physical-BH-and-BV-non-csp-links at local time " (-  (time) ?init-physical-non-csp-links-start-time) crlf))
    (init-physical-BH-and-BV-non-csp-links)

    (if ?*print-actions* then (printout t "     start init-physical-BN-non-csp-links at local time " (-  (time) ?init-physical-non-csp-links-start-time) crlf))
    (init-physical-BN-non-csp-links)

    (if ?*print-actions* then (printout t "     start init-physical-BP-non-csp-links at local time " (-  (time) ?init-physical-non-csp-links-start-time) crlf))
    (init-physical-BP-non-csp-links)
    (if ?*print-actions* then (printout t
            "     end init-physical-BP-non-csp-links at local time "
            (-  (time) ?init-physical-non-csp-links-start-time) crlf
    ))
    
    (if ?*Allow-direct-PP-links* then
        (if ?*print-actions* then (printout t "     start init-physical-PP-non-csp-links at local time "
            (-  (time) ?init-physical-non-csp-links-start-time) crlf))
        (init-physical-PP-non-csp-links)
    )
    ; (if ?*print-actions* then (printout t "     start init-physical-BB-non-csp-links at local time "  (-  (time) ?init-physical-non-csp-links-start-time) crlf))
    ; (init-physical-BB-non-csp-links)
    ;;; There are no binary physical non csp-links for I csp-variables:
    ;;; these contradictions will be dealt with by specific border-colour rules
    ;;; There are no binary physical non csp-links for N csp-variables:
    ;;; these variables are dealt with by special rules
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; init-grid-structure
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-grid-structure (?nb-rows ?nb-columns)
    (redefine-instance-globals ?nb-rows ?nb-columns)
    (init-generalities)
    (bind ?time (time))
    (if ?*print-actions* then (printout t "start create-csp-variables " crlf))
    (create-csp-variables)
    (if ?*print-actions* then (printout t "start create-labels " (- (time) ?time) crlf))
    (create-labels)
    (if ?*print-actions* then (printout t "start init-physical-csp-links " (- (time) ?time) crlf))
    (init-physical-csp-links)
    (if ?*print-actions* then (printout t "start init-physical-non-csp-links " (- (time) ?time) crlf))
    (init-physical-non-csp-links)
    (if ?*print-actions* then (printout t "end init-physical-non-csp-links " (- (time) ?time) crlf))
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for initializing candidates and c-values and for solving puzzles
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-corner-B-c-values (?nb-rows ?nb-columns)
	;;; init B c-values for cells with a priori known entries, i.e. for the outer border
	(bind ?*nb-csp-variables-solved* 0)
    
	;;; create c-values of type B at the four corners outside the grid
    (assert (B-c-values-for-the-4-corners----------------------------------------------))
    (bind ?borders 1) ; no border

    (bind ?row 0)
    (bind ?col 0)
    (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
    (assert (candidate (context 0) (status c-value) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
    
    (bind ?row 0)
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
    (assert (candidate (context 0) (status c-value) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))

    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col 0)
    (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
    (assert (candidate (context 0) (status c-value) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
    
    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
    (assert (candidate (context 0) (status c-value) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
)


(deffunction init-outer-B-candidates (?nb-rows ?nb-columns)
	;;; create candidates of type B in the first row outside the grid
    (assert (B-c-values-for-the-first-outer-row----------------------------------------------))
    (bind ?row 0)
    (bind ?col 1)
    (while (<= ?col ?*nb-columns*)
        (bind ?borders 1) ; no border
        (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        (bind ?borders 4) ; southern border
        (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        (bind ?col (+ ?col 1))
    )
    
	;;; create candidates of type B in the last row outside the grid
    (assert (C-c-values-for-the-last-outer-row----------------------------------------------))
    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col 1)
    (while (<= ?col ?*nb-columns*)
        (bind ?borders 1) ; no border
        (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        (bind ?borders 2) ; northern border
        (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        (bind ?col (+ ?col 1))
    )
    
	;;; create candidates of type B in the first column outside the grid
    (assert (B-c-values-for-the-first-outer-column----------------------------------------------))
    (bind ?col 0)
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?borders 1) ; no border
        (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        (bind ?borders 3) ; eastern border
        (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        (bind ?row (+ ?row 1))
    )
    
	;;; create candidates of type B in the last column outside the grid
    (assert (B-c-values-for-the-last-outer-column----------------------------------------------))
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?borders 1) ; no border
        (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        (bind ?borders 5) ; western border
        (bind ?lab (value-row-col-to-B-label ?borders ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?borders) (row ?row) (column ?col)))
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?row (+ ?row 1))
    )
)




(deffunction init-outer-I-candidates (?nb-rows ?nb-columns)
	;;; create c-values for csp variables of type I in the outer cells
    (assert (I-c-values-for-the-outer-cells----------------------------------------------))
    (bind ?value 0) ; only possible value for the outer cells

	;;; create c-values for csp variables of type I in the first row outside the grid
    (bind ?row 0)
    (bind ?col 0)
    (while (<= ?col (+ ?*nb-columns* 1))
        (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-I-label ?value ?row ?col))
        (assert (candidate (context 0) (status c-value) (label ?lab) (type I) (value ?value) (row ?row) (column ?col)))
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?col (+ ?col 1))
    )
	;;; create c-values for csp variables of type I in the last row outside the grid
    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col 0)
    (while (<= ?col (+ ?*nb-columns* 1))
        (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-I-label ?value ?row ?col))
        (assert (candidate (context 0) (status c-value) (label ?lab) (type I) (value ?value) (row ?row) (column ?col)))
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?col (+ ?col 1))
    )
    
	;;; create c-values for csp variables of type I in the first column outside the grid
    (bind ?col 0)
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-I-label ?value ?row ?col))
        (assert (candidate (context 0) (status c-value) (label ?lab) (type I) (value ?value) (row ?row) (column ?col)))
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?row (+ ?row 1))
    )
    
	;;; create c-values for csp variables of type I in the last column outside the grid
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?csp-var (row-col-to-I-csp-var ?row ?col))
        (bind ?lab (value-row-col-to-I-label ?value ?row ?col))
        (assert (candidate (context 0) (status c-value) (label ?lab) (type I) (value ?value) (row ?row) (column ?col)))
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?row (+ ?row 1))
    )

)


(deffunction init-inner-I-candidates (?nb-rows ?nb-columns)
	;;; Initialize I candidates for the inner cells: two possible values, 0 and 1
    (assert (I-candidates-for-the-inner-cells----------------------------------------------))
	;;; for every inner cell,
	(bind ?row 1)
	(while (<= ?row ?*nb-rows*)
		(bind ?col 1)
		(while (<= ?col ?*nb-columns*)
            (bind ?val 0)
            (bind ?lab (value-row-col-to-I-label ?val ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type I) (value ?val) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
            (bind ?val 1)
            (bind ?lab (value-row-col-to-I-label ?val ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type I) (value ?val) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
			(bind ?col (+ ?col 1))
		)
		(bind ?row (+ ?row 1))
	)
)


(deffunction init-H-candidates (?nb-rows ?nb-columns)
	;;; Initialize H candidates: two possible values, 0 and 1
    (assert (H-candidates----------------------------------------------))
	;;; for every horizontal line,
    (bind ?row 1)
    (while (<= ?row (+ ?*nb-rows* 1))
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?val 0)
            (bind ?lab (value-row-col-to-H-label ?val ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type H) (value ?val) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
            (bind ?val 1)
            (bind ?lab (value-row-col-to-H-label ?val ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type H) (value ?val) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
            (bind ?col (+ ?col 1))
		)
        (bind ?row (+ ?row 1))
	)
)


(deffunction init-V-candidates (?nb-rows ?nb-columns)
	;;; Initialize V candidates: two possible values, 0 and 1
    (assert (V-candidates----------------------------------------------))
	;;; for every vertical line,
    (bind ?col 1)
    (while (<= ?col (+ ?*nb-columns* 1))
        (bind ?row 1)
        (while (<= ?row ?*nb-rows*)
            (bind ?val 0)
            (bind ?lab (value-row-col-to-V-label ?val ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type V) (value ?val) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
            (bind ?val 1)
            (bind ?lab (value-row-col-to-V-label ?val ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type V) (value ?val) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
            (bind ?row (+ ?row 1))
		)
        (bind ?col (+ ?col 1))
	)
)

    
(deffunction init-P-candidates (?nb-rows ?nb-columns) 
	;;; candidates for csp variables of type P at the four corners outside the grid
    (assert (P-candidates-for-the-4-corners----------------------------------------------))
    (bind ?row 1)
    (bind ?col 1)
    (foreach ?value (create$ 1 5) ;;; no line or se
        (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type P) (value ?value) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
    )
    
    (bind ?row 1)
    (bind ?col (+ ?*nb-columns* 1))
    (foreach ?value (create$ 1 7) ;;; no line or sw
        (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type P) (value ?value) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
    )

    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col 1)
    (foreach ?value (create$ 1 2) ;;; no line or ne
        (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type P) (value ?value) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
    )
    
    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col (+ ?*nb-columns* 1))
    (foreach ?value (create$ 1 4) ;;; no line or nw
        (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
        (assert (candidate (context 0) (status cand) (label ?lab) (type P) (value ?value) (row ?row) (column ?col)))
        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
    )
    
	;;; candidates for csp variables of type P in the first row outside the grid
    (assert (P-candidates-for-the-first-outer-row----------------------------------------------))
    (bind ?row 1)
    (bind ?col 2)
    (while (<= ?col ?*nb-columns*)
        (foreach ?value (create$ 1 5 6 7) ; no line, es, ew or sw
            (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type P) (value ?value) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        )
        (bind ?col (+ ?col 1))
    )
    
	;;; candidates for csp variables of type P in the last row outside the grid
    (assert (P-candidates-for-the-last-outer-row----------------------------------------------))
    (bind ?row (+ ?*nb-rows* 1))
    (bind ?col 2)
    (while (<= ?col ?*nb-columns*)
        (foreach ?value (create$ 1 2 4 6) ; no line, ne, nw or ew
            (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type P) (value ?value) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        )
        (bind ?col (+ ?col 1))
    )
    
	;;; candidates for csp variables of type P in the first column outside the grid
    (assert (P-candidates-for-the-first-outer-column----------------------------------------------))
    (bind ?col 1)
    (bind ?row 2)
    (while (<= ?row ?*nb-rows*)
        (foreach ?value (create$ 1 2 3 5) ; no line, ne, ns or se
            (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type P) (value ?value) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        )
        (bind ?row (+ ?row 1))
    )
    
	;;; candidates for csp variables of type P in the last column outside the grid
    (assert (P-candidates-for-the-last-outer-column----------------------------------------------))
    (bind ?col (+ ?*nb-columns* 1))
    (bind ?row 2)
    (while (<= ?row ?*nb-rows*)
        (foreach ?value (create$ 1 3 4 7) ; no line, ns, nw or sw
            (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
            (assert (candidate (context 0) (status cand) (label ?lab) (type P) (value ?value) (row ?row) (column ?col)))
            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
        )
        (bind ?row (+ ?row 1))
    )
    
	;;; candidates for csp variables of type P inside the grid
    (assert (P-candidates-for-inner-points----------------------------------------------))
	(bind ?row 2)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 2)
        (while (<= ?col ?*nb-columns*)
            (bind ?value 1)
            (while (<= ?value 7)
                (bind ?lab (value-row-col-to-P-label ?value ?row ?col))
                (assert (candidate (context 0) (status cand) (label ?lab) (type P) (value ?value) (row ?row) (column ?col)))
                (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                (bind ?value (+ ?value 1))
            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)


;;; givens play a role only in initialising the N and B candidates

(deffunction init-inner-N-and-B-candidates (?nb-rows ?nb-columns $?givens)
	;;; Initialise N-and-B candidates for the inner cells.
    (assert (N-and-B-candidates-for-the-inner-cells----------------------------------------------))
	;;; For every inner cell,
	(bind ?row 1)
	(while (<= ?row ?*nb-rows*)
		(bind ?col 1)
		(while (<= ?col ?*nb-columns*)
			;;; read the content of the cell from the entries
            (bind ?x (+ (* ?*nb-columns* (- ?row 1)) ?col))
            (bind ?data (nth$ ?x $?givens))
			;;; if the content is not a border-number (0, 1, 2 or 3), i.e. if there is no entry for the cell,
			;;; then assert the possible candidates for the cell
			(if (not (member$ ?data ?*border-numbers*))
				then
                    ;;; every border-number ?val is a possible N candidate
                    (foreach ?val ?*border-numbers*
                        (bind ?lab (value-row-col-to-N-label ?val ?row ?col))
                        (assert (candidate (context 0) (status cand) (label ?lab) (type N) (value ?val) (row ?row) (column ?col)))
                        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                    )
                    ;;; every B-value ?val is a possible B candidate, except possibly at the four corners
                    (foreach ?val ?*B-value-numbers*
                        (if (not (impossible-B-value-at-a-corner ?val ?row ?col)) then
                            (bind ?lab (value-row-col-to-B-label ?val ?row ?col))
                            (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?val) (row ?row) (column ?col)))
                            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                        )
                    )
                else
                    ;;; assert ?data as the N-value for the cell
                    (bind ?lab (value-row-col-to-N-label ?data ?row ?col))
                    (assert (candidate (context 0) (status c-value) (label ?lab) (type N) (value ?data) (row ?row) (column ?col)))
                    (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
                    ;;; record the fact that there is an entry for this cell and update the sum of givens
                    (bind ?*sum-of-givens* (+ ?*sum-of-givens* ?data))
                    (bind ?*cells-with-a-given* (create$ ?*cells-with-a-given* (row-col-to-cell ?row ?col)))
                    ;;; allowed B-values are defined according to their size 
                    (if (eq ?data 0)
                        then ;;; the only possible value is 1 (no borders)
                            (bind ?lab (value-row-col-to-B-label 1 ?row ?col))
                            (assert (candidate (context 0) (status c-value) (label ?lab) (type B) (value 1) (row ?row) (column ?col)))
                            (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
                        else
                            (bind ?ind 1)
                            (while (<= ?ind 15)
                                (if (eq ?data (nth$ ?ind ?*B-value-sizes*)) then
                                    (bind ?val (nth$ ?ind ?*B-value-numbers*))
                                    (if (not (impossible-B-value-at-a-corner ?val ?row ?col)) then
                                        (bind ?lab (value-row-col-to-B-label ?val ?row ?col))
                                        (assert (candidate (context 0) (status cand) (label ?lab) (type B) (value ?val) (row ?row) (column ?col)))
                                        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                                    )
                                )
                                (bind ?ind (+ ?ind 1))
                            )
                    )
			)
			(bind ?col (+ ?col 1))
		)
		(bind ?row (+ ?row 1))
	)
)


(deffunction print-slitherlink-list-as-a-puzzle (?p ?q ?list)
    (bind ?row 1)
    (while (<= ?row ?p)
        (printout t crlf)
        (bind ?col 1)
        (while (<= ?col ?q)
            (bind ?n (+ (* (- ?row 1) ?q) ?col))
            (printout t (nth$ ?n ?list) " ")
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
    (printout t crlf crlf)
)


(deffunction init-instance (?nb-rows ?nb-columns $?givens)
	(if ?*print-actions* then (print-slitherlink-list-as-a-puzzle ?nb-rows ?nb-columns $?givens))
    (reset) (reset)
    (bind ?start-init-time (time))
    (init-universal-globals)

	;;; This function could be simplified (and initialization time shortened)
	;;; by combining the following two calls into a single function,
	;;; but, for easier navigation in the facts base, I prefer asserting all the labels first and then all the candidates.
    ;;; fixed facts related to grid structure are defined here
    
    (redefine-instance-globals ?nb-rows ?nb-columns)
    (if ?*print-actions* then (printout t "start init-grid-structure " (- (time) ?start-init-time) crlf))
    (init-grid-structure ?nb-rows ?nb-columns)
    
    (if ?*print-actions* then (printout t "start init-corner-B-c-values " (- (time) ?start-init-time) crlf))
    (init-corner-B-c-values ?nb-rows ?nb-columns)
    (if ?*print-actions* then (printout t "start init-outer-B-candidates " (- (time) ?start-init-time) crlf))
    (init-outer-B-candidates ?nb-rows ?nb-columns)
    
    (if ?*print-actions* then (printout t "start init-outer-I-candidates " (- (time) ?start-init-time) crlf))
    (init-outer-I-candidates ?nb-rows ?nb-columns)
    
    (if ?*print-actions* then (printout t "start init-H-candidates " (- (time) ?start-init-time) crlf))
    (init-H-candidates ?nb-rows ?nb-columns)
    (if ?*print-actions* then (printout t "start init-V-candidates " (- (time) ?start-init-time) crlf))
    (init-V-candidates ?nb-rows ?nb-columns)
    
    (if ?*print-actions* then (printout t "start init-P-candidates " (- (time) ?start-init-time) crlf))
    (init-P-candidates ?nb-rows ?nb-columns)
    
    (if ?*print-actions* then (printout t "start init-inner-I-candidates " (- (time) ?start-init-time) crlf))
    (init-inner-I-candidates ?nb-rows ?nb-columns)
    
	;;; puzzle data are taken into account here
    (bind ?*givens* $?givens)
    (if ?*print-actions* then (printout t "start init-inner-N-and-B-candidates " (- (time) ?start-init-time) crlf))
    (init-inner-N-and-B-candidates ?nb-rows ?nb-columns $?givens)
)




(deffunction solve (?nb-rows ?nb-columns $?givens)
	(reset) (reset)  
	(if ?*print-actions* then (print-banner))
    (if ?*only-HV-whips* then (printout t "       *****              Only HV-whips               *****" crlf))
    (if (neq (length$ $?givens) (* ?nb-rows ?nb-columns)) then (printout t "ERROR IN DATA LENGTH." crlf) (halt))

	(release-mem)
    (bind ?time0 (time))
	;;; fixed facts and structures common to all the instances are defined here
	;;; puzzle entries are also taken into account here
    (init-instance ?nb-rows ?nb-columns $?givens)
    (assert (context (name 0)))
	(assert (grid 0))
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    (release-mem)

    ;;; the puzzle is solved here
    (if ?*print-actions* then (printout t "start solution " ?*init-instance-time* crlf))
	(bind ?n (run))
	(bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
	(bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
	(bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
	(if ?*print-time* then
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
    )
    (if ?*print-actions* then
        (printout t "Quasi-Loop max length = " ?*QL-max* crlf)
        (printout t (if ?*Effective-colours* then "Colours effectively used" else "Colours not effectively used") crlf)
        (print-banner)
		(printout t crlf)
	)
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; special functions for puzzles in tatham's format
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction tatham-to-csp-rules-list (?str)
    (bind ?len (length$ ?str))
    (bind ?list (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?x (nth$ 1 (explode$ (sub-string ?i ?i ?str))))
        (if (numberp ?x) then (bind ?list (create$ ?list ?x)))
        (if (eq ?x a) then (bind ?list (create$ ?list .)))
        (if (eq ?x b) then (bind ?list (create$ ?list . .)))
        (if (eq ?x c) then (bind ?list (create$ ?list . . .)))
        (if (eq ?x d) then (bind ?list (create$ ?list . . . .)))
        (if (eq ?x e) then (bind ?list (create$ ?list . . . . .)))
        (if (eq ?x f) then (bind ?list (create$ ?list . . . . . .)))
        (if (eq ?x g) then (bind ?list (create$ ?list . . . . . . .)))
        (if (eq ?x h) then (bind ?list (create$ ?list . . . . . . . .)))
        (if (eq ?x i) then (bind ?list (create$ ?list . . . . . . . . .)))
        (if (eq ?x j) then (bind ?list (create$ ?list . . . . . . . . . .)))
        (if (eq ?x k) then (bind ?list (create$ ?list . . . . . . . . . . .)))
        (if (eq ?x l) then (bind ?list (create$ ?list . . . . . . . . . . . .)))
        (if (eq ?x m) then (bind ?list (create$ ?list . . . . . . . . . . . . .)))
        (if (eq ?x n) then (bind ?list (create$ ?list . . . . . . . . . . . . . .)))
        (if (eq ?x o) then (bind ?list (create$ ?list . . . . . . . . . . . . . . .)))
        (if (eq ?x p) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . .)))
        (if (eq ?x q) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . .)))
        (if (eq ?x r) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . . .)))
        (if (eq ?x s) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . . . .)))
        (if (eq ?x t) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . . . . .)))
        (if (eq ?x u) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . . . . . .)))
        (if (eq ?x v) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . . . . . . .)))
        (if (eq ?x w) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . . . . . . . .)))
        (if (eq ?x x) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . . . . . . . . .)))
        (if (eq ?x y) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . . . . . . . . . .)))
        (if (eq ?x z) then (bind ?list (create$ ?list . . . . . . . . . . . . . . . . . . . . . . . . . .)))

        (bind ?i (+ ?i 1))
    )
    ?list
)


(deffunction print-tatham (?p ?q ?str)
    (bind ?list (tatham-to-csp-rules-list ?str))
    (if (neq (length$ ?list) (* ?p ?q)) then (printout t "Error in data length" crlf) (return))
    (print-slitherlink-list-as-a-puzzle ?p ?q ?list)
)


(deffunction solve-tatham (?p ?q ?str)
    (bind ?list (tatham-to-csp-rules-list ?str))
    (if (neq (length$ ?list) (* ?p ?q)) then (printout t "Error in data length" crlf) (return))
;   (print-slitherlink-list-as-a-puzzle ?p ?q ?list)
    (solve ?p ?q ?list)
)





