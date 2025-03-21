
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              11-CELL 4-DIGIT DEADLY PATTERN #29 (DP11-4-29)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;         https://github.com/denis-berthier          ;;;
               ;;;            January 2006 - January 2025             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; The rules in this file have been automatically generated by the CSP-Rules generator,
;;; based on the following pattern, one among the 17 deadly patterns in 9 or fewer cells.
;;; (. . . . . . . . . . . . . . . . . . . . . . . . . 12 12 . . . . . . . . . . . . . . . . . . . . . . . . . 13 13 . . . . . 24 . . 24 . . 34 . . . . . 34 . . 34 . . 24 . 23 .)
;;; Variables in the following rule are named after this pattern


(defrule activate-deadly-pattern-rule-DP11-4-29
   (declare (salience ?*activate-deadly-pattern-rule[11-4]-salience*))
   (logical
      (play)
      (context (name ?cont))
   )
=>
   (if ?*print-levels* then (printout t Entering_level DP11-4-29))
   (assert (deadly-pattern DP11-4-29 . . . . . . . . . . . . . . . . . . . . . . . . . 12 12 . . . . . . . . . . . . . . . . . . . . . . . . . 13 13 . . . . . 24 . . 24 . . 34 . . . . . 34 . . 34 . . 24 . 23 .))
)


(defrule deadly-pattern-rule-DP11-4-29
   (declare (salience ?*deadly-pattern-rule[11-4]-salience*))
   (number ?nb1)
   (number ?nb2&~?nb1)
   (number ?nb3&~?nb2&~?nb1)
   (number ?nb4&~?nb3&~?nb2&~?nb1)
   (deadly-pattern DP11-4-29 $?pattern-list)

   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row3) (column ?col8) (block ?blk3) (band ?bnd1) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row3) (column ?col8) (block ?blk3) (band ?bnd1) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row3) (column ?col9&~?col8) (block ?blk3) (band ?bnd1) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row3) (column ?col9) (block ?blk3) (band ?bnd1) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row6&~?row3) (column ?col8) (block ?blk6&~?blk3) (band ?bnd2&~?bnd1) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row6) (column ?col8) (block ?blk6) (band ?bnd2) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row6) (column ?col9) (block ?blk6) (band ?bnd2) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row6) (column ?col9) (block ?blk6) (band ?bnd2) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row7&~?row3&~?row6) (column ?col6&~?col8&~?col9) (block ?blk8&~?blk3&~?blk6) (band ?bnd3&~?bnd1&~?bnd2) (stack ?stk2&~?stk3))
   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row7) (column ?col6) (block ?blk8) (band ?bnd3) (stack ?stk2))

   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row7) (column ?col9) (block ?blk9&~?blk3&~?blk6&~?blk8) (band ?bnd3) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row7) (column ?col9) (block ?blk9) (band ?bnd3) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row8&~?row3&~?row6&~?row7) (column ?col3&~?col8&~?col9&~?col6) (block ?blk7&~?blk3&~?blk6&~?blk8&~?blk9) (band ?bnd3) (stack ?stk1&~?stk3&~?stk2))
   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row8) (column ?col3) (block ?blk7) (band ?bnd3) (stack ?stk1))

   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row8) (column ?col9) (block ?blk9) (band ?bnd3) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row8) (column ?col9) (block ?blk9) (band ?bnd3) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row9&~?row3&~?row6&~?row7&~?row8) (column ?col3) (block ?blk7) (band ?bnd3) (stack ?stk1))
   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row9) (column ?col3) (block ?blk7) (band ?bnd3) (stack ?stk1))

   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row9) (column ?col6) (block ?blk8) (band ?bnd3) (stack ?stk2))
   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row9) (column ?col6) (block ?blk8) (band ?bnd3) (stack ?stk2))

   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row9) (column ?col8) (block ?blk9) (band ?bnd3) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row9) (column ?col8) (block ?blk9) (band ?bnd3) (stack ?stk3))

