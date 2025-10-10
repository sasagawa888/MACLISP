# Goal
This project recreates the early MacLISP from around 1981.
Its purpose is to run the code from P. H. Winston’s book.
It is purely retrocomputing and intended for nostalgia.
It has no significance in terms of computer science.

## Startup
Start the system from the terminal by running:

```
maclisp

> (load "winston.lsp")
```

## REPL
After startup, the system enters the REPL.
Enter S-expressions at the prompt.
To exit, use (quit).

## Comment
Comments start from semicolon ;
see winston.lsp

## Builtin Functions
Displaying the variable oblist shows the names of built-in functions.

Example:

```
> oblist
(NIL T PLUS DIFFERENCE MINUS TIMES QUOTIENT DIVIDE ADD1 SUB1 MAX MIN
 RECIP REMAINDER EXPT QUIT HDMP CAR CDR CONS LIST REVERSE LENGTH APPEND NCONC RPLACA RPLACD MAPLIST MAPCON MAP EQ EQUAL NULL ATOM GBC READ
 EVAL APPLY PRINT PRIN1 GREATERP LESSP ZEROP ONEP MINUSP NUMBERP FIXP
 SYMBOLP LISTP ASSOC MEMBER SET NOT QUOTE SETQ DEFINE LAMBDA MACRO IF
 BEGIN COND AND OR COMMENT)
> 
```

## Sample Codes

```
; THIS IS COMMENT
(DEFUN FOO (X) (PLUS X X))

```

## ledit
ledit launches an editor. Please set your preferred editor in the EDITOR environment variable. If none is specified, it will call Edlis, which comes with Easy-ISLisp.

## Garbage Collection
Using (gbc t) enables output during garbage collection.
To disable it, use (gbc nil).
The system implements the classical mark-and-sweep algorithm.
You can force garbage collection by using (gbc 1).


## Debug

### Trace/Untrace
example
```
MACLISP 1981
> (trace fact)
T
> (fact 3)
ENTER FACT(3)
 ENTER FACT(2)
  ENTER FACT(1)
   ENTER FACT(0)
   RETURN FACT 1
  RETURN FACT 1
 RETURN FACT 2
RETURN FACT 6
6
> (untrace fact)
T
> (fact 3)
6
> 

```

### Stepper
- (step t)  Enable the stepper
- (step nil)　Disable the steppter

A prompt >> appears each time eval is called, waiting for user input. Pressing Enter continues to the next step, and entering q aborts the execution.

example:
```
MACLISP 1980
> (step t)
T
> (foo 1)
(FOO 1) in [] >> 1 in [] >> 
FOO in [] >> 
X in [(X . 1)] >> 
1
> (step nil)
(STEP NIL) in [] >> NIL in [] >> 
STEP in [] >> 
T
> 
```

## Immediate values:
I made integers immediate values to save cells and improve speed. By setting the second-highest bit of the integer, they are treated as positive integers. Negative numbers are outside the cell area, so they remain immediate values as they are.

## Enjoy
For those who played with MACLISP at the time, this will bring back nostalgic memories.
For those who learned LISP after Common Lisp, it may offer a fresh and surprising experience.
I believe there are joys and discoveries here that you won’t find in large “black-box” LISP implementations.