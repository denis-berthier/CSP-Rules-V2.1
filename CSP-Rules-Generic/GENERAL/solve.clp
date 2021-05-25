
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
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





;;; All the functions below (except print-banner) must be redefined in application-specific ways


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INITIALISE AND SOLVE INSTANCES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction redefine-instance-globals (?size) TRUE)
(deffunction init-general-application-structures (?size) TRUE)
(deffunction init-instance-specific-structures (?size $?l) TRUE)


(deffunction init-instance (?size $?l)
    (init-universal-globals)
    (redefine-instance-globals ?size)
    (init-general-application-structures ?size)
    (init-instance-specific-structures ?size $?l)
    (assert (context (name 0)))
	(assert (grid 0))
)


(deffunction print-start-banner ()
    (bind ?xx 
        (if (eq ?*chain-rules-optimisation-type* MEMORY) then .m
            else (if (eq ?*chain-rules-optimisation-type* SPEED) then .s
                    else (printout t "ERROR IN chain-rules-optimisation-type" crlf) (halt)
                )
        )
    )

    (printout t crlf)
    (printout t     "***********************************************************************************************" crlf
                    "***  " ?*Application* " " ?*Application-VersionNumber* ?xx
                    " based on CSP-Rules " ?*CSP-Rules-VersionNumber* ?xx ", config = " ?*rating-type* crlf
                    "***  Using " ?*inference-engine* " " ?*inference-engine-version* crlf
                    "***  Copyright Denis Berthier" crlf
                    "***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1" crlf
                    "***********************************************************************************************" crlf crlf crlf
    )
)


(deffunction print-banner ()
    (bind ?xx 
        (if (eq ?*chain-rules-optimisation-type* MEMORY) then .m
            else (if (eq ?*chain-rules-optimisation-type* SPEED) then .s
                    else (printout t "ERROR IN chain-rules-optimisation-type" crlf) (halt)
                )
        )
    )

    (printout t     "***********************************************************************************************" crlf
                    "***  " ?*Application* " " ?*Application-VersionNumber* ?xx
                    " based on CSP-Rules " ?*CSP-Rules-VersionNumber* ?xx ", config = " ?*rating-type* crlf
                    "***  Using " ?*inference-engine* " " ?*inference-engine-version* crlf
                    "***  Running on " ?*Computer-description* crlf
                    "***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1" crlf
                    "***********************************************************************************************" crlf
    )
)


(deffunction seconds-to-hours (?s)
    (bind ?hrs (div ?s 3600))
    (bind ?min (- (div ?s 60) (* ?hrs 60)))
    (bind ?sec (mod ?s 60))
    (bind ?sec (/ (round (* 100 ?sec)) 100))
    (bind ?res
        (str-cat
            (if (eq ?hrs 0) then "" else (str-cat ?hrs "h "))
            (if (eq ?min 0) then "" else (str-cat ?min "m "))
            ?sec "s"
        )
    )
)

    
    
(deffunction solve (?size $?l)
	(reset) (reset)  
	(if ?*print-actions* then (print-banner))
    (bind ?time0 0)
	;;; puzzle entries are taken into account here
    (init-instance ?size $?l)
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
	;;; the grid is solved and the resolution path is printed here
    (bind ?nb-rules (run))
    ;;; the rest is for displaying the global results
	(bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
	(bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
	(bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t "Puzzle " $?l " :" crlf)
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        ;(printout t "nb-facts=" ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
    )
    (if ?*print-actions* then (print-banner) (printout t crlf))
)
