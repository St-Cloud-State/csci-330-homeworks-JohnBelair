(defvar listc)
(setq listc (cons (cons (cons 'a (cons (cons 'b (cons (cons 'x nil) (cons 'd nil))) nil)) nil) nil))
(format t "List C: ~A~%" listc)