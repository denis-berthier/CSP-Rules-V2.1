
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE2 EXPANSION GLOBALS
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







;;; Note: all the T&E(2) scripts rely on the following standard naming for files
;;; 3 types for expansion phase 0; 6 types per expansion phase > 0; 63 types upto expansion phase 10

;;; Note: these names may seem complicated,
;;; but they are intended for compatibility with other successive expansions.
;;; The "--" in the names mean similar expansions in-between the two terms.

;;; Whichever the first value of TE2-phase-k-XXX-expansion-type-at-d2 is (0 or 1),
;;; (TE2-phase-k-XXX-expansion-type-at-d2 ?k) always refers to a type XXX at phase ?k



(defglobal ?*TE2-list-of-expansion-types-at-d2* = (create$
    ;;; expansion phase 0
    mins
    ME
    MEU
    ;;; expansion phase 1
    p1
    p1U
    p1U-TEd
    p1U-d2
    p1U-d2-E
    p1EU-d2
    ;;; expansion phase 2
    p1EU-d2-p2
    p1EU-d2-p2U
    p1EU-d2-p2U-TEd
    p1EU-d2-p2U-d2
    p1EU-d2-p2U-d2-E
    p1EU-d2--p2EU-d2
    ;;; expansion phase 3
    p1EU-d2--p2EU-d2-p3
    p1EU-d2--p2EU-d2-p3U
    p1EU-d2--p2EU-d2-p3U-TEd
    p1EU-d2--p2EU-d2-p3U-d2
    p1EU-d2--p2EU-d2-p3U-d2-E
    p1EU-d2--p3EU-d2
    ;;; expansion phase 4
    p1EU-d2--p3EU-d2-p4
    p1EU-d2--p3EU-d2-p4U
    p1EU-d2--p3EU-d2-p4U-TEd
    p1EU-d2--p3EU-d2-p4U-d2
    p1EU-d2--p3EU-d2-p4U-d2-E
    p1EU-d2--p4EU-d2
    ;;; expansion phase 5
    p1EU-d2--p4EU-d2-p5
    p1EU-d2--p4EU-d2-p5U
    p1EU-d2--p4EU-d2-p5U-TEd
    p1EU-d2--p4EU-d2-p5U-d2
    p1EU-d2--p4EU-d2-p5U-d2-E
    p1EU-d2--p5EU-d2
    ;;; expansion phase 6
    p1EU-d2--p5EU-d2-p6
    p1EU-d2--p5EU-d2-p6U
    p1EU-d2--p5EU-d2-p6U-TEd
    p1EU-d2--p5EU-d2-p6U-d2
    p1EU-d2--p5EU-d2-p6U-d2-E
    p1EU-d2--p6EU-d2
    ;;; expansion phase 7
    p1EU-d2--p6EU-d2-p7
    p1EU-d2--p6EU-d2-p7U
    p1EU-d2--p6EU-d2-p7U-TEd
    p1EU-d2--p6EU-d2-p7U-d2
    p1EU-d2--p6EU-d2-p7U-d2-E
    p1EU-d2--p7EU-d2
    ;;; expansion phase 8
    p1EU-d2--p7EU-d2-p8
    p1EU-d2--p7EU-d2-p8U
    p1EU-d2--p7EU-d2-p8U-TEd
    p1EU-d2--p7EU-d2-p8U-d2
    p1EU-d2--p7EU-d2-p8U-d2-E
    p1EU-d2--p8EU-d2
    ;;; expansion phase 9
    p1EU-d2--p8EU-d2-p9
    p1EU-d2--p8EU-d2-p9U
    p1EU-d2--p8EU-d2-p9U-TEd
    p1EU-d2--p8EU-d2-p9U-d2
    p1EU-d2--p8EU-d2-p9U-d2-E
    p1EU-d2--p9EU-d2
    ;;; expansion phase 10
    p1EU-d2--p9EU-d2-p10
    p1EU-d2--p9EU-d2-p10U
    p1EU-d2--p9EU-d2-p10U-TEd
    p1EU-d2--p9EU-d2-p10U-d2
    p1EU-d2--p9EU-d2-p10U-d2-E
    p1EU-d2--p10EU-d2
    ;;; expansion phase 11
    p1EU-d2--p10EU-d2-p11
    p1EU-d2--p10EU-d2-p11U
    p1EU-d2--p10EU-d2-p11U-TEd
    p1EU-d2--p10EU-d2-p11U-d2
    p1EU-d2--p10EU-d2-p11U-d2-E
    p1EU-d2--p11EU-d2
    ;;; expansion phase 12
    p1EU-d2--p11EU-d2-p12
    p1EU-d2--p11EU-d2-p12U
    p1EU-d2--p11EU-d2-p12U-TEd
    p1EU-d2--p11EU-d2-p12U-d2
    p1EU-d2--p11EU-d2-p12U-d2-E
    p1EU-d2--p12EU-d2
    ;;; expansion phase 13
    p1EU-d2--p12EU-d2-p13
    p1EU-d2--p12EU-d2-p13U
    p1EU-d2--p12EU-d2-p13U-TEd
    p1EU-d2--p12EU-d2-p13U-d2
    p1EU-d2--p12EU-d2-p13U-d2-E
    p1EU-d2--p13EU-d2
    ;;; expansion phase 14
    p1EU-d2--p13EU-d2-p14
    p1EU-d2--p13EU-d2-p14U
    p1EU-d2--p13EU-d2-p14U-TEd
    p1EU-d2--p13EU-d2-p14U-d2
    p1EU-d2--p13EU-d2-p14U-d2-E
    p1EU-d2--p14EU-d2
    ;;; expansion phase 15
    p1EU-d2--p14EU-d2-p15
    p1EU-d2--p14EU-d2-p15U
    p1EU-d2--p14EU-d2-p15U-TEd
    p1EU-d2--p14EU-d2-p15U-d2
    p1EU-d2--p14EU-d2-p15U-d2-E
    p1EU-d2--p15EU-d2

))



