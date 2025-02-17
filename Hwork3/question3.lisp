;Merge two sorted lists
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

; Partition the list into sorted pairs
(defun partition (lst)
; Base case: empty or single-element list
  (if (null lst)
      nil
      (if (null (cdr lst))
          (list (list (car lst)))
          ; Compares two items in a list
          (let ((first (car lst))
                (second (car (cdr lst))))
            ; If first <= second then order is maintained
            ; Else the items are swaped and a list "second first" is created
            (cons (if (<= first second)
                      (list first second) 
                      (list second first))
                  (partition (cddr lst)))))))

; Merge pairs recursively
(defun recursive-merge-pairs (lst)
; Base case: empty or single-element list
  (if (null lst)
      nil
      (if (null (cdr lst))
          (list (car lst))
        ; Recursivly merge pairs 
          (cons (recursive-merge (car lst) (car (cdr lst)))
                (recursive-merge-pairs (cddr lst))))))

; Bottom-up merge sort
(defun bottom-up-recursive-mergesort (lst)
   ; Partition list into pairs
  (let ((pairs (partition lst)))
    ; Loop merging until one list left
    (loop until (= (length pairs) 1)
          do (setq pairs (recursive-merge-pairs pairs)))
    ; Return the list
    (car pairs)))

; Test the function
(setq my-list '(1 7 2 1 8 6 5 3 7 9 4))
(bottom-up-recursive-mergesort my-list)

