
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE3 EXPANSION GLOBALS
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







;;; Note: all the T&E(3) scripts rely on the following standard naming for files
;;; 3 types for expansion phase 0; 6 types per expansion phase > 0; 63 types upto expansion phase 12

;;; Note: these names may seem complicated,
;;; but they are intended for compatibility with other successive expansions.
;;; The "--" in the names mean similar expansions in-between the two terms.

;;; Whichever the first value of TE3-phase-k-XXX-expansion-type-at-d3 is (0 or 1),
;;; (TE3-phase-k-XXX-expansion-type-at-d3 ?k) always refers to a type XXX at phase ?k



(defglobal ?*TE3-list-of-expansion-types-at-d3* = (create$
    ;;; expansion phase 0
    mins
    ME
    MEU
    ;;; expansion phase 1
    p1
    p1U
    p1U-TEd
    p1U-d3
    p1U-d3-E
    p1EU-d3
    ;;; expansion phase 2
    p1EU-d3-p2
    p1EU-d3-p2U
    p1EU-d3-p2U-TEd
    p1EU-d3-p2U-d3
    p1EU-d3-p2U-d3-E
    p1EU-d3--p2EU-d3
    ;;; expansion phase 3
    p1EU-d3--p2EU-d3-p3
    p1EU-d3--p2EU-d3-p3U
    p1EU-d3--p2EU-d3-p3U-TEd
    p1EU-d3--p2EU-d3-p3U-d3
    p1EU-d3--p2EU-d3-p3U-d3-E
    p1EU-d3--p3EU-d3
    ;;; expansion phase 4
    p1EU-d3--p3EU-d3-p4
    p1EU-d3--p3EU-d3-p4U
    p1EU-d3--p3EU-d3-p4U-TEd
    p1EU-d3--p3EU-d3-p4U-d3
    p1EU-d3--p3EU-d3-p4U-d3-E
    p1EU-d3--p4EU-d3
    ;;; expansion phase 5
    p1EU-d3--p4EU-d3-p5
    p1EU-d3--p4EU-d3-p5U
    p1EU-d3--p4EU-d3-p5U-TEd
    p1EU-d3--p4EU-d3-p5U-d3
    p1EU-d3--p4EU-d3-p5U-d3-E
    p1EU-d3--p5EU-d3
    ;;; expansion phase 6
    p1EU-d3--p5EU-d3-p6
    p1EU-d3--p5EU-d3-p6U
    p1EU-d3--p5EU-d3-p6U-TEd
    p1EU-d3--p5EU-d3-p6U-d3
    p1EU-d3--p5EU-d3-p6U-d3-E
    p1EU-d3--p6EU-d3
    ;;; expansion phase 7
    p1EU-d3--p6EU-d3-p7
    p1EU-d3--p6EU-d3-p7U
    p1EU-d3--p6EU-d3-p7U-TEd
    p1EU-d3--p6EU-d3-p7U-d3
    p1EU-d3--p6EU-d3-p7U-d3-E
    p1EU-d3--p7EU-d3
    ;;; expansion phase 8
    p1EU-d3--p7EU-d3-p8
    p1EU-d3--p7EU-d3-p8U
    p1EU-d3--p7EU-d3-p8U-TEd
    p1EU-d3--p7EU-d3-p8U-d3
    p1EU-d3--p7EU-d3-p8U-d3-E
    p1EU-d3--p8EU-d3
    ;;; expansion phase 9
    p1EU-d3--p8EU-d3-p9
    p1EU-d3--p8EU-d3-p9U
    p1EU-d3--p8EU-d3-p9U-TEd
    p1EU-d3--p8EU-d3-p9U-d3
    p1EU-d3--p8EU-d3-p9U-d3-E
    p1EU-d3--p9EU-d3
    ;;; expansion phase 10
    p1EU-d3--p9EU-d3-p10
    p1EU-d3--p9EU-d3-p10U
    p1EU-d3--p9EU-d3-p10U-TEd
    p1EU-d3--p9EU-d3-p10U-d3
    p1EU-d3--p9EU-d3-p10U-d3-E
    p1EU-d3--p10EU-d3
    ;;; expansion phase 11
    p1EU-d3--p10EU-d3-p11
    p1EU-d3--p10EU-d3-p11U
    p1EU-d3--p10EU-d3-p11U-TEd
    p1EU-d3--p10EU-d3-p11U-d3
    p1EU-d3--p10EU-d3-p11U-d3-E
    p1EU-d3--p11EU-d3
    ;;; expansion phase 12
    p1EU-d3--p11EU-d3-p12
    p1EU-d3--p11EU-d3-p12U
    p1EU-d3--p11EU-d3-p12U-TEd
    p1EU-d3--p11EU-d3-p12U-d3
    p1EU-d3--p11EU-d3-p12U-d3-E
    p1EU-d3--p12EU-d3

))