=>

   (bind ?*has-deadly-pattern* TRUE)

   ;;; find the additional candidates ("guardians")
   (bind ?nb-real-guardians 0)
   (bind ?real-guardians (create$))
   (foreach ?row ?*rows*
      (foreach ?col ?*columns*
         (bind ?cll (cell-index ?row ?col))
         (bind ?entry (nth$ ?cll ?pattern-list))
         
         ;;; if the cell belongs to the pattern,
         (if (and (neq ?entry .) (neq ?entry O)) then
         
            (bind ?entry-list (explode-RS-entry-9x9 ?entry))
            (bind ?nb-pattern-cands (length$ ?entry-list))
            ;;; add the relevant real guardians:
            (do-for-all-facts
               ((?c candidate))
               (and  (eq ?c:status cand)
                  (neq ?c:number 
                     (switch (nth$ 1 ?entry-list)
                        (case 1 then ?nb1)
                        (case 2 then ?nb2)
                        (case 3 then ?nb3)
                        (case 4 then ?nb4)
                     )
                  )
                  (neq ?c:number 
                     (switch (nth$ 2 ?entry-list)
                        (case 1 then ?nb1)
                        (case 2 then ?nb2)
                        (case 3 then ?nb3)
                        (case 4 then ?nb4)
                     )
                  )
                  (eq ?c:row
                     (switch ?row
                        (case 3 then ?row3)
                        (case 6 then ?row6)
                        (case 7 then ?row7)
                        (case 8 then ?row8)
                        (case 9 then ?row9)
                     )
                  )
                  (eq ?c:column
                     (switch ?col
                        (case 3 then ?col3)
                        (case 6 then ?col6)
                        (case 8 then ?col8)
                        (case 9 then ?col9)
                     )
                  )
               )
               (bind ?nb-real-guardians (+ ?nb-real-guardians 1))
               (bind ?real-guardians (create$ ?real-guardians ?c:label))
            )
         )
      )
   )

   ;;; assert the ORk-relation if it doesn't already exist
   (if 
      (and
         (<= ?nb-real-guardians ?*max-deadly-guardians*)
         (not
            (any-factp
               ((?rel ORk-relation))
               (and
                  (eq ?rel:context ?cont)
                  (<= ?rel:OR-size ?nb-real-guardians)
                  (eq ?rel:symmetrified FALSE)
                  (subsetp ?rel:OR-candidates ?real-guardians)
               )
            )
         )
      )
      then
      (assert
         (ORk-relation
            (OR-name DP11-4-29)
            (OR-complexity 11)
            (context ?cont)
            (OR-size ?nb-real-guardians)
            (symmetrified FALSE)
            (OR-candidates ?real-guardians)
         )
      )

      ;;; in such a case, find the real cell print-names in the pattern
      (bind ?real-cells (create$))
      (foreach ?row ?*rows*
         (foreach ?col ?*columns*
            (bind ?cll (cell-index ?row ?col))
            (bind ?entry (nth$ ?cll ?pattern-list))
            
            ;;; if the cell belongs to the pattern,
            (if (and (neq ?entry .) (neq ?entry O)) then
            
               ;;; add the real cell print name to the list:
               (bind ?real-cells 
                  (create$ ?real-cells 
                     (sym-cat
                        (switch ?row
                           (case 3 then (row-name ?row3))
                           (case 6 then (row-name ?row6))
                           (case 7 then (row-name ?row7))
                           (case 8 then (row-name ?row8))
                           (case 9 then (row-name ?row9))
                        )
                        (switch ?col
                           (case 3 then (column-name ?col3))
                           (case 6 then (column-name ?col6))
                           (case 8 then (column-name ?col8))
                           (case 9 then (column-name ?col9))
                        )
                     )
                  )
               )
            )
         )
      )
      
      ;;; in such a case, print for the user what has been done:
      (if ?*print-actions* then
         (printout t crlf
            DP11-4-29 "-OR" ?nb-real-guardians  "-relation for digits: " ?nb1 ?nb2 ?nb3 ?nb4 crlf 
            "   in cells (marked #): " ?real-cells " " crlf 
            "   with " ?nb-real-guardians " guardians (in cells marked @) : " (print-list-of-labels ?real-guardians) " " crlf 
         )
         ;;; find the real cell indices in the pattern
         (bind ?real-cell-indices (create$))
         (foreach ?row ?*rows*
            (foreach ?col ?*columns*
               (bind ?cll (cell-index ?row ?col))
               (bind ?entry (nth$ ?cll ?pattern-list))
               
               ;;; if the cell belongs to the pattern,
               (if (and (neq ?entry .) (neq ?entry 0)) then
               
                  ;;; add the real cell index to the list:
                  (bind ?real-cell-indices 
                     (create$ ?real-cell-indices 
                        (cell-index
                           (switch ?row
                              (case 3 then ?row3)
                              (case 6 then ?row6)
                              (case 7 then ?row7)
                              (case 8 then ?row8)
                              (case 9 then ?row9)
                           )
                           (switch ?col
                              (case 3 then ?col3)
                              (case 6 then ?col6)
                              (case 8 then ?col8)
                              (case 9 then ?col9)
                           )
                        )
                     )
                  )
               )
            )
         )
         ;;; variable ?real-cell-indices is now available to the rule
         (pretty-print-mark-current-resolution-state ?real-cell-indices ?real-guardians)
      )
   )
)




