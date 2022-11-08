
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / EXOTIC
;;;                            SYMMETRIFY OR6 RELATIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Symmetrify OR6 relations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule symmetrify-OR6-relation
    (declare (salience ?*symmetrify-salience*))
    (logical
        (ORk-relation
            (OR-name ?OR-name)
            (OR-complexity ?OR-compl)
            (context ?cont)
            (OR-size 6)
            (symmetrified FALSE)
            (OR-candidates $?cands)
        )
    )
=>
    (foreach ?uuu1 $?cands
        (foreach ?uuu2 $?cands
            (if (neq ?uuu2 ?uuu1) then
                (foreach ?uuu3 $?cands
                    (if (and (neq ?uuu3 ?uuu1) (neq ?uuu3 ?uuu2)) then
                        (foreach ?uuu4 $?cands
                            (if (and (neq ?uuu4 ?uuu1) (neq ?uuu4 ?uuu2) (neq ?uuu4 ?uuu3)) then
                                (foreach ?uuu5 $?cands
                                    (if (and (neq ?uuu5 ?uuu1) (neq ?uuu5 ?uuu2) (neq ?uuu5 ?uuu3) (neq ?uuu5 ?uuu4)) then
                                        (foreach ?uuu6 $?cands
                                            (if (and (neq ?uuu6 ?uuu1) (neq ?uuu6 ?uuu2) (neq ?uuu6 ?uuu3) (neq ?uuu6 ?uuu4) (neq ?uuu6 ?uuu5)) then
                                                (assert
                                                    (ORk-relation
                                                        (OR-name ?OR-name)
                                                        (OR-complexity ?OR-compl)
                                                        (context ?cont)
                                                        (OR-size 6)
                                                        (symmetrified TRUE)
                                                        (OR-candidates ?uuu1 ?uuu2 ?uuu3 ?uuu4 ?uuu5 ?uuu6)
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    )
)



