;;; P.H.Winston LISP 1981

(defun foo ()
    (prin1 'THIS-IS-)
    (print 'MACLISP))

(defun bar (x)
    (maplist (lambda (y) (plus y 1)) x))