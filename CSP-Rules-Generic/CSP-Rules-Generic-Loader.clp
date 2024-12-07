
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              GENERIC LOADER
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - November 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; Notice that this generic loader also loads the application-specific files

(if (eq ?*inference-engine* CLIPS) then (load (str-cat ?*CSP-Rules-Generic-Dir* "UTIL" ?*Directory-symbol* "CLIPS-utils.clp")))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; SET THE DEPENDENCIES BETWEEN RULES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For pure logical reasons
;;; and in order to respect the definitions of resolution theories in PBCS,
;;; the loading of some rules implies the loading of other rules,
;;; as specified by the following implications.
;;; A dummy defglobal is used for the purpose of setting these dependencies before loading.

(defglobal ?*dummy-variable-for-setting-generic-rules-dependencies* = (progn
    ;;; Function redefine-all-chains-max-length is called before setting all the other dependencies,
    ;;; so as to ensure the priority of the global declarations such as
    ;;; ?*all-chains-max-length*, ?*all-ORk-chains-max-length*
    ;;; ?*all-ORk-forcing-whips-max-length*, ?*all-ORk-contrad-whips-max-length*, ?*all-ORk-whips-max-length*
    ;;; ?*all-ORk-forcing-gwhips-max-length*, ?*all-ORk-contrad-gwhips-max-length* and ?*all-ORk-gwhips-max-length*
    (redefine-all-chains-max-length)
    
    ;;; Subsets and gSubsets
    ;;; Finned Fish have no predefined generic variables, but there are some for g-Subsets
    (if ?*g-Subsets* then (bind ?*g-Subsets[4]* TRUE) (bind ?*Subsets* TRUE))
    (if ?*g-Subsets[4]* then (bind ?*g-Subsets[3]* TRUE) (bind ?*Subsets[3]* TRUE))
    (if ?*g-Subsets[3]* then (bind ?*g-Subsets[2]* TRUE) (bind ?*Subsets[3]* TRUE))
    
    ;;; Subsets are not coded generically,
    ;;; but they have pre-defined generic globals, saliences and print nrc functions
    (if ?*Subsets* then (bind ?*Subsets[4]* TRUE))
    (if ?*Subsets[4]* then (bind ?*Subsets[3]* TRUE))
    (if ?*Subsets[3]* then (bind ?*Subsets[2]* TRUE))
    
    
    ;;; All the generic chain-rules
    (if ?*All-generic-chain-rules* then
        (bind ?*Typed-Bivalue-Chains* TRUE)
        (bind ?*Typed-z-Chains* TRUE)
        (bind ?*Typed-t-Whips* TRUE)
        (bind ?*Typed-Whips* TRUE)
        (bind ?*Typed-G-Whips* TRUE)
        (bind ?*Forcing-G-Braids* TRUE) ; which will imply all whips, braids...
        ;;; add those that are not implied by the previous ones:
        (bind ?*Bivalue-Chains* TRUE)
        (bind ?*G-Bivalue-Chains* TRUE)
        (bind ?*z-Chains* TRUE)
        (bind ?*t-Whips* TRUE)
    )
        
    ;;; Bi-Whips, Bi-Braids, ...
    (if ?*Bi-Braids* then
        (bind ?*Bi-Whips* TRUE) (bind ?*biwhips-max-length* (max 2 ?*bibraids-max-length* ?*biwhips-max-length*))
    )
    (if ?*B*-Braids* then 
        ;;; not => W*-Whips, because, as  they are coded,
        ;;; B*-Braids can be used in conjunction with Bi-T&E-contrads, while W*-Whips can only use bi-whips contrads
        (bind ?*Braids* TRUE) (bind ?*braids-max-length* (max ?*bibraids-max-length* ?*braids-max-length*))
    )
    (if ?*W*-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*w*-whips-max-length* ?*whips-max-length*))
    )

    ;;; Forcing-whips, forcing-gwhips, forcing-braids, forcing-gbraids
    (if ?*Forcing-G-Braids* then
        (bind ?*Forcing-G-Whips* TRUE) (bind ?*forcing-gwhips-max-length* (max ?*forcing-gbraids-max-length* ?*forcing-gwhips-max-length*))
        (bind ?*Forcing-Braids* TRUE) (bind ?*forcing-braids-max-length* (max ?*forcing-gbraids-max-length* ?*forcing-braids-max-length*))
        (bind ?*G-Braids* TRUE) (bind ?*gbraids-max-length* (max ?*forcing-gbraids-max-length* ?*gbraids-max-length*))
    )
    (if ?*Forcing-G-Whips* then
        (bind ?*Forcing-Whips* TRUE) (bind ?*forcing-whips-max-length* (max ?*forcing-gwhips-max-length* ?*forcing-whips-max-length*))
        (bind ?*G-Whips* TRUE) (bind ?*gwhips-max-length* (max ?*forcing-gwhips-max-length* ?*gwhips-max-length*))
    )
    (if ?*Forcing-Braids* then
        (bind ?*Forcing-Whips* TRUE) (bind ?*forcing-whips-max-length* (max ?*forcing-braids-max-length* ?*forcing-whips-max-length*))
        (bind ?*Braids* TRUE) (bind ?*braids-max-length* (max ?*forcing-braids-max-length* ?*braids-max-length*))
    )
    (if ?*Forcing-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*forcing-whips-max-length* ?*whips-max-length*))
    )
    (if ?*Forcing5-Whips* then (bind ?*Forcing4-Whips* TRUE))
    (if ?*Forcing4-Whips* then (bind ?*Forcing3-Whips* TRUE))
    (if ?*Forcing3-Whips* then (bind ?*Forcing2-Whips* TRUE))
    (if ?*Forcing2-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*forcing-whips-max-length* ?*whips-max-length*))
    )
    
    
    
    ;;; ORk-forcing-g-whips, ORk-contrad-g-whips, ORk-g-whips
    ;;; The following is in case the lengths have been set independently by the user:
    
    ;;; ORk-Forcing-G-Whips have standard consistency-preserving dependencies,
    ;;; and they imply ORk-Forcing-Whips
    (if ?*OR6-Forcing-G-Whips* then
        (bind ?*OR5-Forcing-G-Whips* TRUE)
        (if (< ?*OR5-forcing-gwhips-max-length* ?*OR6-forcing-gwhips-max-length*) then
            (bind ?*OR5-forcing-gwhips-max-length* ?*OR6-forcing-gwhips-max-length*)
        )
        (bind ?*OR6-Forcing-Whips* TRUE)
        (if (< ?*OR6-forcing-whips-max-length* ?*OR6-forcing-gwhips-max-length*) then
            (bind ?*OR6-forcing-whips-max-length* ?*OR6-forcing-gwhips-max-length*)
        )
    )
    (if ?*OR5-Forcing-G-Whips* then
        (bind ?*OR4-Forcing-G-Whips* TRUE)
        (if (< ?*OR4-forcing-gwhips-max-length* ?*OR5-forcing-gwhips-max-length*) then
            (bind ?*OR4-forcing-gwhips-max-length* ?*OR5-forcing-gwhips-max-length*)
        )
        (bind ?*OR5-Forcing-Whips* TRUE)
        (if (< ?*OR5-forcing-whips-max-length* ?*OR5-forcing-gwhips-max-length*) then
            (bind ?*OR5-forcing-whips-max-length* ?*OR5-forcing-gwhips-max-length*)
        )
    )
    (if ?*OR4-Forcing-G-Whips* then
        (bind ?*OR3-Forcing-G-Whips* TRUE)
        (if (< ?*OR3-forcing-gwhips-max-length* ?*OR4-forcing-gwhips-max-length*) then
            (bind ?*OR3-forcing-gwhips-max-length* ?*OR4-forcing-gwhips-max-length*)
        )
        (bind ?*OR4-Forcing-Whips* TRUE)
        (if (< ?*OR4-forcing-whips-max-length* ?*OR4-forcing-gwhips-max-length*) then
            (bind ?*OR4-forcing-whips-max-length* ?*OR4-forcing-gwhips-max-length*)
        )
    )
    (if ?*OR3-Forcing-G-Whips* then
        (bind ?*OR2-Forcing-G-Whips* TRUE)
        (if (< ?*OR2-forcing-gwhips-max-length* ?*OR3-forcing-gwhips-max-length*) then
            (bind ?*OR2-forcing-gwhips-max-length* ?*OR3-forcing-gwhips-max-length*)
        )
        (bind ?*OR3-Forcing-Whips* TRUE)
        (if (< ?*OR3-forcing-whips-max-length* ?*OR3-forcing-gwhips-max-length*) then
            (bind ?*OR3-forcing-whips-max-length* ?*OR3-forcing-gwhips-max-length*)
        )
    )
    (if ?*OR2-Forcing-G-Whips* then
        (bind ?*OR2-Forcing-Whips* TRUE)
        (if (< ?*OR2-forcing-whips-max-length* ?*OR2-forcing-gwhips-max-length*) then
            (bind ?*OR2-forcing-whips-max-length* ?*OR2-forcing-gwhips-max-length*)
        )
    )

    
    ;;; ORk-G-Whips have standard consistency-preserving dependencies,
    ;;; they imply ORk-Contrad-G-whips of same length and same k, which are indeed a special case,
    ;;; and they also imply ORk-Whips
    (if ?*OR6-G-Whips* then
        (bind ?*OR5-G-Whips* TRUE)
        (bind ?*OR5-gwhips-max-length* (max ?*OR6-gwhips-max-length* ?*OR5-gwhips-max-length*))
        (bind ?*OR6-Contrad-G-Whips* TRUE)
        (if (< ?*OR6-contrad-gwhips-max-length* ?*OR6-gwhips-max-length*) then
            (bind ?*OR6-contrad-gwhips-max-length* ?*OR6-gwhips-max-length*)
        )
        (bind ?*OR6-Whips* TRUE)
        (bind ?*OR6-whips-max-length* (max ?*OR5-whips-max-length* ?*OR5-gwhips-max-length*))
    )
    (if ?*OR5-G-Whips* then
        (bind ?*OR4-G-Whips* TRUE)
        (bind ?*OR4-gwhips-max-length* (max ?*OR5-gwhips-max-length* ?*OR4-gwhips-max-length*))
        (bind ?*OR5-Contrad-G-Whips* TRUE)
        (if (< ?*OR5-contrad-gwhips-max-length* ?*OR5-gwhips-max-length*) then
            (bind ?*OR5-contrad-gwhips-max-length* ?*OR5-gwhips-max-length*)
        )
        (bind ?*OR5-Whips* TRUE)
        (bind ?*OR5-whips-max-length* (max ?*OR5-whips-max-length* ?*OR5-gwhips-max-length*))
    )
    (if ?*OR4-G-Whips* then
        (bind ?*OR3-G-Whips* TRUE)
        (bind ?*OR3-gwhips-max-length* (max ?*OR4-gwhips-max-length* ?*OR3-gwhips-max-length*))
        (bind ?*OR4-Contrad-G-Whips* TRUE)
        (if (< ?*OR4-contrad-gwhips-max-length* ?*OR4-gwhips-max-length*) then
            (bind ?*OR4-contrad-gwhips-max-length* ?*OR4-gwhips-max-length*)
        )
        (bind ?*OR4-Whips* TRUE)
        (bind ?*OR4-whips-max-length* (max ?*OR4-whips-max-length* ?*OR4-gwhips-max-length*))
    )
    (if ?*OR3-G-Whips* then
        (bind ?*OR2-G-Whips* TRUE)
        (bind ?*OR2-gwhips-max-length* (max ?*OR3-gwhips-max-length* ?*OR2-gwhips-max-length*))
        (bind ?*OR3-Contrad-G-Whips* TRUE)
        (if (< ?*OR3-contrad-gwhips-max-length* ?*OR3-gwhips-max-length*) then
            (bind ?*OR3-contrad-gwhips-max-length* ?*OR3-gwhips-max-length*)
        )
        (bind ?*OR3-Whips* TRUE)
        (bind ?*OR3-whips-max-length* (max ?*OR3-whips-max-length* ?*OR3-gwhips-max-length*))
    )
    (if ?*OR2-G-Whips* then
        (bind ?*OR2-Contrad-G-Whips* TRUE)
        (if (< ?*OR2-contrad-gwhips-max-length* ?*OR2-gwhips-max-length*) then
            (bind ?*OR2-contrad-gwhips-max-length* ?*OR2-gwhips-max-length*)
        )
        (bind ?*OR2-Whips* TRUE)
        (bind ?*OR2-whips-max-length* (max ?*OR2-whips-max-length* ?*OR2-gwhips-max-length*))
    )
    
    ;;; ORk-Contrad-G-Whips have standard consistency-preserving dependencies and they imply ORk-Contrad-Whips
    (if ?*OR6-Contrad-G-Whips* then
        (bind ?*OR5-Contrad-G-Whips* TRUE)
        (bind ?*OR5-contrad-gwhips-max-length* (max ?*OR6-contrad-gwhips-max-length* ?*OR5-contrad-gwhips-max-length*))
        (bind ?*OR6-Contrad-Whips* TRUE)
        (if (< ?*OR6-contrad-whips-max-length* ?*OR6-contrad-gwhips-max-length*) then
            (bind ?*OR6-contrad-whips-max-length* ?*OR6-contrad-gwhips-max-length*)
        )
    )
    (if ?*OR5-Contrad-G-Whips* then
        (bind ?*OR4-Contrad-G-Whips* TRUE)
        (bind ?*OR4-contrad-gwhips-max-length* (max ?*OR5-contrad-gwhips-max-length* ?*OR4-contrad-gwhips-max-length*))
        (bind ?*OR5-Contrad-Whips* TRUE)
        (if (< ?*OR5-contrad-whips-max-length* ?*OR5-contrad-gwhips-max-length*) then
            (bind ?*OR5-contrad-whips-max-length* ?*OR5-contrad-gwhips-max-length*)
        )
    )
    (if ?*OR4-Contrad-G-Whips* then
        (bind ?*OR3-Contrad-G-Whips* TRUE)
        (bind ?*OR3-contrad-gwhips-max-length* (max ?*OR4-contrad-gwhips-max-length* ?*OR3-contrad-gwhips-max-length*))
        (bind ?*OR4-Contrad-Whips* TRUE)
        (if (< ?*OR4-contrad-whips-max-length* ?*OR4-contrad-gwhips-max-length*) then
            (bind ?*OR4-contrad-whips-max-length* ?*OR4-contrad-gwhips-max-length*)
        )
    )
    (if ?*OR3-Contrad-G-Whips* then
        (bind ?*OR2-Contrad-G-Whips* TRUE)
        (bind ?*OR2-contrad-gwhips-max-length* (max ?*OR3-contrad-gwhips-max-length* ?*OR2-contrad-gwhips-max-length*))
        (bind ?*OR3-Contrad-Whips* TRUE)
        (if (< ?*OR3-contrad-whips-max-length* ?*OR3-contrad-gwhips-max-length*) then
            (bind ?*OR3-contrad-whips-max-length* ?*OR3-contrad-gwhips-max-length*)
        )
    )
    (if ?*OR2-Contrad-G-Whips* then
        (bind ?*OR2-Contrad-Whips* TRUE)
        (if (< ?*OR2-contrad-whips-max-length* ?*OR2-contrad-gwhips-max-length*) then
            (bind ?*OR2-contrad-whips-max-length* ?*OR2-contrad-gwhips-max-length*)
        )
    )

    
    
    ;;; ORk-forcing-whips, ORk-contrad-whips, ORk-whips
    ;;; The following is in case the lengths have been set independently by the user:

    ;;; ORk-Forcing-Whips have standard consistency-preserving dependencies.
    (if ?*OR8-Forcing-Whips* then
        (bind ?*OR7-Forcing-Whips* TRUE)
        (if (< ?*OR7-forcing-whips-max-length* ?*OR8-forcing-whips-max-length*) then
            (bind ?*OR7-forcing-whips-max-length* ?*OR8-forcing-whips-max-length*)
        )
    )
    (if ?*OR7-Forcing-Whips* then
        (bind ?*OR6-Forcing-Whips* TRUE)
        (if (< ?*OR6-forcing-whips-max-length* ?*OR7-forcing-whips-max-length*) then
            (bind ?*OR6-forcing-whips-max-length* ?*OR7-forcing-whips-max-length*)
        )
    )
    (if ?*OR6-Forcing-Whips* then
        (bind ?*OR5-Forcing-Whips* TRUE)
        (if (< ?*OR5-forcing-whips-max-length* ?*OR6-forcing-whips-max-length*) then
            (bind ?*OR5-forcing-whips-max-length* ?*OR6-forcing-whips-max-length*)
        )
    )
    (if ?*OR5-Forcing-Whips* then
        (bind ?*OR4-Forcing-Whips* TRUE)
        (if (< ?*OR4-forcing-whips-max-length* ?*OR5-forcing-whips-max-length*) then
            (bind ?*OR4-forcing-whips-max-length* ?*OR5-forcing-whips-max-length*)
        )
    )
    (if ?*OR4-Forcing-Whips* then
        (bind ?*OR3-Forcing-Whips* TRUE)
        (if (< ?*OR3-forcing-whips-max-length* ?*OR4-forcing-whips-max-length*) then
            (bind ?*OR3-forcing-whips-max-length* ?*OR4-forcing-whips-max-length*)
        )
    )
    (if ?*OR3-Forcing-Whips* then
        (bind ?*OR2-Forcing-Whips* TRUE)
        (if (< ?*OR2-forcing-whips-max-length* ?*OR3-forcing-whips-max-length*) then
            (bind ?*OR2-forcing-whips-max-length* ?*OR3-forcing-whips-max-length*)
        )
    )
    
    
    ;;; ORk-Whips have standard consistency-preserving dependencies,
    ;;; and they imply ORk-contrad-whips of same length and same k, which are indeed a special case.
    (if ?*OR8-Whips* then
        (bind ?*OR7-Whips* TRUE)
        (bind ?*OR7-whips-max-length* (max ?*OR8-whips-max-length* ?*OR7-whips-max-length*))
        (bind ?*OR8-Contrad-Whips* TRUE)
        (if (< ?*OR8-contrad-whips-max-length* ?*OR8-whips-max-length*) then
            (bind ?*OR8-contrad-whips-max-length* ?*OR8-whips-max-length*)
        )
    )
    (if ?*OR7-Whips* then
        (bind ?*OR6-Whips* TRUE)
        (bind ?*OR6-whips-max-length* (max ?*OR7-whips-max-length* ?*OR6-whips-max-length*))
        (bind ?*OR7-Contrad-Whips* TRUE)
        (if (< ?*OR7-contrad-whips-max-length* ?*OR7-whips-max-length*) then
            (bind ?*OR7-contrad-whips-max-length* ?*OR7-whips-max-length*)
        )
    )
    (if ?*OR6-Whips* then
        (bind ?*OR5-Whips* TRUE)
        (bind ?*OR5-whips-max-length* (max ?*OR6-whips-max-length* ?*OR5-whips-max-length*))
        (bind ?*OR6-Contrad-Whips* TRUE)
        (if (< ?*OR6-contrad-whips-max-length* ?*OR6-whips-max-length*) then
            (bind ?*OR6-contrad-whips-max-length* ?*OR6-whips-max-length*)
        )
    )
    (if ?*OR5-Whips* then
        (bind ?*OR4-Whips* TRUE)
        (bind ?*OR4-whips-max-length* (max ?*OR5-whips-max-length* ?*OR4-whips-max-length*))
        (bind ?*OR5-Contrad-Whips* TRUE)
        (if (< ?*OR5-contrad-whips-max-length* ?*OR5-whips-max-length*) then
            (bind ?*OR5-contrad-whips-max-length* ?*OR5-whips-max-length*)
        )
    )
    (if ?*OR4-Whips* then
        (bind ?*OR3-Whips* TRUE)
        (bind ?*OR3-whips-max-length* (max ?*OR4-whips-max-length* ?*OR3-whips-max-length*))
        (bind ?*OR4-Contrad-Whips* TRUE)
        (if (< ?*OR4-contrad-whips-max-length* ?*OR4-whips-max-length*) then
            (bind ?*OR4-contrad-whips-max-length* ?*OR4-whips-max-length*)
        )
    )
    (if ?*OR3-Whips* then
        (bind ?*OR2-Whips* TRUE)
        (bind ?*OR2-whips-max-length* (max ?*OR3-whips-max-length* ?*OR2-whips-max-length*))
        (bind ?*OR3-Contrad-Whips* TRUE)
        (if (< ?*OR3-contrad-whips-max-length* ?*OR3-whips-max-length*) then
            (bind ?*OR3-contrad-whips-max-length* ?*OR3-whips-max-length*)
        )
    )
    (if ?*OR2-Whips* then
        (bind ?*OR2-Contrad-Whips* TRUE)
        (if (< ?*OR2-contrad-whips-max-length* ?*OR2-whips-max-length*) then
            (bind ?*OR2-contrad-whips-max-length* ?*OR2-whips-max-length*)
        )
    )

    
    ;;; ORk-Contrad-Whips are a special case of ORk-Whips, but an interesting one.
    ;;; They have standard consistency-preserving dependencies:
    (if ?*OR8-Contrad-Whips* then
        (bind ?*OR7-Contrad-Whips* TRUE)
        (bind ?*OR7-contrad-whips-max-length* (max ?*OR8-contrad-whips-max-length* ?*OR7-contrad-whips-max-length*))
    )
    (if ?*OR7-Contrad-Whips* then
        (bind ?*OR6-Contrad-Whips* TRUE)
        (bind ?*OR6-contrad-whips-max-length* (max ?*OR7-contrad-whips-max-length* ?*OR6-contrad-whips-max-length*))
    )
    (if ?*OR6-Contrad-Whips* then
        (bind ?*OR5-Contrad-Whips* TRUE)
        (bind ?*OR5-contrad-whips-max-length* (max ?*OR6-contrad-whips-max-length* ?*OR5-contrad-whips-max-length*))
    )
    (if ?*OR5-Contrad-Whips* then
        (bind ?*OR4-Contrad-Whips* TRUE)
        (bind ?*OR4-contrad-whips-max-length* (max ?*OR5-contrad-whips-max-length* ?*OR4-contrad-whips-max-length*))
    )
    (if ?*OR4-Contrad-Whips* then
        (bind ?*OR3-Contrad-Whips* TRUE)
        (bind ?*OR3-contrad-whips-max-length* (max ?*OR4-contrad-whips-max-length* ?*OR3-contrad-whips-max-length*))
    )
    (if ?*OR3-Contrad-Whips* then
        (bind ?*OR2-Contrad-Whips* TRUE)
        (bind ?*OR2-contrad-whips-max-length* (max ?*OR3-contrad-whips-max-length* ?*OR2-contrad-whips-max-length*))
    )
    
    
    
    ;;; Bivalue-chains, whips, g-bivalue-chains, gwhips, braids, gbraids
    (if ?*G-Braids* then
        (bind ?*G-Whips* TRUE) (bind ?*gwhips-max-length* (max ?*gbraids-max-length* ?*gwhips-max-length*))
        (bind ?*Braids* TRUE) (bind ?*braids-max-length* (max ?*gbraids-max-length* ?*braids-max-length*))
    )
    (if ?*G-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*gwhips-max-length* ?*whips-max-length*))
    )
    (if ?*G2-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*g2whips-max-length* ?*whips-max-length*))
    )
    (if ?*Braids* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*braids-max-length* ?*whips-max-length*))
    )
    
    ;;; (typed or not) z-chains and g-bivalue chains imply (similarly typed or not) bivalue-chains
    (if ?*z-Chains* then (bind ?*Bivalue-Chains* TRUE))
    (if ?*G-Bivalue-Chains* then (bind ?*Bivalue-Chains* TRUE))
    (if ?*Typed-z-Chains* then (bind ?*Typed-Bivalue-Chains* TRUE))

    ;;; now done within check-config
    ;(if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*
    ;        ?*Typed-G-Whips*
    ;        ?*Forcing-G-Whips* ?*Forcing-G-Braids*
    ;        ?*All-generic-chain-rules*
    ;        ?*OR2-Forcing-G-Whips* ?*OR2-Contrad-G-Whips* ?*OR2-G-Whips*
    ;    ) then
    ;    (bind ?*G-Labels* TRUE)
    ;)
    
    ;;; Typed-whips
    (if ?*Typed-G-Whips* then
        (bind ?*Typed-Whips* TRUE) (bind ?*typed-whips-max-length* (max ?*typed-gwhips-max-length* ?*typed-whips-max-length*))
    )

    
    ;;; All the resolution theories, apart from BRT, must have Whips[1]
    ;;; There is a special global variable ?*Whips[1]* to take this into account
    ;;; Whips[1] are required by any other resolution theory
    (if (or ?*Subsets[2]*
            ?*Typed-Bivalue-Chains*
            ?*Bivalue-Chains*
            ?*Typed-z-Chains*
            ?*z-Chains*
            ?*Oddagons*
            ?*Typed-t-Whips*
            ?*t-Whips*
            ?*Typed-Whips*
            ?*Whips*
            ?*Quick-B-Rating*
            ?*OR2-Forcing-Whips*
            ?*OR2-Contrad-Whips*
            ?*OR2-Whips*
        )
        then (bind ?*Whips[1]* TRUE)
    )
    (if (or ?*OR2-Forcing-Whips* ?*OR2-Contrad-Whips* ?*OR2-Whips*)
        then (bind ?*OR2-Whips[1]* TRUE)
    )
    (if (or ?*OR3-Forcing-Whips* ?*OR3-Contrad-Whips* ?*OR3-Whips*)
        then (bind ?*OR3-Whips[1]* TRUE)
    )
    (if (or ?*OR4-Forcing-Whips* ?*OR4-Contrad-Whips* ?*OR4-Whips*)
        then (bind ?*OR4-Whips[1]* TRUE)
    )
    (if (or ?*OR5-Forcing-Whips* ?*OR5-Contrad-Whips* ?*OR5-Whips*)
        then (bind ?*OR5-Whips[1]* TRUE)
    )
    (if (or ?*OR6-Forcing-Whips* ?*OR6-Contrad-Whips* ?*OR6-Whips*)
        then (bind ?*OR6-Whips[1]* TRUE)
    )
    (if (or ?*OR7-Forcing-Whips* ?*OR7-Contrad-Whips* ?*OR7-Whips*)
        then (bind ?*OR7-Whips[1]* TRUE)
    )
    (if (or ?*OR8-Forcing-Whips* ?*OR8-Contrad-Whips* ?*OR8-Whips*)
        then (bind ?*OR8-Whips[1]* TRUE)
    )

    ;;; Typed-Chains is an abstract name for any kind of typed chain
    ;;; It can be used in links.clp and glinks.clp as a condition for adding
    ;;; the relevant typed forms of predicates (csp-linked ....
    (if (or ?*Typed-Bivalue-Chains*
            ?*Typed-z-Chains*
            ?*Typed-t-Whips*
            ?*Typed-Whips*
            ?*Typed-G-Whips*
        )
        then
            (bind ?*Typed-Chains* TRUE)
            (bind ?*Typed-Partial-Whips[1]* TRUE)
    )
    
    
    ;;; partial-whips[i] must be loaded for some rules to work:
    (if ?*z-Chains* then (bind ?*partial-whips-max-length* (max ?*partial-whips-max-length* 1)))
    (if ?*t-Whips* then (bind ?*partial-whips-max-length* (max ?*partial-whips-max-length* (- ?*t-whips-max-length* 1))))
    (if ?*Whips* then (bind ?*partial-whips-max-length* (max ?*partial-whips-max-length* (- ?*whips-max-length* 1))))
    
    ;;; Contrary to ORk-Forcing-Whips, whose length is (indirectly) further restricted by ?*all-chains-max-length*,
    ;;; ORk-Contrad-Whips and ORk-Whips need access to partial-whips
    (if ?*OR2-Contrad-Whips* then (bind ?*partial-whips-max-length* (max ?*partial-whips-max-length* (- ?*OR2-contrad-whips-max-length* 1))))

    ;;; partial-gwhips[i] must be loaded for some rules to work:
    (if ?*G-Whips* then (bind ?*partial-gwhips-max-length* (- ?*gwhips-max-length* 1)))
    
    ;;; Contrary to ORk-Forcing-G-Whips, whose length is (indirectly) further restricted by ?*all-chains-max-length*,
    ;;; ORk-Contrad-G-Whips and ORk-G-Whips neeed access to partial-gwhips
    (if ?*OR2-Contrad-G-Whips* then (bind ?*partial-gwhips-max-length* (max ?*partial-gwhips-max-length* (- ?*OR2-contrad-gwhips-max-length* 1))))

    (printout t "Generic consistency-preserving rules dependencies set" crlf)
    
    ;;; Check consitency of the blocked choices
    (if (or ?*blocked-Subsets* ?*blocked-chains* ?*blocked-oddagons*)
        then (bind ?*blocked-Whips[1]* TRUE)
    )
    ;;; define values of secondary variables:
    (bind ?*blocked-bivalue-chains* ?*blocked-chains*)
    (bind ?*blocked-z-chains* ?*blocked-chains*)
    (bind ?*blocked-t-Whips* ?*blocked-chains*)

    ;;; If unblocked-behaviour is selected in the configuration file, reset the global unblocked behaviour:
    (if ?*unblocked-behaviour* then
        (bind ?*blocked-Whips[1]* FALSE)
        (bind ?*blocked-bivalue-chains* FALSE)
        (bind ?*blocked-z-chains* FALSE)
        (bind ?*blocked-t-Whips* FALSE)
        (bind ?*blocked-Subsets* FALSE)
        (bind ?*blocked-oddagons* FALSE)
    )
    
    ;;; Now compute the maximum level reached by at least one generic rule:
    (if ?*Bivalue-Chains* then (bind ?*max-level* (max ?*max-level* ?*bivalue-chains-max-length*)))
    (if ?*z-Chains* then (bind ?*max-level* (max ?*max-level* ?*z-chains-max-length*)))
    (if ?*Oddagons* then (bind ?*max-level* (max ?*max-level* ?*oddagons-max-length*)))
    (if ?*t-Whips* then (bind ?*max-level* (max ?*max-level* ?*t-whips-max-length*)))
    (if ?*Whips* then (bind ?*max-level* (max ?*max-level* ?*whips-max-length*)))
    (if ?*Braids* then (bind ?*max-level* (max ?*max-level* ?*braids-max-length*)))

    (if ?*G-Bivalue-Chains* then (bind ?*max-level* (max ?*max-level* ?*g-bivalue-chains-max-length*)))
    (if ?*G2-Whips* then (bind ?*max-level* (max ?*max-level* ?*g2whips-max-length*)))
    (if ?*G-Whips* then (bind ?*max-level* (max ?*max-level* ?*gwhips-max-length*)))
    (if ?*G2-Braids* then (bind ?*max-level* (max ?*max-level* ?*g2braids-max-length*)))
    (if ?*G-Braids* then (bind ?*max-level* (max ?*max-level* ?*gbraids-max-length*)))
    
    (if ?*Typed-Bivalue-Chains* then (bind ?*max-level* (max ?*max-level* ?*typed-bivalue-chains-max-length*)))
    (if ?*Typed-z-Chains* then (bind ?*max-level* (max ?*max-level* ?*typed-z-chains-max-length*)))
    (if ?*Typed-t-Whips* then (bind ?*max-level* (max ?*max-level* ?*typed-t-whips-max-length*)))
    (if ?*Typed-Whips* then (bind ?*max-level* (max ?*max-level* ?*typed-whips-max-length*)))
    (if ?*Typed-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*typed-gwhips-max-length*)))
    
    
    (if ?*OR2-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-forcing-whips-max-length*)))
    (if ?*OR3-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-forcing-whips-max-length*)))
    (if ?*OR4-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-forcing-whips-max-length*)))
    (if ?*OR5-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-forcing-whips-max-length*)))
    (if ?*OR6-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-forcing-whips-max-length*)))
    (if ?*OR7-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-forcing-whips-max-length*)))
    (if ?*OR8-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-forcing-whips-max-length*)))
    
    (if ?*OR2-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-contrad-whips-max-length*)))
    (if ?*OR3-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-contrad-whips-max-length*)))
    (if ?*OR4-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-contrad-whips-max-length*)))
    (if ?*OR5-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-contrad-whips-max-length*)))
    (if ?*OR5-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-contrad-whips-max-length*)))
    (if ?*OR7-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-contrad-whips-max-length*)))
    (if ?*OR8-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-contrad-whips-max-length*)))
    
    (if ?*OR2-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-whips-max-length*)))
    (if ?*OR3-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-whips-max-length*)))
    (if ?*OR4-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-whips-max-length*)))
    (if ?*OR5-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-whips-max-length*)))
    (if ?*OR6-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-whips-max-length*)))
    (if ?*OR7-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-whips-max-length*)))
    (if ?*OR8-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-whips-max-length*)))
    
    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips*) then
        (if ?*OR2-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-forcing-whips-max-length*)))
        (if ?*OR3-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-forcing-whips-max-length*)))
        (if ?*OR4-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-forcing-whips-max-length*)))
        (if ?*OR5-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-forcing-whips-max-length*)))
        (if ?*OR6-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-forcing-whips-max-length*)))
        (if ?*OR7-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-forcing-whips-max-length*)))
        (if ?*OR8-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-forcing-whips-max-length*)))
    )
    
    
    (if ?*OR2-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-forcing-gwhips-max-length*)))
    (if ?*OR3-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-forcing-gwhips-max-length*)))
    (if ?*OR4-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-forcing-gwhips-max-length*)))
    (if ?*OR5-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-forcing-gwhips-max-length*)))
    (if ?*OR6-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-forcing-gwhips-max-length*)))
    (if ?*OR7-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-forcing-gwhips-max-length*)))
    (if ?*OR8-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-forcing-gwhips-max-length*)))
    
    (if ?*OR2-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-contrad-gwhips-max-length*)))
    (if ?*OR3-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-contrad-gwhips-max-length*)))
    (if ?*OR4-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-contrad-gwhips-max-length*)))
    (if ?*OR5-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-contrad-gwhips-max-length*)))
    (if ?*OR5-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-contrad-gwhips-max-length*)))
    (if ?*OR7-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-contrad-gwhips-max-length*)))
    (if ?*OR8-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-contrad-gwhips-max-length*)))
    
    (if ?*OR2-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-gwhips-max-length*)))
    (if ?*OR3-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-gwhips-max-length*)))
    (if ?*OR4-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-gwhips-max-length*)))
    (if ?*OR5-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-gwhips-max-length*)))
    (if ?*OR6-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-gwhips-max-length*)))
    (if ?*OR7-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-gwhips-max-length*)))
    (if ?*OR8-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-gwhips-max-length*)))
    
    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips*) then
        (if ?*OR2-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-forcing-gwhips-max-length*)))
        (if ?*OR3-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-forcing-gwhips-max-length*)))
        (if ?*OR4-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-forcing-gwhips-max-length*)))
        (if ?*OR5-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-forcing-gwhips-max-length*)))
        (if ?*OR6-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-forcing-gwhips-max-length*)))
        (if ?*OR7-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-forcing-gwhips-max-length*)))
        (if ?*OR8-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-forcing-gwhips-max-length*)))
    )
    
    
    (if ?*Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*forcing-whips-max-length*)))
    (if ?*Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*forcing-gwhips-max-length*)))
    (if ?*Forcing-Braids* then (bind ?*max-level* (max ?*max-level* ?*forcing-braids-max-length*)))
    (if ?*Forcing-G-Braids* then (bind ?*max-level* (max ?*max-level* ?*forcing-gbraids-max-length*)))

    TRUE
))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; DEFINE THE GENERIC RATING TYPE ACCORDING TO THE ABOVE DEPENDENCIES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Notice that this generic rating doesn't take into account the application-specific rules

