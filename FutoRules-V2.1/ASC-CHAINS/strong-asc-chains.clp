
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              STRONG ASCENDING CHAINS
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





(deftemplate strong-ascending-chain
    (multislot cells)
    (slot length (type INTEGER)) ; number of cells -1
    (slot min (type INTEGER)) ; smallest candidate at the lower end
    (slot max (type INTEGER)) ; largest candidate at the upper end
    ;;; the next slot is used to keep track of the "productivity" of the extremum
    (slot elim (type SYMBOL) (default no-elim)) ; values elim or no-elim
)


(deffunction valid-strong-ascending-chain-elimation (?lab ?cells ?k ?m ?M)
    ;;; k is the length of the chain, there are k+1 cells (0 to k)
    (bind ?valid-elim FALSE)
    (bind ?rc (label-cell ?lab))
    (bind ?nb (label-number ?lab))
    (bind ?i 1)
    (while (<= ?i (+ ?k 1))
        (bind ?ith-cell (nth$ ?i ?cells))
        (if (and
                (eq ?rc ?ith-cell)
                (or (< ?nb (+ (- ?m 1) ?i)) (> ?nb (+ (- ?M ?k) (- ?i 1)))) ;;;
            )
            then (bind ?valid-elim TUE)
        )
        (bind ?i (+ ?i 1))
    )
    ?valid-elim 
)



;;; all the ascending chains must be taken into account, not only the maximal ones

(defrule ascending-sub-chain
	(declare (salience ?*strong-ascending-chain-salience*))
    (ascending-chain ?k $?cells) ; remember this means ?k + 1 cells
=>
    (bind ?i 1)
    (while (<= ?i ?k)
        (bind ?j (+ ?i 1))
        (while (<= ?j (+ ?k 1))
            (assert (ascending-sub-chain (- ?j ?i) (subseq$ $?cells ?i ?j)))
            (bind ?j (+ ?j 1))
        )
        (bind ?i (+ ?i 1))
    )
)


(defrule strong-ascending-chain-detection-rule
	(declare (salience ?*strong-ascending-chain-salience*))
    (ascending-sub-chain ?k $?cells)

    ;;; identify the ends of the chain
    (candidate (context ?cont) (status cand) (row ?row1) (column ?col1))
    (test (eq (rc-to-cell ?row1 ?col1) (nth$ 1 $?cells)))
    (candidate (context ?cont) (status cand) (row ?row2) (column ?col2))
    (test (eq (rc-to-cell ?row2 ?col2) (nth$ (+ ?k 1) $?cells)))

    ;;; find the minimum candidate at the lower end
    (number ?m)
    (candidate (context ?cont) (status cand) (number ?m) (row ?row1) (column ?col1))
    (not (candidate (context ?cont) (status cand) (number ?nbx&:(< ?nbx ?m)) (row ?row1) (column ?col1)))
    ;;; find the maximum candidate at the upper end
    (number ?M)
    (candidate (context ?cont) (status cand) (number ?M) (row ?row2) (column ?col2))
    (not (candidate (context ?cont) (status cand) (number ?nby&:(> ?nby ?M)) (row ?row2) (column ?col2)))
    
=>
    (assert (strong-ascending-chain (length ?k) (cells $?cells) (min ?m) (max ?M) (elim no-elim)))
)
    


(defrule strong-ascending-chain-elimination-rule
	(declare (salience ?*strong-ascending-chain-eliminate-salience*))
    ?str-asc <- (strong-ascending-chain (length ?k) (cells $?cells) (min ?m) (max ?M) (elim ?elim))
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab&:(valid-strong-ascending-chain-elimation ?lab $?cells ?k ?m ?M)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (eq ?elim no-elim)
        then (print-strong-ascending-chain $?cells)
        else (printout t ", ")
    )
    (print-deleted-candidate ?lab)
    (modify ?str-asc (elim elim))
)



(defrule end-strong-ascending-chain-elimination-rule
    (declare (salience ?*end-strong-ascending-chain-eliminate-salience*))
    (strong-ascending-chain (length ?k) (cells $?cells) (min ?m) (max ?M) (elim elim))
    (not (candidate (context ?cont) (status cand) (label ?lab&:(valid-strong-ascending-chain-elimation ?lab $?cells ?k ?m ?M))))
=>
    (printout t crlf)
)

