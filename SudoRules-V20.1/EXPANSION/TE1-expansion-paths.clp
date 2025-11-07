
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE1 EXPANSION PATHS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;         https://github.com/denis-berthier          ;;;
               ;;;           January 2006 - September 2025            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;; longest path in TE1 to a puzzle in p<k>EU-mex
;;; safe version
;;; ex "safe-extract", renamed "extract"

(deffunction SGS-TE1-extract-pkEU-expansion-path-from-some-minimal-to-a-puzzle-in-pkEU-for-Usol-i (?i ?max-expansion-phases ?puzzle-in-pkEU-mex)
    ;;; all the expansion steps up to pkmex are supposed to have been calculated (this is not checked)
    ;;; ?max-expansion-phases is cut out at 22
    (if (> ?max-expansion-phases 22) then (printout t "?max-expansion-phases has been limited to 22." crlf))
    (bind ?max-expansion-phases (min ?max-expansion-phases 22))
    
    (bind ?t0 (time))
    (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))

    (printout t ?puzzle-in-pkEU-mex " " (compute-nb-clues ?puzzle-in-pkEU-mex) "c +BRT -> --p" ?max-expansion-phases "EU" crlf)
    ;;; 1) pk-EU files to be considered
    ;;;    compute possibly relevant --pkEU puzzles
    ;;;    choose the 1st relevant pair of puzzles of each list.

    ;;; expansion-phase 1 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 1) then
        (bind ?pk1-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 1)) ".txt"))
        (bind ?list-pk1 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk1-EU-file ?puzzle-in-pkEU-mex))
        (printout t (length$ ?list-pk1) " in list-pk1" crlf)
        ;;; at  this point, any puzzle in ?list-pk1 doesn't necessarily have a 1+BRT expansion in ?puzzle-in-pkEU-mex
        ;;; choose the first one that has one:
        (bind ?list-pk1a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk1 ?puzzle-in-pkEU-mex))
        (bind ?puz0a (nth$ 2 ?list-pk1a))
        (bind ?puz1 (nth$ 1 ?list-pk1a))
        ;;; puz1 is the (1+BRT)^(?max-expansion-phases -1) of some puzzle in MEU
        ;;; ?puz0a is one of its 1-expands
        (printout t ?puz0a " " (compute-nb-clues ?puz0a) "c +p" (- ?max-expansion-phases 0) crlf)
        (printout t ?puz1 " " (compute-nb-clues ?puz1) "c +BRT -> --p" (- ?max-expansion-phases 1) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 1) then
        (bind ?pk1U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 1)) ".txt"))
        (bind ?list-pk1U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk1U-file ?*empty-puzzle* ?puz1))
        (bind ?puz1a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk1U ?puz1))
    )

    ;;; expansion-phase 2 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 2) then
        (bind ?pk2-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 2)) ".txt"))
        (bind ?list-pk2 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk2-EU-file ?puz1))
        (printout t (length$ ?list-pk2) " in list-pk2" crlf)
        ;;; at  this point, any puzzle in ?list-pk2 doesn't necessarily have a 1+BRT expansion in ?puz1
        ;;; choose the first one that has one:
        (bind ?list-pk2a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk2 ?puz1))
        (bind ?puz1a (nth$ 2 ?list-pk2a))
        (bind ?puz2 (nth$ 1 ?list-pk2a))
        ;;; puz2 is the (1+BRT)^(?max-expansion-phases -1) of some puzzle in MEU
        ;;; ?puz1a is one of its 1-expands
        (printout t ?puz1a " " (compute-nb-clues ?puz1a) "c +p" (- ?max-expansion-phases 1) crlf)
        (printout t ?puz2 " " (compute-nb-clues ?puz2) "c +BRT -> --p" (- ?max-expansion-phases 2) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 2) then
        (bind ?pk2U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 2)) ".txt"))
        (bind ?list-pk2U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk2U-file ?*empty-puzzle* ?puz2))
        (bind ?puz2a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk2U ?puz2))
    )

    ;;; expansion-phase 3 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 3) then
        (bind ?pk3-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 3)) ".txt"))
        (bind ?list-pk3 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk3-EU-file ?puz2))
        (printout t (length$ ?list-pk3) " in list-pk3" crlf)
        ;;; at  this point, any puzzle in ?list-pk3 doesn't necessarily have a 1+BRT expansion in ?puz2
        ;;; choose the first one that has one:
        (bind ?list-pk3a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk3 ?puz2))
        (bind ?puz2a (nth$ 2 ?list-pk3a))
        (bind ?puz3 (nth$ 1 ?list-pk3a))
        ;;; puz3 is the (1+BRT)^(?max-expansion-phases -2) of some puzzle in MEU
        ;;; ?puz2a is one of its 1-expands
        (printout t ?puz2a " " (compute-nb-clues ?puz2a) "c +p" (- ?max-expansion-phases 2) crlf)
        (printout t ?puz3 " " (compute-nb-clues ?puz3) "c +BRT -> --p" (- ?max-expansion-phases 3) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 3) then
        (bind ?pk3U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 3)) ".txt"))
        (bind ?list-pk3U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk3U-file ?*empty-puzzle* ?puz3))
        (bind ?puz3a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk3U ?puz3))
    )

    ;;; expansion-phase 4 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 4) then
        (bind ?pk4-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 4)) ".txt"))
        (bind ?list-pk4 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk4-EU-file ?puz3))
        (printout t (length$ ?list-pk4) " in list-pk4" crlf)
        ;;; at  this point, any puzzle in ?list-pk4 doesn't necessarily have a 1+BRT expansion in ?puz3
        ;;; choose the first one that has one:
        (bind ?list-pk4a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk4 ?puz3))
        (bind ?puz3a (nth$ 2 ?list-pk4a))
        (bind ?puz4 (nth$ 1 ?list-pk4a))
        ;;; puz4 is the (1+BRT)^(?max-expansion-phases -3) of some puzzle in MEU
        ;;; ?puz3a is one of its 1-expands
        (printout t ?puz3a " " (compute-nb-clues ?puz3a) "c +p" (- ?max-expansion-phases 3) crlf)
        (printout t ?puz4 " " (compute-nb-clues ?puz4) "c +BRT -> --p" (- ?max-expansion-phases 4) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 4) then
        (bind ?pk4U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 4)) ".txt"))
        (bind ?list-pk4U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk4U-file ?*empty-puzzle* ?puz4))
        (bind ?puz4a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk4U ?puz4))
    )

    ;;; expansion-phase 5 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 5) then
        (bind ?pk5-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 5)) ".txt"))
        (bind ?list-pk5 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk5-EU-file ?puz4))
        (printout t (length$ ?list-pk5) " in list-pk5" crlf)
        ;;; at  this point, any puzzle in ?list-pk5 doesn't necessarily have a 1+BRT expansion in ?puz4
        ;;; choose the first one that has one:
        (bind ?list-pk5a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk5 ?puz4))
        (bind ?puz4a (nth$ 2 ?list-pk5a))
        (bind ?puz5 (nth$ 1 ?list-pk5a))
        ;;; puz5 is the (1+BRT)^(?max-expansion-phases -4) of some puzzle in MEU
        ;;; ?puz4a is one of its 1-expands
        (printout t ?puz4a " " (compute-nb-clues ?puz4a) "c +p" (- ?max-expansion-phases 4) crlf)
        (printout t ?puz5 " " (compute-nb-clues ?puz5) "c +BRT -> --p" (- ?max-expansion-phases 5) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 5) then
        (bind ?pk5U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 5)) ".txt"))
        (bind ?list-pk5U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk5U-file ?*empty-puzzle* ?puz5))
        (bind ?puz5a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk5U ?puz5))
    )

    ;;; expansion-phase 6 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 6) then
        (bind ?pk6-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 6)) ".txt"))
        (bind ?list-pk6 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk6-EU-file ?puz5))
        (printout t (length$ ?list-pk6) " in list-pk6" crlf)
        ;;; at  this point, any puzzle in ?list-pk6 doesn't necessarily have a 1+BRT expansion in ?puz5
        ;;; choose the first one that has one:
        (bind ?list-pk6a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk6 ?puz5))
        (bind ?puz5a (nth$ 2 ?list-pk6a))
        (bind ?puz6 (nth$ 1 ?list-pk6a))
        ;;; puz6 is the (1+BRT)^(?max-expansion-phases -5) of some puzzle in MEU
        ;;; ?puz5a is one of its 1-expands
        (printout t ?puz5a " " (compute-nb-clues ?puz5a) "c +p" (- ?max-expansion-phases 5) crlf)
        (printout t ?puz6 " " (compute-nb-clues ?puz6) "c +BRT -> --p" (- ?max-expansion-phases 6) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 6) then
        (bind ?pk6U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 6)) ".txt"))
        (bind ?list-pk6U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk6U-file ?*empty-puzzle* ?puz6))
        (bind ?puz6a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk6U ?puz6))
    )

    ;;; expansion-phase 7 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 7) then
        (bind ?pk7-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 7)) ".txt"))
        (bind ?list-pk7 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk7-EU-file ?puz6))
        (printout t (length$ ?list-pk7) " in list-pk7" crlf)
        ;;; at  this point, any puzzle in ?list-pk7 doesn't necessarily have a 1+BRT expansion in ?puz6
        ;;; choose the first one that has one:
        (bind ?list-pk7a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk7 ?puz6))
        (bind ?puz6a (nth$ 2 ?list-pk7a))
        (bind ?puz7 (nth$ 1 ?list-pk7a))
        ;;; puz7 is the (1+BRT)^(?max-expansion-phases -6) of some puzzle in MEU
        ;;; ?puz6a is one of its 1-expands
        (printout t ?puz6a " " (compute-nb-clues ?puz6a) "c +p" (- ?max-expansion-phases 6) crlf)
        (printout t ?puz7 " " (compute-nb-clues ?puz7) "c +BRT -> --p" (- ?max-expansion-phases 7) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 7) then
        (bind ?pk7U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 7)) ".txt"))
        (bind ?list-pk7U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk7U-file ?*empty-puzzle* ?puz7))
        (bind ?puz7a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk7U ?puz7))
    )

    ;;; expansion-phase 8 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 8) then
        (bind ?pk8-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 8)) ".txt"))
        (bind ?list-pk8 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk8-EU-file ?puz7))
        (printout t (length$ ?list-pk8) " in list-pk8" crlf)
        ;;; at  this point, any puzzle in ?list-pk8 doesn't necessarily have a 1+BRT expansion in ?puz7
        ;;; choose the first one that has one:
        (bind ?list-pk8a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk8 ?puz7))
        (bind ?puz7a (nth$ 2 ?list-pk8a))
        (bind ?puz8 (nth$ 1 ?list-pk8a))
        ;;; puz8 is the (1+BRT)^(?max-expansion-phases -7) of some puzzle in MEU
        ;;; ?puz7a is one of its 1-expands
        (printout t ?puz7a " " (compute-nb-clues ?puz7a) "c +p" (- ?max-expansion-phases 7) crlf)
        (printout t ?puz8 " " (compute-nb-clues ?puz8) "c +BRT -> --p" (- ?max-expansion-phases 8) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 8) then
        (bind ?pk8U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 8)) ".txt"))
        (bind ?list-pk8U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk8U-file ?*empty-puzzle* ?puz8))
        (bind ?puz8a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk8U ?puz8))
    )

    ;;; expansion-phase 9 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 9) then
        (bind ?pk9-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 9)) ".txt"))
        (bind ?list-pk9 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk9-EU-file ?puz8))
        (printout t (length$ ?list-pk9) " in list-pk9" crlf)
        ;;; at  this point, any puzzle in ?list-pk9 doesn't necessarily have a 1+BRT expansion in ?puz8
        ;;; choose the first one that has one:
        (bind ?list-pk9a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk9 ?puz8))
        (bind ?puz8a (nth$ 2 ?list-pk9a))
        (bind ?puz9 (nth$ 1 ?list-pk9a))
        ;;; puz9 is the (1+BRT)^(?max-expansion-phases -8) of some puzzle in MEU
        ;;; ?puz8a is one of its 1-expands
        (printout t ?puz8a " " (compute-nb-clues ?puz8a) "c +p" (- ?max-expansion-phases 8) crlf)
        (printout t ?puz9 " " (compute-nb-clues ?puz9) "c +BRT -> --p" (- ?max-expansion-phases 9) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 9) then
        (bind ?pk9U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 9)) ".txt"))
        (bind ?list-pk9U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk9U-file ?*empty-puzzle* ?puz9))
        (bind ?puz9a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk9U ?puz9))
    )

    ;;; expansion-phase 10 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 10) then
        (bind ?pk10-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 10)) ".txt"))
        (bind ?list-pk10 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk10-EU-file ?puz9))
        (printout t (length$ ?list-pk10) " in list-pk10" crlf)
        ;;; at  this point, any puzzle in ?list-pk10 doesn't necessarily have a 1+BRT expansion in ?puz9
        ;;; choose the first one that has one:
        (bind ?list-pk10a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk10 ?puz9))
        (bind ?puz9a (nth$ 2 ?list-pk10a))
        (bind ?puz10 (nth$ 1 ?list-pk10a))
        ;;; puz10 is the (1+BRT)^(?max-expansion-phases -9) of some puzzle in MEU
        ;;; ?puz9a is one of its 1-expands
        (printout t ?puz9a " " (compute-nb-clues ?puz9a) "c +p" (- ?max-expansion-phases 9) crlf)
        (printout t ?puz10 " " (compute-nb-clues ?puz10) "c +BRT -> --p" (- ?max-expansion-phases 10) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
   )
   (if (= ?max-expansion-phases 10) then
       (bind ?pk10U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 10)) ".txt"))
       (bind ?list-pk10U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk10U-file ?*empty-puzzle* ?puz10))
       (bind ?puz10a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk10U ?puz10))
   )

   ;;; expansion-phase 11 below ?max-expansion-phases:
   (if (>= ?max-expansion-phases 11) then
       (bind ?pk11-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 11)) ".txt"))
       (bind ?list-pk11 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk11-EU-file ?puz10))
       (printout t (length$ ?list-pk11) " in list-pk11" crlf)
       ;;; at  this point, any puzzle in ?list-pk11 doesn't necessarily have a 1+BRT expansion in ?puz10
       ;;; choose the first one that has one:
       (bind ?list-pk11a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk11 ?puz10))
       (bind ?puz10a (nth$ 2 ?list-pk11a))
       (bind ?puz11 (nth$ 1 ?list-pk11a))
       ;;; puz11 is the (1+BRT)^(?max-expansion-phases -10) of some puzzle in MEU
       ;;; ?puz10a is one of its 1-expands
       (printout t ?puz10a " " (compute-nb-clues ?puz10a) "c +p" (- ?max-expansion-phases 10) crlf)
       (printout t ?puz11 " " (compute-nb-clues ?puz11) "c +BRT -> --p" (- ?max-expansion-phases 11) "EU" crlf)
       (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
   )
   (if (= ?max-expansion-phases 11) then
       (bind ?pk11U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 11)) ".txt"))
       (bind ?list-pk11U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk11U-file ?*empty-puzzle* ?puz11))
       (bind ?puz11a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk11U ?puz11))
   )

   ;;; expansion-phase 12 below ?max-expansion-phases:
   (if (>= ?max-expansion-phases 12) then
       (bind ?pk12-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 12)) ".txt"))
       (bind ?list-pk12 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk12-EU-file ?puz11))
       (printout t (length$ ?list-pk12) " in list-pk12" crlf)
       ;;; at  this point, any puzzle in ?list-pk12 doesn't necessarily have a 1+BRT expansion in ?puz11
       ;;; choose the first one that has one:
       (bind ?list-pk12a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk12 ?puz11))
       (bind ?puz11a (nth$ 2 ?list-pk12a))
       (bind ?puz12 (nth$ 1 ?list-pk12a))
       ;;; puz12 is the (1+BRT)^(?max-expansion-phases -11) of some puzzle in MEU
       ;;; ?puz11a is one of its 1-expands
       (printout t ?puz11a " " (compute-nb-clues ?puz11a) "c +p" (- ?max-expansion-phases 11) crlf)
       (printout t ?puz12 " " (compute-nb-clues ?puz12) "c +BRT -> --p" (- ?max-expansion-phases 12) "EU" crlf)
       (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
   )
   (if (= ?max-expansion-phases 12) then
       (bind ?pk12U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 12)) ".txt"))
       (bind ?list-pk12U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk12U-file ?*empty-puzzle* ?puz12))
       (bind ?puz12a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk12U ?puz12))
   )

   ;;; expansion-phase 13 below ?max-expansion-phases:
   (if (>= ?max-expansion-phases 13) then
       (bind ?pk13-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 13)) ".txt"))
       (bind ?list-pk13 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk13-EU-file ?puz12))
       (printout t (length$ ?list-pk13) " in list-pk13" crlf)
       ;;; at  this point, any puzzle in ?list-pk13 doesn't necessarily have a 1+BRT expansion in ?puz12
       ;;; choose the first one that has one:
       (bind ?list-pk13a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk13 ?puz12))
       (bind ?puz12a (nth$ 2 ?list-pk13a))
       (bind ?puz13 (nth$ 1 ?list-pk13a))
       ;;; puz13 is the (1+BRT)^(?max-expansion-phases -12) of some puzzle in MEU
       ;;; ?puz12a is one of its 1-expands
       (printout t ?puz12a " " (compute-nb-clues ?puz12a) "c +p" (- ?max-expansion-phases 12) crlf)
       (printout t ?puz13 " " (compute-nb-clues ?puz13) "c +BRT -> --p" (- ?max-expansion-phases 13) "EU" crlf)
       (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
   )
   (if (= ?max-expansion-phases 13) then
       (bind ?pk13U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 13)) ".txt"))
       (bind ?list-pk13U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk13U-file ?*empty-puzzle* ?puz13))
       (bind ?puz13a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk13U ?puz13))
   )

   ;;; expansion-phase 14 below ?max-expansion-phases:
   (if (>= ?max-expansion-phases 14) then
       (bind ?pk14-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 14)) ".txt"))
       (bind ?list-pk14 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk14-EU-file ?puz13))
       (printout t (length$ ?list-pk14) " in list-pk14" crlf)
       ;;; at  this point, any puzzle in ?list-pk14 doesn't necessarily have a 1+BRT expansion in ?puz13
       ;;; choose the first one that has one:
       (bind ?list-pk14a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk14 ?puz13))
       (bind ?puz13a (nth$ 2 ?list-pk14a))
       (bind ?puz14 (nth$ 1 ?list-pk14a))
       ;;; puz14 is the (1+BRT)^(?max-expansion-phases -13) of some puzzle in MEU
       ;;; ?puz13a is one of its 1-expands
       (printout t ?puz13a " " (compute-nb-clues ?puz13a) "c +p" (- ?max-expansion-phases 13) crlf)
       (printout t ?puz14 " " (compute-nb-clues ?puz14) "c +BRT -> --p" (- ?max-expansion-phases 14) "EU" crlf)
       (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
    )
    (if (= ?max-expansion-phases 14) then
        (bind ?pk14U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 14)) ".txt"))
        (bind ?list-pk14U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk14U-file ?*empty-puzzle* ?puz14))
        (bind ?puz14a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk14U ?puz14))
    )

    ;;; expansion-phase 15 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 15) then
        (bind ?pk15-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 15)) ".txt"))
        (bind ?list-pk15 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk15-EU-file ?puz14))
        (printout t (length$ ?list-pk15) " in list-pk15" crlf)
        ;;; at  this point, any puzzle in ?list-pk15 doesn't necessarily have a 1+BRT expansion in ?puz14
        ;;; choose the first one that has one:
        (bind ?list-pk15a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk15 ?puz14))
        (bind ?puz14a (nth$ 2 ?list-pk15a))
        (bind ?puz15 (nth$ 1 ?list-pk15a))
        ;;; puz15 is the (1+BRT)^(?max-expansion-phases -14) of some puzzle in MEU
        ;;; ?puz14a is one of its 1-expands
        (printout t ?puz14a " " (compute-nb-clues ?puz14a) "c +p" (- ?max-expansion-phases 14) crlf)
        (printout t ?puz15 " " (compute-nb-clues ?puz15) "c +BRT -> --p" (- ?max-expansion-phases 15) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
     )
     (if (= ?max-expansion-phases 15) then
         (bind ?pk15U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 15)) ".txt"))
         (bind ?list-pk15U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk15U-file ?*empty-puzzle* ?puz15))
         (bind ?puz15a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk15U ?puz15))
     )

     ;;; expansion-phase 16 below ?max-expansion-phases:
     (if (>= ?max-expansion-phases 16) then
         (bind ?pk16-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 16)) ".txt"))
         (bind ?list-pk16 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk16-EU-file ?puz15))
         (printout t (length$ ?list-pk16) " in list-pk16" crlf)
         ;;; at  this point, any puzzle in ?list-pk16 doesn't necessarily have a 1+BRT expansion in ?puz15
         ;;; choose the first one that has one:
         (bind ?list-pk16a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk16 ?puz15))
         (bind ?puz15a (nth$ 2 ?list-pk16a))
         (bind ?puz16 (nth$ 1 ?list-pk16a))
         ;;; puz16 is the (1+BRT)^(?max-expansion-phases -15) of some puzzle in MEU
         ;;; ?puz15a is one of its 1-expands
         (printout t ?puz15a " " (compute-nb-clues ?puz15a) "c +p" (- ?max-expansion-phases 15) crlf)
         (printout t ?puz16 " " (compute-nb-clues ?puz16) "c +BRT -> --p" (- ?max-expansion-phases 15) "EU" crlf)
         (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
     )
     (if (= ?max-expansion-phases 16) then
         (bind ?pk16U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 16)) ".txt"))
         (bind ?list-pk16U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk16U-file ?*empty-puzzle* ?puz16))
         (bind ?puz16a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk16U ?puz16))
     )

    ;;; expansion-phase 17 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 17) then
        (bind ?pk17-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 17)) ".txt"))
        (bind ?list-pk17 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk17-EU-file ?puz16))
        (printout t (length$ ?list-pk17) " in list-pk17" crlf)
        ;;; at  this point, any puzzle in ?list-pk17 doesn't necessarily have a 1+BRT expansion in ?puz16
        ;;; choose the first one that has one:
        (bind ?list-pk17a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk17 ?puz16))
        (bind ?puz16a (nth$ 2 ?list-pk17a))
        (bind ?puz17 (nth$ 1 ?list-pk17a))
        ;;; puz17 is the (1+BRT)^(?max-expansion-phases -16) of some puzzle in MEU
        ;;; ?puz16a is one of its 1-expands
        (printout t ?puz16a " " (compute-nb-clues ?puz16a) "c +p" (- ?max-expansion-phases 16) crlf)
        (printout t ?puz17 " " (compute-nb-clues ?puz17) "c +BRT -> --p" (- ?max-expansion-phases 16) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
     )
     (if (= ?max-expansion-phases 17) then
         (bind ?pk17U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 17)) ".txt"))
         (bind ?list-pk17U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk17U-file ?*empty-puzzle* ?puz17))
         (bind ?puz17a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk17U ?puz17))
     )

    ;;; expansion-phase 18 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 18) then
        (bind ?pk18-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 18)) ".txt"))
        (bind ?list-pk18 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk18-EU-file ?puz17))
        (printout t (length$ ?list-pk18) " in list-pk18" crlf)
        ;;; at  this point, any puzzle in ?list-pk18 doesn't necessarily have a 1+BRT expansion in ?puz17
        ;;; choose the first one that has one:
        (bind ?list-pk18a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk18 ?puz17))
        (bind ?puz17a (nth$ 2 ?list-pk18a))
        (bind ?puz18 (nth$ 1 ?list-pk18a))
        ;;; puz18 is the (1+BRT)^(?max-expansion-phases -17) of some puzzle in MEU
        ;;; ?puz17a is one of its 1-expands
        (printout t ?puz17a " " (compute-nb-clues ?puz17a) "c +p" (- ?max-expansion-phases 17) crlf)
        (printout t ?puz18 " " (compute-nb-clues ?puz18) "c +BRT -> --p" (- ?max-expansion-phases 17) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
     )
     (if (= ?max-expansion-phases 18) then
         (bind ?pk18U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 18)) ".txt"))
         (bind ?list-pk18U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk18U-file ?*empty-puzzle* ?puz18))
         (bind ?puz18a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk18U ?puz18))
     )

    ;;; expansion-phase 19 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 19) then
        (bind ?pk19-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 19)) ".txt"))
        (bind ?list-pk19 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk19-EU-file ?puz18))
        (printout t (length$ ?list-pk19) " in list-pk19" crlf)
        ;;; at  this point, any puzzle in ?list-pk19 doesn't necessarily have a 1+BRT expansion in ?puz18
        ;;; choose the first one that has one:
        (bind ?list-pk19a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk19 ?puz18))
        (bind ?puz18a (nth$ 2 ?list-pk19a))
        (bind ?puz19 (nth$ 1 ?list-pk19a))
        ;;; puz19 is the (1+BRT)^(?max-expansion-phases -18) of some puzzle in MEU
        ;;; ?puz18a is one of its 1-expands
        (printout t ?puz18a " " (compute-nb-clues ?puz18a) "c +p" (- ?max-expansion-phases 18) crlf)
        (printout t ?puz19 " " (compute-nb-clues ?puz19) "c +BRT -> --p" (- ?max-expansion-phases 18) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
     )
     (if (= ?max-expansion-phases 19) then
         (bind ?pk19U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 19)) ".txt"))
         (bind ?list-pk19U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk19U-file ?*empty-puzzle* ?puz19))
         (bind ?puz19a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk19U ?puz19))
    )

    ;;; expansion-phase 20 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 20) then
        (bind ?pk20-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 20)) ".txt"))
        (bind ?list-pk20 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk20-EU-file ?puz19))
        (printout t (length$ ?list-pk20) " in list-pk20" crlf)
        ;;; at  this point, any puzzle in ?list-pk20 doesn't necessarily have a 1+BRT expansion in ?puz19
        ;;; choose the first one that has one:
        (bind ?list-pk20a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk20 ?puz19))
        (bind ?puz19a (nth$ 2 ?list-pk20a))
        (bind ?puz20 (nth$ 1 ?list-pk20a))
        ;;; puz20 is the (1+BRT)^(?max-expansion-phases -19) of some puzzle in MEU
        ;;; ?puz19a is one of its 1-expands
        (printout t ?puz19a " " (compute-nb-clues ?puz19a) "c +p" (- ?max-expansion-phases 19) crlf)
        (printout t ?puz20 " " (compute-nb-clues ?puz20) "c +BRT -> --p" (- ?max-expansion-phases 19) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
     )
     (if (= ?max-expansion-phases 20) then
         (bind ?pk20U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 20)) ".txt"))
         (bind ?list-pk20U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk20U-file ?*empty-puzzle* ?puz20))
         (bind ?puz20a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk20U ?puz20))
    )

    ;;; expansion-phase 21 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 21) then
        (bind ?pk21-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 21)) ".txt"))
        (bind ?list-pk21 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk21-EU-file ?puz20))
        (printout t (length$ ?list-pk21) " in list-pk21" crlf)
        ;;; at  this point, any puzzle in ?list-pk21 doesn't necessarily have a 1+BRT expansion in ?puz20
        ;;; choose the first one that has one:
        (bind ?list-pk21a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk21 ?puz20))
        (bind ?puz20a (nth$ 2 ?list-pk21a))
        (bind ?puz21 (nth$ 1 ?list-pk21a))
        ;;; puz21 is the (1+BRT)^(?max-expansion-phases -20) of some puzzle in MEU
        ;;; ?puz20a is one of its 1-expands
        (printout t ?puz20a " " (compute-nb-clues ?puz20a) "c +p" (- ?max-expansion-phases 20) crlf)
        (printout t ?puz21 " " (compute-nb-clues ?puz21) "c +BRT -> --p" (- ?max-expansion-phases 20) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
     )
     (if (= ?max-expansion-phases 21) then
         (bind ?pk21U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 21)) ".txt"))
         (bind ?list-pk21U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk21U-file ?*empty-puzzle* ?puz21))
         (bind ?puz21a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk21U ?puz21))
    )

    ;;; expansion-phase 22 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 22) then
        (bind ?pk22-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 22)) ".txt"))
        (bind ?list-pk22 (puzzles-of-file-with-strict-expansion-in-puzzle ?pk22-EU-file ?puz21))
        (printout t (length$ ?list-pk22) " in list-pk22" crlf)
        ;;; at  this point, any puzzle in ?list-pk22 doesn't necessarily have a 1+BRT expansion in ?puz21
        ;;; choose the first one that has one:
        (bind ?list-pk22a (first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle ?list-pk22 ?puz21))
        (bind ?puz21a (nth$ 2 ?list-pk22a))
        (bind ?puz22 (nth$ 1 ?list-pk22a))
        ;;; puz22 is the (1+BRT)^(?max-expansion-phases -21) of some puzzle in MEU
        ;;; ?puz21a is one of its 1-expands
        (printout t ?puz21a " " (compute-nb-clues ?puz21a) "c +p" (- ?max-expansion-phases 21) crlf)
        (printout t ?puz22 " " (compute-nb-clues ?puz22) "c +BRT -> --p" (- ?max-expansion-phases 21) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
     )
     (if (= ?max-expansion-phases 22) then
         (bind ?pk22U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 22)) ".txt"))
         (bind ?list-pk22U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk22U-file ?*empty-puzzle* ?puz22))
         (bind ?puz22a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk22U ?puz22))
    )

    
    ;;; Final prints
    (printout t crlf "(1+BRT)-expansion path:" crlf)
    (printout t ?puzzle-in-pkEU-mex " " (compute-nb-clues ?puzzle-in-pkEU-mex) "c +BRT -> --p" ?max-expansion-phases "EU" crlf)
    (printout t ?puz0a " " (compute-nb-clues ?puz0a) "c +p" (- ?max-expansion-phases 0) crlf)
    (if (>= ?max-expansion-phases 1) then
        (printout t ?puz1 " " (compute-nb-clues ?puz1) "c +BRT -> --p" (- ?max-expansion-phases 1) "EU" crlf)
        (printout t ?puz1a " " (compute-nb-clues ?puz1a) "c +p" (- ?max-expansion-phases 1) crlf)
    )
    (if (>= ?max-expansion-phases 2) then
        (printout t ?puz2 " " (compute-nb-clues ?puz2) "c +BRT -> --p" (- ?max-expansion-phases 2) "EU" crlf)
        (printout t ?puz2a " " (compute-nb-clues ?puz2a) "c +p" (- ?max-expansion-phases 2) crlf)
    )
    (if (>= ?max-expansion-phases 3) then
        (printout t ?puz3 " " (compute-nb-clues ?puz3) "c +BRT -> --p" (- ?max-expansion-phases 3) "EU" crlf)
        (printout t ?puz3a " " (compute-nb-clues ?puz3a) "c +p" (- ?max-expansion-phases 3) crlf)
    )
    (if (>= ?max-expansion-phases 4) then
        (printout t ?puz4 " " (compute-nb-clues ?puz4) "c +BRT -> --p" (- ?max-expansion-phases 4) "EU" crlf)
        (printout t ?puz4a " " (compute-nb-clues ?puz4a) "c +p" (- ?max-expansion-phases 4) crlf)
    )
    (if (>= ?max-expansion-phases 5) then
        (printout t ?puz5 " " (compute-nb-clues ?puz5) "c +BRT -> --p" (- ?max-expansion-phases 5) "EU" crlf)
        (printout t ?puz5a " " (compute-nb-clues ?puz5a) "c +p" (- ?max-expansion-phases 5) crlf)
    )
    (if (>= ?max-expansion-phases 6) then
        (printout t ?puz6 " " (compute-nb-clues ?puz6) "c +BRT -> --p" (- ?max-expansion-phases 6) "EU" crlf)
        (printout t ?puz6a " " (compute-nb-clues ?puz6a) "c +p" (- ?max-expansion-phases 6) crlf)
    )
    (if (>= ?max-expansion-phases 7) then
        (printout t ?puz7 " " (compute-nb-clues ?puz7) "c +BRT -> --p" (- ?max-expansion-phases 7) "EU" crlf)
        (printout t ?puz7a " " (compute-nb-clues ?puz7a) "c +p" (- ?max-expansion-phases 7) crlf)
    )
    (if (>= ?max-expansion-phases 8) then
        (printout t ?puz8 " " (compute-nb-clues ?puz8) "c +BRT -> --p" (- ?max-expansion-phases 8) "EU" crlf)
        (printout t ?puz8a " " (compute-nb-clues ?puz8a) "c +p" (- ?max-expansion-phases 8) crlf)
    )
    (if (>= ?max-expansion-phases 9) then
        (printout t ?puz9 " " (compute-nb-clues ?puz9) "c +BRT -> --p" (- ?max-expansion-phases 9) "EU" crlf)
        (printout t ?puz9a " " (compute-nb-clues ?puz9a) "c +p" (- ?max-expansion-phases 9) crlf)
    )
    (if (>= ?max-expansion-phases 10) then
        (printout t ?puz10 " " (compute-nb-clues ?puz10) "c +BRT -> --p" (- ?max-expansion-phases 10) "EU" crlf)
        (printout t ?puz10a " " (compute-nb-clues ?puz10a) "c +p" (- ?max-expansion-phases 10) crlf)
    )
    (if (>= ?max-expansion-phases 11) then
        (printout t ?puz11 " " (compute-nb-clues ?puz11) "c +BRT -> --p" (- ?max-expansion-phases 11) "EU" crlf)
        (printout t ?puz11a " " (compute-nb-clues ?puz11a) "c +p" (- ?max-expansion-phases 11) crlf)
    )
    (if (>= ?max-expansion-phases 12) then
        (printout t ?puz12 " " (compute-nb-clues ?puz12) "c +BRT -> --p" (- ?max-expansion-phases 12) "EU" crlf)
        (printout t ?puz12a " " (compute-nb-clues ?puz12a) "c +p" (- ?max-expansion-phases 12) crlf)
    )
    (if (>= ?max-expansion-phases 13) then
        (printout t ?puz13 " " (compute-nb-clues ?puz13) "c +BRT -> --p" (- ?max-expansion-phases 13) "EU" crlf)
        (printout t ?puz13a " " (compute-nb-clues ?puz13a) "c +p" (- ?max-expansion-phases 13) crlf)
    )
    (if (>= ?max-expansion-phases 14) then
        (printout t ?puz14 " " (compute-nb-clues ?puz14) "c +BRT -> --p" (- ?max-expansion-phases 14) "EU" crlf)
        (printout t ?puz14a " " (compute-nb-clues ?puz14a) "c +p" (- ?max-expansion-phases 14) crlf)
    )
    (if (>= ?max-expansion-phases 15) then
        (printout t ?puz15 " " (compute-nb-clues ?puz15) "c +BRT -> --p" (- ?max-expansion-phases 15) "EU" crlf)
        (printout t ?puz15a " " (compute-nb-clues ?puz15a) "c +p" (- ?max-expansion-phases 15) crlf)
    )
    (if (>= ?max-expansion-phases 16) then
        (printout t ?puz16 " " (compute-nb-clues ?puz16) "c +BRT -> --p" (- ?max-expansion-phases 16) "EU" crlf)
        (printout t ?puz16a " " (compute-nb-clues ?puz16a) "c +p" (- ?max-expansion-phases 16) crlf)
    )
    (if (>= ?max-expansion-phases 17) then
        (printout t ?puz17 " " (compute-nb-clues ?puz17) "c +BRT -> --p" (- ?max-expansion-phases 17) "EU" crlf)
        (printout t ?puz17a " " (compute-nb-clues ?puz17a) "c +p" (- ?max-expansion-phases 17) crlf)
    )
    (if (>= ?max-expansion-phases 18) then
        (printout t ?puz18 " " (compute-nb-clues ?puz18) "c +BRT -> --p" (- ?max-expansion-phases 18) "EU" crlf)
        (printout t ?puz18a " " (compute-nb-clues ?puz18a) "c +p" (- ?max-expansion-phases 18) crlf)
    )
    (if (>= ?max-expansion-phases 19) then
        (printout t ?puz19 " " (compute-nb-clues ?puz19) "c +BRT -> --p" (- ?max-expansion-phases 19) "EU" crlf)
        (printout t ?puz19a " " (compute-nb-clues ?puz19a) "c +p" (- ?max-expansion-phases 19) crlf)
    )
    (if (>= ?max-expansion-phases 20) then
        (printout t ?puz20 " " (compute-nb-clues ?puz20) "c +BRT -> --p" (- ?max-expansion-phases 20) "EU" crlf)
        (printout t ?puz20a " " (compute-nb-clues ?puz20a) "c +p" (- ?max-expansion-phases 20) crlf)
    )
    (if (>= ?max-expansion-phases 21) then
        (printout t ?puz21 " " (compute-nb-clues ?puz21) "c +BRT -> --p" (- ?max-expansion-phases 21) "EU" crlf)
        (printout t ?puz21a " " (compute-nb-clues ?puz21a) "c +p" (- ?max-expansion-phases 21) crlf)
    )
    (if (>= ?max-expansion-phases 22) then
        (printout t ?puz22 " " (compute-nb-clues ?puz22) "c +BRT -> --p" (- ?max-expansion-phases 22) "EU" crlf)
        (printout t ?puz22a " " (compute-nb-clues ?puz22a) "c +p" (- ?max-expansion-phases 22) crlf)
    )
    (printout t "computation-time = " (seconds-to-hours (- (time) ?t0)) crlf)
)