(defglobal ?*TE2-list-of-self-expand-types-at-d2* = (create$
    MEU
    p1EU-d2
    p1EU-d2--p2EU-d2
    p1EU-d2--p3EU-d2
    p1EU-d2--p4EU-d2
    p1EU-d2--p5EU-d2
    p1EU-d2--p6EU-d2
    p1EU-d2--p7EU-d2
    p1EU-d2--p8EU-d2
    p1EU-d2--p9EU-d2
    p1EU-d2--p10EU-d2
    p1EU-d2--p11EU-d2
    p1EU-d2--p12EU-d2
    p1EU-d2--p13EU-d2
    p1EU-d2--p14EU-d2
    p1EU-d2--p15EU-d2
))

(deffunction TE2-phase-k-self-expand-type-at-d2 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE2-list-of-self-expand-types-at-d2*)
)



(defglobal ?*TE2-list-of-pk-expansion-types-at-d2* = (create$
    mins
    p1
    p1EU-d2-p2
    p1EU-d2--p2EU-d2-p3
    p1EU-d2--p3EU-d2-p4
    p1EU-d2--p4EU-d2-p5
    p1EU-d2--p5EU-d2-p6
    p1EU-d2--p6EU-d2-p7
    p1EU-d2--p7EU-d2-p8
    p1EU-d2--p8EU-d2-p9
    p1EU-d2--p9EU-d2-p10
    p1EU-d2--p10EU-d2-p11
    p1EU-d2--p11EU-d2-p12
    p1EU-d2--p12EU-d2-p13
    p1EU-d2--p13EU-d2-p14 ; corrected
    p1EU-d2--p14EU-d2-p15 ; corrected
))

(deffunction TE2-phase-k-pk-expansion-type-at-d2 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE2-list-of-pk-expansion-types-at-d2*)
)



(defglobal ?*TE2-list-of-pkU-expansion-types-at-d2* = (create$
    mins
    p1U
    p1EU-d2-p2U
    p1EU-d2--p2EU-d2-p3U
    p1EU-d2--p3EU-d2-p4U
    p1EU-d2--p4EU-d2-p5U
    p1EU-d2--p5EU-d2-p6U
    p1EU-d2--p6EU-d2-p7U
    p1EU-d2--p7EU-d2-p8U
    p1EU-d2--p8EU-d2-p9U
    p1EU-d2--p9EU-d2-p10U
    p1EU-d2--p10EU-d2-p11U
    p1EU-d2--p11EU-d2-p12U
    p1EU-d2--p12EU-d2-p13U
    p1EU-d2--p13EU-d2-p14U ; corrected
    p1EU-d2--p14EU-d2-p15U ; corrected
))

(deffunction TE2-phase-k-pkU-expansion-type-at-d2 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE2-list-of-pkU-expansion-types-at-d2*)
)



(defglobal ?*TE2-list-of-pkU-TEd-expansion-types-at-d2* = (create$
    p1U-TEd
    p1EU-d2-p2U-TEd
    p1EU-d2--p2EU-d2-p3U-TEd
    p1EU-d2--p3EU-d2-p4U-TEd
    p1EU-d2--p4EU-d2-p5U-TEd
    p1EU-d2--p5EU-d2-p6U-TEd
    p1EU-d2--p6EU-d2-p7U-TEd
    p1EU-d2--p7EU-d2-p8U-TEd
    p1EU-d2--p8EU-d2-p9U-TEd
    p1EU-d2--p9EU-d2-p10U-TEd
    p1EU-d2--p10EU-d2-p11U-TEd
    p1EU-d2--p11EU-d2-p12U-TEd
    p1EU-d2--p12EU-d2-p13U-TEd
    p1EU-d2--p13EU-d2-p14U-TEd ; corrected
    p1EU-d2--p14EU-d2-p15U-TEd ; corrected
))

