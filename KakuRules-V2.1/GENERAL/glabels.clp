
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; g-labels and g-links for gcombs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule init-physical-g-links
    (declare (salience ?*activate-init-physical-glinks-salience*))
=>
    (printout t "start init physical g-links for gcombs")
    (assert (init-physical-glinks))
)



(defrule track-init-physical-g-links
	(declare (salience ?*activate-init-physical-glinks-salience*))
	?level <- (init-physical-glinks)
=>
	(if ?*print-levels* then (printout t ", starting with " ?level crlf))
)


(defrule deal-with-horizontal-gcombs
    (declare (salience ?*init-physical-glinks-salience-2*))
    (init-physical-glinks)
    (sector-with-gcombs
        (type horiz)
        (sum ?S)
        (size ?p)
        (combinations $?combs)
        (compatible-digits $?compat-as-list)
        (row ?row)
        (column ?col)
    )
=>
    (bind ?csp-var (horizontal-controller-row-col-to-csp-var ?row ?col))
    ;;; compute gcombs for ?csp-var
    (bind ?gcombs (gcombs ?S ?p))
    
    ;;; deal with each g-combination
    (foreach ?gcomb ?gcombs
        (bind ?list-of-digits-excluded-by-gcomb (list-of-digits-excluded-by-gcomb ?gcomb ?compat-as-list))
        (bind ?combs-in-gcomb (combs-in-number ?combs ?gcomb))
                                                
        ;;; Hrc g-labels
        ;;; assert the g-label of ?gcomb as a g-label for ?csp-var
        (bind ?g-label (comb-rc-to-horizontal-label ?gcomb ?row ?col))
        (assert (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?g-label)))

        ;;; for each comb in gcomb, add the corresponding label-in-glabel
        (foreach ?combx ?combs-in-gcomb
            (bind ?labx (comb-rc-to-horizontal-label ?combx ?row ?col))
            (add-label-in-glabel ?labx ?g-label)
        )
                                                
        ;;; assert the physical csp-g-links between ?g-label and the other labels for ?csp-var
        (foreach ?comb $?combs
            (if (not (member$ ?comb ?combs-in-gcomb)) then
                (bind ?labx (comb-rc-to-horizontal-label ?comb ?row ?col))
                (assert (physical-csp-glink ?labx ?g-label ?csp-var))
            )
        )
                                                
        ;;; assert the physical g-links between ?g-label and the labels it excludes from the sector
        (foreach ?digx ?list-of-digits-excluded-by-gcomb
            (bind ?k 1)
            (while (<= ?k ?p)
                (bind ?colx (+ ?col ?k))
                (bind ?labx (nrc-to-natural-label ?digx ?row ?colx))
                (assert (physical-glink ?labx ?g-label ghS)) 
                (add-label-glabel-glink ?labx ?g-label)
                (bind ?k (+ ?k 1))
            )
        )
    )
    ;(printout t "horizontal-gcombs OK" crlf)
)



(defrule deal-with-vertical-gcombs
    (declare (salience ?*init-physical-glinks-salience-3*))
    (init-physical-glinks)
    (sector-with-gcombs
        (type verti)
        (sum ?S)
        (size ?p)
        (combinations $?combs)
        (compatible-digits $?compat-as-list)
        (row ?row)
        (column ?col)
    )
=>
    (bind ?csp-var (vertical-controller-row-col-to-csp-var ?row ?col))
    ;;; compute gcombs for ?csp-var
    (bind ?gcombs (gcombs ?S ?p))
    
    ;;; deal with each g-combination
    (foreach ?gcomb ?gcombs
        (bind ?list-of-digits-excluded-by-gcomb (list-of-digits-excluded-by-gcomb ?gcomb ?compat-as-list))
        (bind ?combs-in-gcomb (combs-in-number ?combs ?gcomb))
                                                
        ;;; Vrc g-labels
        ;;; assert the g-label of ?gcomb as a g-label for ?csp-var
        (bind ?g-label (comb-rc-to-vertical-label ?gcomb ?row ?col))
        (assert (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?g-label)))

        ;;; for each comb in gcomb, add the corresponding label-in-glabel
        (foreach ?combx ?combs-in-gcomb
            (bind ?labx (comb-rc-to-vertical-label ?combx ?row ?col))
            (add-label-in-glabel ?labx ?g-label)
       )
                                                
        ;;; assert the physical csp-g-links between ?g-label and the other labels for ?csp-var
        (foreach ?comb $?combs
            (if (not (member$ ?comb ?combs-in-gcomb)) then
                (bind ?labx (comb-rc-to-vertical-label ?comb ?row ?col))
                (assert (physical-csp-glink ?labx ?g-label ?csp-var))
            )
        )
                                                
        ;;; assert the physical g-links between ?g-label and the labels it excludes from the sector
        (foreach ?digx ?list-of-digits-excluded-by-gcomb
            (bind ?k 1)
            (while (<= ?k ?p)
                (bind ?rowx (+ ?row ?k))
                (bind ?labx (nrc-to-natural-label ?digx ?rowx ?col))
                (assert (physical-glink ?labx ?g-label gvS)) 
                (add-label-glabel-glink ?labx ?g-label)
                (bind ?k (+ ?k 1))
            )
        )
    )
    ; (printout t "vertical-gcombs OK" crlf)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; g-labels and g-links for gdigs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule track-init-physical-g-links-for-gdigs
    (declare (salience ?*init-physical-glinks-salience-4*))