(deffunction define-generic-rating-type ()
    ;;; typed-chains
    (bind ?typed-generic-rating-type "")
    (if ?*Typed-Bivalue-Chains* then (bind ?typed-generic-rating-type "TyBC"))
    (if ?*Typed-z-Chains* then (bind ?typed-generic-rating-type "TyZ"))
    (if ?*Typed-t-Whips* then (bind ?typed-generic-rating-type "TytW"))
    (if (and ?*Typed-z-Chains* ?*Typed-t-Whips*) then (bind ?typed-generic-rating-type "TyZ+TytW"))
    (if ?*Typed-Whips* then (bind ?typed-generic-rating-type "TyW"))
    (if ?*Typed-G-Whips* then (bind ?typed-generic-rating-type "TygW"))

    ;;; Untyped-chain-rules with no g-labels
    (bind ?*generic-rating-type* "")
    (if ?*Whips[1]* then (bind ?*generic-rating-type* "W1"))
    (if ?*Bivalue-Chains* then (bind ?*generic-rating-type* "BC"))
    (if ?*z-Chains* then (bind ?*generic-rating-type* "Z"))
    (if ?*t-Whips* then (bind ?*generic-rating-type* "tW"))
    (if (and ?*z-Chains* ?*t-Whips*) then (bind ?*generic-rating-type* "Z+tW"))
    (if ?*Whips* then (bind ?*generic-rating-type* "W"))
    (if ?*Braids* then (bind ?*generic-rating-type* "B"))
    ;;; not yet implemented:
    (if ?*Quick-B-Rating* then (bind ?*generic-rating-type* "QB"))

    ;;; chains with g-labels
    (if ?*G-Bivalue-Chains* then
        (bind ?*generic-rating-type* "gBC")
        (if ?*z-Chains* then (bind ?*generic-rating-type* "Z+gBC"))
        (if ?*t-Whips* then (bind ?*generic-rating-type* "tW+gBC"))
        (if (and ?*z-Chains* ?*t-Whips*) then (bind ?*generic-rating-type* "Z+tW+gBC"))
        (if ?*Whips* then (bind ?*generic-rating-type* "W+gBC"))
        (if ?*Braids* then (bind ?*generic-rating-type* "B+gBC"))
    )
    ;;; remember that g2-Whips and g-Whips subsume bivalue-chains, z-chains and t-whips
    (if ?*G2-Whips* then
        (bind ?*generic-rating-type* "g2W")
        (if ?*Braids* then (bind ?*generic-rating-type* "B+g2W"))
    )
    (if ?*G-Whips* then
        (bind ?*generic-rating-type* "gW")
        (if ?*Braids* then (bind ?*generic-rating-type* "B+gW"))
    )
    (if ?*G-Braids* then (bind ?*generic-rating-type* "gB"))
    
    ;;; exotic chains:
    (if ?*Oddagons* then
        (bind ?*generic-rating-type*
            (if (eq ?*generic-rating-type* "") then "O" else (str-cat ?*generic-rating-type* "+O"))
        )
    )

    ;;; Fuse the typed and untyped ratings:
    (bind ?*generic-rating-type*
        (if (eq ?typed-generic-rating-type "")
            then ?*generic-rating-type*
            else (str-cat ?typed-generic-rating-type "+" ?*generic-rating-type*)
        )
    )

    ;;; Forcing
    ;;; Note that Forcing Chains and ORk-Forcing chains are normally not intended to be used at the same time
    (bind ?forcing-type "")
    
    ;;; Forcing chains
    (if ?*Forcing-Whips* then (bind ?forcing-type "FW"))
    (if ?*Forcing3-Whips* then (bind ?forcing-type "F3W"))
    (if ?*Forcing4-Whips* then (bind ?forcing-type "F4W"))
    (if ?*Forcing5-Whips* then (bind ?forcing-type "F5W"))
    (if ?*Forcing-G-Whips* then (bind ?forcing-type "FgW"))
    (if ?*Forcing-Braids* then (bind ?forcing-type "FB"))
    (if (and ?*Forcing-G-Whips* ?*Forcing-Braids*) then (bind ?forcing-type "FgW+FB"))
    (if ?*Forcing-G-Braids* then (bind ?forcing-type "FgB"))

    
    ;;; ORk-forcing-whips
    (bind ?ORk-forcing-type "")
    (if ?*OR2-Forcing-Whips* then (bind ?ORk-forcing-type "OR2FW"))
    (if ?*OR3-Forcing-Whips* then (bind ?ORk-forcing-type "OR3FW"))
    (if ?*OR4-Forcing-Whips* then (bind ?ORk-forcing-type "OR4FW"))
    (if ?*OR5-Forcing-Whips* then (bind ?ORk-forcing-type "OR5FW"))
    (if ?*OR6-Forcing-Whips* then (bind ?ORk-forcing-type "OR6FW"))
    (if ?*OR7-Forcing-Whips* then (bind ?ORk-forcing-type "OR7FW"))
    (if ?*OR8-Forcing-Whips* then (bind ?ORk-forcing-type "OR8FW"))
    
    ;;; ORk-forcing-gwhips
    (if ?*OR2-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR2FgW"))
    (if ?*OR3-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR3FgW"))
    (if ?*OR4-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR4FgW"))
    (if ?*OR5-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR5FgW"))
    (if ?*OR6-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR6FgW"))
    (if ?*OR7-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR7FgW"))
    (if ?*OR8-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR8FgW"))

    (if (neq ?ORk-forcing-type "") then
        (bind ?forcing-type (if (eq ?forcing-type "") then ?ORk-forcing-type else (str-cat ?forcing-type "+" ?ORk-forcing-type)))
    )

    ;;; ORk-contrad-whips
    (bind ?ORk-contrad-type "")
    (if ?*OR2-Contrad-Whips* then (bind ?ORk-contrad-type "OR2CW"))
    (if ?*OR3-Contrad-Whips* then (bind ?ORk-contrad-type "OR3CW"))
    (if ?*OR4-Contrad-Whips* then (bind ?ORk-contrad-type "OR4CW"))
    (if ?*OR5-Contrad-Whips* then (bind ?ORk-contrad-type "OR5CW"))
    (if ?*OR6-Contrad-Whips* then (bind ?ORk-contrad-type "OR6CW"))
    (if ?*OR7-Contrad-Whips* then (bind ?ORk-contrad-type "OR7CW"))
    (if ?*OR8-Contrad-Whips* then (bind ?ORk-contrad-type "OR8CW"))

    ;;; ORk-whips
    (bind ?ORk-whip-type "")
    (if ?*OR2-Whips* then (bind ?ORk-whip-type "OR2W"))
    (if ?*OR3-Whips* then (bind ?ORk-whip-type "OR3W"))
    (if ?*OR4-Whips* then (bind ?ORk-whip-type "OR4W"))
    (if ?*OR5-Whips* then (bind ?ORk-whip-type "OR5W"))
    (if ?*OR6-Whips* then (bind ?ORk-whip-type "OR6W"))
    (if ?*OR7-Whips* then (bind ?ORk-whip-type "OR7W"))
    (if ?*OR8-Whips* then (bind ?ORk-whip-type "OR8W"))
    

    ;;; ORk-contrad-gwhips
    (if ?*OR2-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR2CgW"))
    (if ?*OR3-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR3CgW"))
    (if ?*OR4-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR4CgW"))
    (if ?*OR5-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR5CgW"))
    (if ?*OR6-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR6CgW"))
    (if ?*OR7-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR7CgW"))
    (if ?*OR8-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR8CgW"))

    ;;; ORk-gwhips
    (if ?*OR2-G-Whips* then (bind ?ORk-whip-type "OR2gW"))
    (if ?*OR3-G-Whips* then (bind ?ORk-whip-type "OR3gW"))
    (if ?*OR4-G-Whips* then (bind ?ORk-whip-type "OR4gW"))
    (if ?*OR5-G-Whips* then (bind ?ORk-whip-type "OR5gW"))
    (if ?*OR6-G-Whips* then (bind ?ORk-whip-type "OR6gW"))
    (if ?*OR7-G-Whips* then (bind ?ORk-whip-type "OR7gW"))
    (if ?*OR8-G-Whips* then (bind ?ORk-whip-type "OR8gW"))

    
    (if (neq ?ORk-whip-type "") then (bind ?ORk-contrad-type ?ORk-whip-type))
    (if (neq ?ORk-contrad-type "") then
        (bind ?forcing-type (if (eq ?forcing-type "") then ?ORk-contrad-type else (str-cat ?forcing-type "+" ?ORk-contrad-type)))
    )

    (if (neq ?forcing-type "") then (bind ?*generic-rating-type* (str-cat ?*generic-rating-type* "+" ?forcing-type)))

    ;;; Add the relevant part for Bi-Whips, Bi-Braids, ...

    ?*generic-rating-type*
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; LOAD GENERIC FUNCTIONS AND RULES + APPLICATION-SPECIFIC TEMPLATES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; basic parameters, structures and functions
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "parameters.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "saliences.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "saliences.clp"))
;;; initialise the saliences within a load, using a dummy variable
(defglobal ?*dummy-variable-for-saliences* = (initialise-saliences))

(load (str-cat ?*CSP-Rules-Generic-Dir* "UTIL" ?*Directory-symbol* "utils.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "UTIL" ?*Directory-symbol* "file-utils.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "UTIL" ?*Directory-symbol* "stats.clp"))

;;; load generic templates
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "templates.clp"))
;;; in any application, also load application specific templates 
;;; because those that are modified must be loaded before any rule <<<<<<<<<<<<<
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "templates.clp"))


(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "generic-background.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "generic-output.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "solve.clp"))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; basic rules: management rules and BRT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Notice that in this version of CSP-Rules, ECP and Singles rely on function labels-linked
;;; As a result, T&E and DFS may be slower

(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "SimulatedElim.clp")) ; for simulating non-programmed rules
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "compute-RS.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "manage.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "ECP.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Single.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "blocked-rules-fns.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "blocked-rules.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "focused-elims.clp"))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Generic modules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "modules.clp"))
(load (str-cat ?*CSP-Rules-Generic-Dir* "MODULES" ?*Directory-symbol* "enter-module.clp"))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Generic Chain Rules at levels 1- and 1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; init-links
(if (or ?*Whips[1]* ?*Bi-Whips* ?*Bi-Braids* ?*Forcing{2}-TE* ?*Forcing{3}-TE* ?*Forcing{4}-TE*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
)

;;; start play
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "play.clp"))


;;; Whips[1]
(if ?*Whips[1]* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
            ?*Directory-symbol* "WHIPS" ?*Directory-symbol* "Whips[1].clp"
        )
    )
)

;;; ORk-Forcing-Whips[1]
;;; ORk-Whips[1] are currently in the Forcing-Whips directory, but this should change
;;; Note that ORk-Contrad-Whips[1] are obtained as ORk-Forcing-Whips[1]
;;; Both can be considered as mere ORk-Whips[1]

(if ?*OR2-Whips[1]* then
    (if (and ?*OR2-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-FORCING-WHIPS" ?*Directory-symbol* "OR2-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-WHIPS" ?*Directory-symbol* "OR2-Whips[1].clp")
        )
    )
)
(if ?*OR3-Whips[1]* then
    (if (and ?*OR3-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-FORCING-WHIPS" ?*Directory-symbol* "OR3-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-WHIPS" ?*Directory-symbol* "OR3-Whips[1].clp")
        )
    )
)
(if ?*OR4-Whips[1]* then
    (if (and ?*OR4-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-FORCING-WHIPS" ?*Directory-symbol* "OR4-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-WHIPS" ?*Directory-symbol* "OR4-Whips[1].clp")
        )
    )
)
(if ?*OR5-Whips[1]* then
    (if (and ?*OR5-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-FORCING-WHIPS" ?*Directory-symbol* "OR5-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-WHIPS" ?*Directory-symbol* "OR5-Whips[1].clp")
        )
    )
)
(if ?*OR6-Whips[1]* then
    (if (and ?*OR6-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-FORCING-WHIPS" ?*Directory-symbol* "OR6-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-WHIPS" ?*Directory-symbol* "OR6-Whips[1].clp")
        )
    )
)
(if ?*OR7-Whips[1]* then
    (if (and ?*OR7-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-FORCING-WHIPS" ?*Directory-symbol* "OR7-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-WHIPS" ?*Directory-symbol* "OR7-Whips[1].clp")
        )
    )
)
(if ?*OR8-Whips[1]* then
    (if (and ?*OR8-Forcing-Whips* ?*ORk-Forcing-Whips-before-ORk-Whips*)
        then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-FORCING-WHIPS" ?*Directory-symbol* "OR8-Forcing-Whips[1].clp")
        )
        else
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-WHIPS" ?*Directory-symbol* "OR8-Whips[1].clp")
        )
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Generic Chain Rules at level 1+
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Bivalue and k-value
(if (or ?*Subsets[2]* ?*Bivalue-Chains* ?*Typed-Bivalue-Chains* ?*Oddagons* ?*Forcing-Whips* ?*special-TE* ?*Forcing{2}-TE* ?*special-DFS*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "Bivalue.clp"))
)

(if ?*Forcing2-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "2-value.clp"))
)
(if ?*Forcing3-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "3-value.clp"))
)
(if ?*Forcing4-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "4-value.clp") )
)
(if ?*Forcing5-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "5-value.clp"))
)

