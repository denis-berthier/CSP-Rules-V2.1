
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE1 EXPANSION GLOBALS
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







;;; Note: all the T&E(1) scripts rely on the following standard naming for files
;;; 3 types for expansion phase 0; 6 types per expansion phase > 0; 63 types upto expansion phase 10

;;; Note: these names may seem complicated,
;;; but they are intended for compatibility with other successive expansions.
;;; The "--" in the names mean similar expansions in-between the two terms.

;;; Whichever the first value of TE1-phase-k-XXX-expansion-type-at-d1 is (0 or 1),
;;; (TE1-phase-k-XXX-expansion-type-at-d1 ?k) always refers to a type XXX at phase ?k



(defglobal ?*TE1-list-of-expansion-types-at-d1* = (create$
    ;;; expansion-phase 0
    mins
    ME
    MEU
    ;;; expansion-phase 1
    p1
    p1U
    p1U-TEd
    p1U-d1
    p1U-d1-E
    p1EU-d1
    ;;; expansion-phase 2
    p1EU-d1-p2
    p1EU-d1-p2U
    p1EU-d1-p2U-TEd
    p1EU-d1-p2U-d1
    p1EU-d1-p2U-d1-E
    p1EU-d1--p2EU-d1
    ;;; expansion-phase 3
    p1EU-d1--p2EU-d1-p3
    p1EU-d1--p2EU-d1-p3U
    p1EU-d1--p2EU-d1-p3U-TEd
    p1EU-d1--p2EU-d1-p3U-d1
    p1EU-d1--p2EU-d1-p3U-d1-E
    p1EU-d1--p3EU-d1
    ;;; expansion-phase 4
    p1EU-d1--p3EU-d1-p4
    p1EU-d1--p3EU-d1-p4U
    p1EU-d1--p3EU-d1-p4U-TEd
    p1EU-d1--p3EU-d1-p4U-d1
    p1EU-d1--p3EU-d1-p4U-d1-E
    p1EU-d1--p4EU-d1
    ;;; expansion-phase 5
    p1EU-d1--p4EU-d1-p5
    p1EU-d1--p4EU-d1-p5U
    p1EU-d1--p4EU-d1-p5U-TEd
    p1EU-d1--p4EU-d1-p5U-d1
    p1EU-d1--p4EU-d1-p5U-d1-E
    p1EU-d1--p5EU-d1
    ;;; expansion-phase 6
    p1EU-d1--p5EU-d1-p6
    p1EU-d1--p5EU-d1-p6U
    p1EU-d1--p5EU-d1-p6U-TEd
    p1EU-d1--p5EU-d1-p6U-d1
    p1EU-d1--p5EU-d1-p6U-d1-E
    p1EU-d1--p6EU-d1
    ;;; expansion-phase 7
    p1EU-d1--p6EU-d1-p7
    p1EU-d1--p6EU-d1-p7U
    p1EU-d1--p6EU-d1-p7U-TEd
    p1EU-d1--p6EU-d1-p7U-d1
    p1EU-d1--p6EU-d1-p7U-d1-E
    p1EU-d1--p7EU-d1
    ;;; expansion-phase 8
    p1EU-d1--p7EU-d1-p8
    p1EU-d1--p7EU-d1-p8U
    p1EU-d1--p7EU-d1-p8U-TEd
    p1EU-d1--p7EU-d1-p8U-d1
    p1EU-d1--p7EU-d1-p8U-d1-E
    p1EU-d1--p8EU-d1
    ;;; expansion-phase 9
    p1EU-d1--p8EU-d1-p9
    p1EU-d1--p8EU-d1-p9U
    p1EU-d1--p8EU-d1-p9U-TEd
    p1EU-d1--p8EU-d1-p9U-d1
    p1EU-d1--p8EU-d1-p9U-d1-E
    p1EU-d1--p9EU-d1
    ;;; expansion-phase 10
    p1EU-d1--p9EU-d1-p10
    p1EU-d1--p9EU-d1-p10U
    p1EU-d1--p9EU-d1-p10U-TEd
    p1EU-d1--p9EU-d1-p10U-d1
    p1EU-d1--p9EU-d1-p10U-d1-E
    p1EU-d1--p10EU-d1
    ;;; expansion-phase 11
    p1EU-d1--p10EU-d1-p11
    p1EU-d1--p10EU-d1-p11U
    p1EU-d1--p10EU-d1-p11U-TEd
    p1EU-d1--p10EU-d1-p11U-d1
    p1EU-d1--p10EU-d1-p11U-d1-E
    p1EU-d1--p11EU-d1
    ;;; expansion-phase 12
    p1EU-d1--p11EU-d1-p12
    p1EU-d1--p11EU-d1-p12U
    p1EU-d1--p11EU-d1-p12U-TEd
    p1EU-d1--p11EU-d1-p12U-d1
    p1EU-d1--p11EU-d1-p12U-d1-E
    p1EU-d1--p12EU-d1
    ;;; expansion-phase 13
    p1EU-d1--p12EU-d1-p13
    p1EU-d1--p12EU-d1-p13U
    p1EU-d1--p12EU-d1-p13U-TEd
    p1EU-d1--p12EU-d1-p13U-d1
    p1EU-d1--p12EU-d1-p13U-d1-E
    p1EU-d1--p13EU-d1
    ;;; expansion-phase 14
    p1EU-d1--p13EU-d1-p14
    p1EU-d1--p13EU-d1-p14U
    p1EU-d1--p13EU-d1-p14U-TEd
    p1EU-d1--p13EU-d1-p14U-d1
    p1EU-d1--p13EU-d1-p14U-d1-E
    p1EU-d1--p14EU-d1
    ;;; expansion-phase 15
    p1EU-d1--p14EU-d1-p15
    p1EU-d1--p14EU-d1-p15U
    p1EU-d1--p14EU-d1-p15U-TEd
    p1EU-d1--p14EU-d1-p15U-d1
    p1EU-d1--p14EU-d1-p15U-d1-E
    p1EU-d1--p15EU-d1
    ;;; expansion-phase 16
    p1EU-d1--p15EU-d1-p16
    p1EU-d1--p15EU-d1-p16U
    p1EU-d1--p15EU-d1-p16U-TEd
    p1EU-d1--p15EU-d1-p16U-d1
    p1EU-d1--p15EU-d1-p16U-d1-E
    p1EU-d1--p16EU-d1
    ;;; expansion-phase 17
    p1EU-d1--p16EU-d1-p17
    p1EU-d1--p16EU-d1-p17U
    p1EU-d1--p16EU-d1-p17U-TEd
    p1EU-d1--p16EU-d1-p17U-d1
    p1EU-d1--p16EU-d1-p17U-d1-E
    p1EU-d1--p17EU-d1
    ;;; expansion-phase 18
    p1EU-d1--p17EU-d1-p18
    p1EU-d1--p17EU-d1-p18U
    p1EU-d1--p17EU-d1-p18U-TEd
    p1EU-d1--p17EU-d1-p18U-d1
    p1EU-d1--p17EU-d1-p18U-d1-E
    p1EU-d1--p18EU-d1
    ;;; expansion-phase 19
    p1EU-d1--p18EU-d1-p19
    p1EU-d1--p18EU-d1-p19U
    p1EU-d1--p18EU-d1-p19U-TEd
    p1EU-d1--p18EU-d1-p19U-d1
    p1EU-d1--p18EU-d1-p19U-d1-E
    p1EU-d1--p19EU-d1
    ;;; expansion-phase 20
    p1EU-d1--p19EU-d1-p20
    p1EU-d1--p19EU-d1-p20U
    p1EU-d1--p19EU-d1-p20U-TEd
    p1EU-d1--p19EU-d1-p20U-d1
    p1EU-d1--p19EU-d1-p20U-d1-E
    p1EU-d1--p20EU-d1
    ;;; expansion-phase 21
    p1EU-d1--p20EU-d1-p21
    p1EU-d1--p20EU-d1-p21U
    p1EU-d1--p20EU-d1-p21U-TEd
    p1EU-d1--p20EU-d1-p21U-d1
    p1EU-d1--p20EU-d1-p21U-d1-E
    p1EU-d1--p21EU-d1
    ;;; expansion-phase 22
    p1EU-d1--p21EU-d1-p22
    p1EU-d1--p21EU-d1-p22U
    p1EU-d1--p21EU-d1-p22U-TEd
    p1EU-d1--p21EU-d1-p22U-d1
    p1EU-d1--p21EU-d1-p22U-d1-E
    p1EU-d1--p22EU-d1

))