(defglobal ?*TE3-list-of-self-expand-types-at-d3* = (create$
    MEU
    p1EU-d3
    p1EU-d3--p2EU-d3
    p1EU-d3--p3EU-d3
    p1EU-d3--p4EU-d3
    p1EU-d3--p5EU-d3
    p1EU-d3--p6EU-d3
    p1EU-d3--p7EU-d3
    p1EU-d3--p8EU-d3
    p1EU-d3--p9EU-d3
    p1EU-d3--p10EU-d3
    p1EU-d3--p11EU-d3
    p1EU-d3--p12EU-d3
))

(deffunction TE3-phase-k-self-expand-type-at-d3 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE3-list-of-self-expand-types-at-d3*)
)



(defglobal ?*TE3-list-of-pk-expansion-types-at-d3* = (create$
    mins
    p1
    p1EU-d3-p2
    p1EU-d3--p2EU-d3-p3
    p1EU-d3--p3EU-d3-p4
    p1EU-d3--p4EU-d3-p5
    p1EU-d3--p5EU-d3-p6
    p1EU-d3--p6EU-d3-p7
    p1EU-d3--p7EU-d3-p8
    p1EU-d3--p8EU-d3-p9
    p1EU-d3--p9EU-d3-p10
    p1EU-d3--p10EU-d3-p11
    p1EU-d3--p11EU-d3-p12
))

(deffunction TE3-phase-k-pk-expansion-type-at-d3 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE3-list-of-pk-expansion-types-at-d3*)
)



(defglobal ?*TE3-list-of-pkU-expansion-types-at-d3* = (create$
    mins
    p1U
    p1EU-d3-p2U
    p1EU-d3--p2EU-d3-p3U
    p1EU-d3--p3EU-d3-p4U
    p1EU-d3--p4EU-d3-p5U
    p1EU-d3--p5EU-d3-p6U
    p1EU-d3--p6EU-d3-p7U
    p1EU-d3--p7EU-d3-p8U
    p1EU-d3--p8EU-d3-p9U
    p1EU-d3--p9EU-d3-p10U
    p1EU-d3--p10EU-d3-p11U
    p1EU-d3--p11EU-d3-p12U
))

(deffunction TE3-phase-k-pkU-expansion-type-at-d3 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE3-list-of-pkU-expansion-types-at-d3*)
)



(defglobal ?*TE3-list-of-pkU-TEd-expansion-types-at-d3* = (create$
    p1U-TEd
    p1EU-d3-p2U-TEd
    p1EU-d3--p2EU-d3-p3U-TEd
    p1EU-d3--p3EU-d3-p4U-TEd
    p1EU-d3--p4EU-d3-p5U-TEd
    p1EU-d3--p5EU-d3-p6U-TEd
    p1EU-d3--p6EU-d3-p7U-TEd
    p1EU-d3--p7EU-d3-p8U-TEd
    p1EU-d3--p8EU-d3-p9U-TEd
    p1EU-d3--p9EU-d3-p10U-TEd
    p1EU-d3--p10EU-d3-p11U-TEd
    p1EU-d3--p11EU-d3-p12U-TEd
))

(deffunction TE3-phase-k-pkU-TEd-expansion-type-at-d3 (?k)
    ;;; ?k ≥ 1
    (nth$ ?k ?*TE3-list-of-pkU-TEd-expansion-types-at-d3*)
)



