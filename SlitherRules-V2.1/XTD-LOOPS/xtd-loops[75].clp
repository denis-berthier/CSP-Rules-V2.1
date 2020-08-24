
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              EXTENDED-LOOPS[75]
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





(defrule activate-xtd-loop[75]
   (declare (salience ?*activate-xtd-loop[75]-salience*))
   (logical (context (name ?cont)) (technique ?cont BRT))
   (not (deactivate ?cont xtd-loop))
=>
   (assert (technique ?cont xtd-loop[75]))
   (assert (technique ?cont partial-loop[74]))
   (bind ?*technique* xtd-loop[75])
)






;;; xtd-loop elimination or solution rule

(defrule xtd-loop-elimination-or-solution[75]
   (declare (salience ?*xtd-loop[75]-salience*))
   (partial-loop
      (context ?cont)
      (length ?p&:(< ?p 74))
      (nb-cont ?nb-cont)
      (labs ?lab1 ?lab2 $?middle-labs ?labp ?labq)
      (rows ?row1 ?row2 $?middle-rows ?rowp ?rowq)
      (columns ?col1 ?col2 $?middle-cols ?colp ?colq)
      (types ?type1 ?type2 $?middle-types ?typep ?typeq)
   )

   ;;; closing-lines
   (isolated-HV-chain
      (context ?cont)
      (length ?q&:(= (+ ?p ?q) 75))
      (nb-cont ?nb-cont2)
      (cands $?cands)
      (anti-cands $?anti-cands)
      (rows ?row12 $?rows2 ?rowp2)
      (columns ?col12 $?cols2 ?colp2)
      (types ?type12 $?types2 ?typep2)
   )
   (test (and
      (combinable-lines ?rowp ?colp ?typep ?rowq ?colq ?typeq ?row12 ?col12 ?type12)
      (combinable-lines ?rowp2 ?colp2 ?typep2 ?row1 ?col1 ?type1 ?row2 ?col2 ?type2)
   ))
=>
   (bind ?*QL-max* (max 75 ?*QL-max*))
   (bind ?assert-values 0)
   (if (neq (+ ?nb-cont ?nb-cont2) ?*sum-of-givens*)
      then ; value 1 would make a too short or too long xtd-loop
         ; it must be deleted for all the HV lines in the isolated-HV-chain
         (foreach ?c $?cands (retract ?c))
         (foreach ?c $?anti-cands (modify ?c (status c-value)))
      else ; value 1 gives the solution loop
         ; it must be asserted for all the HV lines in the isolated-HV-chain
         (foreach ?c $?anti-cands  (retract ?c))
         (foreach ?c $?cands (modify ?c (status c-value)))
         (bind ?assert-values 1)
   )
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* ?q)))
   (print-xtd-loop 75 ?row1 ?col1 ?type1 ?row2 ?col2 ?type2 $?middle-rows $?middle-cols $?middle-types ?rowp ?colp ?typep ?rowq ?colq ?typeq ?row12 ?col12 ?type12 $?rows2 $?cols2 $?types2 ?rowp2 ?colp2 ?typep2 ?assert-values)
)



