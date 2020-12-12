
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SUDORULES GOODIES
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







;;; for better compatibility with the other function names (no upper cases)
(deffunction solve-sukaku-as-list ($?list)
    (solve-Sukaku-as-list ?list)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for solving a Sudoku or Sukaku grid
;;; with all their pseudo-graphical formatting
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*cosmetic-signs-in-grid* = (create$ "*" ":" "+" "-" "!"))

(deffunction cosmetic-sign-in-grid (?x)
    (bind ?cosmetic FALSE)
    (bind ?str (implode$ (create$ ?x)))
    (bind ?len (length$ ?str))
    (bind ?i 1)
    (while (<= ?i ?len)
        (if (member$ (sub-string ?i ?i ?str) ?*cosmetic-signs-in-grid*) then (bind ?cosmetic TRUE))
        (bind ?i (+ ?i 1))
    )
    ?cosmetic
)



(deffunction clean-grid-list ($?data)
    (bind ?real-data (create$))
    (foreach ?x $?data
        (if (not (cosmetic-sign-in-grid ?x)) then (bind ?real-data (create$ ?real-data ?x)))
    )
    ?real-data
)


;;;
;;; The following function allows to solve Sudoku puzzles given in grid from, such as:
;;;

; (solve-sudoku-grid
;    +-------+-------+-------+
;    : . . . : . . 9 : . . . :
;    : . . 8 : 7 . . : . . 6 :
;    : . 1 9 : . 4 . : . 2 . :
;    +-------+-------+-------+
;    : . 2 . : . 1 . : . 4 . :
;    : . . 3 : 6 . . : . . 8 :
;    : . . . : . . . : 2 . . :
;    +-------+-------+-------+
;    : . . . : . . 7 : . . . :
;    : . . 6 : 8 . . : . . 7 :
;    : . 4 . : . . . : . 1 . :
;    +-------+-------+-------+
; )

;;; or:

; (solve-sudoku-grid
;    +-------+-------+-------+
;    ! . . . ! . . 9 ! . . . !
;    ! . . 8 ! 7 . . ! . . 6 !
;    ! . 1 9 ! . 4 . ! . 2 . !
;    +-------+-------+-------+
;    ! . 2 . ! . 1 . ! . 4 . !
;    ! . . 3 ! 6 . . ! . . 8 !
;    ! . . . ! . . . ! 2 . . !
;    +-------+-------+-------+
;    ! . . . ! . . 7 ! . . . !
;    ! . . 6 ! 8 . . ! . . 7 !
;    ! . 4 . ! . . . ! . 1 . !
;    +-------+-------+-------+
; )

;;; The + signs can also be * signs


(deffunction solve-sudoku-grid ($?sudoku-grid)
    (solve-grid-as-list (clean-grid-list $?sudoku-grid))
)


;;;
;;; The following function allows to solve Sukaku puzzles given in grid from, such as:
;;;

; (solve-sukaku-grid
;    *------------------------------------*
;    : 1 9 6  : 2    4   7   : 3    5   8 :
;    : 8 2 7  : 3    5   1   : 4    6   9 :
;    : 3 4 5  : 68   9   68  : 27   27  1 :
;    :--------+--------------+------------:
;    : 7 8 24 : 1    6   49  : 29   3   5 :
;    : 5 6 1  : 89   2   3   : 89   4   7 :
;    : 9 3 24 : 578  78  458 : 1    28  6 :
;    :--------+--------------+------------:
;    : 6 7 89 : 589  3   2   : 58   1   4 :
;    : 4 5 3  : 6789 1   689 : 678  789 2 :
;    : 2 1 89 : 4    78  56  : 56   789 3 :
;    *------------------------------------*
; )

;;; or:

; (solve-sukaku-grid
;    *------------------------------------*
;    ! 1 9 6  ! 2    4   7   ! 3    5   8 !
;    ! 8 2 7  ! 3    5   1   ! 4    6   9 !
;    ! 3 4 5  ! 68   9   68  ! 27   27  1 !
;    !--------+--------------+------------!
;    ! 7 8 24 ! 1    6   49  ! 29   3   5 !
;    ! 5 6 1  ! 89   2   3   ! 89   4   7 !
;    ! 9 3 24 ! 578  78  458 ! 1    28  6 !
;    !--------+--------------+------------!
;    ! 6 7 89 ! 589  3   2   ! 58   1   4 !
;    ! 4 5 3  ! 6789 1   689 ! 678  789 2 !
;    ! 2 1 89 ! 4    78  56  ! 56   789 3 !
;    *------------------------------------*
; )

;;; As for Sukaku, the + and * signs can be mixed without restriction


(deffunction solve-sukaku-grid ($?sukaku-grid)
    (solve-sukaku-as-list (clean-grid-list $?sukaku-grid))
)
