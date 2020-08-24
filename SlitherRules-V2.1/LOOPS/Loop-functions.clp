
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              LOOP FUNCTIONS
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; combining lines
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction increasing-lines (?row1 ?col1 ?type1 ?row2 ?col2 ?type2)
    (or
        (and (eq ?type1 H) (eq ?type2 H) (eq ?row2 ?row1) (eq ?col2 (+ ?col1 1)))
        (and (eq ?type1 V) (eq ?type2 V) (eq ?col2 ?col1) (eq ?row2 (+ ?row1 1)))
        
        (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 (+ ?col1 1)) (eq ?row2 (- ?row1 1)))
        (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 (+ ?col1 1)) (eq ?row2 ?row1))

        (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 (+ ?row1 1)) (eq ?col2 (- ?col1 1)))
        (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 (+ ?row1 1)) (eq ?col2 ?col1))
    )
)


(deffunction decreasing-lines (?row1 ?col1 ?type1 ?row2 ?col2 ?type2)
    (or
        (and (eq ?type1 H) (eq ?type2 H) (eq ?row2 ?row1) (eq ?col2 (- ?col1 1)))
        (and (eq ?type1 V) (eq ?type2 V) (eq ?col2 ?col1) (eq ?row2 (- ?row1 1)))
        
        (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 ?col1) (eq ?row2 ?row1))
        (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 ?col1) (eq ?row2 (- ?row1 1)))

        (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 ?row1) (eq ?col2 (- ?col1 1)))
        (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 ?row1) (eq ?col2 ?col1))
    )
)


(deffunction touching-lines (?row1 ?col1 ?type1 ?row2 ?col2 ?type2)
    (or (increasing-lines ?row1 ?col1 ?type1 ?row2 ?col2 ?type2)
        (decreasing-lines ?row1 ?col1 ?type1 ?row2 ?col2 ?type2)
    )
)



