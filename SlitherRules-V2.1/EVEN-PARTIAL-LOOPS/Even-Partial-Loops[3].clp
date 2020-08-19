
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              EVEN-PARTIAL-LOOPS[3]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2020             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; DO NOT USE THE AUTOMATIC GENERATOR

;;; even-partial-loops have the same extension rule as odd ones,
;;; but the saliences are lower

;;; extension of an existing partial-loop

(defrule partial-loop[3]
   (declare (salience ?*partial-loop[3]-salience*))
   (logical
      (technique ?cont partial-loop[3])

      (candidate (context ?cont) (status c-value) (value 1) (type ?type1&H|V) (label ?lab1) (row ?row1) (column ?col1))
      (candidate (context ?cont) (status c-value) (value 1) (type ?type2&H|V) (label ?lab2&~?lab1) (row ?row2) (column ?col2))
      (test (touching-lines ?row1 ?col1 ?type1 ?row2 ?col2 ?type2))
      
      (candidate (context ?cont) (status c-value) (value 1) (type ?type3&H|V) (label ?lab3&~?lab1&~?lab2) (row ?row3) (column ?col3))
      (test (combinable-lines ?row1 ?col1 ?type1 ?row2 ?col2 ?type2 ?row3 ?col3 ?type3))
   )
=>
   (bind ?nb-conts
       (+
           (nb-contacts ?type1 ?row1 ?col1)
           (nb-contacts ?type2 ?row2 ?col2)
           (nb-contacts ?type3 ?row3 ?col3)
       )
   )
   (assert
      (partial-loop
         (context ?cont)
         (length 3)
         (nb-cont ?nb-conts)
         (labs (create$ ?lab1 ?lab2 ?lab3))
         (rows (create$ ?row1 ?row2 ?row3))
         (columns (create$ ?col1 ?col2 ?col3))
         (types (create$ ?type1 ?type2 ?type3))
      )
   )
)



