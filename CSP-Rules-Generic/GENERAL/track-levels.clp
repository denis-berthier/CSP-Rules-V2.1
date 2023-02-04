
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              LEVELS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-




;;; generic rules for tracking the entrancce in each level Li ≥ 2

(defrule enter-level-L2
   (declare (salience ?*first-L2-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 2))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L2))
   (assert (level ?cont L2))
   (bind ?*main-level* L2)
)

(defrule track-level-L2
   (declare (salience ?*first-L2-salience*))
   ?fact <- (level ?cont L2)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L3
   (declare (salience ?*first-L3-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 3))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L3))
   (assert (level ?cont L3))
   (bind ?*main-level* L3)
)

(defrule track-level-L3
   (declare (salience ?*first-L3-salience*))
   ?fact <- (level ?cont L3)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L4
   (declare (salience ?*first-L4-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 4))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L4))
   (assert (level ?cont L4))
   (bind ?*main-level* L4)
)

(defrule track-level-L4
   (declare (salience ?*first-L4-salience*))
   ?fact <- (level ?cont L4)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L5
   (declare (salience ?*first-L5-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 5))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L5))
   (assert (level ?cont L5))
   (bind ?*main-level* L5)
)

(defrule track-level-L5
   (declare (salience ?*first-L5-salience*))
   ?fact <- (level ?cont L5)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L6
   (declare (salience ?*first-L6-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 6))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L6))
   (assert (level ?cont L6))
   (bind ?*main-level* L6)
)

(defrule track-level-L6
   (declare (salience ?*first-L6-salience*))
   ?fact <- (level ?cont L6)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L7
   (declare (salience ?*first-L7-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 7))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L7))
   (assert (level ?cont L7))
   (bind ?*main-level* L7)
)

(defrule track-level-L7
   (declare (salience ?*first-L7-salience*))
   ?fact <- (level ?cont L7)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L8
   (declare (salience ?*first-L8-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 8))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L8))
   (assert (level ?cont L8))
   (bind ?*main-level* L8)
)

(defrule track-level-L8
   (declare (salience ?*first-L8-salience*))
   ?fact <- (level ?cont L8)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L9
   (declare (salience ?*first-L9-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 9))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L9))
   (assert (level ?cont L9))
   (bind ?*main-level* L9)
)

(defrule track-level-L9
   (declare (salience ?*first-L9-salience*))
   ?fact <- (level ?cont L9)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L10
   (declare (salience ?*first-L10-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 10))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L10))
   (assert (level ?cont L10))
   (bind ?*main-level* L10)
)

(defrule track-level-L10
   (declare (salience ?*first-L10-salience*))
   ?fact <- (level ?cont L10)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L11
   (declare (salience ?*first-L11-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 11))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L11))
   (assert (level ?cont L11))
   (bind ?*main-level* L11)
)

(defrule track-level-L11
   (declare (salience ?*first-L11-salience*))
   ?fact <- (level ?cont L11)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L12
   (declare (salience ?*first-L12-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 12))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L12))
   (assert (level ?cont L12))
   (bind ?*main-level* L12)
)

(defrule track-level-L12
   (declare (salience ?*first-L12-salience*))
   ?fact <- (level ?cont L12)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L13
   (declare (salience ?*first-L13-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 13))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L13))
   (assert (level ?cont L13))
   (bind ?*main-level* L13)
)

(defrule track-level-L13
   (declare (salience ?*first-L13-salience*))
   ?fact <- (level ?cont L13)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L14
   (declare (salience ?*first-L14-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 14))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L14))
   (assert (level ?cont L14))
   (bind ?*main-level* L14)
)

(defrule track-level-L14
   (declare (salience ?*first-L14-salience*))
   ?fact <- (level ?cont L14)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L15
   (declare (salience ?*first-L15-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 15))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L15))
   (assert (level ?cont L15))
   (bind ?*main-level* L15)
)

(defrule track-level-L15
   (declare (salience ?*first-L15-salience*))
   ?fact <- (level ?cont L15)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L16
   (declare (salience ?*first-L16-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 16))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L16))
   (assert (level ?cont L16))
   (bind ?*main-level* L16)
)

(defrule track-level-L16
   (declare (salience ?*first-L16-salience*))
   ?fact <- (level ?cont L16)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L17
   (declare (salience ?*first-L17-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 17))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L17))
   (assert (level ?cont L17))
   (bind ?*main-level* L17)
)

(defrule track-level-L17
   (declare (salience ?*first-L17-salience*))
   ?fact <- (level ?cont L17)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L18
   (declare (salience ?*first-L18-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 18))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L18))
   (assert (level ?cont L18))
   (bind ?*main-level* L18)
)

(defrule track-level-L18
   (declare (salience ?*first-L18-salience*))
   ?fact <- (level ?cont L18)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L19
   (declare (salience ?*first-L19-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 19))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L19))
   (assert (level ?cont L19))
   (bind ?*main-level* L19)
)

(defrule track-level-L19
   (declare (salience ?*first-L19-salience*))
   ?fact <- (level ?cont L19)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L20
   (declare (salience ?*first-L20-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 20))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L20))
   (assert (level ?cont L20))
   (bind ?*main-level* L20)
)

