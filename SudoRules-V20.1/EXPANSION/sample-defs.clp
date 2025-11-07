
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / GLOBALS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;         https://github.com/denis-berthier          ;;;
               ;;;            January 2006 - September 2025           ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global variables and functions for collections
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; One works within a global collection of puzzles, defined in some directory.
;;; This directory MUST contain at least two files "solutions.txt" and "minimals.txt".
;;; The following are default values, to be redefined.

(defglobal ?*COLLECTION-DIR* = (str-cat ?*Application-Dir* "EXPANSION/DUMMY-COLLECTION/"))
(defglobal ?*nb-solutions-in-collection* = 0)
(defglobal ?*nb-minimals-in-collection* = 0)
;;; These are fixed names, defined from the above ones:
(defglobal ?*collection-solutions-file* = (str-cat ?*COLLECTION-DIR* "solutions.txt"))
(defglobal ?*collection-minimals-file* = (str-cat ?*COLLECTION-DIR* "minimals.txt"))

(deffunction redefine-collection (?collection-dir ?nb-solutions-in-collection ?nb-minimals-in-collection)
    (bind ?*COLLECTION-DIR* ?collection-dir)
    (bind ?*nb-solutions-in-collection* ?nb-solutions-in-collection)
    (bind ?*nb-minimals-in-collection* ?nb-minimals-in-collection)
    (bind ?*collection-solutions-file* (str-cat ?*COLLECTION-DIR* "solutions.txt"))
    (bind ?*collection-minimals-file* (str-cat ?*COLLECTION-DIR* "minimals.txt"))
)


;;; This is a reference to an empty file,
;;; currently used only in the outsol T&E(3) to high BxB procedure.
;;; In order to be effective, it has to be redefined explicitly.
(defglobal ?*exclusion-file* = (str-cat ?*COLLECTION-DIR* "empty-file.txt"))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global variables and functions for samples
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Within a given collection, there may be several samples of solution grids.
;;; In any sample, all the sub-directories have predefined names.
;;; The following are default values, to be redefined.
;;; BEWARE: the sample size is the number of its solution grids, not of its minimals.

(defglobal ?*Sample-Name* = "DUMMY-SAMPLE")
(defglobal ?*Sample-Size* = 0)
;;; These are fixed names, defined from the above ones:
(defglobal ?*SAMPLE-DIR* = (str-cat ?*COLLECTION-DIR* ?*Sample-Name* "/"))
(defglobal ?*GRIDS-DIR* = (str-cat ?*SAMPLE-DIR* "GRIDS/"))
(defglobal ?*Usols-file* = (str-cat ?*SAMPLE-DIR* "Usols.txt"))


;;; It is useful to be able to redefine the sample, within a fixed collection,
;;; in particular when dealing with multiple samples:

(deffunction redefine-sample (?sample-name ?grid-sample-size)
    (bind ?*Sample-Name* ?sample-name)
    (bind ?*Sample-Size* ?grid-sample-size)
    (bind ?*SAMPLE-DIR* (str-cat ?*COLLECTION-DIR* ?sample-name "/"))
    (bind ?*GRIDS-DIR* (str-cat ?*SAMPLE-DIR* "GRIDS/"))
    (bind ?*Usols-file* (str-cat ?*SAMPLE-DIR* "Usols.txt"))
    TRUE
)

(deffunction redefine-collection-and-sample (?collection-dir ?nb-solutions-in-collection ?nb-minimals-in-collection ?sample-name ?grid-sample-size)
    ;;; redefine the collection:
    (redefine-collection ?collection-dir ?nb-solutions-in-collection ?nb-minimals-in-collection)
    ;;; redefine the sample (with its basic sub-directories and files):
    (redefine-sample ?sample-name ?grid-sample-size)
    TRUE
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global variables and functions dealing with several samples of a fixed collection
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*nb-samples-in-multi-sample* = 0)
(defglobal ?*Multi-Sample-Names-and-Sizes* = (create$ "DUMMY-SAMPLE" 0))

(deffunction redefine-collection-and-samples (
    ;;; To define the collection, same as for a single sample
    ?collection-dir ?nb-solutions-in-collection ?nb-minimals-in-collection
    ;;; To define the number of samples, their names and their sizes
    ;;; $?multi-sample-names-and-sizes must be a list of length 2 * ?nb-samples-in-multi-sample
    ?nb-samples-in-multi-sample
    $?multi-sample-names-and-sizes
    )
    ;;; Collection:
    (redefine-collection ?collection-dir ?nb-solutions-in-collection ?nb-minimals-in-collection)
    ;;; Samples:
    (bind ?*nb-samples-in-multi-sample* ?nb-samples-in-multi-sample)
    (bind ?*Multi-Sample-Names-and-Sizes* ?multi-sample-names-and-sizes)
    TRUE
)

(deffunction multi-sample-nth-name (?n)
    ;;; ?n must be ≥ 1
    (nth$ (- (* 2 ?n) 1) ?*Multi-Sample-Names-and-Sizes*)
)

(deffunction multi-sample-nth-size (?n)
    ;;; ?n must be ≥ 1
    (nth$ (* 2 ?n) ?*Multi-Sample-Names-and-Sizes*)
)

(deffunction multi-sample-switch-to-nth-sample (?n)
    (redefine-sample (multi-sample-nth-name ?n) (multi-sample-nth-size ?n))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Global variables for controlling what's printed
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; if TRUE, the path to the T&E(k) border is printed
(defglobal ?*verbose-distance-to-TEk-border* = FALSE)

