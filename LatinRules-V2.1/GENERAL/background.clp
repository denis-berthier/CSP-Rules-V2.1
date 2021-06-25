
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              BACKGROUND
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - July 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; This file contains general definitions and facts independent of any particular instance.



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; NUMBERS, ROWS, COLUMNS AND THEIR NAMES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Latin Squares puzzles are generally formulated in terms of numbers in cells, but one could use any symbols.
;;; It would suffice to use global variable ?*numeral-names*
;;; to set up the correspondence between outer symbols and their internal representation by numbers.
;;; We discard  this obvious matter.

;;; Internally, all the objects of any type are represented by integers

;;; number-names are used for displaying values of cells in natural rc-space
;;; numeral-names are used for number coordinates in rn- and cn-spaces


(defglobal
	?*potential-numbers* = 
		(create$ 
			1 2 3 4 5 6 7 8 9 10 
			11 12 13 14 15 16 17 18 19 20 
			21 22 23 24 25 26 27 28 29 30
			31 32 33 34 35 36 37 38 39 40
			41 42 43 44 45 46 47 48 49 50
			51 52 53 54 55 56 57 58 59 60
			61 62 63 64 65 66 67 68 69 70
			71 72 73 74 75 76 77 78 79 80
			81 82 83 84 85 86 87 88 89 90
			91 92 93 94 95 96 97 98 99 100
			101 102 103 104 105 106 107 108 109 110
			111 112 113 114 115 116 117 118 119 120
			121 122 123 124 125 126 127 128 129 130
			131 132 133 134 135 136 137 138 139 140
			141 142 143 144 145 146 147 148 149 150
			151 152 153 154 155 156 157 158 159 160
			161 162 163 164 165 166 167 168 169 170
			171 172 173 174 175 176 177 178 179 180
			181 182 183 184 185 186 187 188 189 190
			191 192 193 194 195 196 197 198 199 200
			201 202 203 204 205 206 207 208 209 210
			211 212 213 214 215 216 217 218 219 220
			221 222 223 224 225 226 227 228 229 230
			231 232 233 234 235 236 237 238 239 240
			241 242 243 244 245 246 247 248 249 250
			251 252 253 254 255 256 257 258 259 260
			261 262 263 264 265 266 267 268 269 270
			271 272 273 274 275 276 277 278 279 280
			281 282 283 284 285 286 287 288 289 290
			291 292 293 294 295 296 297 298 299 300
			301 302 303 304 305 306 307 308 309 310
			311 312 313 314 315 316 317 318 319 320
			321 322 323 324 325 326 327 328 329 330
			331 332 333 334 335 336 337 338 339 340
			341 342 343 344 345 346 347 348 349 350
			351 352 353 354 355 356 357 358 359 360
			361 362 363 364 365 366 367 368 369 370
			371 372 373 374 375 376 377 378 379 380
			381 382 383 384 385 386 387 388 389 390
			391 392 393 394 395 396 397 398 399 400
		)
)

(defglobal
	?*potential-numerals* = ?*potential-numbers*
	?*potential-rows* = ?*potential-numbers*
	?*potential-columns* = ?*potential-numbers*
    ;;; used for Pandiagonal Latin Squares
    ?*potential-diagonals* = ?*potential-numbers*
    ?*potential-anti-diagonals* = ?*potential-numbers*
)