(load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC" ?*Directory-symbol* "update-ORk-relations.clp"))
(if (or ?*Forcing2-Whips* ?*OR2-Forcing-Whips* ?*OR2-Contrad-Whips* ?*OR2-Whips*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
        ?*Directory-symbol* "SYMMETRIFY-ORk"
        ?*Directory-symbol* "symmetrify-OR2-relations.clp"))
)
(if (or ?*Forcing3-Whips* ?*OR3-Forcing-Whips* ?*OR3-Contrad-Whips* ?*OR3-Whips*) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
        ?*Directory-symbol* "SYMMETRIFY-ORk"
        ?*Directory-symbol* "symmetrify-OR3-relations.clp"))
)
(if (or ?*Forcing4-Whips* ?*OR4-Forcing-Whips* ?*OR4-Contrad-Whips* ?*OR4-Whips*) then
    (if (or ?*Forcing4-Whips* ?*OR4-Forcing-Whips*)
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR4-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR4-relations.clp"))
    )
)
(if (or ?*Forcing5-Whips* ?*OR5-Forcing-Whips* ?*OR5-Contrad-Whips* ?*OR5-Whips*) then
    (if (or ?*Forcing5-Whips* ?*OR5-Forcing-Whips*)
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR5-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR5-relations.clp"))
    )
)
(if (or ?*OR6-Forcing-Whips* ?*OR6-Contrad-Whips* ?*OR6-Whips*) then
    (if ?*OR6-Forcing-Whips*
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR6-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR6-relations.clp"))
    )
)
(if (or ?*OR7-Forcing-Whips* ?*OR7-Contrad-Whips* ?*OR7-Whips*) then
    (if ?*OR7-Forcing-Whips*
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR7-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR7-relations.clp"))
    )
)
(if (or ?*OR8-Forcing-Whips* ?*OR8-Contrad-Whips* ?*OR8-Whips*) then
    (if ?*OR8-Forcing-Whips*
        then (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "symmetrify-OR8-relations.clp"))
        else (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SYMMETRIFY-ORk"
                ?*Directory-symbol* "partial-symmetrify-OR8-relations.clp"))
    )
)

