
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / SYSTEM UTILITIES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;         https://github.com/denis-berthier          ;;;
               ;;;              January 2006 - June 2025              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; OS COMMANDS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction OS-create-directory (?dir-name)
    ;;; ?dir-name must be the full path to a directory (with an ending "/")
    (system (str-cat "mkdir " ?dir-name))
)


(deffunction OS-diff (?file1 ?file2)
    (bind ?cmd
        (if (OS-Windows)
            then (str-cat "fc " ?file1 " " ?file2)
            else (str-cat "diff " ?file1 " " ?file2)
        )
    )
    (system ?cmd)
)


(deffunction OS-display-file (?file-in)
    (bind ?cmd
        (if (OS-Windows)
            then (str-cat "type " ?file-in)
            else (str-cat "cat " ?file-in)
        )
    )
    (system ?cmd)
)


(deffunction OS-move-file (?file-in ?file-out)
    (bind ?cmd
        (if (OS-Windows)
            then (str-cat "move /Y " ?file-in " " ?file-out)
            else (str-cat "mv " ?file-in " " ?file-out)
        )
    )
    (system ?cmd)
)


(deffunction OS-copy-file (?file-in ?file-out)
    (bind ?cmd
        (if (OS-Windows)
            then (str-cat "copy /Y " ?file-in " " ?file-out)
            else (str-cat "cp " ?file-in " " ?file-out)
        )
    )
    (system ?cmd)
)


(deffunction OS-append-file1-to-file2 (?file1 ?file2)
    (bind ?cmd
        (if (OS-Windows)
            then (str-cat "type " ?file1 " >> " ?file2)
            else (str-cat "cat " ?file1 " >> " ?file2)
        )
    )
    (system ?cmd)
)


(deffunction OS-remove-first-line-of-file (?inout-file ?tmp-file)
    ;;; remove the spurious first lines printed by SHC
    (bind ?cmd
        (if (OS-Windows)
            then (str-cat "more +2 " ?inout-file " > " ?tmp-file)
            else (str-cat "sed '1d' " ?inout-file " > " ?tmp-file)
        )
    )
    (system ?cmd)
    (OS-move-file ?tmp-file ?inout-file)
)


;;; The following functions can be useful to convert file endings to your OS format
;;; They work on Unix (including MacOS) OR on Windows + Perl

(deffunction dos2unix (?dos-file ?unix-file)
    (bind ?cmd
        (if (OS-Windows)
            then
                (str-cat
                    "perl -pe \"s/\\r\\n/\\n/g\" "
                    ?dos-file
                    " > "
                    ?unix-file
                )
            else
                (str-cat
                  "tr -d '\\r' "
                  " < "
                  ?dos-file
                  " > "
                  ?unix-file
                )
        )
    )
    (system ?cmd)
)


(deffunction unix2dos (?unix-file ?dos-file)
    (bind ?cmd
        (if (OS-Windows)
            then
                (str-cat
                    "perl -pe \"s/\\n/\\r\\n/g\" "
                    ?unix-file
                    " > "
                    ?dos-file
                )
            else
                (str-cat
                    "awk '{ printf \"%s\\r\\n\", $0 }' "
                    ?unix-file
                    " > "
                    ?dos-file
                )
        )
    )
    (system ?cmd)
)