;;; row-column symmetric version of the original pattern
;;; (redundant for symmetric patterns)
;;; (. . . . . . . . . . . . . . . . . . . . . . . . . 12 12 . . . . . . . . . . . . . . . . . . . . . . . . 32 . 32 . . . . . . . . . . . 43 . . 41 . . 31 . . 43 . . 41 32 12 .)
;;; Variables in the following rule are named after this pattern


(defrule activate-deadly-pattern-rule-DP11-4-29s
   (declare (salience ?*activate-deadly-pattern-rule[11-4]-salience*))
   (logical
      (play)
      (context (name ?cont))
   )
=>
   (if ?*print-levels* then (printout t Entering_level DP11-4-29s))
   (assert (deadly-pattern DP11-4-29s . . . . . . . . . . . . . . . . . . . . . . . . . 12 12 . . . . . . . . . . . . . . . . . . . . . . . . 32 . 32 . . . . . . . . . . . 43 . . 41 . . 31 . . 43 . . 41 32 12 .))
)


(defrule deadly-pattern-rule-DP11-4-29s
   (declare (salience ?*deadly-pattern-rule[11-4]-salience*))
   (number ?nb1)
   (number ?nb2&~?nb1)
   (number ?nb3&~?nb2&~?nb1)
   (number ?nb4&~?nb3&~?nb2&~?nb1)
   (deadly-pattern DP11-4-29s $?pattern-list)

   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row3) (column ?col8) (block ?blk3) (band ?bnd1) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row3) (column ?col8) (block ?blk3) (band ?bnd1) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row3) (column ?col9&~?col8) (block ?blk3) (band ?bnd1) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row3) (column ?col9) (block ?blk3) (band ?bnd1) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row6&~?row3) (column ?col7&~?col8&~?col9) (block ?blk6&~?blk3) (band ?bnd2&~?bnd1) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row6) (column ?col7) (block ?blk6) (band ?bnd2) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row6) (column ?col9) (block ?blk6) (band ?bnd2) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row6) (column ?col9) (block ?blk6) (band ?bnd2) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row8&~?row3&~?row6) (column ?col3&~?col8&~?col9&~?col7) (block ?blk7&~?blk3&~?blk6) (band ?bnd3&~?bnd1&~?bnd2) (stack ?stk1&~?stk3))
   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row8) (column ?col3) (block ?blk7) (band ?bnd3) (stack ?stk1))

   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row8) (column ?col6&~?col8&~?col9&~?col7&~?col3) (block ?blk8&~?blk3&~?blk6&~?blk7) (band ?bnd3) (stack ?stk2&~?stk3&~?stk1))
   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row8) (column ?col6) (block ?blk8) (band ?bnd3) (stack ?stk2))

   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row8) (column ?col9) (block ?blk9&~?blk3&~?blk6&~?blk7&~?blk8) (band ?bnd3) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row8) (column ?col9) (block ?blk9) (band ?bnd3) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row9&~?row3&~?row6&~?row8) (column ?col3) (block ?blk7) (band ?bnd3) (stack ?stk1))
   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row9) (column ?col3) (block ?blk7) (band ?bnd3) (stack ?stk1))

   (candidate (context ?cont) (status cand) (number ?nb4) (row ?row9) (column ?col6) (block ?blk8) (band ?bnd3) (stack ?stk2))
   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row9) (column ?col6) (block ?blk8) (band ?bnd3) (stack ?stk2))

   (candidate (context ?cont) (status cand) (number ?nb3) (row ?row9) (column ?col7) (block ?blk9) (band ?bnd3) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row9) (column ?col7) (block ?blk9) (band ?bnd3) (stack ?stk3))

   (candidate (context ?cont) (status cand) (number ?nb1) (row ?row9) (column ?col8) (block ?blk9) (band ?bnd3) (stack ?stk3))
   (candidate (context ?cont) (status cand) (number ?nb2) (row ?row9) (column ?col8) (block ?blk9) (band ?bnd3) (stack ?stk3))