(deffunction combinable-lines (?row1 ?col1 ?type1 ?row2 ?col2 ?type2 ?row3 ?col3 ?type3)
    (or
        ;;; H+H+
        (and (eq ?type1 H) (eq ?type2 H) (eq ?row2 ?row1) (eq ?col2 (+ ?col1 1))
            (or 
                ;;; H+H+H+
                (and (eq ?type3 H) (eq ?row3 ?row2) (eq ?col3 (+ ?col2 1)))
                ;;; H+H+V
                (and (eq ?type3 V) (eq ?col3 (+ ?col2 1)) (or (eq ?row3 (- ?row2 1)) (eq ?row3 ?row2)))
            )
        )
        ;;; H-H-
        (and (eq ?type1 H) (eq ?type2 H) (eq ?row2 ?row1) (eq ?col2 (- ?col1 1))
            (or 
                ;;; H-H-H-
                (and (eq ?type3 H) (eq ?row3 ?row2) (eq ?col3 (- ?col2 1)))
                ;;; H-H-V 
                (and (eq ?type3 V) (eq ?col3 ?col2) (or (eq ?row3 (- ?row2 1)) (eq ?row3 ?row2)))
            )
        )
        
        ;;; V+V+
        (and (eq ?type1 V) (eq ?type2 V) (eq ?col2 ?col1) (eq ?row2 (+ ?row1 1))
            (or 
                ;;; V+V+V+
                (and (eq ?type3 V) (eq ?col3 ?col2) (eq ?row3 (+ ?row2 1)))
                ;;; V+V+H
                (and (eq ?type3 H) (eq ?row3 (+ ?row2 1)) (or (eq ?col3 (- ?col2 1)) (eq ?col3 ?col2)))
            )
        )
        ;;; V-V-
        (and (eq ?type1 V) (eq ?type2 V) (eq ?col2 ?col1) (eq ?row2 (- ?row1 1))
            (or 
                ;;; V-V-V-
                (and (eq ?type3 V) (eq ?col3 ?col2) (eq ?row3 (- ?row2 1)))
                ;;; V-V-H
                (and (eq ?type3 H) (eq ?row3 ?row2) (or (eq ?col3 (- ?col2 1)) (eq ?col3 ?col2)))
            )
        )
        
        ;;; H+V
        (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 (+ ?col1 1))
            (or 
                ;;; H+V+V+
                (and (eq ?row2 ?row1) (eq ?type3 V) (eq ?col3 ?col2) (eq ?row3 (+ ?row2 1)))
                ;;; H+V+H
                (and (eq ?row2 ?row1) (eq ?type3 H) (eq ?row3 (+ ?row2 1)) (or (eq ?col3 ?col2) (eq ?col3 (- ?col2 1))))
                ;;; H+V-V-
                (and (eq ?row2 (- ?row1 1)) (eq ?type3 V) (eq ?col3 ?col2) (eq ?row3 (- ?row2 1)))
                ;;; H+V-H
                (and (eq ?row2 (- ?row1 1)) (eq ?type3 H) (eq ?row3 ?row2) (or (eq ?col3 ?col2) (eq ?col3 (- ?col2 1))))
            )
        )
        
        ;;; H-V
        (and (eq ?type1 H) (eq ?type2 V) (eq ?col2 ?col1)
            (or 
                ;;; H-V+V+
                (and (eq ?row2 ?row1) (eq ?type3 V) (eq ?col3 ?col2) (eq ?row3 (+ ?row2 1)))
                ;;; H-V+H
                (and (eq ?row2 ?row1) (eq ?type3 H) (eq ?row3 (+ ?row2 1)) (or (eq ?col3 ?col2) (eq ?col3 (- ?col2 1))))
                ;;; H-V-V-
                (and (eq ?row2 (- ?row1 1)) (eq ?type3 V) (eq ?col3 ?col2) (eq ?row3 (- ?row2 1)))
                ;;; H-V-H
                (and (eq ?row2 (- ?row1 1)) (eq ?type3 H) (eq ?row3 ?row2) (or (eq ?col3 ?col2) (eq ?col3 (- ?col2 1))))
            )
        )
        
        ;;; V+H
        (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 (+ ?row1 1))
            (or 
                ;;; V+H+H+
                (and (eq ?col2 ?col1) (eq ?type3 H) (eq ?row3 ?row2) (eq ?col3 (+ ?col2 1)))
                ;;; V+H+V
                (and (eq ?col2 ?col1) (eq ?type3 V) (eq ?col3 (+ ?col2 1)) (or (eq ?row3 ?row2) (eq ?row3 (- ?row2 1))))
                ;;; V+H-H-
                (and (eq ?col2 (- ?col1 1)) (eq ?type3 H) (eq ?row3 ?row2) (eq ?col3 (- ?col2 1)))
                ;;; V+H-V
                (and (eq ?col2 (- ?col1 1)) (eq ?type3 V) (eq ?col3 ?col2) (or (eq ?row3 ?row2) (eq ?row3 (- ?row2 1))))
            )
        )
        
        ;;; V-H
        (and (eq ?type1 V) (eq ?type2 H) (eq ?row2 ?row1)
            (or 
                ;;; V-H+H+
                (and (eq ?col2 ?col1) (eq ?type3 H) (eq ?row3 ?row2) (eq ?col3 (+ ?col2 1)))
                ;;; V-H+V
                (and (eq ?col2 ?col1) (eq ?type3 V) (eq ?col3 (+ ?col2 1)) (or (eq ?row3 ?row2) (eq ?row3 (- ?row2 1))))
                ;;; V-H-H-
                (and (eq ?col2 (- ?col1 1)) (eq ?type3 H) (eq ?row3 ?row2) (eq ?col3 (- ?col2 1)))
                ;;; V-H-V
                (and (eq ?col2 (- ?col1 1)) (eq ?type3 V) (eq ?col3 ?col2) (or (eq ?row3 ?row2) (eq ?row3 (- ?row2 1))))
            )
        )
    )
        
)