(defglobal
	?*numbers* = (subseq$ ?*potential-numbers* 1 ?*grid-size*)
	?*numerals* = (subseq$ ?*potential-numerals* 1 ?*grid-size*)
	?*rows* = (subseq$ ?*potential-rows* 1 ?*grid-size*)
	?*columns* = (subseq$ ?*potential-columns* 1 ?*grid-size*)
    ;;; used for Pandiagonal Latin Squares
    ?*diagonals* = (subseq$ ?*potential-numbers* 1 ?*grid-size*)
    ?*anti-diagonals* = (subseq$ ?*potential-numbers* 1 ?*grid-size*)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ROWS, COLUMNS AND CELLS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Coordinates
;;; Two cells defined in (row, col) coordinates are the same iff :

(deffunction same-cell (?row1 ?col1 ?row2 ?col2)
	(and (eq ?row1 ?row2) (eq ?col1 ?col2)))
	
(deffunction not-same-cell (?row1 ?col1 ?row2 ?col2)
	(or (neq ?row1 ?row2) (neq ?col1 ?col2))
)


;;; a cell can also be given a global index, ranging from 1 to ?*grid-size* * ?*grid-size*:

(deffunction cell-index (?row ?col)
	(+ (* ?*grid-size* (- ?row 1)) ?col)
)

;;; from the cell-index, row and column coordinates are obtained by:

(deffunction row-from-cell-index (?ind)
	(+	1
		(div (- ?ind 1) ?*grid-size*)
	)
)

(deffunction column-from-cell-index (?ind)
	(+ 1
	   (mod (- ?ind 1) ?*grid-size*)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DIAGONALS AND ANTI-DIAGONALS (FOR PANDIAGONAL VARIANT)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Diagonals and anti-diagonals are numbered 1 to ?*grid-size*:
;;; - diagonals are printed as /1, /2, /3 .... (with /n starting at cell (rn, c1) and going eastwards and upwards
;;; - anti-diagonals are printed as \1, \2, \3 .... (with \n starting at cell (r1, cn) and going westwards and downwards


;;; row-col to diag and anti-diag:

(deffunction row-col-to-diag (?row ?col)
    (+ 1
        (mod (- (+ ?row ?col) 2) ?*grid-size*)
    )
)

(deffunction row-col-to-anti-diag (?row ?col)
    (+ 1
        (mod (+ (- ?col ?row) ?*grid-size*) ?*grid-size*)
    )
)

(deffunction test-row-col-to-diags ()
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?diag (row-col-to-diag ?row ?col))
            (bind ?anti-diag (row-col-to-anti-diag ?row ?col))
            (printout t ?row ?col ", " ?diag ?anti-diag crlf)
        )
    )
)


;;; inverse transformations:

(deffunction diags-to-row (?diag ?anti-diag)
    (bind ?diff (- ?diag ?anti-diag))
    (if (< ?diff 0) then (bind ?diff (+ ?diff ?*grid-size*)))
    (bind ?med (if (evenp ?diff)
                    then (div ?diff 2)
                    else (div (+ ?diff ?*grid-size*) 2)
                )
    )
    (+ 1 ?med)
)

(deffunction diags-to-col (?diag ?anti-diag)
    (bind ?sum (+ ?diag ?anti-diag))
    (bind ?med (if (evenp ?sum)
                    then (div ?sum 2)
                    else (+ 1 (mod (div (- (+ ?sum ?*grid-size*) 2) 2) ?*grid-size*))
                )
    )
    ?med
)

(deffunction test-diags-to-row-col ()
    (foreach ?diag ?*diagonals*
        (foreach ?anti-diag ?*anti-diagonals*
            (bind ?row (diags-to-row ?diag ?anti-diag))
            (bind ?col (diags-to-col ?diag ?anti-diag))
            (printout t ?diag ?anti-diag ", " ?row ?col crlf)
        )
    )
)

;;; test row-col to diags and backwards

(deffunction test-diags ()
    (bind ?error FALSE)
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?diag (row-col-to-diag ?row ?col))
            (bind ?anti-diag (row-col-to-anti-diag ?row ?col))
            (bind ?row2 (diags-to-row ?diag ?anti-diag))
            (bind ?col2 (diags-to-col ?diag ?anti-diag))
            (printout t ?row ?col ", " ?row2 ?col2 crlf)
            (if (or (neq ?row2 ?row) (neq ?col2 ?col)) then (bind ?error TRUE))
        )
    )
    (if ?error then (printout t "There is an error" crlf))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction row-column-to-rc-variable (?row ?col)
    (+ (* ?*internal-factor-2* 1) (* ?*internal-factor* ?row) ?col)
)

(deffunction row-number-to-rn-variable (?row ?nb)
    (+ (* ?*internal-factor-2* 2) (* ?*internal-factor* ?row) ?nb)
)

(deffunction column-number-to-cn-variable (?col ?nb)
    (+ (* ?*internal-factor-2* 3) (* ?*internal-factor* ?col) ?nb)
)

;;; 4 is arbitrarily skipped because used for blocks in Sudoku

(deffunction diagonal-number-to-dn-variable (?diag ?nb)
    (+ (* ?*internal-factor-2* 5) (* ?*internal-factor* ?diag) ?nb)
)

(deffunction anti-diagonal-number-to-an-variable (?anti-diag ?nb)
    (+ (* ?*internal-factor-2* 6) (* ?*internal-factor* ?anti-diag) ?nb)
)





(deffunction csp-var-type (?csp-var)
    (bind ?type (div ?csp-var ?*internal-factor-2*))
    (if (eq ?type 1) then (return rc))
    (if (eq ?type 2) then (return rn))
    (if (eq ?type 3) then (return cn))
    ;;; 4 is arbitrarily skipped because used for blocks in Sudoku
    (if (eq ?type 5) then (return dn))
    (if (eq ?type 6) then (return an))
)