;;; g-labels and g-links
(if ?*G-Labels* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "glabels.clp"))
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "init-glinks.clp"))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Generic Chain Rules at levels ?i > 1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; for JESS compatibility "loop-for-count" is avoided

;;; General tracking rules
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "track-levels.clp"))


;;; load the rules explicitly chosen at level 1 plus the rules they require

(if ?*Quick-B-Rating* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-SPEED"
            ?*Directory-symbol* "QUICK-BRAIDS"
            ?*Directory-symbol* "Quick-Braids-Functions.clp")
    )
)
 


;;; typed-partial-whips[1], used by typed-z-chains ≥ 2, typed-t-whips ≥ 2 and typed-whips ≥ 2
(if (or
        (and ?*Typed-z-Chains* (<= 2 ?*typed-z-chains-max-length*))
        (and ?*Typed-t-Whips* (<= 2 ?*typed-t-whips-max-length*))
        (and ?*Typed-Whips* (<= 2 ?*typed-whips-max-length*))
    ) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-PARTIAL-WHIPS"
                ?*Directory-symbol* "Typed-Partial-Whips[1].clp")
    )
)

;;; partial-whips[1], used by z-chains ≥ 2, t-whips ≥ 2, whips ≥ 2 (and ORk-Forcing-Whips ≥ 2)
;(if (or
;        (and ?*z-Chains* (<= 2 ?*z-chains-max-length*))
;        (and ?*t-Whips* (<= 2 ?*t-whips-max-length*))
;        (and ?*Whips* (<= 2 ?*whips-max-length*))
;        ;;; partial-whips in ORk-Forcing-Whips are deliberately restricted by ?*all-chains-max-length*
;        ;;; and there is no reason to add the following condition:
;        ; (and ?*OR2-Forcing-Whips* (<= 2 ?*OR2-forcing-whips-max-length*))
;        (and ?*Quick-B-Rating* (<= 1 ?*braids-max-length*))
;    ) then
;    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
;            ?*Directory-symbol* "PARTIAL-WHIPS"
;            ?*Directory-symbol* "Partial-Whips[1].clp")
;    )
;)



