
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / MAPRULES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for initializing variables scopes and general structures
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction redefine-factors (?nb-col ?nb-count)
    (bind ?*nb-colours* ?nb-col)
    (bind ?*nb-countries* ?nb-count)
    (bind ?*nb-csp-variables* ?*nb-countries*)
    (bind ?*colours* (subseq$ ?*potential-colours* 1 ?nb-col))
    (bind ?*countries* (subseq$ ?*potential-countries* 1 ?nb-count))
    (bind ?*colour-factor*
        (if (<= ?nb-col 9)
            then 10
            else (if (<= ?nb-col 100) then 100 else 1000)
        )
    )
    (bind ?*country-factor* 
        (if (<= ?nb-count 9)
            then 10
            else (if (<= ?nb-count 100) then 100 else 1000)
        )
    )
)


(deffunction init-variables (?nb-col ?nb-count)
	;;; this function creates facts depending only on world structure and not on the actual presence of candidates

	;;; create facts for colours and countries
	(foreach ?i ?*countries* (assert (country ?i)))
	(foreach ?i ?*colours* (assert (colour ?i)))

	;;; create facts for csp-variables
	(foreach ?i ?*countries*
        (bind ?csp (country-to-csp-variable ?i))
        (assert (csp-variable (name ?csp) (type country)))
    )

    ;;; create is-csp-variable-for-label facts
	;;; create correspondences between labels, countries and colours
	(foreach ?i ?*countries*
        (bind ?csp (country-to-csp-variable ?i))
		(foreach ?j ?*colours*
            (bind ?xxx (country-colour-to-label ?i ?j))
            (assert (is-csp-variable-for-label (csp-var ?csp) (label ?xxx)))
		)
	)
)



(deffunction init-csp-physical-links (?nb-col ?nb-count)
	;;; this function creates facts depending only on world structure and not on the actual presence of candidates
    (foreach ?country ?*countries*
        (bind ?colour1 1)
        (while (< ?colour1 ?*nb-colours*)
            (bind ?cand1 (country-colour-to-label ?country ?colour1))
            (bind ?colour2 (+ ?colour1 1))
            (while (<= ?colour2 ?*nb-colours*)
                (bind ?cand2 (country-colour-to-label ?country ?colour2))
                (assert (physical-link ?cand1 ?cand2 ?country))
                (add-label-link ?cand1 ?cand2)
                (bind ?colour2 (+ ?colour2 1))
            )
            (bind ?colour1 (+ ?colour1 1))
        )
    )
)


(deffunction init-neighbourhood-physical-links-from-list ($?list)
	;;; this function creates facts depending only on world structure and not on the actual presence of candidates
    (bind ?len (length$ $?list))
    (bind ?country1 (nth$ 1 $?list))
    (bind ?i 2)
    (while (<= ?i ?len)
        (bind ?country2 (nth$ ?i $?list))
        (if (member$ ?country2 ?*countries*) 
            then
                (assert (neighbour ?country1 ?country2))
                (foreach ?colour ?*colours*
                    (bind ?cand1 (country-colour-to-label ?country1 ?colour))
                    (bind ?cand2 (country-colour-to-label ?country2 ?colour))
                    (assert (physical-link ?cand1 ?cand2 neighbour))
                    (add-label-link ?cand1 ?cand2)
                )
            else 
                (if (<= ?i (- ?len 2)) then
                    then (bind ?i (+ ?i 1)) (bind ?country1 (nth$ ?i $?list))
                 )
        )
        (bind ?i (+ ?i 1))
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for initialising and solving a puzzle
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction init-values-from-string (?givens)
	;;; Assert the c-values for countries with given entries
	(bind ?*nb-csp-variables-solved* 0)
	;;; For every country,
	(foreach ?country ?*countries*
        ;;; read the content of the cell from the entries (supposes there is only one symbol per entry)
        (bind ?colour (nth$ 1 (explode$ (sub-string ?country ?country ?givens))))
        (bind ?colour (convert-colour-name-to-colour ?colour))
        ;;; if the content is a colour (i.e. there is an entry for the cell), then assert the corresponding c-value
        (if (member$ ?colour ?*colours*) then
            (bind ?xxx (country-colour-to-label ?country ?colour))
            (assert (candidate (context 0) (status c-value) (label ?xxx) (country ?country) (colour ?colour)))
            (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
            (if ?*print-init-details* then
                (printout t "Asserting entry: " (country-name ?country) " = " (colour-name ?colour) crlf)
            )
        )
	)
	(if ?*print-initial-state* then (printout t ?*nb-csp-variables-solved* " givens"))
)


(deffunction init-candidates-from-string (?givens)
    ;;; Init the candidates for all the other countries
	(bind ?*nb-candidates* 0)
	;;; For every country,
	(foreach ?country ?*countries*
        ;;; read the content of the cell from the entries
        (bind ?colour (nth$ 1 (explode$ (sub-string ?country ?country ?givens)))) ;;; supposes there is only one symbol per entry
        (bind ?colour (convert-colour-name-to-colour ?colour))
        ;;; if the content is NOT a colour from ?*colours* (i.e. there is no entry for the cell)
        ;;; then assert all the possible candidates
        (if (not (member$ ?colour ?*colours*)) then
            (foreach ?col ?*colours*
                (bind ?xxx (country-colour-to-label ?country ?col))
                (assert (candidate (context 0) (status cand) (label ?xxx) (country ?country) (colour ?col)))
                (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
            )
        )
	)
	(if ?*print-initial-state* then (printout t " and " ?*nb-candidates* " candidates" crlf))
)




(deffunction init-instance (?nb-col ?nb-count ?givens $?list)
    (init-universal-globals)
    (redefine-factors ?nb-col ?nb-count)

	;;; init facts depending only on world structure and not on the actual presence of candidates
	(init-variables ?nb-col ?nb-count)
    (init-csp-physical-links ?nb-col ?nb-count) ; only physical links for cand1 < cand2 need be created
    (init-neighbourhood-physical-links-from-list $?list); only physical links for cand1 < cand2 need be created
    
    ;;; now take the givens into account
    (init-values-from-string ?givens)
    (init-candidates-from-string ?givens)
    (assert (context (name 0)))
	(assert (grid 0))
)




(deffunction solve (?nb-col ?nb-count ?givens $?list)
	(reset) (reset)  
	(if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; puzzle entries are taken into account here
	(init-instance ?nb-col ?nb-count ?givens $?list) 
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
	;;; the grid is solved here
    (bind ?*solution* ?givens)
    (bind ?nb-rules (run))
	(bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
	(bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
	(bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
	(if ?*print-time* then
		(printout t "Puzzle :" crlf)
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (print-banner)
		(printout t crlf)
	)
    ?*solution*
)






(defrule detect-contrad-in-data
    (declare (salience ?*contradiction-in-context-salience*))
    (candidate (context 0) (status c-value) (country ?cx) (colour ?cl))
    (candidate (context 0) (status c-value) (country ?cy) (colour ?cl))
    (neighbour ?cx ?cy) 
=>
    (printout t "DIRECT CONTRADICTION IN DATA FOR COUNTRIES" ?cx " AND " ?cy crlf)
    (halt)
)