(deffunction rc-cell-of-rc-variable (?csp) (mod ?csp ?*internal-factor-2*))
(deffunction row-of-rc-variable (?csp) (div (mod ?csp ?*internal-factor-2*) ?*internal-factor-1*))
(deffunction column-of-rc-variable (?csp) (mod ?csp ?*internal-factor-1*))

(deffunction rn-cell-of-rn-variable (?csp) (mod ?csp ?*internal-factor-2*))
(deffunction row-of-rn-variable (?csp) (div (mod ?csp ?*internal-factor-2*) ?*internal-factor-1*))
(deffunction number-of-rn-variable (?csp) (mod ?csp ?*internal-factor-1*))

(deffunction cn-cell-of-cn-variable (?csp) (mod ?csp ?*internal-factor-2*))
(deffunction column-of-cn-variable (?csp) (div (mod ?csp ?*internal-factor-2*) ?*internal-factor-1*))
(deffunction number-of-cn-variable (?csp) (mod ?csp ?*internal-factor-1*))

(deffunction dn-cell-of-dn-variable (?csp) (mod ?csp ?*internal-factor-2*))
(deffunction diagonal-of-dn-variable (?csp) (div (mod ?csp ?*internal-factor-2*) ?*internal-factor-1*))
(deffunction number-of-dn-variable (?csp) (mod ?csp ?*internal-factor-1*))

(deffunction an-cell-of-an-variable (?csp) (mod ?csp ?*internal-factor-2*))
(deffunction anti-diagonal-of-an-variable (?csp) (div (mod ?csp ?*internal-factor-2*) ?*internal-factor-1*))
(deffunction number-of-an-variable (?csp) (mod ?csp ?*internal-factor-1*))


    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LABELS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction rc-to-cell (?r ?c)
    (+ (* ?*internal-factor-1* ?r) ?c)
)

(deffunction nrc-to-label (?n ?r ?c)
    (+ (* ?*internal-factor-2* ?n) (* ?*internal-factor-1* ?r) ?c)
)

(deffunction label-number (?label)
    (bind ?label (mod ?label ?*internal-factor-3*)) ;;; to take care of the g-label cases
    (div ?label ?*internal-factor-2*)
)

(deffunction label-cell (?label)
    (mod ?label ?*internal-factor-2*)
)

(deffunction label-row (?label)
    (div (mod ?label ?*internal-factor-2*) ?*internal-factor-1*)
)

(deffunction label-column (?label)
    (mod ?label ?*internal-factor-1*)
)

(deffunction cell-row (?cell)
    (div ?cell ?*internal-factor-1*)
)

(deffunction cell-column (?cell)
    (mod ?cell ?*internal-factor-1*)
)


;;; It is also useful to be able to define labels from the diag anti-diag coordinates
(deffunction nda-to-label (?nb ?diag ?anti-diag)
    (nrc-to-label ?nb (diags-to-row ?diag ?anti-diag) (diags-to-col ?diag ?anti-diag))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LINKS BETWEEN LABELS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction nrc-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
	(if (neq ?nb1 ?nb2)
		then (and (eq ?row1 ?row2) (eq ?col1 ?col2)) ; same rc-cell
		else (or (and (eq ?row1 ?row2) (neq ?col1 ?col2)) ; same row but not same rc-cell
				 (and (eq ?col1 ?col2) (neq ?row1 ?row2)) ; same column but not same rc-cell
                 (and ?*Pandiagonal*
                    (or
                        ; same diag but not same anti-diag
                        (and (eq (row-col-to-diag ?row1 ?col1) (row-col-to-diag ?row2 ?col2))
                            (neq (row-col-to-anti-diag ?row1 ?col1) (row-col-to-anti-diag ?row2 ?col2))
                        )
                        ; same anti-diag but not same diag
                        (and (eq (row-col-to-anti-diag ?row1 ?col1) (row-col-to-anti-diag ?row2 ?col2))
                            (neq (row-col-to-diag ?row1 ?col1) (row-col-to-diag ?row2 ?col2))
                        )
                    )
                )
			 )
	)
)


(deffunction rc-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
	(and (eq ?row1 ?row2) (eq ?col1 ?col2) (neq ?nb1 ?nb2))
)

(deffunction rn-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
	(and (eq ?row1 ?row2) (eq ?nb1 ?nb2) (neq ?col1 ?col2))
)

(deffunction cn-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
	(and (eq ?col1 ?col2) (eq ?nb1 ?nb2) (neq ?row1 ?row2))
)