(defglobal ?*TE1-list-of-self-expand-types-at-d1* = (create$
    MEU
    p1EU-d1
    p1EU-d1--p2EU-d1
    p1EU-d1--p3EU-d1
    p1EU-d1--p4EU-d1
    p1EU-d1--p5EU-d1
    p1EU-d1--p6EU-d1
    p1EU-d1--p7EU-d1
    p1EU-d1--p8EU-d1
    p1EU-d1--p9EU-d1
    p1EU-d1--p10EU-d1
    p1EU-d1--p11EU-d1
    p1EU-d1--p12EU-d1
    p1EU-d1--p13EU-d1
    p1EU-d1--p14EU-d1
    p1EU-d1--p15EU-d1
    p1EU-d1--p16EU-d1
    p1EU-d1--p17EU-d1
    p1EU-d1--p18EU-d1
    p1EU-d1--p19EU-d1
    p1EU-d1--p20EU-d1
    p1EU-d1--p21EU-d1
    p1EU-d1--p22EU-d1
))

(deffunction TE1-phase-k-self-expand-type-at-d1 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE1-list-of-self-expand-types-at-d1*)
)



(defglobal ?*TE1-list-of-pk-expansion-types-at-d1* = (create$
    mins
    p1
    p1EU-d1-p2
    p1EU-d1--p2EU-d1-p3
    p1EU-d1--p3EU-d1-p4
    p1EU-d1--p4EU-d1-p5
    p1EU-d1--p5EU-d1-p6
    p1EU-d1--p6EU-d1-p7
    p1EU-d1--p7EU-d1-p8
    p1EU-d1--p8EU-d1-p9
    p1EU-d1--p9EU-d1-p10
    p1EU-d1--p10EU-d1-p11
    p1EU-d1--p11EU-d1-p12
    p1EU-d1--p12EU-d1-p13
    p1EU-d1--p13EU-d1-p14
    p1EU-d1--p14EU-d1-p15
    p1EU-d1--p15EU-d1-p16
    p1EU-d1--p16EU-d1-p17
    p1EU-d1--p17EU-d1-p18
    p1EU-d1--p18EU-d1-p19
    p1EU-d1--p19EU-d1-p20
    p1EU-d1--p20EU-d1-p21
    p1EU-d1--p21EU-d1-p22
))

