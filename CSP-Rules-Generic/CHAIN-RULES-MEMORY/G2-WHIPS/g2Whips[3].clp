
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G2-WHIP[3]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-g2whip[3]
   (declare (salience ?*activate-g2whip[3]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont g2whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_g2W3))
   (assert (technique ?cont g2whip[3]))
   (bind ?*technique* g2W[3])
)



(defrule track-g2whip[3]
   (declare (salience ?*activate-g2whip[3]-salience*))
   ?level <- (technique ?cont g2whip[3])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; g2-whip elimination rule

(defrule g2whip[3]
   (declare (salience ?*g2whip[3]-salience*))
   (chain2r
      (type partial-g2whip)
      (context ?cont)
      (length 2)
      (target ?zzz)
      (llcs $?llcs)
      (rlcsa $?rlcsa)
      (rlcsb $?rlcsb)
      (csp-vars $?csp-vars)
      (last-rlca ?last-rlca)
      (last-rlcb ?last-rlcb)
   )
   
   ;;; ?new-llc
   (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcsa))&:(not (member$ ?new-llc $?rlcsb)) ?last-rlca)
   (or (test (eq ?last-rlcb 0)) (exists-link ?cont ?new-llc ?last-rlcb))
   
   ;;; because, in a partial g2whip, ?zzz cannot be linked or glinked to any pair of candidates in $?rlcsa and $?rlcsb
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (is-csp-variable-for-label (csp-var ?new-csp&:(neq ?new-csp (last $?csp-vars))) (label ?new-llc))
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (test (g2-linked-or ?xxx ?zzz $?rlcsa $?rlcsb)))
   
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L3* ?*print-g2whip* ?*print-g2whip-3*) then
      (print-g2whip 3 ?zzz $?llcs $?rlcsa $?rlcsb $?csp-vars ?new-llc . ?new-csp)
   )
)



;;; 1- extension of an existing g2-whip with a candidate

(defrule partial-g2whip[2]-1
   (declare (salience ?*partial-g2whip[2]-salience-1*))
   (logical
      (chain2r
         (type partial-g2whip)
         (context ?cont)
         (length 1)
         (target ?zzz)
         (llcs $?llcs)
         (rlcsa $?rlcsa)
         (rlcsb $?rlcsb)
         (csp-vars $?csp-vars)
         (last-rlca ?last-rlca)
         (last-rlcb ?last-rlcb)
      )
      
      ;;; new llc
      (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcsa))&:(not (member$ ?new-llc $?rlcsb)) ?last-rlca)
      (or (test (eq ?last-rlcb 0)) (exists-link ?cont ?new-llc ?last-rlcb))
   
      ;;; ?new-rlc and ?new-csp
      (technique ?cont g2whip[3])
      ;;; because whips[2] and g2-whips[2] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not linked to ?zzz or $?rlcs
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcsa))&:(not (member$ ?new-rlc $?rlcsb))
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one
   )
   
   ;;; as g2-whips[2] based on ?zzz have been eliminated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp) (test (g2-linked-or ?xxx ?zzz $?rlcsa $?rlcsb)))
   
   ;;; do not assert a partial g2-whip with the same sequence of (rlca rlcb)'s than an existing one
   (not
      (chain2r
         (type partial-g2whip)
         (context ?cont)
         (length 2)
         (target ?zzz)
         (rlcsa $?rlcsa ?new-rlc)
         (rlcsb $?rlcsb 0)
      )
   )
=>
   (assert
      (chain2r
         (type partial-g2whip)
         (context ?cont)
         (length 2)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcsa $?rlcsa ?new-rlc)
         (rlcsb $?rlcsb 0)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlca ?new-rlc)
         (last-rlcb 0)
      )
   )
)



;;; 2- extension of an existing whip with a g2-candidate