(deffunction dn-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
    (and (eq ?nb1 ?nb2)
        (eq (row-col-to-diag ?row1 ?col1) (row-col-to-diag ?row2 ?col2))
        (neq (row-col-to-anti-diag ?row1 ?col1) (row-col-to-anti-diag ?row2 ?col2))
    )
)

(deffunction an-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
    (and (eq ?nb1 ?nb2)
        (eq (row-col-to-anti-diag ?row1 ?col1) (row-col-to-anti-diag ?row2 ?col2))
        (neq (row-col-to-diag ?row1 ?col1) (row-col-to-diag ?row2 ?col2))
    )
)



(deffunction labels-linked-by (?lab1 ?lab2 ?csp)
    ;;; the first condition is intended to discard the case when glabels are passed to this function
    (if (or (>= ?lab1 ?*internal-factor-3*) (>= ?lab2 ?*internal-factor-3*)) then (return FALSE))
    (bind ?nb1 (label-number ?lab1))
    (bind ?cell1 (label-cell ?lab1))
    (bind ?row1 (cell-row ?cell1))
    (bind ?col1 (cell-column ?cell1))

    (bind ?nb2 (label-number ?lab2))
    (bind ?cell2 (label-cell ?lab2))
    (bind ?row2 (cell-row ?cell2))
    (bind ?col2 (cell-column ?cell2))
    
    (bind ?lk (csp-var-type ?csp))

    (if (eq ?lk rc) then (return (rc-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)))
    (if (eq ?lk rn) then (return (rn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)))
    (if (eq ?lk cn) then (return (cn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)))
    
    (if (eq ?lk dn) then (return (dn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)))
    (if (eq ?lk an) then (return (an-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)))

    (return FALSE)
)


