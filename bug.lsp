
(DEFUN IF FEXPR (X)
    (COND ((EVAL (CAR X)) (EVAL (CADR X)))
          ((CDDR X) (EVAL (CADDR X)))
          (T NIL)))

