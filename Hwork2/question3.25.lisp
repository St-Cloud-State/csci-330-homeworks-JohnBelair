(list 'cons t nil) 
;(CONS T NIL)
(eval (list 'cons t nil)) 
;(T)
(eval (eval (list 'cons t nil))) 
; error
(apply #'cons '(t nil)) 
;(T)
(eval nil) 
;NIL
(list 'eval nil) 
;(EVAL NIL)
(eval (list 'eval nil))
;NIL