(deffunction TE2-phase-k-pkU-TEd-expansion-type-at-d2 (?k)
    ;;; ?k ≥ 1
    (nth$ ?k ?*TE2-list-of-pkU-TEd-expansion-types-at-d2*)
)



(defglobal ?*TE2-list-of-pkU-d2-expansion-types-at-d2* = (create$
    mins
    p1U-d2
    p1EU-d2-p2U-d2
    p1EU-d2--p2EU-d2-p3U-d2
    p1EU-d2--p3EU-d2-p4U-d2
    p1EU-d2--p4EU-d2-p5U-d2
    p1EU-d2--p5EU-d2-p6U-d2
    p1EU-d2--p6EU-d2-p7U-d2
    p1EU-d2--p7EU-d2-p8U-d2
    p1EU-d2--p8EU-d2-p9U-d2
    p1EU-d2--p9EU-d2-p10U-d2
    p1EU-d2--p10EU-d2-p11U-d2
    p1EU-d2--p11EU-d2-p12U-d2
    p1EU-d2--p12EU-d2-p13U-d2
    p1EU-d2--p13EU-d2-p14U-d2 ; corrected
    p1EU-d2--p14EU-d2-p15U-d2 ; corrected
))

(deffunction TE2-phase-k-pkU-d2-expansion-type-at-d2 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE2-list-of-pkU-d2-expansion-types-at-d2*)
)



(defglobal ?*TE2-list-of-pkU-d2-E-expansion-types-at-d2* = (create$
    p1U-d2-E
    p1EU-d2-p2U-d2-E
    p1EU-d2--p2EU-d2-p3U-d2-E
    p1EU-d2--p3EU-d2-p4U-d2-E
    p1EU-d2--p4EU-d2-p5U-d2-E
    p1EU-d2--p5EU-d2-p6U-d2-E
    p1EU-d2--p6EU-d2-p7U-d2-E
    p1EU-d2--p7EU-d2-p8U-d2-E
    p1EU-d2--p8EU-d2-p9U-d2-E
    p1EU-d2--p9EU-d2-p10U-d2-E
    p1EU-d2--p10EU-d2-p11U-d2-E
    p1EU-d2--p11EU-d2-p12U-d2-E
    p1EU-d2--p12EU-d2-p13U-d2-E
    p1EU-d2--p13EU-d2-p14U-d2-E ; corrected
    p1EU-d2--p14EU-d2-p15U-d2-E ; corrected
))

(deffunction TE2-phase-k-pkU-d2-E-expansion-type-at-d2 (?k)
    ;;; ?k ≥ 1
    (nth$ ?k ?*TE2-list-of-pkU-d2-E-expansion-types-at-d2*)
)





(defglobal ?*TE2-list-of-max-expand-types-at-d2* = (create$
    MEU-mex
    p1EU-d2-mex
    p1EU-d2--p2EU-d2-mex
    p1EU-d2--p3EU-d2-mex
    p1EU-d2--p4EU-d2-mex
    p1EU-d2--p5EU-d2-mex
    p1EU-d2--p6EU-d2-mex
    p1EU-d2--p7EU-d2-mex
    p1EU-d2--p8EU-d2-mex
    p1EU-d2--p9EU-d2-mex
    p1EU-d2--p10EU-d2-mex
    p1EU-d2--p11EU-d2-mex
    p1EU-d2--p12EU-d2-mex
    p1EU-d2--p13EU-d2-mex
    p1EU-d2--p14EU-d2-mex
    p1EU-d2--p15EU-d2-mex
    TE2exp
))

(deffunction TE2-phase-k-max-expand-type-at-d2 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE2-list-of-max-expand-types-at-d2*)
)



;;; For developing the minimals of the p1U puzzles at d1
;;; (same list as for T&E(3))
;;; "12" may be replaced by another number
(defglobal ?*TE2-list-of-p1U-development-types-at-d1* = (create$
    p1U
    p1U-TEd
    p1U-d1
    p1U-d1-B
    p1U-B12
    p1U-B12-mins
    p1U-B12-mins-TEd
    p1U-B12-mins-d1
    p1U-B12-mins-d1-B
    p1U-B12-mins-B12
))





;;; For the 1-expands of T&E(2)-expands and their BRT-expansions at d1
(defglobal ?*TE2-list-of-TE2exp-expansion-types-at-d2* = (create$
    TE2exp-p1
    TE2exp-p1U
    TE2exp-p1U-TEd
    TE2exp-p1U-d2
    TE2exp-p1U-d1
    TE2exp-p1U-B
    TE2exp-p1U-B12
    TE2exp-p1U-B12-E
    TE2exp-p1EU-B12
))



