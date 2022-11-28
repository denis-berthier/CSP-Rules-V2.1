
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / EXOTIC
;;;                            SYMMETRIFY OR8 RELATIONS
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
;;; Symmetrify OR8 relations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule symmetrify-OR8-relation
    (declare (salience ?*symmetrify-salience*))
    (logical
        (ORk-relation
            (OR-name ?OR-name)
            (OR-complexity ?OR-compl)
            (context ?cont)
            (OR-size 8)
            (symmetrified FALSE)
            (OR-candidates $?cands)
        )
    )
=>
    (foreach ?uuu1 $?cands
        (foreach ?uuu2 $?cands
            (if (neq ?uuu2 ?uuu1) then
                (foreach ?uuu3 $?cands
                    (if (and (neq ?uuu3 ?uuu1) (< ?uuu2 ?uuu3)) then
                        (foreach ?uuu4 $?cands
                            (if (and (neq ?uuu4 ?uuu1) (neq ?uuu4 ?uuu2) (< ?uuu3 ?uuu4)) then
                                (foreach ?uuu5 $?cands
                                    (if (and (neq ?uuu5 ?uuu1) (neq ?uuu5 ?uuu2) (neq ?uuu5 ?uuu3) (< ?uuu4 ?uuu5)) then
                                        (foreach ?uuu6 $?cands
                                            (if (and (neq ?uuu6 ?uuu1) (neq ?uuu6 ?uuu2) (neq ?uuu6 ?uuu3) (neq ?uuu6 ?uuu4) (< ?uuu5 ?uuu6)) then
                                                (foreach ?uuu7 $?cands
                                                    (if (and (neq ?uuu7 ?uuu1) (neq ?uuu7 ?uuu2) (neq ?uuu7 ?uuu3) (neq ?uuu7 ?uuu4) (neq ?uuu7 ?uuu5) (< ?uuu6 ?uuu7)) then
                                                        (foreach ?uuu8 $?cands
                                                            (if (and (neq ?uuu8 ?uuu1) (neq ?uuu8 ?uuu2) (neq ?uuu8 ?uuu3) (neq ?uuu8 ?uuu4) (neq ?uuu8 ?uuu5) (neq ?uuu8 ?uuu6) (< ?uuu7 ?uuu8)) then
                                                                (assert
                                                                    (ORk-relation
                                                                        (OR-name ?OR-name)
                                                                        (OR-complexity ?OR-compl)
                                                                        (context ?cont)
                                                                        (OR-size 8)
                                                                        (symmetrified TRUE)
                                                                        (OR-candidates ?uuu1 ?uuu2 ?uuu3 ?uuu4 ?uuu5 ?uuu6 ?uuu7 ?uuu8)
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
            )
        )
    )
)