=>

   (bind ?*has-deadly-pattern* TRUE)

   ;;; find the additional candidates ("guardians")
   (bind ?nb-real-guardians 0)
   (bind ?real-guardians (create$))
   (foreach ?row ?*rows*
      (foreach ?col ?*columns*
         (bind ?cll (cell-index ?row ?col))
         (bind ?entry (nth$ ?cll ?pattern-list))
         
         ;;; if the cell belongs to the pattern,
         (if (and (neq ?entry .) (neq ?entry O)) then
         
            (bind ?entry-list (explode-RS-entry-9x9 ?entry))
            (bind ?nb-pattern-cands (length$ ?entry-list))
            ;;; add the relevant real guardians:
            (do-for-all-facts
               ((?c candidate))
               (and  (eq ?c:status cand)
                  (neq ?c:number 
                     (switch (nth$ 1 ?entry-list)
                        (case 1 then ?nb1)
                        (case 2 then ?nb2)
                        (case 3 then ?nb3)
                        (case 4 then ?nb4)
                     )
                  )
                  (neq ?c:number 
                     (switch (nth$ 2 ?entry-list)
                        (case 1 then ?nb1)
                        (case 2 then ?nb2)
                        (case 3 then ?nb3)
                        (case 4 then ?nb4)
                     )
                  )
                  (eq ?c:row
                     (switch ?row
                        (case 3 then ?row3)
                        (case 6 then ?row6)
                        (case 8 then ?row8)
                        (case 9 then ?row9)
                     )
                  )
                  (eq ?c:column
                     (switch ?col
                        (case 3 then ?col3)
                        (case 6 then ?col6)
                        (case 7 then ?col7)
                        (case 8 then ?col8)
                        (case 9 then ?col9)
                     )
                  )
               )
               (bind ?nb-real-guardians (+ ?nb-real-guardians 1))
               (bind ?real-guardians (create$ ?real-guardians ?c:label))
            )
         )
      )
   )

   ;;; assert the ORk-relation if it doesn't already exist
   (if 
      (and
         (<= ?nb-real-guardians ?*max-deadly-guardians*)
         (not
            (any-factp
               ((?rel ORk-relation))
               (and
                  (eq ?rel:context ?cont)
                  (<= ?rel:OR-size ?nb-real-guardians)
                  (eq ?rel:symmetrified FALSE)
                  (subsetp ?rel:OR-candidates ?real-guardians)
               )
            )
         )
      )
      then
      (assert
         (ORk-relation
            (OR-name DP11-4-29s)
            (OR-complexity 11)
            (context ?cont)
            (OR-size ?nb-real-guardians)
            (symmetrified FALSE)
            (OR-candidates ?real-guardians)
         )
      )

      ;;; in such a case, find the real cell print-names in the pattern
      (bind ?real-cells (create$))
      (foreach ?row ?*rows*
         (foreach ?col ?*columns*
            (bind ?cll (cell-index ?row ?col))
            (bind ?entry (nth$ ?cll ?pattern-list))
            
            ;;; if the cell belongs to the pattern,
            (if (and (neq ?entry .) (neq ?entry O)) then
            
               ;;; add the real cell print name to the list:
               (bind ?real-cells 
                  (create$ ?real-cells 
                     (sym-cat
                        (switch ?row
                           (case 3 then (row-name ?row3))
                           (case 6 then (row-name ?row6))
                           (case 8 then (row-name ?row8))
                           (case 9 then (row-name ?row9))
                        )
                        (switch ?col
                           (case 3 then (column-name ?col3))
                           (case 6 then (column-name ?col6))
                           (case 7 then (column-name ?col7))
                           (case 8 then (column-name ?col8))
                           (case 9 then (column-name ?col9))
                        )
                     )
                  )
               )
            )
         )
      )
      
      ;;; in such a case, print for the user what has been done:
      (if ?*print-actions* then
         (printout t crlf
            DP11-4-29s "-OR" ?nb-real-guardians  "-relation for digits: " ?nb1 ?nb2 ?nb3 ?nb4 crlf 
            "   in cells (marked #): " ?real-cells " " crlf 
            "   with " ?nb-real-guardians " guardians (in cells marked @) : " (print-list-of-labels ?real-guardians) " " crlf 
         )
         ;;; find the real cell indices in the pattern
         (bind ?real-cell-indices (create$))
         (foreach ?row ?*rows*
            (foreach ?col ?*columns*
               (bind ?cll (cell-index ?row ?col))
               (bind ?entry (nth$ ?cll ?pattern-list))
               
               ;;; if the cell belongs to the pattern,
               (if (and (neq ?entry .) (neq ?entry 0)) then
               
                  ;;; add the real cell index to the list:
                  (bind ?real-cell-indices 
                     (create$ ?real-cell-indices 
                        (cell-index
                           (switch ?row
                              (case 3 then ?row3)
                              (case 6 then ?row6)
                              (case 8 then ?row8)
                              (case 9 then ?row9)
                           )
                           (switch ?col
                              (case 3 then ?col3)
                              (case 6 then ?col6)
                              (case 7 then ?col7)
                              (case 8 then ?col8)
                              (case 9 then ?col9)
                           )
                        )
                     )
                  )
               )
            )
         )
         ;;; variable ?real-cell-indices is now available to the rule
         (pretty-print-mark-current-resolution-state ?real-cell-indices ?real-guardians)
      )
   )
)


