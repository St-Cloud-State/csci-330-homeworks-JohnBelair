(defun speak (x y) (list 'all 'x 'is 'y))
;the varibles in the function are being defined as part of the list

(defun speak (x) (y) (list 'all x 'is y))
;parameters are to be defined within one paren and since the function has two it throws an error

(defun speak ((x) (y)) (list all 'x is 'y))

(defun speak ((x) (y)) (list 'all x 'is y))

;fix
(defun speak (x y) (list 'all x 'is y))
(speak "fum" "chum")