(defrule partial-g2whip[2]-2
   (declare (salience ?*partial-g2whip[2]-salience-2*))
   (logical
      (chain
         (type partial-whip)
         (context ?cont)
         (length 1)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont g2whip[3])
      ;;; because whips[2] and g2-whips[2] based on ?zzz (if any) have already been eliminated,
      ;;; there are at least two ?new-rlca and new-rlcb not linked to ?zzz or $?rlcs
      ;;; (the case when there is only one ?new-rlca has been dealt with in the first extension rule)
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlca&~?zzz&:(not (member$ ?new-rlca $?llcs))&:(not (member$ ?new-rlca $?rlcs))
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
      )
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlcb&~?zzz&:(< ?new-rlcb ?new-rlca)&:(not (member$ ?new-rlcb $?llcs))&:(not (member$ ?new-rlcb $?rlcs))
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
      )
      ;;; the next condition will detect cases when there are only two candidates
   )
   
   ;;; as g2whips[2] based on ?zzz have been eliminated (because they have higher salience),
   ;;; and g2whips[1] extendable by a single candidate have already been generated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t g-candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlca&~?new-rlcb ?new-csp) (test (linked-or ?xxx ?zzz $?rlcs)))
   
   ;;; do not assert a partial g2-whip if there is already a partial-whip or a partial-g2-whip with a sequence of identical or smaller (rlca rlcb)'s
   (not
      (chain
         (type partial-whip)
         (context ?cont)
         (length 2)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlc&?new-rlca|?new-rlcb)
      )
   )
   (not
      (chain2r
         (type partial-g2whip)
         (context ?cont)
         (length 2)
         (target ?zzz)
         (rlcsa $?rlcs ?new-rlca)
         (rlcsb $?seq&:(eq $?seq (create-list-of-0s 1)) ?new-rlcb)
      )
   )
=>
   (assert
      (chain2r
         (type partial-g2whip)
         (context ?cont)
         (length 2)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcsa $?rlcs ?new-rlca)
         (rlcsb (create-list-of-0s 1) ?new-rlcb)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlca ?new-rlca)
         (last-rlcb ?new-rlcb)
      )
   )
)



;;; 3- extension of an existing g2-whip with a g2-candidate

(defrule partial-g2whip[2]-3
   (declare (salience ?*partial-g2whip[2]-salience-3*))
   (logical
      (chain2r
         (type partial-g2whip)
         (context ?cont)
         (length 1)
         (target ?zzz)
         (llcs $?llcs)
         (rlcsa $?rlcsa)
         (rlcsb $?rlcsb)
         (csp-vars $?csp-vars)
         (last-rlca ?last-rlca)
         (last-rlcb ?last-rlcb)
      )
      
      ;;; ?new-llc
      (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcsa))&:(not (member$ ?new-llc $?rlcsb)) ?last-rlca)
      (or (test (eq ?last-rlcb 0)) (exists-link ?cont ?new-llc ?last-rlcb))
   
      ;;; ?new-rlc and ?new-csp
      (technique ?cont g2whip[3])
      ;;; because whips[2] and g2-whips[2] based on ?zzz (if any) have already been eliminated,
      ;;; there are at least two ?new-rlca and new-rlcb not linked to ?zzz or $?rlcs
      ;;; (the case when there is only one ?new-rlca has been dealt with in the first extension rule)
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlca&~?zzz&:(not (member$ ?new-rlca $?llcs))&:(not (member$ ?new-rlca $?rlcsa))&:(not (member$ ?new-rlca $?rlcsb))
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlcb&~?zzz&:(< ?new-rlcb ?new-rlca)&:(not (member$ ?new-rlcb $?llcs))&:(not (member$ ?new-rlcb $?rlcsa))&:(not (member$ ?new-rlcb $?rlcsb))
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
      ;;; the next condition will detect cases when there are only two candidates
   )
   
   ;;; as g2whips[2] based on ?zzz have been eliminated (because they have higher salience),
   ;;; and g2whips[1] extendable by a single candidate have already been generated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t g-candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlca&~?new-rlcb ?new-csp) (test (g2-linked-or ?xxx ?zzz $?rlcsa $?rlcsb)))
   
   ;;; do not assert a partial g2-whip with the same sequences of rlc's or with no non smaller rlc than an existing one
   (not
      (chain2r
         (type partial-g2whip)
         (context ?cont)
         (length 2)
         (target ?zzz)
         (rlcsa $?rlcsa ?new-rlca)
         (rlcsb $?rlcsb ?new-rlc&?new-rlcb|0)
      )
   )
=>
   (assert
      (chain2r
         (type partial-g2whip)
         (context ?cont)
         (length 2)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcsa $?rlcsa ?new-rlca)
         (rlcsb $?rlcsb ?new-rlcb)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlca ?new-rlca)
         (last-rlcb ?new-rlcb)
      )
   )
)