;;; just for testing purposes
(deffunction test-combinable-lines (?p ?q)
    ;;; p rows, q columns
    (bind ?count 0)
    (bind ?row1 1)
    (while (<= ?row1 ?p)
        (bind ?col1 1)
        (while (<= ?col1 ?p)
            (bind ?row2 1)
            (while (<= ?row2 ?p)
                (bind ?col2 1)
                (while (<= ?col2 ?p)
                    (bind ?row3 1)
                    (while (<= ?row3 ?p)
                        (bind ?col3 1)
                        (while (<= ?col3 ?p)
                            (foreach ?type1 (create$ H V)
                                (foreach ?type2 (create$ H V)
                                    (foreach ?type3 (create$ H V)
                                        (bind ?true1 (combinable-lines ?row1 ?col1 ?type1 ?row2 ?col2 ?type2 ?row3 ?col3 ?type3))
                                        (if ?true1 then 
                                            (bind ?count (+ ?count 1))
                                            (printout t ?type1 ?row1 ?col1 " " ?type2 ?row2 ?col2 " " ?type3 ?row3 ?col3 crlf)
                                        )
                                    )
                                )
                            )
                            (bind ?col3 (+ ?col3 1))
                        )
                        (bind ?row3 (+ ?row3 1))
                    )
                    (bind ?col2 (+ ?col2 1))
                )
                (bind ?row2 (+ ?row2 1))
            )
            (bind ?col1 (+ ?col1 1))
        )
        (bind ?row1 (+ ?row1 1))
    )
    (printout t ?count " compatible lines" crlf)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; lines touching cells, NOT USED
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction line-touches-cell (?lrow ?lcol ?ltype ?row ?col)
    (or
        (and (eq ?ltype H) (eq ?lcol ?col) (or (eq ?lrow ?row) (eq ?lrow (+ ?row 1))))
        (and (eq ?ltype V) (eq ?lrow ?row) (or (eq ?lcol ?col) (eq ?lcol (+ ?col 1))))
    )
)


(deffunction nb-cells-touched-by-line (?lrow ?lcol ?ltype ?cells)
    (bind ?nb O)
    (foreach ?cell ?cells
        (bind ?row (cell-row ?cell))
        (bind ?col (cell-column ?cell))
        (if (line-touches-cell ?lrow ?lcol ?ltype ?row ?col) then (bind ?nb (+ ?nb 1)))
    )
    (return ?nb)
)


(deffunction nb-contact-points-of-partial-loop-with-cells (?partial-loop ?cells)
    ;;; partial-loop is given as a 4*len sequence of (?label ?row ?col ?type) quadruplets
    (bind ?nb 0)
    (bind ?len (length$ ?partial-loop))
    (bind ?i 1)
    (while (< ?i ?len)
        (bind ?labeli (nth$ ?i ?partial-loop)) 
        (bind ?rowi (nth$ (+ ?i 1) ?partial-loop)) 
        (bind ?coli (nth$ (+ ?i 2) ?partial-loop)) 
        (bind ?typei (nth$ (+ ?i 3) ?partial-loop))
        (bind ?nb (+ ?nb (nb-cells-touched-by-line ?rowi ?coli ?typei ?cells)))
        (bind ?i (+ ?i 4))
    )
    (return ?nb)
)
 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; compute the number of contact points