(defglobal ?*TE3-list-of-pkU-d3-expansion-types-at-d3* = (create$
    mins
    p1U-d3
    p1EU-d3-p2U-d3
    p1EU-d3--p2EU-d3-p3U-d3
    p1EU-d3--p3EU-d3-p4U-d3
    p1EU-d3--p4EU-d3-p5U-d3
    p1EU-d3--p5EU-d3-p6U-d3
    p1EU-d3--p6EU-d3-p7U-d3
    p1EU-d3--p7EU-d3-p8U-d3
    p1EU-d3--p8EU-d3-p9U-d3
    p1EU-d3--p9EU-d3-p10U-d3
    p1EU-d3--p10EU-d3-p11U-d3
    p1EU-d3--p11EU-d3-p12U-d3
))

(deffunction TE3-phase-k-pkU-d3-expansion-type-at-d3 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE3-list-of-pkU-d3-expansion-types-at-d3*)
)



(defglobal ?*TE3-list-of-pkU-d3-E-expansion-types-at-d3* = (create$
    p1U-d3-E
    p1EU-d3-p2U-d3-E
    p1EU-d3--p2EU-d3-p3U-d3-E
    p1EU-d3--p3EU-d3-p4U-d3-E
    p1EU-d3--p4EU-d3-p5U-d3-E
    p1EU-d3--p5EU-d3-p6U-d3-E
    p1EU-d3--p6EU-d3-p7U-d3-E
    p1EU-d3--p7EU-d3-p8U-d3-E
    p1EU-d3--p8EU-d3-p9U-d3-E
    p1EU-d3--p9EU-d3-p10U-d3-E
    p1EU-d3--p10EU-d3-p11U-d3-E
    p1EU-d3--p11EU-d3-p12U-d3-E
))

(deffunction TE3-phase-k-pkU-d3-E-expansion-type-at-d3 (?k)
    ;;; ?k ≥ 1
    (nth$ ?k ?*TE3-list-of-pkU-d3-E-expansion-types-at-d3*)
)




(defglobal ?*TE3-list-of-max-expand-types-at-d3* = (create$
    MEU-mex
    p1EU-d3-mex
    p1EU-d3--p2EU-d3-mex
    p1EU-d3--p3EU-d3-mex
    p1EU-d3--p4EU-d3-mex
    p1EU-d3--p5EU-d3-mex
    p1EU-d3--p6EU-d3-mex
    p1EU-d3--p7EU-d3-mex
    p1EU-d3--p8EU-d3-mex
    p1EU-d3--p9EU-d3-mex
    p1EU-d3--p10EU-d3-mex
    p1EU-d3--p11EU-d3-mex
    p1EU-d3--p12EU-d3-mex
    TE3exp
))

(deffunction TE3-phase-k-max-expand-type-at-d3 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE3-list-of-max-expand-types-at-d3*)
)




;;; For developing the minimals of the p1U puzzles at d1
;;; "12" may be replaced by another number
(defglobal ?*TE3-list-of-p1U-development-types-at-d1* = (create$
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


;;; For developing the minimals of the p1U puzzles at d2
;;; "7" may be replaced by another number
(defglobal ?*TE3-list-of-p1U-development-types-at-d2* = (create$
    p1U
    p1U-TEd
    p1U-d2
    p1U-d2-BxB
    p1U-B7B
    p1U-B7B-mins
    p1U-B7B-mins-TEd
    p1U-B7B-mins-d2
    p1U-B7B-mins-d2-BxB
    p1U-B7B-mins-B7B
))




;;; For the 1-expands of T&E(3)-expands and their BRT-expansions at d2
(defglobal ?*TE3-list-of-TE3exp-expansion-types-at-d2* = (create$
    TE3exp-p1
    TE3exp-p1U
    TE3exp-p1U-TEd
    TE3exp-p1U-d2
    TE3exp-p1U-d1
    TE3exp-p1U-BxB
    TE3exp-p1U-B7B
    TE3exp-p1U-B7B-E
    TE3exp-p1EU-B7B
))



