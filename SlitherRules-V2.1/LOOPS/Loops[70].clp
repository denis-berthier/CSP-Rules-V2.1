
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              LOOPS[70]
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





(defrule activate-loop[70]
   (declare (salience ?*activate-loop[70]-salience*))
   (logical (context (name ?cont)) (technique ?cont BRT))
   (not (deactivate ?cont loop))
=>
   (assert (technique ?cont loop[70]))
   (assert (technique ?cont partial-loop[69]))
   (bind ?*technique* loop[70])
)






;;; extension of an existing partial-loop

(defrule partial-loop[69]
   (declare (salience ?*partial-loop[69]-salience*))
   (logical
      (partial-loop
         (context ?cont)
         (length 67)
         (nb-cont ?nb-cont)
         (labs $?labs ?labp ?labq)
         (rows $?rows ?rowp ?rowq)
         (columns $?cols ?colp ?colq)
         (types $?types ?typep ?typeq)
      )

      (technique ?cont partial-loop[69])
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
         (length 69)
         (nb-cont (+ ?nb-cont (nb-contacts ?typey ?rowy ?coly) (nb-contacts ?typez ?rowz ?colz)))
         (labs (create$ $?labs ?labp ?labq ?laby ?labz))
         (rows (create$ $?rows ?rowp ?rowq ?rowy ?rowz))
         (columns (create$ $?cols ?colp ?colq ?coly ?colz))
         (types (create$ $?types ?typep ?typeq ?typey ?typez))
      )
   )
)



;;; loop elimination or solution rule

(defrule loop-elimination-or-solution[70]
   (declare (salience ?*loop[70]-salience*))
   (partial-loop
      (context ?cont)
      (length 69)
      (nb-cont ?nb-cont)
      (labs ?lab1 $?middle-labs ?labp ?labq)
      (rows ?row1 $?middle-rows ?rowp ?rowq)
      (columns ?col1 $?middle-cols ?colp ?colq)
      (types ?type1 $?middle-types ?typep ?typeq)
   )

   ;;; closing-line
   ?cand <- (candidate (context ?cont) (status cand) (value 1) (type ?typey&H|V) (row ?rowy) (column ?coly)
      (label ?laby&~?lab1&~?labp&~?labq&:(not (member$ ?laby $?middle-labs)))
   )
   (test (and
      (combinable-lines ?rowp ?colp ?typep ?rowq ?colq ?typeq ?rowy ?coly ?typey)
      (combinable-lines ?rowq ?colq ?typeq ?rowy ?coly ?typey ?row1 ?col1 ?type1)
   ))
   ?cand2 <- (candidate (context ?cont) (status cand) (value 0) (type ?typey) (row ?rowy) (column ?coly))
=>
   (bind ?*QL-max* (max 70 ?*QL-max*))
   (if (< (+ ?nb-cont (nb-contacts ?typey ?rowy ?coly)) ?*sum-of-givens*)
      then ; value 1 would make a too short loop; it must be deleted
         (retract ?cand)
         (modify ?cand2 (status c-value))
         (print-loop 70 ?row1 ?col1 ?type1 $?middle-rows $?middle-cols $?middle-types ?rowp ?colp ?typep ?rowq ?colq ?typeq ?rowy ?coly ?typey 0)
      else ; loop length is ok for solution; value 0 must be retracted to allow closing the loop
         (retract ?cand2)
         (modify ?cand (status c-value))
         (print-loop 70 ?row1 ?col1 ?type1 $?middle-rows $?middle-cols $?middle-types ?rowp ?colp ?typep ?rowq ?colq ?typeq ?rowy ?coly ?typey 1)
   )
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
)