(deffunction labels-linked (?lab1 ?lab2)
    (bind ?nb1 (label-number ?lab1))
    (bind ?cell1 (label-cell ?lab1))
    (bind ?row1 (cell-row ?cell1))
    (bind ?col1 (cell-column ?cell1))

    (bind ?nb2 (label-number ?lab2))
    (bind ?cell2 (label-cell ?lab2))
    (bind ?row2 (cell-row ?cell2))
    (bind ?col2 (cell-column ?cell2))

    (or
        (rc-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
        (rn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
        (cn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
        (and ?*Pandiagonal*
            (or (dn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
                (an-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
            )
        )
    )
)


(deffunction labels-linked-or (?lab $?labs)
    (bind ?nb1 (label-number ?lab))
    (bind ?cell1 (label-cell ?lab))
    (bind ?row1 (cell-row ?cell1))
    (bind ?col1 (cell-column ?cell1))

    (foreach ?lab2 $?labs
        (bind ?nb2 (label-number ?lab2))
        (bind ?cell2 (label-cell ?lab2))
        (bind ?row2 (cell-row ?cell2))
        (bind ?col2 (cell-column ?cell2))
        (if 
            (or
                (rc-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
                (rn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
                (cn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
                (and ?*Pandiagonal*
                    (or (dn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
                        (an-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
                    )
                )
            )
            then (return TRUE)
        )
	)
	(return FALSE)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; UTILITIES FOR LARGE PUZZLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; utility for transforming larger puzzles (upto 36x36) given in letter form into number form:
;;; in the latter case, number 0 is used as the representation for 36

(deffunction transform-letter-to-nb (?nb)
    (if (or (eq ?nb A) (eq ?nb a) (eq ?nb "A") (eq ?nb "a")) then (bind ?nb 10))
    (if (or (eq ?nb B) (eq ?nb b) (eq ?nb "B") (eq ?nb "b")) then (bind ?nb 11))
    (if (or (eq ?nb C) (eq ?nb c) (eq ?nb "C") (eq ?nb "c")) then (bind ?nb 12))
    (if (or (eq ?nb D) (eq ?nb d) (eq ?nb "D") (eq ?nb "d")) then (bind ?nb 13))
    (if (or (eq ?nb E) (eq ?nb e) (eq ?nb "E") (eq ?nb "e")) then (bind ?nb 14))
    (if (or (eq ?nb F) (eq ?nb f) (eq ?nb "F") (eq ?nb "f")) then (bind ?nb 15))
    (if (or (eq ?nb G) (eq ?nb g) (eq ?nb "G") (eq ?nb "g")) then (bind ?nb 16))
    (if (or (eq ?nb H) (eq ?nb h) (eq ?nb "H") (eq ?nb "h")) then (bind ?nb 17))
    (if (or (eq ?nb I) (eq ?nb i) (eq ?nb "I") (eq ?nb "i")) then (bind ?nb 18))
    (if (or (eq ?nb J) (eq ?nb j) (eq ?nb "J") (eq ?nb "j")) then (bind ?nb 19))
    (if (or (eq ?nb K) (eq ?nb k) (eq ?nb "K") (eq ?nb "k")) then (bind ?nb 20))
    (if (or (eq ?nb L) (eq ?nb l) (eq ?nb "L") (eq ?nb "l")) then (bind ?nb 21))
    (if (or (eq ?nb M) (eq ?nb m) (eq ?nb "M") (eq ?nb "m")) then (bind ?nb 22))
    (if (or (eq ?nb N) (eq ?nb n) (eq ?nb "N") (eq ?nb "n")) then (bind ?nb 23))
    (if (or (eq ?nb O) (eq ?nb o) (eq ?nb "O") (eq ?nb "o")) then (bind ?nb 24))
    (if (or (eq ?nb P) (eq ?nb p) (eq ?nb "P") (eq ?nb "p")) then (bind ?nb 25))
    (if (or (eq ?nb Q) (eq ?nb q) (eq ?nb "Q") (eq ?nb "q")) then (bind ?nb 26))
    (if (or (eq ?nb R) (eq ?nb r) (eq ?nb "R") (eq ?nb "r")) then (bind ?nb 27))
    (if (or (eq ?nb S) (eq ?nb s) (eq ?nb "S") (eq ?nb "s")) then (bind ?nb 28))
    (if (or (eq ?nb T) (eq ?nb t) (eq ?nb "T") (eq ?nb "t")) then (bind ?nb 29))
    (if (or (eq ?nb U) (eq ?nb u) (eq ?nb "U") (eq ?nb "u")) then (bind ?nb 30))
    (if (or (eq ?nb V) (eq ?nb v) (eq ?nb "V") (eq ?nb "v")) then (bind ?nb 31))
    (if (or (eq ?nb W) (eq ?nb w) (eq ?nb "W") (eq ?nb "w")) then (bind ?nb 32))
    (if (or (eq ?nb X) (eq ?nb x) (eq ?nb "X") (eq ?nb "x")) then (bind ?nb 33))
    (if (or (eq ?nb Y) (eq ?nb y) (eq ?nb "Y") (eq ?nb "y")) then (bind ?nb 34))
    (if (or (eq ?nb Z) (eq ?nb z) (eq ?nb "Z") (eq ?nb "z")) then (bind ?nb 35))
    (if (eq ?nb 0) then (bind ?nb 36))
    ?nb
)


;;; reverse transformations

(deffunction transform-nb-to-letter (?nb)
    (if (eq ?nb 10) then (bind ?nb A))
    (if (eq ?nb 11) then (bind ?nb B))
    (if (eq ?nb 12) then (bind ?nb C))
    (if (eq ?nb 13) then (bind ?nb D))
    (if (eq ?nb 14) then (bind ?nb E))
    (if (eq ?nb 15) then (bind ?nb F))
    (if (eq ?nb 16) then (bind ?nb G))
    (if (eq ?nb 17) then (bind ?nb H))
    (if (eq ?nb 18) then (bind ?nb I))
    (if (eq ?nb 19) then (bind ?nb J))
    (if (eq ?nb 20) then (bind ?nb K))
    (if (eq ?nb 21) then (bind ?nb L))
    (if (eq ?nb 22) then (bind ?nb M))
    (if (eq ?nb 23) then (bind ?nb N))
    (if (eq ?nb 24) then (bind ?nb O))
    (if (eq ?nb 25) then (bind ?nb P))
    (if (eq ?nb 26) then (bind ?nb Q))
    (if (eq ?nb 27) then (bind ?nb R))
    (if (eq ?nb 28) then (bind ?nb S))
    (if (eq ?nb 29) then (bind ?nb T))
    (if (eq ?nb 30) then (bind ?nb U))
    (if (eq ?nb 31) then (bind ?nb V))
    (if (eq ?nb 32) then (bind ?nb W))
    (if (eq ?nb 33) then (bind ?nb X))
    (if (eq ?nb 34) then (bind ?nb Y))
    (if (eq ?nb 35) then (bind ?nb Z))
    (if (eq ?nb 36) then (bind ?nb 0))
    ?nb
)


(deffunction test-input-conversions()
    (loop-for-count (?i 1 36)
        (bind ?j (transform-letter-to-nb (transform-nb-to-letter ?i)))
        (if (neq ?i ?j) then (printout t "Error: " ?i " => " ?j crlf))
    )
    TRUE
)
        




