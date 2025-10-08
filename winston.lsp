;;; P.H.Winston LISP 1981

(defun foo ()
    (prin1 'THIS-IS-)
    (print 'MACLISP))

(defun bar (x)
    (maplist (lambda (y) (plus y 1)) x))

(DEFUN F-TO-C (TEMP)
    (QUOTIENT (DIFFERENCE TEMP 32) 1.8))

(DEFUN EXCHANGE (PAIR)
    (LIST (CADR PAIR) (CAR PAIR)))

(DEFUN INCREASE (X Y)
    (QUOTIENT (TIMES 100.0 (DIFFERENCE Y X)) X))