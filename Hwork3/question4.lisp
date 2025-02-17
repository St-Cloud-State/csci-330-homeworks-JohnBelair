(defun insertion-sort (list)
  ; Base case: If the list is empty, return nil
  (if (null list) 
      nil
      ; Recursively sorts the rest of the list
      (let ((sorted (insertion-sort (cdr list))))
        ; Inserts the first element into the list
        (insert (car list) sorted))))  

(defun insert (item list)
  (cond
    ; If the list is empty it returns the list
    ((null list) (list item))
    ;If element is smaller or equal to the first element then it is inserted at the begining of the list
    ((<= item (car list)) (cons item list))  ;
    ;Else the rest of the list is recursively inserted.
    (t (cons (car list) (insert item (cdr list))))))


; Test the function
(setq my-list '(1 7 2 1 8 6 5 3 7 9 4))
(insertion-sort my-list)