(bind ?i 2)
(while (<= ?i 36)
    (if (>= ?*max-level* ?i) then
        (printout t crlf crlf "LOADING GENERIC RULES AT LEVEL " ?i ":" crlf)
    )

    ;;; typed-bivalue-chains ≥ 2
    (if (and ?*Typed-Bivalue-Chains* (<= ?i ?*typed-bivalue-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "TYPED-BIVALUE-CHAINS"
            ?*Directory-symbol* "Typed-Bivalue-Chains[" ?i "].clp")
        )
    )
    ;;; bivalue-chains ≥ 2
    (if (and ?*Bivalue-Chains* (<= ?i ?*bivalue-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "BIVALUE-CHAINS"
            ?*Directory-symbol* "Bivalue-Chains[" ?i "].clp")
        )
    )
    

    ;;; typed-z-chains ≥ 2
    (if (and ?*Typed-z-Chains* (<= ?i ?*typed-z-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-Z-CHAINS"
                ?*Directory-symbol* "Typed-z-chains[" ?i "].clp")
        )
    )

    ;;; z-chains ≥ 2
    (if (and ?*z-Chains* (<= ?i ?*z-chains-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "Z-CHAINS"
                ?*Directory-symbol* "z-chains[" ?i "].clp")
        )
    )
    
    
    ;;; oddagons (?i odd ≥ 3)
    (if (and ?*Oddagons* (>= ?i 3) (oddp ?i) (<= ?i ?*oddagons-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "ODDAGONS"
            ?*Directory-symbol* "Oddagons[" ?i "].clp")
        )
    )

    
    ;;; typed-partial-whips ≥ 2, used only by typed-t-whips, typed-whips and typed-z-chains[<= 3]
    (if (or (and ?*Typed-t-Whips* (<= (- ?i 1) ?*typed-t-whips-max-length*))
            (and ?*Typed-Whips* (<= (- ?i 1) ?*typed-whips-max-length*))
            (and ?*Typed-z-Chains* (<= ?i 3))
        ) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "TYPED-PARTIAL-WHIPS"
                    ?*Directory-symbol* "Typed-Partial-Whips[" (- ?i 1) "].clp")
        )
    )
    ;;; typed-t-whips ≥ 2
    (if (and ?*Typed-t-Whips* (<= ?i ?*typed-t-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "TYPED-T-WHIPS"
                    ?*Directory-symbol* "Typed-t-Whips[" ?i "].clp")
        )
    )
    ;;; typed-whips ≥ 2
    (if (and ?*Typed-Whips* (<= ?i ?*typed-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "TYPED-WHIPS"
                ?*Directory-symbol* "Typed-Whips[" ?i "].clp")
        )
    )
    
    
    ;;; partial-whips[?i - 1]
    ;;; rememebr that z-chains[2] require partial-whips[1]
    (if (or (<= (- ?i 1) ?*partial-whips-max-length*) (and (eq ?i 1) ?*z-Chains*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "PARTIAL-WHIPS"
                ?*Directory-symbol* "Partial-Whips[" (- ?i 1) "].clp")
        )
    )
    ;;; t-whips ≥ 2
    (if (and ?*t-Whips* (<= ?i ?*t-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                    ?*Directory-symbol* "T-WHIPS"
                    ?*Directory-symbol* "T-Whips[" ?i "].clp")
        )
    )
    ;;; whips ≥ 2
    (if (and ?*Whips* (<= ?i ?*whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "WHIPS"
                ?*Directory-symbol* "Whips[" ?i "].clp")
        )
    )
    
    
    ;;; ORk-splitting rules
    (if (and ?*allow-ORk-splitting* (or ?*OR2-Forcing-Whips* ?*OR2-Contrad-Whips*) (evenp ?i) (<= ?i 10)) then
        (bind ?k 2)
        (while (<= ?k 16)
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "SPLIT-ORk"
                ?*Directory-symbol* "split-OR" ?k "-ch[" ?i "].clp")
            )
            (bind ?k (+ ?k 1))
        )
    )
    
    
    ;;; OR2-forcing-whips, OR2-contrad-whips, OR2-whips
    (if (and ?*OR2-Forcing-Whips* (<= ?i ?*OR2-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-FORCING-WHIPS"
            ?*Directory-symbol* "OR2-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR2-Contrad-Whips* (<= ?i ?*OR2-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR2-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR2-Whips* (>= ?i 2) (<= ?i ?*OR2-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-WHIPS"
            ?*Directory-symbol* "OR2-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR2-WHIPS"
            ?*Directory-symbol* "Partial-OR2-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR3-forcing-whips, OR3-contrad-whips, OR3-whips
    (if (and ?*OR3-Forcing-Whips* (<= ?i ?*OR3-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-FORCING-WHIPS"
            ?*Directory-symbol* "OR3-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-Contrad-Whips* (<= ?i ?*OR3-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR3-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-Whips* (>= ?i 2) (<= ?i ?*OR3-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-WHIPS"
            ?*Directory-symbol* "OR3-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR3-WHIPS"
            ?*Directory-symbol* "Partial-OR3-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR4-forcing-whips, OR4-contrad-whips, OR4-whips
    (if (and ?*OR4-Forcing-Whips* (<= ?i ?*OR4-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-FORCING-WHIPS"
            ?*Directory-symbol* "OR4-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-Contrad-Whips* (<= ?i ?*OR4-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR4-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-Whips* (>= ?i 2) (<= ?i ?*OR4-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-WHIPS"
            ?*Directory-symbol* "OR4-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR4-WHIPS"
            ?*Directory-symbol* "Partial-OR4-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR5-forcing-whips, OR5-contrad-whips, OR5-whips
    (if (and ?*OR5-Forcing-Whips* (<= ?i ?*OR5-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-FORCING-WHIPS"
            ?*Directory-symbol* "OR5-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-Contrad-Whips* (<= ?i ?*OR5-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR5-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-Whips* (>= ?i 2) (<= ?i ?*OR5-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-WHIPS"
            ?*Directory-symbol* "OR5-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR5-WHIPS"
            ?*Directory-symbol* "Partial-OR5-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR6-forcing-whips, OR6-contrad-whips and OR6-whips
    (if (and ?*OR6-Forcing-Whips* (<= ?i ?*OR6-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-FORCING-WHIPS"
            ?*Directory-symbol* "OR6-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-Contrad-Whips* (<= ?i ?*OR6-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR6-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-Whips* (>= ?i 2) (<= ?i ?*OR6-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-WHIPS"
            ?*Directory-symbol* "OR6-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR6-WHIPS"
            ?*Directory-symbol* "Partial-OR6-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR7-forcing-whips, OR7-contrad-whips and OR7-whips
    (if (and ?*OR7-Forcing-Whips* (<= ?i ?*OR7-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-FORCING-WHIPS"
            ?*Directory-symbol* "OR7-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR7-Contrad-Whips* (<= ?i ?*OR7-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR7-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR7-Whips* (>= ?i 2) (<= ?i ?*OR7-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR7-WHIPS"
            ?*Directory-symbol* "OR7-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR7-WHIPS"
            ?*Directory-symbol* "Partial-OR7-Whips[" (- ?i 1) "].clp")
        )
    )
    
    ;;; OR8-forcing-whips, OR8-contrad-whips and OR8-whips
    (if (and ?*OR8-Forcing-Whips* (<= ?i ?*OR8-forcing-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-FORCING-WHIPS"
            ?*Directory-symbol* "OR8-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR8-Contrad-Whips* (<= ?i ?*OR8-contrad-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-CONTRAD-WHIPS"
            ?*Directory-symbol* "OR8-Contrad-Whips[" ?i "].clp")
        )
    )
    (if (and ?*OR8-Whips* (>= ?i 2) (<= ?i ?*OR8-whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR8-WHIPS"
            ?*Directory-symbol* "OR8-Whips[" ?i "].clp")
        )
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "PARTIAL-OR8-WHIPS"
            ?*Directory-symbol* "Partial-OR8-Whips[" (- ?i 1) "].clp")
        )
    )
    
    
    ;;; g-bivalue-chains
    (if (and ?*G-Bivalue-Chains* (>= ?i 1) (<= ?i ?*g-bivalue-chains-max-length*)) then ;;; start at 1
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "G-BIVALUE-CHAINS"
                ?*Directory-symbol* "g-Bivalue-Chains[" ?i "].clp")
        )
    )
    
    
    ;;; G2-Whips always use the memory version
    (if (and ?*G2-Whips* (<= ?i ?*g2whips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-MEMORY"
                ?*Directory-symbol* "G2-WHIPS"
                ?*Directory-symbol* "g2Whips[" ?i "].clp")
        )
    )

    ;;; typed-g-whips
    ;(if (and ?*Typed-G-Whips* (<= ?i ?*typed-gwhips-max-length*)) then
    ;    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
    ;         ?*Directory-symbol* "TYPED-G-WHIPS" ?*Directory-symbol* "Typed-gWhips[" ?i "].clp")
    ;    )
    ;)

    ;;; partial-g-whips (their loading is decided by ?*partial-gwhips-max-length*)
    (if (<= (- ?i 1) ?*partial-gwhips-max-length*) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "PARTIAL-G-WHIPS" ?*Directory-symbol* "Partial-gWhips[" (- ?i 1) "].clp")
        )
    )
    ;;; g-whips
    (if (and ?*G-Whips* (<= ?i ?*gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "G-WHIPS" ?*Directory-symbol* "gWhips[" ?i "].clp")
        )
    )
    
    
    ;;; OR2-forcing-g-whips, OR2-contrad-g-whips and OR2-gwhips
    (if (and ?*OR2-Forcing-G-Whips* (<= ?i ?*OR2-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR2-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR2-Contrad-G-Whips* (<= ?i ?*OR2-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR2-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR2-G-Whips* (>= ?i 2) (<= ?i ?*OR2-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR2-G-WHIPS"
            ?*Directory-symbol* "OR2-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR2-G-WHIPS"
                ?*Directory-symbol* "Partial-OR2-gWhips[" (- ?i 1) "].clp")
            )
        )
    )
    
    ;;; OR3-forcing-g-whips, OR3-contrad-g-whips and OR3-gwhips
    (if (and ?*OR3-Forcing-G-Whips* (<= ?i ?*OR3-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR3-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-Contrad-G-Whips* (<= ?i ?*OR3-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR3-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR3-G-Whips* (>= ?i 2) (<= ?i ?*OR3-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR3-G-WHIPS"
            ?*Directory-symbol* "OR3-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR3-G-WHIPS"
                ?*Directory-symbol* "Partial-OR3-gWhips[" (- ?i 1) "].clp")
            )
        )
    )
    
    ;;; OR4-forcing-g-whips, OR4-contrad-g-whips and OR4-gwhips
    (if (and ?*OR4-Forcing-G-Whips* (<= ?i ?*OR4-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR4-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-Contrad-G-Whips* (<= ?i ?*OR4-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR4-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR4-G-Whips* (>= ?i 2) (<= ?i ?*OR4-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR4-G-WHIPS"
            ?*Directory-symbol* "OR4-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR4-G-WHIPS"
                ?*Directory-symbol* "Partial-OR4-gWhips[" (- ?i 1) "].clp")
            )
        )
    )
    
    ;;; OR5-forcing-g-whips, OR5-contrad-g-whips and OR5-gwhips
    (if (and ?*OR5-Forcing-G-Whips* (<= ?i ?*OR5-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR5-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-Contrad-G-Whips* (<= ?i ?*OR5-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR5-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR5-G-Whips* (>= ?i 2) (<= ?i ?*OR5-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR5-G-WHIPS"
            ?*Directory-symbol* "OR5-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR5-G-WHIPS"
                ?*Directory-symbol* "Partial-OR5-gWhips[" (- ?i 1) "].clp")
            )
        )
    )
    
    ;;; OR6-forcing-g-whips, OR6-contrad-g-whips and OR6-gwhips
    (if (and ?*OR6-Forcing-G-Whips* (<= ?i ?*OR6-forcing-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-FORCING-G-WHIPS"
            ?*Directory-symbol* "OR6-Forcing-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-Contrad-G-Whips* (<= ?i ?*OR6-contrad-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-CONTRAD-G-WHIPS"
            ?*Directory-symbol* "OR6-Contrad-gWhips[" ?i "].clp")
        )
    )
    (if (and ?*OR6-G-Whips* (>= ?i 2) (<= ?i ?*OR6-gwhips-max-length*)) then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
            ?*Directory-symbol* "OR6-G-WHIPS"
            ?*Directory-symbol* "OR6-gWhips[" ?i "].clp")
        )
        (if (> ?i 2) then
            (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-EXOTIC"
                ?*Directory-symbol* "PARTIAL-OR6-G-WHIPS"
                ?*Directory-symbol* "Partial-OR6-gWhips[" (- ?i 1) "].clp")
            )
        )
    )

    
    
    ;;; braids ≥ 3
    (if (and ?*Braids* (>= ?i 3) (<= ?i ?*braids-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "BRAIDS"
                ?*Directory-symbol* "Braids[" ?i "].clp")
        )
    )
    
    ;;; B-rating ≥ 2
    (if (and ?*Quick-B-Rating* (<= ?i ?*braids-max-length*)) then ;;; start at 2
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-SPEED"
                ?*Directory-symbol* "QUICK-BRAIDS"
                ?*Directory-symbol* "Quick-Braids[" ?i "].clp")
        )
    )
    
    ;;; g-braids
    (if (and ?*G-Braids* (>= ?i 3) (<= ?i ?*gbraids-max-length*)) then  ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type*
                ?*Directory-symbol* "G-BRAIDS" ?*Directory-symbol* "gBraids[" ?i "].clp")
        )
    )
    
    
    ;;; forcing whips
    (if (and ?*Forcing-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-WHIPS"
            ?*Directory-symbol* "Forcing-Whips[" ?i "].clp")
        )
    )

    (if (and ?*Forcing2-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR2-FORCING-WHIPS"
            ?*Directory-symbol* "OR2-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*Forcing3-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR3-FORCING-WHIPS"
            ?*Directory-symbol* "OR3-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*Forcing4-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR4-FORCING-WHIPS"
            ?*Directory-symbol* "OR4-Forcing-Whips[" ?i "].clp")
        )
    )
    (if (and ?*Forcing5-Whips* (>= ?i 3) (<= ?i ?*forcing-whips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "OR5-FORCING-WHIPS"
            ?*Directory-symbol* "OR5-Forcing-Whips[" ?i "].clp")
        )
    )
    
    
    ;;; forcing g-whips
    (if (and ?*Forcing-G-Whips* (>= ?i 3) (<= ?i ?*forcing-gwhips-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-G-WHIPS"
            ?*Directory-symbol* "Forcing-gWhips[" ?i "].clp")
        )
    )
    
    ;;; forcing braids
    (if (and ?*Forcing-Braids* (>= ?i 4) (<= ?i ?*forcing-braids-max-length*)) then ;;; start at 4
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-BRAIDS"
            ?*Directory-symbol* "Forcing-Braids[" ?i "].clp")
        )
    )

    ;;; forcing-g-braids
    (if (and ?*Forcing-G-Braids* (>= ?i 3) (<= ?i ?*forcing-gbraids-max-length*)) then ;;; start at 3
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
            ?*Directory-symbol* "FORCING-G-BRAIDS"
            ?*Directory-symbol* "Forcing-gBraids[" ?i "].clp")
        )
    )
    
    (bind ?i (+ ?i 1))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; T&E, Forcing T&E, Backdoors, Anti-Backdoors, Anti-Backdoor-Pairs and DFS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; only one of TE1, TE2 or TE3 can be loaded at the same time

