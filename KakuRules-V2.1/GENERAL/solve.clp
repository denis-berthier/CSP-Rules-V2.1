
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              SOLVE
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





;;; BEWARE : ALL THIS IS HIGHLY NON OPTIMISED
;;; INITIALISATION IS DONE IN SUCH A WAY AS TO MAKE THE PATTERNS MORE READABLE IN (FACTS).



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for checking data given as lists 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction row-col-to-horizontal-place-in-data (?k ?row ?col)
    (if (or (< ?row 2) (< ?col 1)) then (printout t "ERROR IN CALL TO row-col-to-horizontal-place-in-data" crlf))
    (+  (* (- ?row 2) (+ ?k 1)) 
        ?col
    )
)

(deffunction row-col-to-vertical-place-in-data (?k ?row ?col)
    (if (or (< ?row 1) (< ?col 2)) then (printout t "ERROR IN CALL TO row-col-to-vertical-place-in-data" crlf))
    (+  (* (+ ?k 1) (- ?k 1))
        (* (- ?col 2) (+ ?k 1)) 
        ?row
    )
)


(deffunction test-row-col-to-horizontal-place-in-data (?k)
	(bind ?i 2)
	(while (<= ?i ?k)
		(bind ?j 1)
		(while (<= ?j ?k)
			(printout t ?i " " ?j " : " (row-col-to-horizontal-place-in-data ?k ?i ?j) crlf)
			(bind ?j (+ ?j 1))
		)
		(bind ?i (+ ?i 1))
	)
)



(deffunction test-row-col-to-vertical-place-in-data (?k)
	(bind ?i 1)
	(while (<= ?i ?k)
		(bind ?j 2)
		(while (<= ?j ?k)
			(printout t ?i " " ?j " : " (row-col-to-vertical-place-in-data ?k ?i ?j) crlf)
			(bind ?j (+ ?j 1))
		)
		(bind ?i (+ ?i 1))
	)
)