(defrule track-level-L20
   (declare (salience ?*first-L20-salience*))
   ?fact <- (level ?cont L20)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L21
   (declare (salience ?*first-L21-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 21))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L21))
   (assert (level ?cont L21))
   (bind ?*main-level* L21)
)

(defrule track-level-L21
   (declare (salience ?*first-L21-salience*))
   ?fact <- (level ?cont L21)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L22
   (declare (salience ?*first-L22-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 22))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L22))
   (assert (level ?cont L22))
   (bind ?*main-level* L22)
)

(defrule track-level-L22
   (declare (salience ?*first-L22-salience*))
   ?fact <- (level ?cont L22)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L23
   (declare (salience ?*first-L23-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 23))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L23))
   (assert (level ?cont L23))
   (bind ?*main-level* L23)
)

(defrule track-level-L23
   (declare (salience ?*first-L23-salience*))
   ?fact <- (level ?cont L23)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L24
   (declare (salience ?*first-L24-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 24))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L24))
   (assert (level ?cont L24))
   (bind ?*main-level* L24)
)

(defrule track-level-L24
   (declare (salience ?*first-L24-salience*))
   ?fact <- (level ?cont L24)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L25
   (declare (salience ?*first-L25-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 25))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L25))
   (assert (level ?cont L25))
   (bind ?*main-level* L25)
)

(defrule track-level-L25
   (declare (salience ?*first-L25-salience*))
   ?fact <- (level ?cont L25)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L26
   (declare (salience ?*first-L26-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 26))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L26))
   (assert (level ?cont L26))
   (bind ?*main-level* L26)
)

(defrule track-level-L26
   (declare (salience ?*first-L26-salience*))
   ?fact <- (level ?cont L26)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L27
   (declare (salience ?*first-L27-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 27))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L27))
   (assert (level ?cont L27))
   (bind ?*main-level* L27)
)

(defrule track-level-L27
   (declare (salience ?*first-L27-salience*))
   ?fact <- (level ?cont L27)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L28
   (declare (salience ?*first-L28-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 28))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L28))
   (assert (level ?cont L28))
   (bind ?*main-level* L28)
)

(defrule track-level-L28
   (declare (salience ?*first-L28-salience*))
   ?fact <- (level ?cont L28)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L29
   (declare (salience ?*first-L29-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 29))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L29))
   (assert (level ?cont L29))
   (bind ?*main-level* L29)
)

(defrule track-level-L29
   (declare (salience ?*first-L29-salience*))
   ?fact <- (level ?cont L29)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L30
   (declare (salience ?*first-L30-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 30))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L30))
   (assert (level ?cont L30))
   (bind ?*main-level* L30)
)

(defrule track-level-L30
   (declare (salience ?*first-L30-salience*))
   ?fact <- (level ?cont L30)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L31
   (declare (salience ?*first-L31-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 31))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L31))
   (assert (level ?cont L31))
   (bind ?*main-level* L31)
)

(defrule track-level-L31
   (declare (salience ?*first-L31-salience*))
   ?fact <- (level ?cont L31)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L32
   (declare (salience ?*first-L32-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 32))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L32))
   (assert (level ?cont L32))
   (bind ?*main-level* L32)
)

(defrule track-level-L32
   (declare (salience ?*first-L32-salience*))
   ?fact <- (level ?cont L32)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L33
   (declare (salience ?*first-L33-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 33))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L33))
   (assert (level ?cont L33))
   (bind ?*main-level* L33)
)

(defrule track-level-L33
   (declare (salience ?*first-L33-salience*))
   ?fact <- (level ?cont L33)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L34
   (declare (salience ?*first-L34-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 34))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L34))
   (assert (level ?cont L34))
   (bind ?*main-level* L34)
)

(defrule track-level-L34
   (declare (salience ?*first-L34-salience*))
   ?fact <- (level ?cont L34)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L35
   (declare (salience ?*first-L35-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 35))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L35))
   (assert (level ?cont L35))
   (bind ?*main-level* L35)
)

(defrule track-level-L35
   (declare (salience ?*first-L35-salience*))
   ?fact <- (level ?cont L35)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)


(defrule enter-level-L36
   (declare (salience ?*first-L36-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
   (test (>= ?*max-level* 36))
=>
   (if ?*print-main-levels* then (printout t Entering_level_L36))
   (assert (level ?cont L36))
   (bind ?*main-level* L36)
)

(defrule track-level-L36
   (declare (salience ?*first-L36-salience*))
   ?fact <- (level ?cont L36)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)



(defrule enter-level-L99
   (declare (salience ?*first-L99-salience*))
   (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont track-levels))
   )
=>
   (if ?*print-main-levels* then (printout t Entering_level_L99))
   (assert (level ?cont L99))
   (bind ?*main-level* L99)
)

(defrule track-level-L99
   (declare (salience ?*first-L99-salience*))
   ?fact <- (level ?cont L99)
=>
   (if ?*print-main-levels* then (printout t _with_ ?fact crlf))
)