(if (and ?*TE1* (not ?*TE2*) (not ?*TE3*)) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E1.clp"))
    (if ?*special-TE* then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E1-biv.clp"))
    )
)

(if (and ?*TE2* (not ?*TE1*) (not ?*TE3*)) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E2.clp"))
    (if ?*special-TE* then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E2-biv.clp"))
    )
)


(if (and ?*TE3* (not ?*TE1*) (not ?*TE2*)) then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E3.clp"))
    (if ?*special-TE* then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "T&E3-biv.clp"))
    )
)


(if ?*Forcing{2}-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "Forcing2-TE.clp"))
)

(if ?*Forcing{3}-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "Forcing3-TE.clp"))
)

(if ?*Forcing{4}-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "Forcing4-TE.clp"))
)


(if ?*DFS* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "DFS.clp"))
    (if ?*special-DFS* then
        (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "DFS-biv.clp"))
    )
)


(if ?*Backdoors* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "backdoors.clp"))
)

(if ?*Anti-backdoors* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "anti-backdoors.clp"))
)

(if ?*Anti-backdoor-pairs* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "T&E+DFS" ?*Directory-symbol* "anti-backdoor-pairs.clp"))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Bi-Whips, Bi-Braids, Bi-T&E (NOT AVAILABLE IN THE PUBLIC RELEASES)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Contrary to the other techniques, those in this section don't produce any assertions or deletions;
;;; They produce contradictions that can be used by W*-Whips, B*-Braids, ... Forcing-Bi-Whips,

