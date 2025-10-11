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

(DEFUN AUGMENT (ITEM BAG)
    (COND ((MEMBER ITEM BAG) BAG)
          (T (CONS ITEM BAG))))

(DEFUN FIBONACCI (N)
    (COND ((ZEROP N) 1)
          ((EQUAL N 1) 1)
          (T (PLUS (FIBONACCI (DIFFERENCE N 1))
                   (FIBONACCI (DIFFERENCE N 2))))))

(DEFUN COUNTATOMS (S)
    (COND ((NULL S) 0)
          ((ATOM S) 1)
          (T (PLUS (COUNTATOMS (CAR S))
                   (COUNTATOMS (CDR S))))))

(DEFUN MYSTERY (S)
    (COND ((NULL S) L)
          ((ATOM S) 0)
          (T (MAX (ADD1 (MYSTERY (CAR S)))
                  (MYSTERY (CDR S))))))

(DEFUN STRANGE (L)
    (COND ((NULL L) NIL)
          ((ATOM L) L)
          (T (CONS (STRANGE (CAR L))
                   (STRANGE (CDR L))))))

(DEFUN COUNTATOMS* (S)
    (COND ((NULL S) 0)
          ((ATOM S) 1)
          (T (APPLY 'PLUS (MAPCAR 'COUNTATOMS* S)))))

(DEFUN POWER (M N)
    (PROG (RESULT EXPONENT)
          (SETQ RESULT 1)
          (SETQ EXPONENT N)
          LOOP
          (COND ((ZEROP EXPONENT) (RETURN RESULT)))
          (SETQ RESULT (TIMES M RESULT))
          (SETQ EXPONENT (SUB1 EXPONENT))
          (GO LOOP)))


(DEFUN BORE-ME ()
    (PROG (N)
          (SETQ N 0)
          LOOP
          (PRINT (TIMES N N))
          (SETQ N (ADD1 N))
          (GO LOOP)))

(DEFUN APPLEP (X) (EQUAL X 'APPLE))

(SETQ FRUITS '(ORANGE APPLE APPLE APPLE PEAR GRAPEFRUIT))

(DEFUN APPLEP-1-0 (Y)
    (COND ((APPLEP Y) 1)
          (T 0)))

(DEFUN COUNTAPPLES (FRUITS)
    (APPLY 'PLUS
           (MAPCAR '(LAMBDA (X) (COND ((EQUAL X 'APPLE) 1)
                                      (T 0)))
                    FRUITS)))

(DEFUN BREAK FEXPR (MESSAGE)
    (PROG (QUERY)
          (PRINT MESSAGE)
          LOOP
          (PRIN1 '> ) 
          (SETQ QUERY (READ))
          (COND ((AND (NOT (ATOM QUERY))
                      (EQUAL (CAR QUERY) 'RETURN))
                 (RETURN (EVAL (CADR QUERY))))
                (T (PRINT (EVAL QUERY))))
          (GO LOOP)))

(DEFUN TOWER-OF-HANOI (N) (TRANSFER 'A 'B 'C N))

(DEFUN MOVE-DISK (FROM TO)
    (LIST (LIST 'MOVE 'DISK 'FROM FROM 'TO TO)))

(DEFUN TRANSFER (FROM TO SPARE NUMBER)
    (COND ((EQUAL NUMBER 1) (MOVE-DISK FROM TO))
          (T (APPEND (TRANSFER FROM SPARE TO (SUB1 NUMBER))
                     (MOVE-DISK FROM TO)
                     (TRANSFER SPARE TO FROM (SUB1 NUMBER))))))