(deffunction TE1-phase-k-pk-expansion-type-at-d1 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE1-list-of-pk-expansion-types-at-d1*)
)



(defglobal ?*TE1-list-of-pkU-expansion-types-at-d1* = (create$
    mins
    p1U
    p1EU-d1-p2U
    p1EU-d1--p2EU-d1-p3U
    p1EU-d1--p3EU-d1-p4U
    p1EU-d1--p4EU-d1-p5U
    p1EU-d1--p5EU-d1-p6U
    p1EU-d1--p6EU-d1-p7U
    p1EU-d1--p7EU-d1-p8U
    p1EU-d1--p8EU-d1-p9U
    p1EU-d1--p9EU-d1-p10U
    p1EU-d1--p10EU-d1-p11U
    p1EU-d1--p11EU-d1-p12U
    p1EU-d1--p12EU-d1-p13U
    p1EU-d1--p13EU-d1-p14U
    p1EU-d1--p14EU-d1-p15U
    p1EU-d1--p15EU-d1-p16U
    p1EU-d1--p16EU-d1-p17U
    p1EU-d1--p17EU-d1-p18U
    p1EU-d1--p18EU-d1-p19U
    p1EU-d1--p19EU-d1-p20U
    p1EU-d1--p20EU-d1-p21U
    p1EU-d1--p21EU-d1-p22U
))

