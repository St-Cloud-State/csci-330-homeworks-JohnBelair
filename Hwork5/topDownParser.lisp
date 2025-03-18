(defun Ifn (str)
    (print '(in Ifn))
    (print str)
    (cond 
        ((eql (car str)  'i) (IPfn (Sfn (Efn (cdr str )))))
        (t (append (cdr str)(list 'err)))))
    

(defun IPfn (str)
    (print '(in IPfn))
    (print str)
    (cond 
        ((eql (car str)  'e) (Sfn (cdr str )))
        ;empty string
        (t (append (cdr str)(list 'err)))))

(defun Efn (str)
    (print '(in Efn))
    (print str)
    (cond 
        ((Gfn (cdr str )) (EPfn (cdr str )))
        (t (append str (list 'err)))))

(defun EPfn (str)
    (print '(in EPfn))
    (print str)
    (cond 
        ((eql (car str)  'o) (EPfn (Gfn (cdr str ))))
        (t (append (cdr str)(list 'err)))))
        ;empty string
    

(defun Gfn (str)
    (print '(in Gfn))
    (print str)
    (cond 
        ((eql (car str) 'x) (cdr str))  
        ((eql (car str) 'y) (cdr str))
        ((eql (car str) 'z) (cdr str))
        ((eql (car str) 'w) (cdr str))
        (t (append str (list 'err)))))

(defun Sfn (str)
    (print '(in Sfn))
    (print str)
    (cond 
        ((eql (car str) 's) (cdr str))
        ((eql (car str) 'd) (let ((str (Lfn (cdr str))))
            (print '(in Sfn))
            (print str)
            (if (and str (eql (car str) 'b))
                (cdr str)
                (append str (list 'err)))))
        (t (append str (list 'err)))))

(defun Lfn (str)
    (print '(in Lfn))
    (print str)
    (cond 
        ((eql (car str) 's) (cdr str) (LPfn (cdr str)))
        (t (append str (list 'err)))))

(defun LPfn (str)
    (print '(in LPfn))
    (print str)
    (cond 
        (Lfn (cdr str))
        ;empty string
        (t (append str (list 'err)))))

;; Cannot figure out how to handle the empty strings