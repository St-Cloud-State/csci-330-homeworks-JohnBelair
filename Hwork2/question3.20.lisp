(defun mystery (x) 
(list (second x) (first x)))

(mystery '(dancing bear)) 
;result (BEAR DANCING)

(mystery 'dancing 'bear) 
;error the values passed into mystery were not a list so lisp errored out.

(mystery '(zowie)) 
;result (NIL ZOWIE)

(mystery (list 'first 'second)) 
; result (SECOND FIRST)