(deffunction TE1-phase-k-pkU-expansion-type-at-d1 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE1-list-of-pkU-expansion-types-at-d1*)
)



(defglobal ?*TE1-list-of-pkU-TEd-expansion-types-at-d1* = (create$
    p1U-TEd
    p1EU-d1-p2U-TEd
    p1EU-d1--p2EU-d1-p3U-TEd
    p1EU-d1--p3EU-d1-p4U-TEd
    p1EU-d1--p4EU-d1-p5U-TEd
    p1EU-d1--p5EU-d1-p6U-TEd
    p1EU-d1--p6EU-d1-p7U-TEd
    p1EU-d1--p7EU-d1-p8U-TEd
    p1EU-d1--p8EU-d1-p9U-TEd
    p1EU-d1--p9EU-d1-p10U-TEd
    p1EU-d1--p10EU-d1-p11U-TEd
    p1EU-d1--p11EU-d1-p12U-TEd
    p1EU-d1--p12EU-d1-p13U-TEd
    p1EU-d1--p13EU-d1-p14U-TEd
    p1EU-d1--p14EU-d1-p15U-TEd
    p1EU-d1--p15EU-d1-p16U-TEd
    p1EU-d1--p16EU-d1-p17U-TEd
    p1EU-d1--p17EU-d1-p18U-TEd
    p1EU-d1--p18EU-d1-p19U-TEd
    p1EU-d1--p19EU-d1-p20U-TEd
    p1EU-d1--p20EU-d1-p21U-TEd
    p1EU-d1--p21EU-d1-p22U-TEd
))

(deffunction TE1-phase-k-pkU-TEd-expansion-type-at-d1 (?k)
    ;;; ?k ≥ 1
    (nth$ ?k ?*TE1-list-of-pkU-TEd-expansion-types-at-d1*)
)



(defglobal ?*TE1-list-of-pkU-d1-expansion-types-at-d1* = (create$
    mins
    p1U-d1
    p1EU-d1-p2U-d1
    p1EU-d1--p2EU-d1-p3U-d1
    p1EU-d1--p3EU-d1-p4U-d1
    p1EU-d1--p4EU-d1-p5U-d1
    p1EU-d1--p5EU-d1-p6U-d1
    p1EU-d1--p6EU-d1-p7U-d1
    p1EU-d1--p7EU-d1-p8U-d1
    p1EU-d1--p8EU-d1-p9U-d1
    p1EU-d1--p9EU-d1-p10U-d1
    p1EU-d1--p10EU-d1-p11U-d1
    p1EU-d1--p11EU-d1-p12U-d1
    p1EU-d1--p12EU-d1-p13U-d1
    p1EU-d1--p13EU-d1-p14U-d1
    p1EU-d1--p14EU-d1-p15U-d1
    p1EU-d1--p15EU-d1-p16U-d1
    p1EU-d1--p16EU-d1-p17U-d1
    p1EU-d1--p17EU-d1-p18U-d1
    p1EU-d1--p18EU-d1-p19U-d1
    p1EU-d1--p19EU-d1-p20U-d1
    p1EU-d1--p20EU-d1-p21U-d1
    p1EU-d1--p21EU-d1-p22U-d1
))

(deffunction TE1-phase-k-pkU-d1-expansion-type-at-d1 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE1-list-of-pkU-d1-expansion-types-at-d1*)
)



