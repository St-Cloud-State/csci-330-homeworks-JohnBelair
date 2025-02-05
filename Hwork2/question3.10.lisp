(third (the quick brown fox))
;error is that (the quick brown fox) is trying to evaluate the since it does not view the values in the paren as a list

;fix
(third '(the quick brown fox)) 


(list 2 and 2 is 4)
;error is that that lisp is trying to evaluate and and is 

;fix 
(list 2 'and 2 'is 4)

(+ 1 '(length (list t t t t)))
;error is that lisp views '(length (list t t t t)) as a list when the addition function does not take in lists.

;fix
(+ 1 (length (list t t t t)))

(cons 'patrick (seymour marvin))
; error lisp detects a undefined argument (seymour marvin) and throws an error

;fix 
(cons 'patrick '(seymour marvin))

(cons 'patrick (list seymour marvin))
;error lisp detects a list but its arguments are not defined so it throws an error

;fix
(cons 'patrick (list 'seymour 'marvin))