=>
    (printout t "start init physical g-links for gdigs" crlf)
)


(defrule deal-with-horizontal-gdigs
    (declare (salience ?*init-physical-glinks-salience-5*))
    (init-physical-glinks)
    (sector-with-gdigs
        (type horiz)
        (sum ?S)
        (size ?p)
        (combinations $?combs)
        (compatible-digits $?compat-as-list)
        (row ?row)
        (column ?col)
    )
=>
    ;;; compute gdigs 
    (bind ?gdigs (gdigs ?S ?p))
    
    ;;; for each gdig, deal with each cell in the sector
    (foreach ?gdig ?gdigs
        (bind ?excl-combs (combs-excluded-by-number ?gdig ?combs))
   
        ;;; deal with each cell in the sector
        (bind ?k 1)
        (while (<= ?k ?p)
            (bind ?colx (+ ?col ?k))
            (bind ?csp-var (row-col-to-rc-csp-var ?row ?colx))
        
            ;;; rc g-labels
            ;;; assert the g-label of ?gdig as a g-label for ?csp-var
            (bind ?g-label (nrc-to-natural-label ?gdig ?row ?colx))
            (assert (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?g-label)))

            ;;; for numbx in gdig, add the corresponding label-in-glabel
            (foreach ?numbx (number-as-list ?gdig)
                (bind ?labx (nrc-to-natural-label ?numbx ?row ?colx))
                (add-label-in-glabel ?labx ?g-label)
            )
       
            
            ;;; assert the physical csp-g-links between ?g-label and the other labels for ?csp-var
            (foreach ?numbx ?compat-as-list
                (if (not (member$ ?numbx (number-as-list ?gdig))) then
                    (bind ?labx (nrc-to-natural-label ?numbx ?row ?colx))
                    (assert (physical-csp-glink ?labx ?g-label ?csp-var))
                )
            )
            
            ;;; assert the physical g-links between ?g-label and the labels it excludes from the controller
            (foreach ?combx ?excl-combs
                (bind ?labx (comb-rc-to-horizontal-label ?combx ?row ?col))
                (assert (physical-glink ?labx ?g-label ghrc)) 
                (add-label-glabel-glink ?labx ?g-label)
            )
            (bind ?k (+ ?k 1))
        )
    )
    ;(printout t "horizontal-gdigs OK" crlf)
)


(defrule deal-with-vertical-gdigs
    (declare (salience ?*init-physical-glinks-salience-6*))
    (init-physical-glinks)
    (sector-with-gdigs
        (type verti)
        (sum ?S)
        (size ?p)
        (combinations $?combs)
        (compatible-digits $?compat-as-list)
        (row ?row)
        (column ?col)
    )
=>
    ;;; compute gdigs 
    (bind ?gdigs (gdigs ?S ?p))
    
    ;;; for each gdig, deal with each cell in the sector
    (foreach ?gdig ?gdigs
        (bind ?excl-combs (combs-excluded-by-number ?gdig ?combs))
   
        ;;; deal with each cell in the sector
        (bind ?k 1)
        (while (<= ?k ?p)
            (bind ?rowx (+ ?row ?k))
            (bind ?csp-var (row-col-to-rc-csp-var ?rowx ?col))
        
            ;;; rc g-labels
            ;;; assert the g-label of ?gdig as a g-label for ?csp-var
            (bind ?g-label (nrc-to-natural-label ?gdig ?rowx ?col))
            (assert (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?g-label)))

            ;;; for numbx in gdig, add the corresponding label-in-glabel
            (foreach ?numbx (number-as-list ?gdig)
                (bind ?labx (nrc-to-natural-label ?numbx ?rowx ?col))
                (add-label-in-glabel ?labx ?g-label)
            )
       
            
            ;;; assert the physical csp-g-links between ?g-label and the other labels for ?csp-var
            (foreach ?numbx ?compat-as-list
                (if (not (member$ ?numbx (number-as-list ?gdig))) then
                    (bind ?labx (nrc-to-natural-label ?numbx ?rowx ?col))
                    (assert (physical-csp-glink ?labx ?g-label ?csp-var))
                )
            )
            
            ;;; assert the physical g-links between ?g-label and the labels it excludes from the controller
            (foreach ?combx ?excl-combs
                (bind ?labx (comb-rc-to-vertical-label ?combx ?row ?col))
                (assert (physical-glink ?labx ?g-label gvrc)) 
                (add-label-glabel-glink ?labx ?g-label)
            )
            (bind ?k (+ ?k 1))
        )
    )
    ;(printout t "vertical-gdigs OK" crlf)
)



(defrule end-init-physical-g-links
    (declare (salience ?*init-physical-glinks-salience-7*))
    ?init <- (init-physical-glinks)
=>
    (retract ?init)
    (printout t "end init physical g-links" crlf)
)