(defglobal ?*TE1-list-of-pkU-d1-E-expansion-types-at-d1* = (create$
    p1U-d1-E
    p1EU-d1-p2U-d1-E
    p1EU-d1--p2EU-d1-p3U-d1-E
    p1EU-d1--p3EU-d1-p4U-d1-E
    p1EU-d1--p4EU-d1-p5U-d1-E
    p1EU-d1--p5EU-d1-p6U-d1-E
    p1EU-d1--p6EU-d1-p7U-d1-E
    p1EU-d1--p7EU-d1-p8U-d1-E
    p1EU-d1--p8EU-d1-p9U-d1-E
    p1EU-d1--p9EU-d1-p10U-d1-E
    p1EU-d1--p10EU-d1-p11U-d1-E
    p1EU-d1--p11EU-d1-p12U-d1-E
    p1EU-d1--p12EU-d1-p13U-d1-E
    p1EU-d1--p13EU-d1-p14U-d1-E
    p1EU-d1--p14EU-d1-p15U-d1-E
    p1EU-d1--p15EU-d1-p16U-d1-E
    p1EU-d1--p16EU-d1-p17U-d1-E
    p1EU-d1--p17EU-d1-p18U-d1-E
    p1EU-d1--p18EU-d1-p19U-d1-E
    p1EU-d1--p19EU-d1-p20U-d1-E
    p1EU-d1--p20EU-d1-p21U-d1-E
    p1EU-d1--p21EU-d1-p22U-d1-E
))

(deffunction TE1-phase-k-pkU-d1-E-expansion-type-at-d1 (?k)
    ;;; ?k ≥ 1
    (nth$ ?k ?*TE1-list-of-pkU-d1-E-expansion-types-at-d1*)
)



(defglobal ?*TE1-list-of-max-expand-types-at-d1* = (create$
    MEU-mex
    p1EU-d1-mex
    p1EU-d1--p2EU-d1-mex
    p1EU-d1--p3EU-d1-mex
    p1EU-d1--p4EU-d1-mex
    p1EU-d1--p5EU-d1-mex
    p1EU-d1--p6EU-d1-mex
    p1EU-d1--p7EU-d1-mex
    p1EU-d1--p8EU-d1-mex
    p1EU-d1--p9EU-d1-mex
    p1EU-d1--p10EU-d1-mex
    p1EU-d1--p11EU-d1-mex
    p1EU-d1--p12EU-d1-mex
    p1EU-d1--p13EU-d1-mex
    p1EU-d1--p14EU-d1-mex
    p1EU-d1--p15EU-d1-mex
    p1EU-d1--p16EU-d1-mex
    p1EU-d1--p17EU-d1-mex
    p1EU-d1--p18EU-d1-mex
    p1EU-d1--p19EU-d1-mex
    p1EU-d1--p20EU-d1-mex
    p1EU-d1--p21EU-d1-mex
    p1EU-d1--p22EU-d1-mex
    TE1exp
))

(deffunction TE1-phase-k-max-expand-type-at-d1 (?k)
    ;;; ?k ≥ 0
    (nth$ (+ ?k 1) ?*TE1-list-of-max-expand-types-at-d1*)
)





;;; For developing the minimals of the p1U puzzles at d1
;;; "12" may be replaced by another number
(defglobal ?*TE1-list-of-p1U-d1-development-types-at-d1* = (create$
    p1U
    p1U-TEd
    p1U-d1
    p1U-d1-B
    p1U-B12
    p1U-B12-mins
    p1U-B12-mins-TEd
    p1EU-B12-mins-d1
    p1EU-B12-mins-d1-B
    p1EU-B12-mins-B12
))





;;; For the 1-expands of T&E(1)-expands and their BRT-expansions at d1
(defglobal ?*TE1-list-of-TE1exp-expansion-types-at-d1* = (create$
    TE1exp-p1
    TE1exp-p1U
    TE1exp-p1U-TEd
    TE1exp-p1U-d1
    TE1exp-p1U-d1
    TE1exp-p1U-B
    TE1exp-p1U-B12
    TE1exp-p1U-B12-E
    TE1exp-p1EU-B12
))


