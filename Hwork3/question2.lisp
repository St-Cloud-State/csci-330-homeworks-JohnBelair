(defun recursive-merge (left right)
  (cond
    ; returns the right list if the left is empty and the left list if the right is empty
    ((null left) right)  
    ((null right) left) 
    ; If the first element on the left is smaller we recursively merge the rest
    ((< (car left) (car right))
     (cons (car left) (recursive-merge (cdr left) right)))
     ; Otherwise, the first element of right is smaller we recursively merge the rest
    (t
     (cons (car right) (recursive-merge left (cdr right))))))

(defun merge-sort (lst)
; Base case: empty or single-element list
  (if (or (null lst) (null (cdr lst)))
      lst
      ; Find the middle list
      (let* ((mid (floor (length lst) 2))
      ; Take the left half of the list
             (left (subseq lst 0 mid))
      ; Take the right half of the list
             (right (subseq lst mid)))
      ; Recursively merge the sorted halves 
        (recursive-merge (merge-sort left) (merge-sort right))))) 


;test code

(setq my-list '(1 7 2 1 8 6 5 3 7 9 4))
(merge-sort my-list)