(deffunction check-data-from-list (?k $?givens)
    (bind ?*rows* (subseq$ ?*potential-rows* 1 ?k))
    (bind ?*columns* (subseq$ ?*potential-columns* 1 ?k))
    (bind ?OK1 TRUE)
    (bind ?OK2 TRUE)
    (bind ?OK3 TRUE)
    (bind ?OK4 TRUE)
    (bind ?OK5 TRUE)
    
    ;;; check length of givens
    (bind ?expected-data-length (* 2 (+ ?k 1) (- ?k 1)))
    (bind ?data-length (length$ $?givens))
    (if (neq ?data-length ?expected-data-length) then (bind ?OK1 FALSE) (printout t "ERROR IN DATA LENGTH: " ?data-length " instead of " ?expected-data-length crlf))
    
    ;;; check each value
    (foreach ?data $?givens
        (if (and (neq ?data /) (neq ?data //) (neq ?data B) (neq ?data .) (or (not (numberp ?data)) (< ?data 1) (> ?data 45))) then (bind ?OK2 FALSE))
    )
    (if (not ?OK2) then (printout t "ERROR IN DATA CONTENT" crlf))

    ;;; check each row
    (bind ?i 1)
    (while (< ?i (- ?k 1))
        (if (neq / (nth$ (* (+ ?k 1)  ?i) $?givens)) then (bind ?OK3 FALSE) (printout t "bad row size r" (+ ?i 1) crlf))
        (bind ?i (+ ?i 1))
    )
    (if (neq // (nth$ (* (+ ?k 1)  (- ?k 1)) $?givens)) then (bind ?OK3 FALSE))
    (if (not ?OK3) then (printout t "ERROR IN ROW DATA" crlf))

    ;;; check each column
    (bind ?i ?k)
    (while (< ?i (* 2 (- ?k 1)))
        (if (neq / (nth$ (* (+ ?k 1)  ?i) $?givens)) then (bind ?OK4 FALSE))
        (bind ?i (+ ?i 1))
    )
    (if (neq // (nth$ (* 2 (+ ?k 1)  (- ?k 1)) $?givens)) then (bind ?OK4 FALSE) (printout t "bad column size c" (+ (- ?i ?k) 2) crlf))
    (if (not ?OK4) then (printout t "ERROR IN COLUMN DATA" crlf))
    
    ;;; cross check row and column data for white cells
	(bind ?i 2)
	(while (<= ?i ?k)
        (bind ?row (nth$ ?i ?*rows*))
        (bind ?j 2)
        (while (<= ?j ?k)
            (bind ?col (nth$ ?j ?*columns*))
            ;;; horizontal and vertical data for white cells must be consistent
            (if (exor (eq . (nth$ (row-col-to-horizontal-place-in-data ?k ?row ?col) $?givens))
                      (eq . (nth$ (row-col-to-vertical-place-in-data ?k ?row ?col) $?givens))
                )
                then (bind ?OK5 FALSE)
            )
			(bind ?j (+ ?j 1))
		)
		(bind ?i (+ ?i 1))
    )
    (if (not ?OK5) then (printout t "CONSISTENCY ERROR IN ROW-COLUMN DATA FOR WHITE CELLS" crlf))

    (return (and ?OK1 ?OK2 ?OK3 ?OK4 ?OK5))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for computing the controller cell of a cell
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; this is used only in function "labels-linked" (in "background.clp")
;;; which is much used in BRT

(defglobal ?*columns-of-horizontal-controllers* = (create$))
(defglobal ?*rows-of-vertical-controllers* = (create$))


(deffunction compute-columns-of-horizontal-controllers (?k $?givens)
    ;;; table size = (k-1)(k-1) ; row = 2...k ; col 2...k
    (bind ?table (create$))
    (bind ?row 2)
    (while (<= ?row ?k)
        (bind ?col 2)
        (while (<= ?col ?k)
            (bind ?place (row-col-to-horizontal-place-in-data ?k ?row ?col))
            (bind ?data (nth$ ?place $?givens))
            (if (neq ?data .)
                then ;;; the cell is not white; 0 is used to mean it has no controller
                    (bind ?table (create$ ?table 0))
                else
                    (bind ?colx (- ?col 1))
                    (bind ?placex (- ?place 1))
                    (while (>= ?colx 1)
                        (bind ?datax (nth$ ?placex $?givens))
                        (if (or (eq ?datax B) (numberp ?datax)) then
                            (bind ?table (create$ ?table ?colx))
                            (break)
                        )
                        (bind ?colx (- ?colx 1))
                        (bind ?placex (- ?placex 1))
                    )
                    
            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
    (bind ?*columns-of-horizontal-controllers* ?table)
    
    (if ?*print-init-details* then 
        (printout t "columns of horizontal controllers:" crlf)
        (bind ?row 2)
        (while (<= ?row ?k)
            (bind ?col 2)
            (while (<= ?col ?k)
                (bind ?index (+ (* (- ?k 1) (- ?row 2)) (- ?col 1)))
                (printout t (nth$ ?index ?*columns-of-horizontal-controllers*) " ")
                (bind ?col (+ ?col 1))
            )
            (printout t crlf)
            (bind ?row (+ ?row 1))
        )
        (printout t crlf)
    )
    (return ?table)    
)


(deffunction compute-rows-of-vertical-controllers (?k $?givens)
    ;;; table size = (k-1)(k-1) ; row = 2...k ; col 2...k
    (bind ?table (create$))
    (bind ?row 2)
    (while (<= ?row ?k)
        (bind ?col 2)
        (while (<= ?col ?k)
            (bind ?place (row-col-to-vertical-place-in-data ?k ?row ?col))
            (bind ?data (nth$ ?place $?givens))
            (if (neq ?data .)
                then ;;; the cell is not white; 0 is used to mean it has no controller
                    (bind ?table (create$ ?table 0))
                else
                    (bind ?rowx (- ?row 1))
                    (bind ?placex (- ?place 1))
                    (while (>= ?rowx 1)
                        (bind ?datax (nth$ ?placex $?givens))
                        (if (or (eq ?datax B) (numberp ?datax)) then
                            (bind ?table (create$ ?table ?rowx))
                           (break)
                        )
                        (bind ?rowx (- ?rowx 1))
                        (bind ?placex (- ?placex 1))
                    )
                    
            )
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
    (bind ?*rows-of-vertical-controllers* ?table)
    
    (if ?*print-init-details* then 
        (printout t "rows of vertical controllers:" crlf)
        (bind ?row 2)
        (while (<= ?row ?k)
            (bind ?col 2)
            (while (<= ?col ?k)
                (bind ?index (+ (* (- ?k 1) (- ?row 2)) (- ?col 1)))
                (printout t (nth$ ?index ?*rows-of-vertical-controllers*) " ")
                (bind ?col (+ ?col 1))
            )
            (printout t crlf)
            (bind ?row (+ ?row 1))
        )
        (printout t crlf)
    )
    (return ?table)    
)




(deffunction column-of-horizontal-controller (?row ?col)
    ;;; row >= 2; col >= 2
    (bind ?index (+ (* (- ?*grid-size* 1) (- ?row 2)) (- ?col 1)))
    (nth$ ?index ?*columns-of-horizontal-controllers*)
)

(deffunction row-of-vertical-controller (?row ?col)
    ;;; row >= 2; col >= 2
    (bind ?index (+ (* (- ?*grid-size* 1) (- ?row 2)) (- ?col 1)))
    (nth$ ?index ?*rows-of-vertical-controllers*)
)


(deffunction test-columns-of-horizontal-controllers (?k)
	(bind ?row 2)
	(while (<= ?row ?k)
		(bind ?col 2)
		(while (<= ?col ?k)
			(printout t (column-of-horizontal-controller ?row ?col) " ")
			(bind ?col (+ ?col 1))
		)
        (printout t crlf)
		(bind ?row (+ ?row 1))
	)
)


(deffunction test-rows-of-vertical-controllers (?k)
	(bind ?row 2)
	(while (<= ?row ?k)
		(bind ?col 2)
		(while (<= ?col ?k)
			(printout t (row-of-vertical-controller ?row ?col) " ")
			(bind ?col (+ ?col 1))
		)
        (printout t crlf)
		(bind ?row (+ ?row 1))
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for initializing an instance 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; BEWARE: ALL THIS IS HIGHLY NON-OPTIMISED
;;; IN PARTICULAR, MORE LABELS ARE CREATED THAN NECESSARY


(deffunction init-variables-ranges ()
	;;; this function creates facts depending only on general grid structure
	;;; create facts for numbers, rows and columns
	(foreach ?nb ?*numbers* (assert (number ?nb)))
	(foreach ?row ?*rows* (assert (row ?row)))
	(foreach ?col ?*columns* (assert (column ?col)))
)



(deffunction parse-row-data-from-list (?k $?givens)
    ;;; the data are supposed to be consistent
    ;;; parse data-rows ?i = 1 to k-1, i.e. for grid rows 2 to k (k + 1 data per data row, i.e. per grid row)
	(bind ?i 1)
	(while (< ?i ?k)
        ;;; deal with row-data ?i, i.e. row ?i+1
        (bind ?row (nth$ (+ ?i 1) ?*rows*))
        (bind ?in-sector FALSE)
        (bind ?controller-column-of-current-horizontal-sector 1)
        (bind ?csp-type-symbol (sym-cat h (row-name ?row) (column-name ?controller-column-of-current-horizontal-sector)))
        (bind ?last-column-of-current-horizontal-sector 0)
        (bind ?columns-of-current-horizontal-sector (create$))
        (bind ?size-of-current-horizontal-sector 0)
        (bind ?sum-of-current-horizontal-sector 0) ;;; 0 means no sum data
        (bind ?combinations-of-current-horizontal-sector (create$))
        
        ;;; parse data-row ?i, i.e. row ?row = ?i+1
        (bind ?j 1)
        (while (<= ?j (+ ?k 1))
            ;;; deal with data for ?column = ?j
            (bind ?col (nth$ ?j ?*columns*))
            (bind ?data-index (+ (* (- ?i 1) (+ ?k 1)) ?j)) ;;;
            (bind ?data (nth$ ?data-index $?givens))
            
            ;;; depending on what ?data is:
            (if (eq ?data .) 
                then ;;; we have a white cell
                     ;;; update the information about the sector; other data can only be defined when the end of sector is known
                    (bind ?in-sector TRUE)
                    (bind ?last-column-of-current-horizontal-sector ?col)
                    (bind ?columns-of-current-horizontal-sector (create$ ?columns-of-current-horizontal-sector ?col))
                    (bind ?size-of-current-horizontal-sector (+ ?size-of-current-horizontal-sector 1))
                    
                else ;;; we have a black cell or an end of line
                    ;;; update all the information about the finishing sector, if any real sector
                    ;;; i.e. if the previous data was not already a separator
                    
                    (if ?in-sector then
                            
                            ;;; FIRST DEAL WITH THE NATURAL RC AND RN CSP VARIABLES, WHETHER THERE IS SUM INFORMATION OR NOT
                            
                            ;;; for each rc-cell in the finishing sector, assert the associated natural CSP variable, its rc type, its labels, their csp physical links and the candidates for this variable
                            (bind ?col1 (nth$ 1 ?columns-of-current-horizontal-sector))
                            (while (<= ?col1 ?last-column-of-current-horizontal-sector)
                                (bind ?csp-var (row-col-to-rc-csp-var ?row ?col1))
                                (assert (csp-variable (name ?csp-var) (type rc)))
                                (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))

                                (bind ?nb1 1)
                                (while (< ?nb1 ?*number-size*)
                                    (bind ?lab1 (nrc-to-natural-label ?nb1 ?row ?col1))
                                    (bind ?nb2 (+ ?nb1 1))
                                    (while (<= ?nb2 ?*number-size*)
                                        (bind ?lab2 (nrc-to-natural-label ?nb2 ?row ?col1))
                                        (assert (physical-csp-link ?lab1 ?lab2 ?csp-var rc))
                                        (add-label-link ?lab1 ?lab2)
                                        (bind ?nb2 (+ ?nb2 1))
                                    )
                                    (bind ?nb1 (+ ?nb1 1))
                                )
                                        
                                (bind ?nb 1)
                                (while (<= ?nb ?*number-size*)
                                    (bind ?lab (nrc-to-natural-label ?nb ?row ?col1))
                                    (assert
                                        (is-csp-variable-for-label
                                            (csp-var ?csp-var)
                                            (label ?lab)
                                        )
                                    )
                                    (if ?*Typed-Chains* then
                                        (assert
                                            (is-typed-csp-variable-for-label
                                                (csp-var ?csp-var)
                                                (label ?lab)
                                                (csp-var-type ?csp-type-symbol)
                                            )
                                        )
                                    )
                                    ;;; assert each label as a candidate (lazy initialisation)
                                    (assert (candidate
                                                (context 0)
                                                (status cand)
                                                (type white)
                                                (label ?lab)
                                                (number ?nb)
                                                (row ?row)
                                                (column ?col1)
                                                (column-of-horizontal-controller ?controller-column-of-current-horizontal-sector)
                                                (row-of-vertical-controller (row-of-vertical-controller ?row ?col1))
                                            )
                                    )
                                    (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                                    (bind ?nb (+ ?nb 1))
                                )
                                
                                (bind ?col1 (+ ?col1 1))
                            )
                            
                            
                            ;;; for each number, for each pair of rc-cells in the sector, assert the physical rn links between their labels
                            (bind ?nb 1)
                            (while (<= ?nb ?*number-size*)
                                (bind ?col1 (nth$ 1 ?columns-of-current-horizontal-sector))
                                (while (< ?col1 ?last-column-of-current-horizontal-sector)
                                    (bind ?lab1 (nrc-to-natural-label ?nb ?row ?col1))
                                    (bind ?col2 (+ ?col1 1))
                                    (while (<= ?col2 ?last-column-of-current-horizontal-sector)
                                        (bind ?lab2 (nrc-to-natural-label ?nb ?row ?col2))
                                        (assert (physical-link ?lab1 ?lab2 rn))
                                        (add-label-link ?lab1 ?lab2)
                                        (bind ?col2 (+ ?col2 1))
                                    )
                                    (bind ?col1 (+ ?col1 1))
                                )
                                (bind ?nb (+ ?nb 1))
                            )
                            
                            
                            ;;; IF THERE IS EFFECTIVE SUM INFORMATION ABOUT THE FINISHING SECTOR
                            (if (neq ?sum-of-current-horizontal-sector 0)
                                then 
                                    (bind ?combinations-of-current-horizontal-sector 
                                        (combinations ?sum-of-current-horizontal-sector ?size-of-current-horizontal-sector)
                                    )
                                    (bind ?compat-as-list (compatible-digits-as-list ?combinations-of-current-horizontal-sector))
                                    
                                    
                                    ;;; if the finishing sector is MAGIC
                                    (if (eq (length$ ?combinations-of-current-horizontal-sector) 1)
                                        then 
                                            ;;; assert that the sector is magic
                                            (printout t "horizontal magic sector " ?sum-of-current-horizontal-sector "-in-" ?size-of-current-horizontal-sector ", starting in ") 
                                            (print-row ?row)
                                            (print-column ?controller-column-of-current-horizontal-sector)
                                            (printout t ", unique combination: " (nth$ 1 ?combinations-of-current-horizontal-sector) crlf)
                                            (assert (horizontal-magic-sector (nth$ 1 ?combinations-of-current-horizontal-sector) ?row ?controller-column-of-current-horizontal-sector))
                                            ;;; assert that each (S, p)-compatible digit is magic
                                            (foreach ?nb ?compat-as-list
                                                (assert (magic-digit-in-horizontal-sector ?nb ?row ?controller-column-of-current-horizontal-sector))
                                            )
                                            
                                            ;;; for each (S, p)-compatible digit, assert the rn CSP variable and the associated is-csp-variable-for-label facts
                                            (foreach ?nb ?compat-as-list
                                                (bind ?csp-var (number-row-ctrcol-to-rn-csp-var ?nb ?row ?controller-column-of-current-horizontal-sector))
                                                (assert (csp-variable (name ?csp-var) (type rn)))
                                                (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))

                                                ;;; assert the labels for this variable
                                                (bind ?col1 (nth$ 1 ?columns-of-current-horizontal-sector))
                                                (while (<= ?col1 ?last-column-of-current-horizontal-sector)
                                                    (bind ?lab1 (nrc-to-natural-label ?nb ?row ?col1))
                                                    (assert
                                                        (is-csp-variable-for-label
                                                            (csp-var ?csp-var)
                                                            (label ?lab1)
                                                        )
                                                    )
                                                    (if ?*Typed-Chains* then
                                                        (assert
                                                            (is-typed-csp-variable-for-label
                                                                (csp-var ?csp-var)
                                                                (label ?lab1)
                                                                (csp-var-type ?csp-type-symbol)
                                                            )
                                                        )
                                                    )

                                                    ;;; assert the CSP contradiction links between any two of its labels
                                                    (if (< ?col1 ?last-column-of-current-horizontal-sector) then
                                                        (bind ?col2 (+ ?col1 1))
                                                        (while (<= ?col2 ?last-column-of-current-horizontal-sector)
                                                            (bind ?lab2 (nrc-to-natural-label ?nb ?row ?col2))
                                                            (assert (physical-csp-link ?lab1 ?lab2 ?csp-var rn))
                                                            (add-label-link ?lab1 ?lab2)
                                                            (bind ?col2 (+ ?col2 1))
                                                        )
                                                    )
                                                    (bind ?col1 (+ ?col1 1))
                                                )
                                            )
                                   )
                                    
                                    
                                    ;;; if the finishing sector is not magic, check the MAGIC DIGITS
                                    (if (> (length$ ?combinations-of-current-horizontal-sector) 1)
                                        then 
                                            (bind ?common-digits (list-of-digits-in-all-combinations ?compat-as-list ?combinations-of-current-horizontal-sector))
                                            (bind ?nb-common-digits (length$ ?common-digits))
                                            (if (> ?nb-common-digits 0) then
                                                ;;; assert that the common digits are pseudo-magic
                                                (printout t "horizontal pseudo magic sector " ?sum-of-current-horizontal-sector "-in-" ?size-of-current-horizontal-sector ", starting in ") 
                                                (print-row ?row) 
                                                (print-column ?controller-column-of-current-horizontal-sector)
                                                (printout t ", for digits: " ?common-digits crlf)
                                                
                                                ;;; for each common digit, assert it as pseudo-magic
                                                (foreach ?nb ?common-digits
                                                    (assert (magic-digit-in-horizontal-sector ?nb ?row ?controller-column-of-current-horizontal-sector))
                                                )
                                                
                                                ;;; this should be factorised with the magic case
                                                
                                                ;;; for each common digit, assert the rn CSP variables and the associated is-csp-variable-for-label facts
                                                (foreach ?nb ?common-digits
                                                    (bind ?csp-var (number-row-ctrcol-to-rn-csp-var ?nb ?row ?controller-column-of-current-horizontal-sector))
                                                    (assert (csp-variable (name ?csp-var) (type rn)))
                                                    (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))

                                                    ;;; assert the labels for this variable
                                                    (bind ?col1 (nth$ 1 ?columns-of-current-horizontal-sector))
                                                    (while (<= ?col1 ?last-column-of-current-horizontal-sector)
                                                        (bind ?lab1 (nrc-to-natural-label ?nb ?row ?col1))
                                                        (assert
                                                            (is-csp-variable-for-label
                                                                (csp-var ?csp-var)
                                                                (label ?lab1)
                                                            )
                                                        )
                                                        (if ?*Typed-Chains* then
                                                            (assert
                                                                (is-typed-csp-variable-for-label
                                                                    (csp-var ?csp-var)
                                                                    (label ?lab1)
                                                                    (csp-var-type ?csp-type-symbol)
                                                                )
                                                            )
                                                        )

                                                        ;;; assert the CSP contradiction links between any two of its labels
                                                        (if (< ?col1 ?last-column-of-current-horizontal-sector) then
                                                            (bind ?col2 (+ ?col1 1))
                                                            (while (<= ?col2 ?last-column-of-current-horizontal-sector)
                                                                (bind ?lab2 (nrc-to-natural-label ?nb ?row ?col2))
                                                                (assert (physical-csp-link ?lab1 ?lab2 ?csp-var rn))
                                                                (add-label-link ?lab1 ?lab2)
                                                                (bind ?col2 (+ ?col2 1))
                                                            )
                                                        )
                                                        (bind ?col1 (+ ?col1 1))
                                                    )
                                                
                                                ) ;;; end of "(foreach ?nb ?common-digits ...)"
                                            ) ;;; end of "(if (> ?nb-common-digits 0)...)"
                                    ) ;;; end of "if the finishing sector is not magic, check the MAGIC DIGITS"

                                    
                            
                                    
                                    ;;; NOW DEAL WITH THE ADDITIONAL HORIZONTAL CSP VARIABLES
                                    
                                    ;;; in any case, assert the horizontal controller CSP variable of the finishing sector, its labels and its candidates
                                    (bind ?csp-var (horizontal-controller-row-col-to-csp-var ?row ?controller-column-of-current-horizontal-sector)) ;;;;; <<<<<<<<<<< valid for all the rest
                                    (assert (csp-variable (name ?csp-var) (type hrc)))
                                    (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))

                                    (bind ?labs (create$))
                                    (foreach ?comb ?combinations-of-current-horizontal-sector
                                        (bind ?lab (comb-rc-to-horizontal-label ?comb ?row ?controller-column-of-current-horizontal-sector))
                                        (bind ?labs (create$ ?labs ?lab))
                                        (assert
                                            (is-csp-variable-for-label
                                                (csp-var ?csp-var)
                                                (label ?lab)
                                            )
                                        )
                                        (if ?*Typed-Chains* then
                                            (assert
                                                (is-typed-csp-variable-for-label
                                                    (csp-var ?csp-var)
                                                    (label ?lab)
                                                    (csp-var-type ?csp-type-symbol)
                                                )
                                            )
                                        )
                                        (assert (candidate
                                                    (context 0)
                                                    (status cand)
                                                    (label ?lab)
                                                    (type horiz-comb)
                                                    (number ?comb)
                                                    (row ?row)
                                                    (column ?controller-column-of-current-horizontal-sector)
                                                    (column-of-horizontal-controller ?controller-column-of-current-horizontal-sector)
                                                    (row-of-vertical-controller 0)
                                                )
                                        )
                                        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                                    )
                                    ;;; now ?labs corresponds to ?combinations-of-current-horizontal-sector
                                    
                                    ;;; if there is more than one label for the controller variable (the sector is not magic), then assert the csp contradiction links between them
                                    (if (> (length$ ?combinations-of-current-horizontal-sector) 1) then
                                            (bind ?p 1)
                                            (while (< ?p (length$ ?combinations-of-current-horizontal-sector))
                                                (bind ?lab1 (nth$ ?p ?labs))
                                                (bind ?q (+ ?p 1))
                                                (while (<= ?q (length$ ?combinations-of-current-horizontal-sector))
                                                    (bind ?lab2 (nth$ ?q ?labs))
                                                    (assert (physical-csp-link ?lab1 ?lab2 ?csp-var hrc))
                                                    (add-label-link ?lab1 ?lab2)
                                                    (bind ?q (+ ?q 1))
                                                )
                                                (bind ?p (+ ?p 1))
                                            )
                                    )
                                    
                                    
                                    ;;; in any case, assert the hS links between labels of the controller variable and those for the controlled cells
                                    ; (printout t ?combinations-of-current-horizontal-sector " ")
                                    ; (printout t ?columns-of-current-horizontal-sector crlf)
                                    (bind ?p 1)
                                    (while (<= ?p (length$ ?combinations-of-current-horizontal-sector))
                                        (bind ?comb1 (nth$ ?p ?combinations-of-current-horizontal-sector))
                                        (bind ?lab1 (nth$ ?p ?labs))
                                        (bind ?nb2 1)
                                        (while (<= ?nb2 ?*number-size*)
                                            (if (not (digit-in-number ?nb2 ?comb1)) then
                                                (bind ?q2 1)
                                                (while (<= ?q2 ?size-of-current-horizontal-sector)
                                                    (bind ?col2 (nth$ ?q2 ?columns-of-current-horizontal-sector))
                                                    (bind ?lab2 (nrc-to-natural-label ?nb2 ?row ?col2))
                                                    (assert (physical-link ?lab1 ?lab2 hS))
                                                    (add-label-link ?lab1 ?lab2)
                                                    (bind ?q2 (+ ?q2 1))
                                                )
                                            
                                            )
                                            (bind ?nb2 (+ ?nb2 1))
                                        )
                                        (bind ?p (+ ?p 1))
                                    )
                                      
                                    
                                    
                                    ;;; IF G-BIVALUE-CHAINS, G-WHIPS AND/OR G-BRAIDS ARE ACTIVE, 
                                    ;;; CREATE THE SECTOR TEMPLATE THAT WILL BE USED TO COMPUTE G-LABELS AND G-LINKS
                                    
                                    (if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*) then
                                        (if (sector-has-gcombs ?sum-of-current-horizontal-sector ?size-of-current-horizontal-sector) then
                                            (printout t "horizontal sector with g-combs " ?sum-of-current-horizontal-sector "-in-" ?size-of-current-horizontal-sector ", starting in ") 
                                            (print-row ?row) 
                                            (print-column ?controller-column-of-current-horizontal-sector)
                                            (printout t crlf)
                                            (assert (sector-with-gcombs
                                                        (type horiz)
                                                        (sum ?sum-of-current-horizontal-sector)
                                                        (size ?size-of-current-horizontal-sector)
                                                        (combinations ?combinations-of-current-horizontal-sector)
                                                        (compatible-digits ?compat-as-list)
                                                        (row ?row)
                                                        (column ?controller-column-of-current-horizontal-sector)
                                                    )
                                            )
                                        )
                                        (if (sector-has-gdigs ?sum-of-current-horizontal-sector ?size-of-current-horizontal-sector) then
                                            (printout t "horizontal sector with g-digs " ?sum-of-current-horizontal-sector "-in-" ?size-of-current-horizontal-sector ", starting in ") 
                                            (print-row ?row) 
                                            (print-column ?controller-column-of-current-horizontal-sector)
                                            (printout t crlf)
                                            (assert (sector-with-gdigs
                                                        (type horiz)
                                                        (sum ?sum-of-current-horizontal-sector)
                                                        (size ?size-of-current-horizontal-sector)
                                                        (combinations ?combinations-of-current-horizontal-sector)
                                                        (compatible-digits ?compat-as-list)
                                                        (row ?row)
                                                        (column ?controller-column-of-current-horizontal-sector)
                                                    )
                                            )
                                        )
                                    ) ;;; END OF "IF G-BIVALUE-CHAINS, G-WHIPS AND/OR G-BRAIDS"
                                    
                                    
                                    
                          
                            ) ;;; end of "(if (neq ?sum-of-current-horizontal-sector 0))"
                                        
                                   
                    ) ;;; end of the "(if ?in-sector)" case, with the data being still a black cell or an end of line
                
                    
                    ;;; we must now prepare for the next horizontal sector
                    (bind ?in-sector FALSE)
                    (bind ?controller-column-of-current-horizontal-sector ?col)
                    (if (numberp ?col) then ; case where ?col <= ?k
                        (bind ?csp-type-symbol (sym-cat h (row-name ?row) (column-name ?controller-column-of-current-horizontal-sector)))
                    )
                    (bind ?last-column-of-current-horizontal-sector 0)
                    (bind ?columns-of-current-horizontal-sector (create$))
                    (bind ?size-of-current-horizontal-sector 0)
                    (bind ?sum-of-current-horizontal-sector (if (numberp ?data) then ?data else 0))
                    (bind ?combinations-of-current-horizontal-sector (create$))
                    
            ) ;;; end of "(if (eq ?data .) then... else...)"
            (bind ?j (+ ?j 1))
        ) ;;; "end of (while ?j)"
		(bind ?i (+ ?i 1))
    ) ;;; "end of (while ?i)"
)




    
(deffunction parse-column-data-from-list (?k $?givens)
    ;;; the data are supposed to be consistent
    ;;; parse data for data-rows = k to 2(k-1), i.e. for grid columns 2 to ?k (?k + 1 data per data row, i.e. per grid column)
	(bind ?i 1)
	(while (< ?i ?k)
        ;;; deal with column-data ?i, i.e. column ?i+1
        (bind ?col (nth$ (+ ?i 1) ?*columns*))
        (bind ?in-sector FALSE)
        (bind ?controller-row-of-current-vertical-sector 1)
        (bind ?csp-type-symbol (sym-cat v (row-name ?controller-row-of-current-vertical-sector) (column-name ?col)))
        (bind ?last-row-of-current-vertical-sector 0)
        (bind ?rows-of-current-vertical-sector (create$))
        (bind ?size-of-current-vertical-sector 0)
        (bind ?sum-of-current-vertical-sector 0) ;;; 0 means no sum data
        (bind ?combinations-of-current-vertical-sector (create$))
        
        ;;; parse data-row ?i + (?k - 1), i.e. column ?col = ?i+1
        (bind ?j 1)
        (while (<= ?j (+ ?k 1))
            ;;; deal with data for ?row = ?j
            (bind ?row (nth$ ?j ?*rows*))
            (bind ?data-index (+ (* (- ?k 1) (+ ?k 1)) (* (- ?i 1) (+ ?k 1)) ?j)) ;;;
            (bind ?data (nth$ ?data-index $?givens))
            
            ;;; depending on what ?data is:
            (if (eq ?data .) 
                then ;;; we have a white cell
                     ;;; update only the information about the sector; other data can only be defined when the end of sector is known
                    (bind ?in-sector TRUE)
                    (bind ?last-row-of-current-vertical-sector ?row)
                    (bind ?rows-of-current-vertical-sector (create$ ?rows-of-current-vertical-sector ?row))
                    (bind ?size-of-current-vertical-sector (+ ?size-of-current-vertical-sector 1))
                    
                else ;;; we have a black cell or an end of line
                    ;;; update all the information about the finishing sector, if any real sector
                    ;;; i.e. if the previous data was not already a separator
                    
                    (if ?in-sector then
                            
                            ;;; FIRST DEAL WITH THE NATURAL RC AND CN CSP VARIABLES, WHETHER THERE IS SUM INFORMATION OR NOT
                        (if ?*Typed-Chains* then
                            
                            ;;; for each rc-cell in the finishing sector, assert the associated natural CSP variable, its rc type, its labels, their csp physical links and the candidates for this variable
                            ;;; part of this is redundant with the parse-row-data-from-list function (but kept here as a reminder)
                            (bind ?row1 (nth$ 1 ?rows-of-current-vertical-sector))
                            (while (<= ?row1 ?last-row-of-current-vertical-sector)
                                 
                                (bind ?csp-var (row-col-to-rc-csp-var ?row1 ?col))
                            ;     (assert (csp-variable (name ?csp-var) (type rc)))
                            ;     (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
                            ;
                            ;     (bind ?nb1 1)
                            ;     (while (< ?nb1 ?*number-size*)
                            ;         (bind ?lab1 (nrc-to-natural-label ?nb1 ?row1 ?col))
                            ;         (bind ?nb2 (+ ?nb1 1))
                            ;         (while (<= ?nb2 ?*number-size*)
                            ;             (bind ?lab2 (nrc-to-natural-label ?nb2 ?row1 ?col))
                            ;             (assert (physical-csp-link ?lab1 ?lab2 ?csp-var rc))
                            ;             (add-label-link ?lab1 ?lab2)
                            ;             (bind ?nb2 (+ ?nb2 1))
                            ;         )
                            ;         (bind ?nb1 (+ ?nb1 1))
                            ;     )
                            ;     
                                (bind ?nb 1)
                                (while (<= ?nb ?*number-size*)
                                    (bind ?lab (nrc-to-natural-label ?nb ?row1 ?col ))
                                    ;;; BEWARE: this creates inefficiencies for typed chains in case both typed and non-typed chains are used
                                    (if ?*Typed-Chains* then
                                        (assert
                                            (is-typed-csp-variable-for-label
                                                (csp-var ?csp-var)
                                                (label ?lab)
                                                (csp-var-type ?csp-type-symbol)
                                            )
                                        )
                                    )
                            ;         ;;; assert each label as a candidate (lazy initialisation)
                            ;         (assert (candidate
                            ;                    (context 0)
                            ;                    (status cand)
                            ;                    (label ?lab)
                            ;                    (type white)
                            ;                    (number ?nb)
                            ;                    (row ?row1)
                            ;                    (column ?col)
                            ;                    (column-of-horizontal-controller (column-of-horizontal-controller ?row1 ?col))
                            ;                    (row-of-vertical-controller ?controller-row-of-current-vertical-sector)
                            ;                )
                            ;        )
                            ;         (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                                    (bind ?nb (+ ?nb 1))
                                )
                            
                                (bind ?row1 (+ ?row1 1))
                            )
                        ) ; end of if ?*Typed-Chains*
                            
                            
                            ;;; for each number, for each pair of rc-cells in the sector, assert the physical cn links between their labels
                            (bind ?nb 1)
                            (while (<= ?nb ?*number-size*)
                                (bind ?row1 (nth$ 1 ?rows-of-current-vertical-sector))
                                (while (< ?row1 ?last-row-of-current-vertical-sector)
                                    (bind ?lab1 (nrc-to-natural-label ?nb ?row1 ?col))
                                    (bind ?row2 (+ ?row1 1))
                                    (while (<= ?row2 ?last-row-of-current-vertical-sector)
                                        (bind ?lab2 (nrc-to-natural-label ?nb ?row2 ?col))
                                        (assert (physical-link ?lab1 ?lab2 cn))
                                        (add-label-link ?lab1 ?lab2)
                                        (bind ?row2 (+ ?row2 1))
                                    )
                                    (bind ?row1 (+ ?row1 1))
                                )
                                (bind ?nb (+ ?nb 1))
                            )
                       
                        
                            ;;; IF THERE IS EFFECTIVE SUM INFORMATION ABOUT THE FINISHING SECTOR
                            (if (neq ?sum-of-current-vertical-sector 0)
                                then 
                                    (bind ?combinations-of-current-vertical-sector 
                                        (combinations ?sum-of-current-vertical-sector ?size-of-current-vertical-sector)
                                    )
                                    (bind ?compat-as-list (compatible-digits-as-list ?combinations-of-current-vertical-sector))
                                    
                                    
                                    ;;; if the finishing sector is MAGIC
                                    (if (eq (length$ ?combinations-of-current-vertical-sector) 1)
                                        then 
                                            ;;; assert that the sector is magic
                                            (printout t "vertical magic sector " ?sum-of-current-vertical-sector "-in-" ?size-of-current-vertical-sector ", starting in ") 
                                            (print-row ?controller-row-of-current-vertical-sector) 
                                            (print-column ?col)
                                            (printout t ", unique combination: " (nth$ 1 ?combinations-of-current-vertical-sector) crlf)
                                            (assert (vertical-magic-sector 
                                                        (nth$ 1 ?combinations-of-current-vertical-sector)
                                                        ?controller-row-of-current-vertical-sector 
                                                        ?col
                                                    )
                                            )
                                            ;;; assert that each (S, p)-compatible digit is magic
                                            (foreach ?nb ?compat-as-list
                                                (assert (magic-digit-in-vertical-sector ?nb ?controller-row-of-current-vertical-sector ?col))
                                            )
                                            
                                            ;;; for each (S, p)-compatible digit, assert the cn CSP variable and the associated is-csp-variable-for-label facts
                                            (foreach ?nb ?compat-as-list
                                                (bind ?csp-var (number-ctrrow-column-to-cn-csp-var ?nb ?controller-row-of-current-vertical-sector ?col))
                                                (assert (csp-variable (name ?csp-var) (type cn)))
                                                (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))

                                                ;;; assert the labels for this variable
                                                (bind ?row1 (nth$ 1 ?rows-of-current-vertical-sector))
                                                (while (<= ?row1 ?last-row-of-current-vertical-sector)
                                                    (bind ?lab1 (nrc-to-natural-label ?nb ?row1 ?col))
                                                    (assert
                                                        (is-csp-variable-for-label
                                                            (csp-var ?csp-var)
                                                            (label ?lab1)
                                                        )
                                                    )
                                                    (if ?*Typed-Chains* then
                                                        (assert
                                                            (is-typed-csp-variable-for-label
                                                                (csp-var ?csp-var)
                                                                (label ?lab1)
                                                                (csp-var-type ?csp-type-symbol)
                                                            )
                                                        )
                                                    )

                                                    ;;; assert the CSP contradiction links between two of its labels
                                                    (if (< ?row1 ?last-row-of-current-vertical-sector) then
                                                        (bind ?row2 (+ ?row1 1))
                                                        (while (<= ?row2 ?last-row-of-current-vertical-sector)
                                                            (bind ?lab2 (nrc-to-natural-label ?nb ?row2 ?col))
                                                            (assert (physical-csp-link ?lab1 ?lab2 ?csp-var cn))
                                                            (add-label-link ?lab1 ?lab2)
                                                            (bind ?row2 (+ ?row2 1))
                                                        )
                                                    )
                                                    (bind ?row1 (+ ?row1 1))
                                                )
                                            )
                                    )
                                    
                                    
                                    ;;; if the finishing sector is not magic, check the MAGIC DIGITS
                                    (if (> (length$ ?combinations-of-current-vertical-sector) 1)
                                        then 
                                            (bind ?common-digits (list-of-digits-in-all-combinations ?compat-as-list ?combinations-of-current-vertical-sector))
                                            (bind ?nb-common-digits (length$ ?common-digits))
                                            (if (> ?nb-common-digits 0) then
                                                ;;; assert that the common digits are pseudo-magic
                                                (printout t "vertical pseudo magic sector " ?sum-of-current-vertical-sector "-in-" ?size-of-current-vertical-sector ", starting in ") 
                                                (print-row ?controller-row-of-current-vertical-sector) 
                                                (print-column ?col)
                                                (printout t ", for digits: " ?common-digits crlf)
                                                
                                                ;;; for each common digit, assert it as pseudo-magic
                                                (foreach ?nb ?common-digits
                                                    (assert (magic-digit-in-vertical-sector ?nb ?controller-row-of-current-vertical-sector ?col))
                                                )
                                                
                                                ;;; this should be factorised with the magic case

                                                ;;; for each common digit, assert  the cn CSP variables and the associated is-csp-variable-for-label facts
                                                (foreach ?nb ?common-digits
                                                    (bind ?csp-var (number-ctrrow-column-to-cn-csp-var ?nb ?controller-row-of-current-vertical-sector ?col))
                                                    (assert (csp-variable (name ?csp-var) (type cn)))
                                                    (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))

                                                    ;;; assert the labels for this variable
                                                    (bind ?row1 (nth$ 1 ?rows-of-current-vertical-sector))
                                                    (while (<= ?row1 ?last-row-of-current-vertical-sector)
                                                        (bind ?lab1 (nrc-to-natural-label ?nb ?row1 ?col))
                                                        (assert
                                                            (is-csp-variable-for-label
                                                                (csp-var ?csp-var)
                                                                (label ?lab1)
                                                            )
                                                        )
                                                        (if ?*Typed-Chains* then
                                                            (assert
                                                                (is-typed-csp-variable-for-label
                                                                    (csp-var ?csp-var)
                                                                    (label ?lab1)
                                                                    (csp-var-type ?csp-type-symbol)
                                                                )
                                                            )
                                                        )

                                                        ;;; assert the CSP contradiction links between two of its labels
                                                        (if (< ?row1 ?last-row-of-current-vertical-sector) then
                                                            (bind ?row2 (+ ?row1 1))
                                                            (while (<= ?row2 ?last-row-of-current-vertical-sector)
                                                                (bind ?lab2 (nrc-to-natural-label ?nb ?row2 ?col))
                                                                (assert (physical-csp-link ?lab1 ?lab2 ?csp-var cn))
                                                                (add-label-link ?lab1 ?lab2)
                                                                (bind ?row2 (+ ?row2 1))
                                                            )
                                                        )
                                                        (bind ?row1 (+ ?row1 1))
                                                    )
                                                
                                                ) ;;; end of "(foreach ?nb ?common-digits ...)"
                                            ) ;;; end of "(if (> ?nb-common-digits 0)...)"
                                    ) ;;; end of "if the finishing sector is not magic, check the MAGIC DIGITS"

                                    

                                    
                                    
                                    ;;; NOW DEAL WITH THE ADDITIONAL VERTICAL CSP VARIABLES
                                    
                                    ;;; in any case, assert the vertical controller CSP variable of the finishing sector, its labels and its candidates
                                    (bind ?csp-var (vertical-controller-row-col-to-csp-var ?controller-row-of-current-vertical-sector ?col)) ;;;;; <<<<<<<<<<< valid for all the sequel
                                    (assert (csp-variable (name ?csp-var) (type vrc)))
                                    (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))

                                    (bind ?labs (create$))
                                    (foreach ?comb ?combinations-of-current-vertical-sector
                                        (bind ?lab (comb-rc-to-vertical-label ?comb ?controller-row-of-current-vertical-sector ?col))
                                        (bind ?labs (create$ ?labs ?lab))
                                        (assert
                                            (is-csp-variable-for-label
                                                (csp-var ?csp-var)
                                                (label ?lab)
                                            )
                                        )
                                        (if ?*Typed-Chains* then
                                            (assert
                                                (is-typed-csp-variable-for-label
                                                    (csp-var ?csp-var)
                                                    (label ?lab)
                                                    (csp-var-type ?csp-type-symbol)
                                                )
                                            )
                                        )
                                        (assert (candidate
                                                    (context 0)
                                                    (status cand)
                                                    (label ?lab)
                                                    (type verti-comb)
                                                    (number ?comb)
                                                    (row ?controller-row-of-current-vertical-sector)
                                                    (column ?col)
                                                    (column-of-horizontal-controller 0)
                                                    (row-of-vertical-controller ?controller-row-of-current-vertical-sector)
                                                )
                                        )
                                        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                                    )
                                    ;;; now ?labs corresponds to ?combinations-of-current-vertical-sector
                                    
                                    
                                    ;;; if there is more than one label for the controller variable (the sector is not magic), then assert the csp contradiction links between them
                                    (if (> (length$ ?combinations-of-current-vertical-sector) 1) 
                                        then
                                            (bind ?p 1)
                                            (while (< ?p (length$ ?combinations-of-current-vertical-sector))
                                                (bind ?lab1 (nth$ ?p ?labs))
                                                (bind ?q (+ ?p 1))
                                                (while (<= ?q (length$ ?combinations-of-current-vertical-sector))
                                                    (bind ?lab2 (nth$ ?q ?labs))
                                                    (assert (physical-csp-link ?lab1 ?lab2 ?csp-var vrc))
                                                    (add-label-link ?lab1 ?lab2)
                                                    (bind ?q (+ ?q 1))
                                                )
                                                (bind ?p (+ ?p 1))
                                            )
                                    )
                                    
                                    
                                    ;;; in any case, assert the vS links between labels of the controller variable and those for the controlled cells
                                    ; (printout t ?combinations-of-current-vertical-sector " ")
                                    ; (printout t ?rows-of-current-vertical-sector crlf)
                                    (bind ?p 1)
                                    (while (<= ?p (length$ ?combinations-of-current-vertical-sector))
                                        (bind ?comb1 (nth$ ?p ?combinations-of-current-vertical-sector))
                                        (bind ?lab1 (nth$ ?p ?labs))
                                        (bind ?nb2 1)
                                        (while (<= ?nb2 ?*number-size*)
                                            (if (not (digit-in-number ?nb2 ?comb1)) then
                                                (bind ?q2 1)
                                                (while (<= ?q2 ?size-of-current-vertical-sector)
                                                    (bind ?row2 (nth$ ?q2 ?rows-of-current-vertical-sector))
                                                    (bind ?lab2 (nrc-to-natural-label ?nb2 ?row2 ?col))
                                                    (assert (physical-link ?lab1 ?lab2 vS))
                                                    (add-label-link ?lab1 ?lab2)
                                                    (bind ?q2 (+ ?q2 1))
                                                )
                                            
                                            )
                                            (bind ?nb2 (+ ?nb2 1))
                                        )
                                        (bind ?p (+ ?p 1))
                                    )
                                    
                                    
                                    
                                    ;;; IF G-BIVALUE-CHAINS, G-WHIPS AND/OR G-BRAIDS ARE ACTIVE, 
                                    ;;; CREATE THE SECTOR TEMPLATE THAT WILL BE USED TO COMPUTE G-LABELS AND G-LINKS
                                    
                                    (if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*) then
                                        (if (sector-has-gcombs ?sum-of-current-vertical-sector ?size-of-current-vertical-sector) then
                                            (printout t "vertical sector with g-combs " ?sum-of-current-vertical-sector "-in-" ?size-of-current-vertical-sector ", starting in ") 
                                            (print-row ?controller-row-of-current-vertical-sector) 
                                            (print-column ?col) 
                                            (printout t crlf)
                                            (assert (sector-with-gcombs
                                                        (type verti)
                                                        (sum ?sum-of-current-vertical-sector)
                                                        (size ?size-of-current-vertical-sector)
                                                        (combinations ?combinations-of-current-vertical-sector)
                                                        (compatible-digits ?compat-as-list)
                                                        (row ?controller-row-of-current-vertical-sector)
                                                        (column ?col)
                                                    )
                                            )
                                        )
                                        (if (sector-has-gdigs ?sum-of-current-vertical-sector ?size-of-current-vertical-sector) then
                                            (printout t "vertical sector with g-digs " ?sum-of-current-vertical-sector "-in-" ?size-of-current-vertical-sector ", starting in ") 
                                            (print-row ?controller-row-of-current-vertical-sector) 
                                            (print-column ?col) 
                                            (printout t crlf)
                                            (assert (sector-with-gdigs
                                                        (type verti)
                                                        (sum ?sum-of-current-vertical-sector)
                                                        (size ?size-of-current-vertical-sector)
                                                        (combinations ?combinations-of-current-vertical-sector)
                                                        (compatible-digits ?compat-as-list)
                                                        (row ?controller-row-of-current-vertical-sector)
                                                        (column ?col)
                                                    )
                                            )
                                        )
                                    ) ;;; END OF "IF G-BIVALUE-CHAINS, G-WHIPS AND/OR G-BRAIDS"
                                    
                                    
                                    
                            
                            ) ;;; end of "(if (neq ?sum-of-current-vertical-sector 0))"
                                        
                                   
                    ) ;;; end of the "(if ?in-sector)" case, with the data being still a black cell or an end of line
                
                    
                    ;;; we must now prepare for the next vertical sector
                    (bind ?in-sector FALSE)
                    (bind ?controller-row-of-current-vertical-sector ?row)
                    (if (numberp ?row) then ; case where ?row <= ?k
                        (bind ?csp-type-symbol (sym-cat v (row-name ?controller-row-of-current-vertical-sector) (column-name ?col)))
                    )
                    (bind ?last-row-of-current-vertical-sector 0)
                    (bind ?rows-of-current-vertical-sector (create$))
                    (bind ?size-of-current-vertical-sector 0)
                    (bind ?sum-of-current-vertical-sector (if (numberp ?data) then ?data else 0))
                    (bind ?combinations-of-current-vertical-sector (create$))
                    
            ) ;;; end of "(if (eq ?data .) then... else...)"
            (bind ?j (+ ?j 1))
        ) ;;; "end of (while ?j)"
		(bind ?i (+ ?i 1))
    ) ;;; "end of (while ?i)"
)


    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for solving a puzzle given as a list
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-instance (?k $?givens)

    ;;; first check the givens
    (if ?*check-data* then  (if (not (check-data-from-list ?k $?givens)) then (halt) (return FALSE)))

    (init-universal-globals)
    ;;; re-initialize the global variables depending on instance size
    (redefine-instance-globals ?k)

    (init-variables-ranges)
    (compute-columns-of-horizontal-controllers ?k $?givens)    
    (compute-rows-of-vertical-controllers ?k $?givens)
      
    (parse-row-data-from-list ?k $?givens)
    (parse-column-data-from-list ?k $?givens)
    
    (assert (context (name 0)))
	(assert (grid 0))
)




(deffunction solve (?k $?givens)
	(reset) (reset)  
	(if ?*print-actions* then
        (print-banner)
        (printout t "       Uppermost (black) row and leftmost (black) column have index " ?*first-row* crlf)
        (printout t "INITIALISATION" crlf)
	)
    
    ;;; puzzle entries are taken into account here
	(bind ?time0 (time))
	(bind ?data-OK (init-instance ?k $?givens))
    (if (not ?data-OK) then (return FALSE))
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    ;;; the grid is solved here
	(bind ?n (run))
	(bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
	(bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
	(bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t "Puzzle " ?givens " :" crlf)
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (print-banner)
		(printout t crlf)
	)
)


    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for solving a partly solved puzzle given as a list
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction check-partly-solved-data-from-list (?k $?givens)
    (bind ?*rows* (subseq$ ?*potential-rows* 1 ?k))
    (bind ?*columns* (subseq$ ?*potential-columns* 1 ?k))
    (bind ?OK1 TRUE)
    (bind ?OK2 TRUE)
    (bind ?OK3 TRUE)
    (bind ?OK4 TRUE)
    (bind ?OK5 TRUE)
    
    ;;; check length of givens
    (if (neq (length$ $?givens) 
             (+ 
                (* 2 (+ ?k 1) (- ?k 1)) ; black cells
                (* (- ?k 1) (- ?k 1)) ; white cells (no "/" at the end of the white data)
            ) 
        )
        then (bind ?OK1 FALSE) (printout t "ERROR IN DATA LENGTH" crlf))
    
    ;;; check each value
    (bind ?i 1)
    (while (<= ?i (length$ $?givens))
        (bind ?data (nth$ ?i $?givens))
        ; (printout t ?i " " ?data crlf)
        (if (and (neq ?data /) (neq ?data //) (neq ?data B) (neq ?data .) (or (not (numberp ?data)) (< ?data 1) (> ?data 45)))
            then (bind ?OK2 FALSE)
        )
        (bind ?i (+ ?i 1))
    )
    (if (not ?OK2) then (printout t "ERROR IN DATA CONTENT" crlf))

    ;;; check each row
    (bind ?i 1)
    (while (< ?i (- ?k 1))
        (if (neq / (nth$ (* (+ ?k 1)  ?i) $?givens)) then (bind ?OK3 FALSE) (printout t "bad row size r" (+ ?i 1) crlf))
        (bind ?i (+ ?i 1))
    )
    (if (neq // (nth$ (* (+ ?k 1)  (- ?k 1)) $?givens)) then (bind ?OK3 FALSE))
    (if (not ?OK3) then (printout t "ERROR IN ROW DATA" crlf))

    ;;; check each column
    (bind ?i ?k)
    (while (< ?i (* 2 (- ?k 1)))
        (if (neq / (nth$ (* (+ ?k 1)  ?i) $?givens)) then (bind ?OK4 FALSE))
        (bind ?i (+ ?i 1))
    )
    (if (neq // (nth$ (* 2 (+ ?k 1)  (- ?k 1)) $?givens)) then (bind ?OK4 FALSE) (printout t "bad column size c" (+ (- ?i ?k) 2) crlf))
    (if (not ?OK4) then (printout t "ERROR IN COLUMN DATA" crlf))
    
    ;;; cross check row and column data for white cells
	(bind ?i 2)
	(while (<= ?i ?k)
        (bind ?row (nth$ ?i ?*rows*))
        (bind ?j 2)
        (while (<= ?j ?k)
            (bind ?col (nth$ ?j ?*columns*))
            ;;; horizontal and vertical data for white cells must be consistent
            (if (exor (eq . (nth$ (row-col-to-horizontal-place-in-data ?k ?row ?col) $?givens))
                      (eq . (nth$ (row-col-to-vertical-place-in-data ?k ?row ?col) $?givens))
                )
                then (bind ?OK5 FALSE)
            )
			(bind ?j (+ ?j 1))
		)
		(bind ?i (+ ?i 1))
    )
    (if (not ?OK5) then (printout t "CONSISTENCY ERROR IN ROW-COLUMN DATA FOR WHITE CELLS" crlf))

    (return (and ?OK1 ?OK2 ?OK3 ?OK4 ?OK5))
)


(deffunction parse-white-cells-data (?k $?givens)
    (bind ?len (length$ $?givens))
    (bind $?white-data (subseq$ $?givens (+ 1 (* 2 (+ ?k 1) (- ?k 1))) ?len))
    (bind ?i 1)
    (while (< ?i ?k)
        (bind ?row (+ ?i 1))
        (bind ?j 1)
        (while (< ?j ?k)
            (bind ?col (+ ?j 1))
            (bind ?index (+ (* (- ?i 1) (- ?k 1)) ?j))
            (bind ?data (nth$ ?index $?white-data))
            (if (member$ ?data ?*numbers*) then
                (assert (candidate 
                            (context 0)
                            (status c-value)
                            (label (nrc-to-natural-label ?data ?row ?col))
                            (type white)
                            (number ?data)
                            (row ?row)
                            (column ?col)
                            (column-of-horizontal-controller (column-of-horizontal-controller ?row ?col))
                            (row-of-vertical-controller (row-of-vertical-controller ?row ?col))
                       )
                )
            )
            (bind ?j (+ ?j 1))
        )
        (bind ?i (+ ?i 1))
    )
)



(deffunction init-partly-solved-instance (?k $?givens)

    ;;; first check the givens
;    (if ?*check-data* then 
;        (if (not (check-partly-solved-data-from-list ?k $?givens)) then (halt) (return FALSE))
;    )
    
    (init-universal-globals)
    ;;; re-initialize the global variables
    (redefine-instance-globals ?k)
    (assert (context (name 0)))

    (init-variables-ranges) 
    (compute-columns-of-horizontal-controllers ?k $?givens)    
    (compute-rows-of-vertical-controllers ?k $?givens)
      
    (parse-row-data-from-list ?k $?givens)
    (parse-column-data-from-list ?k $?givens)
    (parse-white-cells-data ?k $?givens)
    
	(assert (grid 0))
)




(deffunction solve-partly-solved-puzzle (?k $?givens)
	(if ?*print-actions* then
        (print-banner)
        (printout t "       Uppermost (black) row and leftmost (black) column have index " ?*first-row* crlf)
        (printout t "INITIALISATION" crlf)
	)
    (reset) (reset)
    ;;; puzzle entries are taken into account here
	(bind ?time0 (time))
	(bind ?data-OK (init-partly-solved-instance ?k $?givens))
    (if (not ?data-OK) then (return FALSE))
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    ;;; the grid is solved here
	(bind ?n (run))
	(bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
	(bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
	(bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t "Puzzle " ?givens " :" crlf)
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (print-banner)
		(printout t crlf)
	)
)