;;; of a (horizontal or vertical) line with the cells having a given
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction nb-contacts (?type ?row ?col)
    (bind ?nb-cont 0)
    (if (eq ?type H)
        then ; type = H
            ;;; cell above
            (if (member$ (row-col-to-cell (- ?row 1) ?col) ?*cells-with-a-given*)
                then (bind ?nb-cont (+ ?nb-cont 1))
            )
            ;;; cell below
            (if (member$ (row-col-to-cell ?row ?col) ?*cells-with-a-given*)
                then (bind ?nb-cont (+ ?nb-cont 1))
            )
        else ; type = V
        ;;; cell to the left
        (if (member$ (row-col-to-cell ?row (- ?col 1)) ?*cells-with-a-given*)
            then (bind ?nb-cont (+ ?nb-cont 1))
        )
        ;;; cell to the right
        (if (member$ (row-col-to-cell ?row ?col) ?*cells-with-a-given*)
            then (bind ?nb-cont (+ ?nb-cont 1))
        )
    )
    ?nb-cont
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing loops
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-HV-chain (?rows ?cols ?types)
    ;;; ?rows, ?cols and ?types are supposed to be lists of the same length
    ;;; this condition is not re-checked by "print-HV-chain"
    (bind ?l (length$ ?rows))
    (bind ?i 1)
    (while (<= ?i ?l)
        (bind ?rowi (nth$ ?i ?rows))
        (bind ?coli (nth$ ?i ?cols))
        (bind ?typei (nth$ ?i ?types))
        (printout t ?typei (row-name ?rowi) (column-name ?coli))
        (if (< ?i ?l) then (printout t ?*link-symbol-in-loops*))
        (bind ?i (+ ?i 1))
    )
)


(deffunction print-loop (?len ?row1 ?col1 ?type1 ?middle-rows ?middle-cols ?middle-types ?rowp ?colp ?typep ?rowq ?colq ?typeq ?rowy ?coly ?typey ?val)
    (printout t crlf "LOOP[" ?len "]: ")
    (printout t ?type1 (row-name ?row1) (column-name ?col1))
    (printout t ?*link-symbol-in-loops*)

    (print-HV-chain ?middle-rows ?middle-cols ?middle-types)
    (printout t ?*link-symbol-in-loops*)

    (printout t ?typep (row-name ?rowp) (column-name ?colp))
    (printout t ?*link-symbol-in-loops*)
    (printout t ?typeq (row-name ?rowq) (column-name ?colq))
    (printout t ?*link-symbol-in-loops*)
    (printout t ?*implication-sign*)
    (printout t ?typey (row-name ?rowy) (column-name ?coly) ?*equal-sign* ?val crlf )
)
 


(deffunction print-xtd-loop (?len ?row1 ?col1 ?type1 ?row2 ?col2 ?type2 ?middle-rows ?middle-cols ?middle-types ?rowp ?colp ?typep ?rowq ?colq ?typeq ?row12 ?col12 ?type12 ?rows2 ?cols2 ?types2 ?rowp2 ?colp2 ?typep2 ?val)
    ;;; quasi-loop
    (printout t crlf "XTD-LOOP[" ?len "]: ")
    (printout t ?type1 (row-name ?row1) (column-name ?col1))
    (printout t ?*link-symbol-in-loops*)
    (printout t ?type2 (row-name ?row2) (column-name ?col2))
    (printout t ?*link-symbol-in-loops*)

    (print-HV-chain ?middle-rows ?middle-cols ?middle-types)
    (printout t ?*link-symbol-in-loops*)

    (printout t ?typep (row-name ?rowp) (column-name ?colp))
    (printout t ?*link-symbol-in-loops*)
    (printout t ?typeq (row-name ?rowq) (column-name ?colq))
    (printout t ?*link-symbol-in-loops*)
    
    (printout t ?*implication-sign*)
    
    (printout t ?type12 (row-name ?row12) (column-name ?col12))
    (printout t ?*link-symbol-in-loops*)
    (if (neq (length$ ?rows2) 0) then
        (print-HV-chain ?rows2 ?cols2 ?types2)
        (printout t ?*link-symbol-in-loops*)
    )
    (printout t ?typep2 (row-name ?rowp2) (column-name ?colp2))

    (printout t ?*equal-sign* ?val crlf)
)
