(defvar listb)
(setq listb (cons 'a (cons (cons 'b (cons (cons 'x (cons 'd nil)) nil)) nil)))
(format t "List B: ~A~%" listb)