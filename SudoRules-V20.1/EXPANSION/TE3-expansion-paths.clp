
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE3 EXPANSION PATHS
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

(deffunction SGS-TE3-extract-pkEU-expansion-path-from-some-minimal-to-a-puzzle-in-pkEU-for-Usol-i (?i ?max-expansion-phases ?puzzle-in-pkEU-mex)
    ;;; all the expansion steps up to pkmex are supposed to have been calculated (this is not checked)
    ;;; ?max-expansion-phases is cut out at 12
    (if (> ?max-expansion-phases 12) then (printout t "?max-expansion-phases has been limited to 12." crlf))
    (bind ?max-expansion-phases (min ?max-expansion-phases 12))
    
    (bind ?t0 (time))
    (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))

    (printout t ?puzzle-in-pkEU-mex " " (compute-nb-clues ?puzzle-in-pkEU-mex) "c +BRT -> --p" ?max-expansion-phases "EU" crlf)
    ;;; 1) pk-EU files to be considered
    ;;;    compute possibly relevant --pkEU puzzles
    ;;;    choose the 1st relevant pair of puzzles of each list.

    ;;; expansion-phase 1 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 1) then
        (bind ?pk1-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 1)) ".txt"))
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
        (bind ?pk1U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 1)) ".txt"))
        (bind ?list-pk1U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk1U-file ?*empty-puzzle* ?puz1))
        (bind ?puz1a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk1U ?puz1))
    )

    ;;; expansion-phase 2 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 2) then
        (bind ?pk2-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 2)) ".txt"))
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
        (bind ?pk2U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 2)) ".txt"))
        (bind ?list-pk2U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk2U-file ?*empty-puzzle* ?puz2))
        (bind ?puz2a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk2U ?puz2))
    )

    ;;; expansion-phase 3 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 3) then
        (bind ?pk3-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 3)) ".txt"))
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
        (bind ?pk3U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 3)) ".txt"))
        (bind ?list-pk3U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk3U-file ?*empty-puzzle* ?puz3))
        (bind ?puz3a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk3U ?puz3))
    )

    ;;; expansion-phase 4 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 4) then
        (bind ?pk4-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 4)) ".txt"))
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
        (bind ?pk4U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 4)) ".txt"))
        (bind ?list-pk4U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk4U-file ?*empty-puzzle* ?puz4))
        (bind ?puz4a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk4U ?puz4))
    )

    ;;; expansion-phase 5 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 5) then
        (bind ?pk5-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 5)) ".txt"))
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
        (bind ?pk5U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 5)) ".txt"))
        (bind ?list-pk5U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk5U-file ?*empty-puzzle* ?puz5))
        (bind ?puz5a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk5U ?puz5))
    )

    ;;; expansion-phase 6 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 6) then
        (bind ?pk6-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 6)) ".txt"))
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
        (bind ?pk6U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 6)) ".txt"))
        (bind ?list-pk6U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk6U-file ?*empty-puzzle* ?puz6))
        (bind ?puz6a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk6U ?puz6))
    )

    ;;; expansion-phase 7 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 7) then
        (bind ?pk7-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 7)) ".txt"))
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
        (bind ?pk7U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 7)) ".txt"))
        (bind ?list-pk7U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk7U-file ?*empty-puzzle* ?puz7))
        (bind ?puz7a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk7U ?puz7))
    )

    ;;; expansion-phase 8 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 8) then
        (bind ?pk8-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 8)) ".txt"))
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
        (bind ?pk8U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 8)) ".txt"))
        (bind ?list-pk8U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk8U-file ?*empty-puzzle* ?puz8))
        (bind ?puz8a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk8U ?puz8))
    )

    ;;; expansion-phase 9 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 9) then
        (bind ?pk9-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 9)) ".txt"))
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
        (bind ?pk9U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 9)) ".txt"))
        (bind ?list-pk9U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk9U-file ?*empty-puzzle* ?puz9))
        (bind ?puz9a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk9U ?puz9))
    )

    ;;; expansion-phase 10 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 10) then
        (bind ?pk10-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 10)) ".txt"))
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
        (bind ?pk10U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 10)) ".txt"))
        (bind ?list-pk10U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk10U-file ?*empty-puzzle* ?puz10))
        (bind ?puz10a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk10U ?puz10))
    )

    ;;; expansion-phase 11 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 11) then
        (bind ?pk11-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 11)) ".txt"))
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
        (bind ?pk11U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 11)) ".txt"))
        (bind ?list-pk11U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk11U-file ?*empty-puzzle* ?puz11))
        (bind ?puz11a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk11U ?puz11))
    )

    ;;; expansion-phase 12 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 12) then
        (bind ?pk12-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 12)) ".txt"))
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
        (bind ?pk12U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 12)) ".txt"))
        (bind ?list-pk12U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk12U-file ?*empty-puzzle* ?puz12))
        (bind ?puz12a (first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle ?list-pk12U ?puz12))
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
    (printout t "computation-time = " (seconds-to-hours (- (time) ?t0)) crlf)
)




