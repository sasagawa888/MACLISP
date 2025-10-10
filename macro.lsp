
(DEFUN IF MACRO (X)
    (SUBST (CADR X) '1ST
           (SUBST (CADDR X) '2ND
                  (SUBST (COND ((EQUAL (LENGTH X) 4) (CADDDR X))
                               (T NIL))
                          '3RD
                          '(COND (1ST 2ND) (T 3RD))))))                