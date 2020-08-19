
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              G-LABELS
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
;;; functions for initializing g-labels, physical csp-g-links and g-links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; g-labels and g-links for B csp-variables 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-B-glabels-and-their-physical-csp-glinks ()
	;;; glabels for csp variables of type B inside the grid
    (assert (B-glabels-for-inner-cells----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
            (foreach ?gval ?*B-gvalue-numbers*
                (bind ?glab (gvalue-row-col-to-B-glabel ?gval ?row ?col))
                ;;;; assert the glabel, its csp-variable
                (assert (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?glab) (csp-var-type B)))
                ;;; assert the labels it includes and the physical csp-glinks
                (foreach ?val ?*B-value-numbers*
                    (bind ?lab (value-row-col-to-B-label ?val ?row ?col))
                    (if (B-value-in-B-gvalue ?val ?gval)
                        then
                            ;;; assert ?lab as an included label
                            (add-label-in-glabel ?lab ?glab)
                        else
                            ;;; assert the physical csp-g-link between ?lab and ?glab for ?csp-var
                            ; (assert (physical-csp-glink ?lab ?glab ?csp-var))
                            (add-label-glabel-glink ?lab ?glab)
                    )
                )
            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)



(deffunction init-glinks-between-B-glabels-and-P-labels ()
    (assert (B-glinks-to-P-labels----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (bind ?col 1)
        (while (<= ?col ?*nb-columns*)
            (bind ?csp-var (row-col-to-B-csp-var ?row ?col))
            (foreach ?gval ?*B-gvalue-numbers*
                (bind ?glab (gvalue-row-col-to-B-glabel ?gval ?row ?col))
                
                (if (eq ?gval 16) then ; s-nw
                    (foreach ?val (create$ 2 3 6 7)
                        (bind ?lab (value-row-col-to-P-label ?val ?row ?col))
                        ; (assert (physical-glink ?lab ?glab gB2P))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                )

                (if (eq ?gval 17) then ; s-ne
                    (foreach ?val (create$ 3 4 5 6)
                        (bind ?lab (value-row-col-to-P-label ?val ?row (+ ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gB2P))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                )

                (if (eq ?gval 18) then ; s-se
                    (foreach ?val (create$ 2 3 6 7)
                        (bind ?lab (value-row-col-to-P-label ?val (+ ?row 1) (+ ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gB2P))
                        (add-label-glabel-glink ?lab ?glab)
                   )
                )

                (if (eq ?gval 19) then ; s-sw
                    (foreach ?val (create$ 3 4 5 6)
                        (bind ?lab (value-row-col-to-P-label ?val (+ ?row 1) ?col))
                        ; (assert (physical-glink ?lab ?glab gB2P))
                        (add-label-glabel-glink ?lab ?glab)
                   )
                )

                (if (eq ?gval 20) then ; a-nw
                    (foreach ?val (create$ 1 4 5)
                        (bind ?lab (value-row-col-to-P-label ?val ?row ?col))
                        ; (assert (physical-glink ?lab ?glab gB2P))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                )

                (if (eq ?gval 21) then ; a-ne
                    (foreach ?val (create$ 1 2 7)
                        (bind ?lab (value-row-col-to-P-label ?val ?row (+ ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gB2P))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                )

                (if (eq ?gval 22) then ; a-se
                    (foreach ?val (create$ 1 4 5)
                        (bind ?lab (value-row-col-to-P-label ?val (+ ?row 1) (+ ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gB2P))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                )

                (if (eq ?gval 23) then ; a-sw
                    (foreach ?val (create$ 1 2 7)
                        (bind ?lab (value-row-col-to-P-label ?val (+ ?row 1) ?col))
                        ; (assert (physical-glink ?lab ?glab gB2P))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                )


            ) ;;; end foreach ?gval
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; g-labels and g-links for P csp-variables
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-P-glabels-and-their-physical-csp-glinks ()
	;;; glabels for csp variables of type P
    (assert (P-glabels----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row (+ ?*nb-rows* 1))
        (bind ?col 1)
        (while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
            (foreach ?gval ?*P-gvalue-numbers*
                (bind ?glab (gvalue-row-col-to-P-glabel ?gval ?row ?col))
                ;;;; assert the glabel, its csp-variable
                (assert (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?glab) (csp-var-type P)))
                ;;; assert the labels it includes and the physical csp-glinks
                (foreach ?val ?*P-value-numbers*
                    (bind ?lab (value-row-col-to-P-label ?val ?row ?col))
                    (if (P-value-in-P-gvalue ?val ?gval)
                        then
                            ;;; assert ?lab as an included label
                            (add-label-in-glabel ?lab ?glab)
                        else
                            ;;; assert the physical csp-g-link between ?lab and ?glab for ?csp-var
                            ; (assert (physical-csp-glink ?lab ?glab ?csp-var))
                            (add-label-glabel-glink ?lab ?glab)
                    )
                )
            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)



(deffunction init-glinks-between-P-glabels-and-B-labels ()
    (assert (P-glinks-to-B-labels----------------------------------------------))
	(bind ?row 1)
    (while (<= ?row (+ ?*nb-rows* 1))
        (bind ?col 1)
        (while (<= ?col (+ ?*nb-columns* 1))
            (bind ?csp-var (row-col-to-P-csp-var ?row ?col))
            (foreach ?gval ?*P-gvalue-numbers*
                (bind ?glab (gvalue-row-col-to-P-glabel ?gval ?row ?col))
                
                (if (eq ?gval 8) then ; /
                    (foreach ?val (create$ 9 12 15)
                        (bind ?lab (value-row-col-to-B-label ?val (- ?row 1) (- ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                    (foreach ?val (create$ 4 5 7 8 9 10 14 15)
                        (bind ?lab (value-row-col-to-B-label ?val (- ?row 1) ?col))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                    (foreach ?val (create$ 2 3 7 8 9 10 12 13)
                        (bind ?lab (value-row-col-to-B-label ?val ?row (- ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                    (foreach ?val (create$ 8 13 14)
                        (bind ?lab (value-row-col-to-B-label ?val ?row ?col))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                )

                (if (eq ?gval 9) then : \
                    (foreach ?val (create$ 3 4 6 7 10 11 13 14)
                        (bind ?lab (value-row-col-to-B-label ?val (- ?row 1) (- ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                    (foreach ?val (create$ 11 12 13)
                        (bind ?lab (value-row-col-to-B-label ?val (- ?row 1) ?col))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                    (foreach ?val (create$ 6 14 15)
                        (bind ?lab (value-row-col-to-B-label ?val ?row (- ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                    (foreach ?val (create$ 2 5 6 7 10 11 12 15)
                        (bind ?lab (value-row-col-to-B-label ?val ?row ?col))
                        (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                )

                (if (eq ?gval 10) then ; a
                    (foreach ?val (create$ 1 9 12 15)
                        (bind ?lab (value-row-col-to-B-label ?val (- ?row 1) (- ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                    (foreach ?val (create$ 1 11 12 13)
                        (bind ?lab (value-row-col-to-B-label ?val (- ?row 1) ?col))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                    (foreach ?val (create$ 1 6 14 15)
                        (bind ?lab (value-row-col-to-B-label ?val ?row (- ?col 1)))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                    (foreach ?val (create$ 1 8 13 14)
                        (bind ?lab (value-row-col-to-B-label ?val ?row ?col))
                        ; (assert (physical-glink ?lab ?glab gP2B))
                        (add-label-glabel-glink ?lab ?glab)
                    )
                )

            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
)





(deffunction define-glabels-and-glinks ()
    (init-P-glabels-and-their-physical-csp-glinks)
    (init-B-glabels-and-their-physical-csp-glinks)

    (init-glinks-between-P-glabels-and-B-labels)
    (init-glinks-between-B-glabels-and-P-labels)
)







