
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              PRINT TRIDAGON-FORCNG-WHIPS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - April 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(deffunction print-tridagon-forcing-whip-assert-value (?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
    (printout t "tridagon-forcing-whip-assert[" (+ ?p1 ?p2 12) "]:")
    (printout t " based on tridagon-link(") (print-label ?zzz1) (printout t ", ") (print-label ?zzz2) (printout t ")")
    (printout t crlf "   || " (print-label ?zzz1) " - ")
    (if (neq ?p1 0) then (print-partial-chain "partial-whip" ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1))
    (printout t crlf "   || " (print-label ?zzz2) " - ")
    if (neq ?p2 0) then (print-partial-chain "partial-whip" ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2))
    (printout t crlf ?*implication-sign*) (print-asserted-candidate ?cand) (printout t crlf)
)


(deffunction print-tridagon-forcing-whip-elim-candidate (?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
    (printout t "tridagon-forcing-whip-elim[" (+ ?p1 ?p2 12) "]")
    (printout t " based on tridagon-link(") (print-label ?zzz1) (printout t ", ") (print-label ?zzz2) (printout t ")")
    (printout t crlf "   || " (print-label ?zzz1) " - ")
    (if (neq ?p1 0) then (print-partial-chain "partial-whip" ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1))
    (printout t crlf "   || " (print-label ?zzz2) " - ")
    if (neq ?p2 0) then (print-partial-chain "partial-whip" ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2))
    (printout t crlf ?*implication-sign*) (print-deleted-candidate ?cand) (printout t crlf)
)