(if ?*Bi-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "BI-WHIPS" ?*Directory-symbol* "Bi-Whips-Count.clp"))
    ;;; start at 0
    (bind ?i 0)
    (while (<= ?i ?*biwhips-max-length*) 
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "BI-WHIPS" ?*Directory-symbol* "Bi-Whips[" ?i "].clp"))
        (bind ?i (+ ?i 1))
    )
)

(if ?*Bi-Braids* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "BI-BRAIDS" ?*Directory-symbol* "Bi-Braids-Count.clp"))
    ;;; start at 3
    (bind ?i 3)
    (while (<= ?i ?*bibraids-max-length*) 
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" ?*chain-rules-optimisation-type* ?*Directory-symbol* "BI-BRAIDS" ?*Directory-symbol* "Bi-Braids[" ?i "].clp"))
        (bind ?i (+ ?i 1))
    )
)


(if ?*simple-bi-TE* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "BiT&E-and-T&E*" ?*Directory-symbol* "Bi-T&E.clp" ))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Forcing-Bi-Whips and Forcing-Bi-Braids (NOT AVAILABLE IN THE PUBLIC RELEASES)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; These are special cases of W*-Whips[[1]], but their total length is controlled

(if ?*Forcing-Bi-Whips* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
        ?*Directory-symbol* "FORCING-BI-WHIPS"
        ?*Directory-symbol* "Forcing-Bi-Whips-Generic.clp")
    )
)
(if ?*Forcing-Bi-Braids* then
    (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-COMMON"
        ?*Directory-symbol* "FORCING-BI-BRAIDS"
        ?*Directory-symbol* "Forcing-Bi-Braids-Generic.clp")
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; W*-Whips and B*-Braids (NOT AVAILABLE IN THE PUBLIC RELEASES)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; There's only one version, in the "CHAIN-RULES-SPEED" directory

(if ?*W*-Whips* then ;;; start at 1
    (bind ?i 1)
    (while (<= ?i ?*w*-whips-max-length*)
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" "SPEED" ?*Directory-symbol* "W*-WHIPS" ?*Directory-symbol* "W*-Whips[[" ?i "]].clp"))
        (bind ?i (+ ?i 1))
    )
)


(if ?*B*-Braids* then ;;; start at 1 (there may be b*-braids[1] that are not w*-whips[1])
    (bind ?i 1)
    (while (<= ?i ?*b*-braids-max-length*)
        (load (str-cat ?*CSP-Rules-Generic-Dir* "CHAIN-RULES-" "SPEED" ?*Directory-symbol* "B*-BRAIDS" ?*Directory-symbol* "B*-Braids[[" ?i "]].clp"))
        (bind ?i (+ ?i 1))
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; LOAD APPLICATION-SPECIFIC FUNCTIONS AND RULES
;;; AND DEFINE THE GLOBAL RATING-TYPE
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This function will be changed by any application with application-specific rules
(deffunction define-application-specific-rating-type ()
    (bind ?*application-specific-rating-type* "")
)


;;; CSP-Rules cannot work without any application specific entries
;;; load them now
(batch ?*Application-Loader*)


;;; Now that all the generic and application-specific rules to be used are known, define the global rating type
(deffunction define-rating-type ()
    ;;; generic part
    (define-generic-rating-type)
    ;;; application-specific part
    (define-application-specific-rating-type)
    ;;; combine the two
    (bind ?*rating-type*
        (if (eq ?*application-specific-rating-type* "")
            then ?*generic-rating-type*
            else (if (eq ?*generic-rating-type* "")
                    then ?*application-specific-rating-type*
                    else (if (eq ?*generic-rating-type* "W1")
                            then ?*application-specific-rating-type*
                            else (str-cat ?*generic-rating-type* "+" ?*application-specific-rating-type*)
                        )
                )
        )
    )
    (if (eq ?*rating-type* "") then (bind ?*rating-type* "BRT"))

    ;;; deal with T&E
    (if (and ?*TE1* (not ?*TE2*) (not ?*TE3*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(1)")
            else (bind ?*rating-type* (str-cat "T&E(" ?*rating-type* ", 1)"))
        )
    )
    (if (and ?*TE2* (not ?*TE1*) (not ?*TE3*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(2)")
            else (bind ?*rating-type* (str-cat "T&E(" ?*rating-type* ", 2)"))
        )
    )
    (if (and ?*TE3* (not ?*TE1*) (not ?*TE2*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(3)")
            else (bind ?*rating-type* (str-cat "T&E(" ?*rating-type* ", 3)"))
        )
    )
    
    
    ;;; Should be used only to produce bi-T&E contradictions, with no other rule activated:
    (if (and ?*simple-bi-TE* (not ?*TE1*) (not ?*TE2*) (not ?*TE3*)) then
        (if (neq ?*rating-type* "BRT")
            then (printout t "Config error for bi-T&E" crlf) (halt)
            else (bind ?*rating-type* "Bi-T&E-contrads")
        )
    )
    ;;; TO UPDATE:
    (if (and ?*TE1* ?*simple-bi-TE* ?*Forcing-bi-TE* (not ?*TE2*) (not ?*TE3*)) then
        (if (neq ?*rating-type* "in-B*B-test")
            then (printout t "Config error for Forcing-bi-T&E" crlf) (halt)
            else (bind ?*rating-type* "in-Forcing-B*-braids-test")
        )
    )
    ;;; END TO UPDATE

    ;;; deal with DFS
    (if ?*DFS* then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "DFS")
            else (bind ?*rating-type* (str-cat "DFS(" ?*rating-type* ")"))
        )
    )
        
    ?*rating-type*
)


(define-rating-type)


(print-start-banner)