;;; No longer used:
;;; longest path in TE1 to a puzzle in p<k>EU-mex
;;; ex "safe-extract", renamed "unsafe-extract"
(deffunction SGS-TE1-unsafe-extract-pkEU-expansion-path-from-some-minimal-to-a-puzzle-in-pkEU-for-Usol-i (?i ?max-expansion-phases ?puzzle-in-pkEU-mex)
    ;;; all the expansion steps up to pkmex are supposed to have been calculated (this is not checked)
    ;;; ?max-expansion-phases is cut out at 22
    (if (> ?max-expansion-phases 22) then (printout t "?max-expansion-phases has been limited to 22." crlf))
    (bind ?max-expansion-phases (min ?max-expansion-phases 22))
    
    (bind ?t0 (time))
    (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
    (bind ?list-pk0 (create$ ?puzzle-in-pkEU-mex))
    (bind ?puz1 ?*empty-puzzle*)

    ;;; 1) pk-EU and pk-EU-mex files to be considered
    ;;;    compute possibly relevant --pkEU puzzles
    ;;;    choose the 1st puzzle of each list.

    ;;; expansion-phase 1 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 1) then
        (bind ?pk1-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 1)) ".txt"))
        (bind ?list-pk1 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk0 ?pk1-EU-file))
        (printout t (length$ ?list-pk1) " in list-pk1" crlf)
        ;;; at  this point, any puzzle in ?list-pk1 has a 1+BRT expansion in ?puzzle-in-pkEU-mex
        ;;; and is the (1+BRT)^(?max-expansion-phases -1) of some puzzle in MEU
        (bind ?puz1 (nth$ 1 ?list-pk1))
        (bind ?list-pk1 (create$ ?puz1))
        (printout t ?puz1 " " (compute-nb-clues ?puz1) "c +BRT -> --p" (- ?max-expansion-phases 1) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz2 ?*empty-puzzle*)
    )
    
    ;;; expansion-phase 2 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 2) then
        (bind ?pk2-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 2)) ".txt"))
        (bind ?list-pk2 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk1 ?pk2-EU-file))
        (printout t (length$ ?list-pk2) " in list-pk2" crlf)
        ;;; at  this point, any puzzle in ?list-pk2 has a (1+BRT)^2 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz2 (nth$ 1 ?list-pk2))
        (bind ?list-pk2 (create$ ?puz2))
        (printout t ?puz2 " " (compute-nb-clues ?puz2) "c +BRT -> --p" (- ?max-expansion-phases 2) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz3 ?*empty-puzzle*)
    )

    ;;; expansion-phase 3 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 3) then
        (bind ?pk3-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 3)) ".txt"))
        (bind ?list-pk3 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk2 ?pk3-EU-file))
        (printout t (length$ ?list-pk3) " in list-pk3" crlf)
        ;;; at  this point, any puzzle in ?list-pk3 has a (1+BRT)^3 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz3 (nth$ 1 ?list-pk3))
        (bind ?list-pk3 (create$ ?puz3))
        (printout t ?puz3 " " (compute-nb-clues ?puz3) "c +BRT -> --p" (- ?max-expansion-phases 3) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz4 ?*empty-puzzle*)
    )

    ;;; expansion-phase 4 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 4) then
        (bind ?pk4-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 4)) ".txt"))
        (bind ?list-pk4 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk3 ?pk4-EU-file))
        (printout t (length$ ?list-pk4) " in list-pk4" crlf)
        ;;; at  this point, any puzzle in ?list-pk4 has a (1+BRT)^4 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz4 (nth$ 1 ?list-pk4))
        (bind ?list-pk4 (create$ ?puz4))
        (printout t ?puz4 " " (compute-nb-clues ?puz4) "c +BRT -> --p" (- ?max-expansion-phases 4) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz5 ?*empty-puzzle*)
    )

    ;;; expansion-phase 5 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 5) then
        (bind ?pk5-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 5)) ".txt"))
        (bind ?list-pk5 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk4 ?pk5-EU-file))
        (printout t (length$ ?list-pk5) " in list-pk5" crlf)
        ;;; at  this point, any puzzle in ?list-pk5 has a (1+BRT)^5 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz5 (nth$ 1 ?list-pk5))
        (bind ?list-pk5 (create$ ?puz5))
        (printout t ?puz5 " " (compute-nb-clues ?puz5) "c +BRT -> --p" (- ?max-expansion-phases 5) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz6 ?*empty-puzzle*)
    )

    ;;; expansion-phase 6 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 6) then
        (bind ?pk6-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 6)) ".txt"))
        (bind ?list-pk6 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk5 ?pk6-EU-file))
        (printout t (length$ ?list-pk6) " in list-pk6" crlf)
        ;;; at  this point, any puzzle in ?list-pk6 has a (1+BRT)^6 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz6 (nth$ 1 ?list-pk6))
        (bind ?list-pk6 (create$ ?puz6))
        (printout t ?puz6 " " (compute-nb-clues ?puz6) "c +BRT -> --p" (- ?max-expansion-phases 6) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz7 ?*empty-puzzle*)
    )

    ;;; expansion-phase 7 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 7) then
        (bind ?pk7-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 7)) ".txt"))
        (bind ?list-pk7 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk6 ?pk7-EU-file))
        (printout t (length$ ?list-pk7) " in list-pk7" crlf)
        ;;; at  this point, any puzzle in ?list-pk7 has a (1+BRT)^7 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz7 (nth$ 1 ?list-pk7))
        (bind ?list-pk7 (create$ ?puz7))
        (printout t ?puz7 " " (compute-nb-clues ?puz7) "c +BRT -> --p" (- ?max-expansion-phases 7) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz8 ?*empty-puzzle*)
   )
    
    ;;; expansion-phase 8 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 8) then
        (bind ?pk8-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 8)) ".txt"))
        (bind ?list-pk8 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk7 ?pk8-EU-file))
        (printout t (length$ ?list-pk8) " in list-pk8" crlf)
        ;;; at  this point, any puzzle in ?list-pk8 has a (1+BRT)^8 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz8 (nth$ 1 ?list-pk8))
        (bind ?list-pk8 (create$ ?puz8))
        (printout t ?puz8 " " (compute-nb-clues ?puz8) "c +BRT -> --p" (- ?max-expansion-phases 8) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz9 ?*empty-puzzle*)
    )
    
    ;;; expansion-phase 9 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 9) then
        (bind ?pk9-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 9)) ".txt"))
        (bind ?list-pk9 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk8 ?pk9-EU-file))
        (printout t (length$ ?list-pk9) " in list-pk9" crlf)
        ;;; at  this point, any puzzle in ?list-pk9 has a (1+BRT)^9 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz9 (nth$ 1 ?list-pk9))
        (bind ?list-pk9 (create$ ?puz9))
        (printout t ?puz9 " " (compute-nb-clues ?puz9) "c +BRT -> --p" (- ?max-expansion-phases 9) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz10 ?*empty-puzzle*)
   )

    ;;; expansion-phase 10 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 10) then
        (bind ?pk10-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 10)) ".txt"))
        (bind ?list-pk10 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk9 ?pk10-EU-file))
        (printout t (length$ ?list-pk10) " in list-pk10" crlf)
        ;;; at this point, any puzzle in ?list-pk10 has a (1+BRT)^10 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz10 (nth$ 1 ?list-pk10))
        (bind ?list-pk10 (create$ ?puz10))
        (printout t ?puz10 " " (compute-nb-clues ?puz10) "c +BRT -> --p" (- ?max-expansion-phases 10) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz11 ?*empty-puzzle*)
    )

    ;;; expansion-phase 11 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 11) then
        (bind ?pk11-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 11)) ".txt"))
        (bind ?list-pk11 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk10 ?pk11-EU-file))
        (printout t (length$ ?list-pk11) " in list-pk11" crlf)
        ;;; at this point, any puzzle in ?list-pk11 has a (1+BRT)^11 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz11 (nth$ 1 ?list-pk11))
        (bind ?list-pk11 (create$ ?puz11))
        (printout t ?puz11 " " (compute-nb-clues ?puz11) "c +BRT -> --p" (- ?max-expansion-phases 11) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz12 ?*empty-puzzle*)
    )

    ;;; expansion-phase 12 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 12) then
        (bind ?pk12-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 12)) ".txt"))
        (bind ?list-pk12 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk11 ?pk12-EU-file))
        (printout t (length$ ?list-pk12) " in list-pk12" crlf)
        ;;; at this point, any puzzle in ?list-pk12 has a (1+BRT)^12 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz12 (nth$ 1 ?list-pk12))
        (bind ?list-pk12 (create$ ?puz12))
        (printout t ?puz12 " " (compute-nb-clues ?puz12) "c +BRT -> --p" (- ?max-expansion-phases 12) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz13 ?*empty-puzzle*)
    )

    ;;; expansion-phase 13 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 13) then
        (bind ?pk13-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 13)) ".txt"))
        (bind ?list-pk13 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk12 ?pk13-EU-file))
        (printout t (length$ ?list-pk13) " in list-pk13" crlf)
        ;;; at this point, any puzzle in ?list-pk13 has a (1+BRT)^13 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz13 (nth$ 1 ?list-pk13))
        (bind ?list-pk13 (create$ ?puz13))
        (printout t ?puz13 " " (compute-nb-clues ?puz13) "c +BRT -> --p" (- ?max-expansion-phases 13) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz14 ?*empty-puzzle*)
    )

    ;;; expansion-phase 14 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 14) then
        (bind ?pk14-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 14)) ".txt"))
        (bind ?list-pk14 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk13 ?pk14-EU-file))
        (printout t (length$ ?list-pk14) " in list-pk14" crlf)
        ;;; at this point, any puzzle in ?list-pk14 has a (1+BRT)^14 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz14 (nth$ 1 ?list-pk14))
        (bind ?list-pk14 (create$ ?puz14))
        (printout t ?puz14 " " (compute-nb-clues ?puz14) "c +BRT -> --p" (- ?max-expansion-phases 14) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz15 ?*empty-puzzle*)
    )

    ;;; expansion-phase 15 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 15) then
        (bind ?pk15-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 15)) ".txt"))
        (bind ?list-pk15 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk14 ?pk15-EU-file))
        (printout t (length$ ?list-pk15) " in list-pk15" crlf)
        ;;; at this point, any puzzle in ?list-pk15 has a (1+BRT)^15 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz15 (nth$ 1 ?list-pk15))
        (bind ?list-pk15 (create$ ?puz15))
        (printout t ?puz15 " " (compute-nb-clues ?puz15) "c +BRT -> --p" (- ?max-expansion-phases 15) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz16 ?*empty-puzzle*)
    )

    ;;; expansion-phase 16 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 16) then
        (bind ?pk16-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 16)) ".txt"))
        (bind ?list-pk16 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk15 ?pk16-EU-file))
        (printout t (length$ ?list-pk16) " in list-pk16" crlf)
        ;;; at this point, any puzzle in ?list-pk16 has a (1+BRT)^16 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz16 (nth$ 1 ?list-pk16))
        (bind ?list-pk16 (create$ ?puz16))
        (printout t ?puz16 " " (compute-nb-clues ?puz16) "c +BRT -> --p" (- ?max-expansion-phases 16) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz17 ?*empty-puzzle*)
    )

    ;;; expansion-phase 17 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 17) then
        (bind ?pk17-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 17)) ".txt"))
        (bind ?list-pk17 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk16 ?pk17-EU-file))
        (printout t (length$ ?list-pk17) " in list-pk17" crlf)
        ;;; at this point, any puzzle in ?list-pk17 has a (1+BRT)^17 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz17 (nth$ 1 ?list-pk17))
        (bind ?list-pk17 (create$ ?puz17))
        (printout t ?puz17 " " (compute-nb-clues ?puz17) "c +BRT -> --p" (- ?max-expansion-phases 17) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz18 ?*empty-puzzle*)
    )

    ;;; expansion-phase 18 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 18) then
        (bind ?pk18-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 18)) ".txt"))
        (bind ?list-pk18 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk17 ?pk18-EU-file))
        (printout t (length$ ?list-pk18) " in list-pk18" crlf)
        ;;; at this point, any puzzle in ?list-pk18 has a (1+BRT)^18 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz18 (nth$ 1 ?list-pk18))
        (bind ?list-pk18 (create$ ?puz18))
        (printout t ?puz18 " " (compute-nb-clues ?puz18) "c +BRT -> --p" (- ?max-expansion-phases 18) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz19 ?*empty-puzzle*)
    )

    ;;; expansion-phase 19 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 19) then
        (bind ?pk19-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 19)) ".txt"))
        (bind ?list-pk19 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk18 ?pk19-EU-file))
        (printout t (length$ ?list-pk19) " in list-pk19" crlf)
        ;;; at this point, any puzzle in ?list-pk19 has a (1+BRT)^19 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz19 (nth$ 1 ?list-pk19))
        (bind ?list-pk19 (create$ ?puz19))
        (printout t ?puz19 " " (compute-nb-clues ?puz19) "c +BRT -> --p" (- ?max-expansion-phases 19) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz20 ?*empty-puzzle*)
    )

    ;;; expansion-phase 20 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 20) then
        (bind ?pk20-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 20)) ".txt"))
        (bind ?list-pk20 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk19 ?pk20-EU-file))
        (printout t (length$ ?list-pk20) " in list-pk20" crlf)
        ;;; at this point, any puzzle in ?list-pk20 has a (1+BRT)^20 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz20 (nth$ 1 ?list-pk20))
        (bind ?list-pk20 (create$ ?puz20))
        (printout t ?puz20 " " (compute-nb-clues ?puz20) "c +BRT -> --p" (- ?max-expansion-phases 20) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz21 ?*empty-puzzle*)
    )

    ;;; expansion-phase 21 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 21) then
        (bind ?pk21-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 21)) ".txt"))
        (bind ?list-pk21 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk20 ?pk21-EU-file))
        (printout t (length$ ?list-pk21) " in list-pk21" crlf)
        ;;; at this point, any puzzle in ?list-pk240 has a (1+BRT)^21 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz21 (nth$ 1 ?list-pk21))
        (bind ?list-pk21 (create$ ?puz21))
        (printout t ?puz21 " " (compute-nb-clues ?puz21) "c +BRT -> --p" (- ?max-expansion-phases 21) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz22 ?*empty-puzzle*)
    )

    ;;; expansion-phase 22 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 22) then
        (bind ?pk22-EU-file (str-cat ?USOL-i-DIR (TE1-phase-k-self-expand-type-at-d1 (- ?max-expansion-phases 22)) ".txt"))
        (bind ?list-pk22 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk21 ?pk22-EU-file))
        (printout t (length$ ?list-pk22) " in list-pk22" crlf)
        ;;; at this point, any puzzle in ?list-pk22 has a (1+BRT)^22 expansion path upto ?puzzle-in-pkEU-mex
        (bind ?puz22 (nth$ 1 ?list-pk22))
        (bind ?list-pk22 (create$ ?puz22))
        (printout t ?puz22 " " (compute-nb-clues ?puz22) "c +BRT -> --p" (- ?max-expansion-phases 22) "EU" crlf)
        (printout t "time = " (seconds-to-hours (- (time) ?t0)) crlf)
        (bind ?puz23 ?*empty-puzzle*)
    )


    ;;; Now find the intermediate 1-expands
    ;;; pk-U files to be considered
    ;;; expansion-phase ?max-expansion-phases:
    (bind ?pk0U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 ?max-expansion-phases) ".txt"))
    (bind ?list-pk0U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk0U-file ?puz1 ?puzzle-in-pkEU-mex))
    (printout t (length$ ?list-pk0U) " pk0U" crlf)
    (bind ?puz0a (nth$ 1 ?list-pk0U))

    ;;; expansion-phase 1 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 1) then
        (bind ?pk1U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 1)) ".txt"))
        (bind ?list-pk1U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk1U-file ?puz2 ?puz1))
        (printout t (length$ ?list-pk1U) " pk1U" crlf)
        (bind ?puz1a (nth$ 1 ?list-pk1U))
    )
    
    ;;; expansion-phase 2 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 2) then
        (bind ?pk2U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 2)) ".txt"))
        (bind ?list-pk2U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk2U-file ?puz3 ?puz2))
        (printout t (length$ ?list-pk2U) " pk2U" crlf)
        (bind ?puz2a (nth$ 1 ?list-pk2U))
    )
    
    ;;; expansion-phase 3 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 3) then
        (bind ?pk3U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 3)) ".txt"))
        (bind ?list-pk3U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk3U-file ?puz4 ?puz3))
        (printout t (length$ ?list-pk3U) " pk3U" crlf)
        (bind ?puz3a (nth$ 1 ?list-pk3U))
    )
    
    ;;; expansion-phase 4 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 4) then
        (bind ?pk4U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 4)) ".txt"))
        (bind ?list-pk4U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk4U-file ?puz5 ?puz4))
        (printout t (length$ ?list-pk4U) " pk4U" crlf)
        (bind ?puz4a (nth$ 1 ?list-pk4U))
    )
    
    ;;; expansion-phase 5 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 5) then
        (bind ?pk5U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 5)) ".txt"))
        (bind ?list-pk5U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk5U-file ?puz6 ?puz5))
        (printout t (length$ ?list-pk5U) " pk5U" crlf)
        (bind ?puz5a (nth$ 1 ?list-pk5U))
    )
    
    ;;; expansion-phase 6 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 6) then
        (bind ?pk6U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 6)) ".txt"))
        (bind ?list-pk6U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk6U-file ?puz7 ?puz6))
        (printout t (length$ ?list-pk6U) " pk6U" crlf)
        (bind ?puz6a (nth$ 1 ?list-pk6U))
    )
    
    ;;; expansion-phase 7 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 7) then
        (bind ?pk7U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 7)) ".txt"))
        (bind ?list-pk7U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk7U-file ?puz8 ?puz7))
        (printout t (length$ ?list-pk7U) " pk7U" crlf)
        (bind ?puz7a (nth$ 1 ?list-pk7U))
    )
    
    ;;; expansion-phase 8 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 8) then
        (bind ?pk8U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 8)) ".txt"))
        (bind ?list-pk8U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk8U-file ?puz9 ?puz8))
        (printout t (length$ ?list-pk8U) " pk8U" crlf)
        (bind ?puz8a (nth$ 1 ?list-pk8U))
    )
    
    ;;; expansion-phase 9 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 9) then
        (bind ?pk9U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 9)) ".txt"))
        (bind ?list-pk9U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk9U-file ?puz10 ?puz9))
        (printout t (length$ ?list-pk9U) " pk9U" crlf)
        (bind ?puz9a (nth$ 1 ?list-pk9U))
    )
    
    ;;; expansion-phase 10 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 10) then
        (bind ?pk10U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 10)) ".txt"))
        (bind ?list-pk10U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk10U-file ?puz11 ?puz10))
        (printout t (length$ ?list-pk10U) " pk10U" crlf)
        (bind ?puz10a (nth$ 1 ?list-pk10U))
    )
    
    ;;; expansion-phase 11 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 11) then
        (bind ?pk11U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 11)) ".txt"))
        (bind ?list-pk11U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk11U-file ?puz12 ?puz11))
        (printout t (length$ ?list-pk11U) " pk11U" crlf)
        (bind ?puz11a (nth$ 1 ?list-pk11U))
    )
    
    ;;; expansion-phase 12 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 12) then
        (bind ?pk12U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 12)) ".txt"))
        (bind ?list-pk12U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk12U-file ?puz13 ?puz12))
        (printout t (length$ ?list-pk12U) " pk12U" crlf)
        (bind ?puz12a (nth$ 1 ?list-pk12U))
    )
    
    ;;; expansion-phase 13 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 13) then
        (bind ?pk13U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 13)) ".txt"))
        (bind ?list-pk13U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk13U-file ?puz14 ?puz13))
        (printout t (length$ ?list-pk13U) " pk13U" crlf)
        (bind ?puz13a (nth$ 1 ?list-pk13U))
    )
    
    ;;; expansion-phase 14 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 14) then
        (bind ?pk14U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 14)) ".txt"))
        (bind ?list-pk14U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk14U-file ?puz15 ?puz14))
        (printout t (length$ ?list-pk14U) " pk14U" crlf)
        (bind ?puz14a (nth$ 1 ?list-pk14U))
    )
    
    ;;; expansion-phase 15 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 15) then
        (bind ?pk15U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 15)) ".txt"))
        (bind ?list-pk15U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk15U-file ?puz16 ?puz15))
        (printout t (length$ ?list-pk15U) " pk15U" crlf)
        (bind ?puz15a (nth$ 1 ?list-pk15U))
    )
    
    ;;; expansion-phase 16 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 16) then
        (bind ?pk16U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 16)) ".txt"))
        (bind ?list-pk16U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk16U-file ?puz17 ?puz16))
        (printout t (length$ ?list-pk16U) " pk16U" crlf)
        (bind ?puz16a (nth$ 1 ?list-pk16U))
    )
    
    ;;; expansion-phase 17 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 17) then
        (bind ?pk17U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 17)) ".txt"))
        (bind ?list-pk17U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk17U-file ?puz18 ?puz17))
        (printout t (length$ ?list-pk17U) " pk17U" crlf)
        (bind ?puz17a (nth$ 1 ?list-pk17U))
    )
    
    ;;; expansion-phase 18 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 18) then
        (bind ?pk18U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 18)) ".txt"))
        (bind ?list-pk18U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk18U-file ?puz19 ?puz18))
        (printout t (length$ ?list-pk18U) " pk18U" crlf)
        (bind ?puz18a (nth$ 1 ?list-pk18U))
    )
    
    ;;; expansion-phase 19 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 19) then
        (bind ?pk19U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 19)) ".txt"))
        (bind ?list-pk19U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk19U-file ?puz20 ?puz19))
        (printout t (length$ ?list-pk19U) " pk19U" crlf)
        (bind ?puz19a (nth$ 1 ?list-pk19U))
    )
    
    ;;; expansion-phase 20 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 20) then
        (bind ?pk20U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 20)) ".txt"))
        (bind ?list-pk20U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk20U-file ?puz21 ?puz20))
        (printout t (length$ ?list-pk20U) " pk20U" crlf)
        (bind ?puz20a (nth$ 1 ?list-pk20U))
    )
    
    ;;; expansion-phase 21 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 21) then
        (bind ?pk21U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 21)) ".txt"))
        (bind ?list-pk21U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk21U-file ?puz22 ?puz21))
        (printout t (length$ ?list-pk21U) " pk21U" crlf)
        (bind ?puz21a (nth$ 1 ?list-pk21U))
    )
    
    ;;; expansion-phase 22 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 22) then
        (bind ?pk22U-file (str-cat ?USOL-i-DIR (TE1-phase-k-pkU-d1-expansion-type-at-d1 (- ?max-expansion-phases 22)) ".txt"))
        (bind ?list-pk22U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk22U-file ?puz23 ?puz22))
        (printout t (length$ ?list-pk22U) " pk22U" crlf)
        (bind ?puz22a (nth$ 1 ?list-pk22U))
    )

    
    ;;; Final prints
    (printout t crlf "(1+BRT)-expansion path:" crlf)
    (printout t ?puzzle-in-pkEU-mex " " (compute-nb-clues ?puzzle-in-pkEU-mex) "c +BRT -> --p" ?max-expansion-phases "EU" crlf)
    (printout t ?puz0a " " (compute-nb-clues ?puz0a) "c +p" (- ?max-expansion-phases 0) crlf)
    (if (>= ?max-expansion-phases 1) then
        (printout t ?puz1 " " (compute-nb-clues ?puz1) "c +BRT -> --p" (- ?max-expansion-phases 1) "EU" crlf)
        (printout t ?puz1a " " (compute-nb-clues ?puz1a) "c +p" (- ?max-expansion-phases 1) crlf)
    )
    (if (>= ?max-expansion-phases 2) then
        (printout t ?puz2 " " (compute-nb-clues ?puz2) "c +BRT -> --p" (- ?max-expansion-phases 2) "EU" crlf)
        (printout t ?puz2a " " (compute-nb-clues ?puz2a) "c +p" (- ?max-expansion-phases 2) crlf)
    )
    (if (>= ?max-expansion-phases 3) then
        (printout t ?puz3 " " (compute-nb-clues ?puz3) "c +BRT -> --p" (- ?max-expansion-phases 3) "EU" crlf)
        (printout t ?puz3a " " (compute-nb-clues ?puz3a) "c +p" (- ?max-expansion-phases 3) crlf)
    )
    (if (>= ?max-expansion-phases 4) then
        (printout t ?puz4 " " (compute-nb-clues ?puz4) "c +BRT -> --p" (- ?max-expansion-phases 4) "EU" crlf)
        (printout t ?puz4a " " (compute-nb-clues ?puz4a) "c +p" (- ?max-expansion-phases 4) crlf)
    )
    (if (>= ?max-expansion-phases 5) then
        (printout t ?puz5 " " (compute-nb-clues ?puz5) "c +BRT -> --p" (- ?max-expansion-phases 5) "EU" crlf)
        (printout t ?puz5a " " (compute-nb-clues ?puz5a) "c +p" (- ?max-expansion-phases 5) crlf)
    )
    (if (>= ?max-expansion-phases 6) then
        (printout t ?puz6 " " (compute-nb-clues ?puz6) "c +BRT -> --p" (- ?max-expansion-phases 6) "EU" crlf)
        (printout t ?puz6a " " (compute-nb-clues ?puz6a) "c +p" (- ?max-expansion-phases 6) crlf)
    )
    (if (>= ?max-expansion-phases 7) then
        (printout t ?puz7 " " (compute-nb-clues ?puz7) "c +BRT -> --p" (- ?max-expansion-phases 7) "EU" crlf)
        (printout t ?puz7a " " (compute-nb-clues ?puz7a) "c +p" (- ?max-expansion-phases 7) crlf)
    )
    (if (>= ?max-expansion-phases 8) then
        (printout t ?puz8 " " (compute-nb-clues ?puz8) "c +BRT -> --p" (- ?max-expansion-phases 8) "EU" crlf)
        (printout t ?puz8a " " (compute-nb-clues ?puz8a) "c +p" (- ?max-expansion-phases 8) crlf)
    )
    (if (>= ?max-expansion-phases 9) then
        (printout t ?puz9 " " (compute-nb-clues ?puz9) "c +BRT -> --p" (- ?max-expansion-phases 9) "EU" crlf)
        (printout t ?puz9a " " (compute-nb-clues ?puz9a) "c +p" (- ?max-expansion-phases 9) crlf)
    )
    (if (>= ?max-expansion-phases 10) then
        (printout t ?puz10 " " (compute-nb-clues ?puz10) "c +BRT -> --p" (- ?max-expansion-phases 10) "EU" crlf)
        (printout t ?puz10a " " (compute-nb-clues ?puz10a) "c +p" (- ?max-expansion-phases 10) crlf)
    )
    (if (>= ?max-expansion-phases 11) then
        (printout t ?puz11 " " (compute-nb-clues ?puz11) "c +BRT -> --p" (- ?max-expansion-phases 11) "EU" crlf)
        (printout t ?puz11a " " (compute-nb-clues ?puz11a) "c +p" (- ?max-expansion-phases 11) crlf)
    )
    (if (>= ?max-expansion-phases 12) then
        (printout t ?puz12 " " (compute-nb-clues ?puz12) "c +BRT -> --p" (- ?max-expansion-phases 12) "EU" crlf)
        (printout t ?puz12a " " (compute-nb-clues ?puz12a) "c +p" (- ?max-expansion-phases 12) crlf)
    )
    (if (>= ?max-expansion-phases 13) then
        (printout t ?puz13 " " (compute-nb-clues ?puz13) "c +BRT -> --p" (- ?max-expansion-phases 13) "EU" crlf)
        (printout t ?puz13a " " (compute-nb-clues ?puz13a) "c +p" (- ?max-expansion-phases 13) crlf)
    )
    (if (>= ?max-expansion-phases 14) then
        (printout t ?puz14 " " (compute-nb-clues ?puz14) "c +BRT -> --p" (- ?max-expansion-phases 14) "EU" crlf)
        (printout t ?puz14a " " (compute-nb-clues ?puz14a) "c +p" (- ?max-expansion-phases 14) crlf)
    )
    (if (>= ?max-expansion-phases 15) then
        (printout t ?puz15 " " (compute-nb-clues ?puz15) "c +BRT -> --p" (- ?max-expansion-phases 15) "EU" crlf)
        (printout t ?puz15a " " (compute-nb-clues ?puz15a) "c +p" (- ?max-expansion-phases 15) crlf)
    )
    (if (>= ?max-expansion-phases 16) then
        (printout t ?puz16 " " (compute-nb-clues ?puz16) "c +BRT -> --p" (- ?max-expansion-phases 16) "EU" crlf)
        (printout t ?puz16a " " (compute-nb-clues ?puz16a) "c +p" (- ?max-expansion-phases 16) crlf)
    )
    (if (>= ?max-expansion-phases 17) then
        (printout t ?puz17 " " (compute-nb-clues ?puz17) "c +BRT -> --p" (- ?max-expansion-phases 17) "EU" crlf)
        (printout t ?puz17a " " (compute-nb-clues ?puz17a) "c +p" (- ?max-expansion-phases 17) crlf)
    )
    (if (>= ?max-expansion-phases 18) then
        (printout t ?puz18 " " (compute-nb-clues ?puz18) "c +BRT -> --p" (- ?max-expansion-phases 18) "EU" crlf)
        (printout t ?puz18a " " (compute-nb-clues ?puz18a) "c +p" (- ?max-expansion-phases 18) crlf)
    )
    (if (>= ?max-expansion-phases 19) then
        (printout t ?puz19 " " (compute-nb-clues ?puz19) "c +BRT -> --p" (- ?max-expansion-phases 19) "EU" crlf)
        (printout t ?puz19a " " (compute-nb-clues ?puz19a) "c +p" (- ?max-expansion-phases 19) crlf)
    )
    (if (>= ?max-expansion-phases 20) then
        (printout t ?puz20 " " (compute-nb-clues ?puz20) "c +BRT -> --p" (- ?max-expansion-phases 20) "EU" crlf)
        (printout t ?puz20a " " (compute-nb-clues ?puz20a) "c +p" (- ?max-expansion-phases 20) crlf)
    )
    (if (>= ?max-expansion-phases 21) then
        (printout t ?puz21 " " (compute-nb-clues ?puz21) "c +BRT -> --p" (- ?max-expansion-phases 21) "EU" crlf)
        (printout t ?puz21a " " (compute-nb-clues ?puz21a) "c +p" (- ?max-expansion-phases 21) crlf)
    )
    (if (>= ?max-expansion-phases 22) then
        (printout t ?puz22 " " (compute-nb-clues ?puz22) "c +BRT -> --p" (- ?max-expansion-phases 22) "EU" crlf)
        (printout t ?puz22a " " (compute-nb-clues ?puz22a) "c +p" (- ?max-expansion-phases 22) crlf)
    )
    (printout t "computation-time = " (seconds-to-hours (- (time) ?t0)) crlf)
)