;;; No longer used:
;;; longest path in TE3 to a puzzle in p<k>EU-mex
;;; ex "safe-extract", renamed "unsafe-extract"
(deffunction SGS-TE3-unsafe-extract-pkEU-expansion-path-from-some-minimal-to-a-puzzle-in-pkEU-for-Usol-i (?i ?max-expansion-phases ?puzzle-in-pkEU-mex)
    ;;; all the expansion steps to pkmex are supposed to have been calculated (this is not checked)
    ;;; ?max-expansion-phases is cut out at 12
    (if (> ?max-expansion-phases 12) then (printout t "?max-expansion-phases has been limited to 12." crlf))
    (bind ?max-expansion-phases (min ?max-expansion-phases 12))
    
    (bind ?t0 (time))
    (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
    (bind ?list-pk0 (create$ ?puzzle-in-pkEU-mex))
    (bind ?puz1 ?*empty-puzzle*)

    ;;; 1) pk-EU files to be considered
    ;;;    compute possibly relevant --pkEU puzzles
    ;;;    choose the 1st puzzle of each list.

    ;;; expansion-phase 1 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 1) then
        (bind ?pk1-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 1)) ".txt"))
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
        (bind ?pk2-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 2)) ".txt"))
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
        (bind ?pk3-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 3)) ".txt"))
        (bind ?list-pk3 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk2 ?pk3-EU-file) )
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
        (bind ?pk4-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 4)) ".txt"))
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
        (bind ?pk5-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 5)) ".txt"))
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
        (bind ?pk6-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 6)) ".txt"))
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
        (bind ?pk7-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 7)) ".txt"))
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
        (bind ?pk8-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 8)) ".txt"))
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
        (bind ?pk9-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 9)) ".txt"))
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
        (bind ?pk10-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 10)) ".txt"))
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
        (bind ?pk11-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 11)) ".txt"))
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
        (bind ?pk12-EU-file (str-cat ?USOL-i-DIR (TE3-phase-k-self-expand-type-at-d3 (- ?max-expansion-phases 12)) ".txt"))
         (bind ?list-pk12 (list-of-puzzles-with-strict-expansion-in-list--in-file ?list-pk11 ?pk12-EU-file))
         (printout t (length$ ?list-pk12) " in list-pk12" crlf)
         ;;; at this point, any puzzle in ?list-pk12 has a (1+BRT)^12 expansion path upto ?puzzle-in-pkEU-mex
         (bind ?puz12 (nth$ 1 ?list-pk12))
         (bind ?list-pk12 (create$ ?puz12))
         (printout t ?puz12 " " (compute-nb-clues ?puz12) "c +BRT -> --p" (- ?max-expansion-phases 12) "EU" crlf)
         (bind ?puz13 ?*empty-puzzle*)
    )


    ;;; Now find the intermediate 1-expands
    ;;; pk-U files to be considered
    ;;; expansion-phase ?max-expansion-phases:
    (bind ?pk0U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 ?max-expansion-phases) ".txt"))
    (bind ?list-pk0U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk0U-file ?puz1 ?puzzle-in-pkEU-mex))
    (printout t (length$ ?list-pk0U) " pk0U" crlf)
    (bind ?puz0a (nth$ 1 ?list-pk0U))

    ;;; expansion-phase 1 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 1) then
        (bind ?pk1U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 1)) ".txt"))
        (bind ?list-pk1U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk1U-file ?puz2 ?puz1))
        (printout t (length$ ?list-pk1U) " pk1U" crlf)
        (bind ?puz1a (nth$ 1 ?list-pk1U))
    )
    
    ;;; expansion-phase 2 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 2) then
        (bind ?pk2U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 2)) ".txt"))
        (bind ?list-pk2U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk2U-file ?puz3 ?puz2))
        (printout t (length$ ?list-pk2U) " pk2U" crlf)
        (bind ?puz2a (nth$ 1 ?list-pk2U))
    )
    
    ;;; expansion-phase 3 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 3) then
        (bind ?pk3U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 3)) ".txt"))
        (bind ?list-pk3U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk3U-file ?puz4 ?puz3))
        (printout t (length$ ?list-pk3U) " pk3U" crlf)
        (bind ?puz3a (nth$ 1 ?list-pk3U))
    )
    
    ;;; expansion-phase 4 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 4) then
        (bind ?pk4U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 4)) ".txt"))
        (bind ?list-pk4U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk4U-file ?puz5 ?puz4))
        (printout t (length$ ?list-pk4U) " pk4U" crlf)
        (bind ?puz4a (nth$ 1 ?list-pk4U))
    )
    
    ;;; expansion-phase 5 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 5) then
        (bind ?pk5U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 5)) ".txt"))
        (bind ?list-pk5U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk5U-file ?puz6 ?puz5))
        (printout t (length$ ?list-pk5U) " pk5U" crlf)
        (bind ?puz5a (nth$ 1 ?list-pk5U))
    )
    
    ;;; expansion-phase 6 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 6) then
        (bind ?pk6U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 6)) ".txt"))
        (bind ?list-pk6U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk6U-file ?puz7 ?puz6))
        (printout t (length$ ?list-pk6U) " pk6U" crlf)
        (bind ?puz6a (nth$ 1 ?list-pk6U))
    )
    
    ;;; expansion-phase 7 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 7) then
        (bind ?pk7U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 7)) ".txt"))
        (bind ?list-pk7U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk7U-file ?puz8 ?puz7))
        (printout t (length$ ?list-pk7U) " pk7U" crlf)
        (bind ?puz7a (nth$ 1 ?list-pk7U))
    )
    
    ;;; expansion-phase 8 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 8) then
        (bind ?pk8U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 8)) ".txt"))
        (bind ?list-pk8U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk8U-file ?puz9 ?puz8))
        (printout t (length$ ?list-pk8U) " pk8U" crlf)
        (bind ?puz8a (nth$ 1 ?list-pk8U))
    )
    
    ;;; expansion-phase 9 below ?max-expansion-phases:
    (if (>= ?max-expansion-phases 9) then
        (bind ?pk9U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 9)) ".txt"))
        (bind ?list-pk9U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk9U-file ?puz10 ?puz9))
        (printout t (length$ ?list-pk9U) " pk9U" crlf)
        (bind ?puz9a (nth$ 1 ?list-pk9U))
    )
    
    ;;; expansion-phase 10 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 10) then
        (bind ?pk10U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 10)) ".txt"))
        (bind ?list-pk10U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk10U-file ?puz11 ?puz10))
        (printout t (length$ ?list-pk10U) " pk10U" crlf)
        (bind ?puz10a (nth$ 1 ?list-pk10U))
    )
    
    ;;; expansion-phase 11 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 11) then
        (bind ?pk11U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 11)) ".txt"))
        (bind ?list-pk11U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk11U-file ?puz12 ?puz11))
        (printout t (length$ ?list-pk11U) " pk11U" crlf)
        (bind ?puz11a (nth$ 1 ?list-pk11U))
    )
    
    ;;; expansion-phase 12 below ?max-expansion-phases (= expansion-phase 0, "mins"):
    (if (>= ?max-expansion-phases 12) then
        (bind ?pk12U-file (str-cat ?USOL-i-DIR (TE3-phase-k-pkU-d3-expansion-type-at-d3 (- ?max-expansion-phases 12)) ".txt"))
        (bind ?list-pk12U (list-of-puzzles-of-file-between-strict-puz1-and-puz2 ?pk12U-file ?puz13 ?puz12))
        (printout t (length$ ?list-pk12U) " pk12U" crlf)
        (bind ?puz12a (nth$ 1 ?list-pk12U))
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
    (printout t "computation-time = " (seconds-to-hours (- (time) ?t0)) crlf)
)



