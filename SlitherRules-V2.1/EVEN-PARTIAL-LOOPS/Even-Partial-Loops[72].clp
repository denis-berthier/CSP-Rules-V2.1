
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              EVEN-PARTIAL-LOOPS[72]
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





;;; even-partial-loops have the same extension rule as odd ones,
;;; but the saliences are lower

;;; extension of an existing partial-loop

(defrule partial-loop[72]
   (declare (salience ?*partial-loop[72]-salience*))
   (logical
      (partial-loop
         (context ?cont)
         (length 70)
         (nb-cont ?nb-cont)
         (labs $?labs ?labp ?labq)
         (rows $?rows ?rowp ?rowq)
         (columns $?cols ?colp ?colq)
         (types $?types ?typep ?typeq)
      )

      (technique ?cont partial-loop[72])
      ;;; extension1
      (candidate (context ?cont) (status c-value) (value 1) (type ?typey&H|V) (row ?rowy) (column ?coly)
         (label ?laby&~?labp&~?labq&:(not (member$ ?laby $?labs)))
      )
      (test (combinable-lines ?rowp ?colp ?typep ?rowq ?colq ?typeq ?rowy ?coly ?typey))

      ;;; extension2
      (candidate (context ?cont) (status c-value) (value 1) (type ?typez&H|V) (row ?rowz) (column ?colz)
         (label ?labz&~?labp&~?labq&~?laby&:(not (member$ ?labz $?labs)))
      )
      (test (combinable-lines ?rowq ?colq ?typeq ?rowy ?coly ?typey ?rowz ?colz ?typez))
   )
=>
   (assert
      (partial-loop
         (context ?cont)
         (length 72)
         (nb-cont (+ ?nb-cont (nb-contacts ?typey ?rowy ?coly) (nb-contacts ?typez ?rowz ?colz)))
         (labs (create$ $?labs ?labp ?labq ?laby ?labz))
         (rows (create$ $?rows ?rowp ?rowq ?rowy ?rowz))
         (columns (create$ $?cols ?colp ?colq ?coly ?colz))
         (types (create$ $?types ?typep ?typeq ?typey ?typez))
      )
   )
)



