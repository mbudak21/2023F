#lang eopl

;; grammar for the LET language  
;
(provide (all-defined-out))

;;;;;;;;;;;;;;;; grammatical specification ;;;;;;;;;;;;;;;;


(define the-lexical-spec ; Parses the grammar and returns tokens for the interpreter at the interp.rkt
  '((whitespace (whitespace) skip) ; Handles whitespace skips
    ; "whitespace" is a class defined in EOPL that includes all whitespace chars
    ; "skip" means that when this class is encountered, ignore it
    (comment ("%" (arbno (not #\newline))) skip) ; Skip comments, which start with the %
    (identifier ; names given to variables, funcs, etc.
     (letter (arbno (or letter digit "_" "-" "?"))) ; starts with a letter, then has arbitrary number of (arbno) letters, or digits, or special chars
     symbol) ; 
    (number (digit (arbno digit)) number) ; Positive numbers
    (number ("-" digit (arbno digit)) number) ; Negative numbers

    ;;
    ;; -----------------------
    ;; INSERT YOUR CODE HERE 
    ;; -----------------------


    ;; -----------------------
  ))

(define the-grammar
  '((program
     (expression)
     a-program)
    
    (expression
     (number)
     const-exp)

    (expression
     ("zero?" "(" expression ")")
     zero?-exp)
    
    (expression
     ("let" identifier "=" expression "in" expression)
     let-exp)


    ;; -----------------------
    ;; INSERT YOUR CODE HERE 
    ;; -----------------------
    (expression
     ("create-new-list" "()")
     list-exp)
    (expression
     ("cons" expression "to" expression)
     cons-exp)
    (expression
     ("sum" "(" expression ")")
     sum-exp)
    (expression
     ("max" "(" expression ")")
     max-exp)
    (expression
     ("(" number "/" number ")")
     rational-exp)
    (expression
     ("op" "(" expression "," expression "," number ")")
     op-exp)
    
    (expression
     (identifier)
     var-exp)
    ;; -----------------------
))


;;;;;;;;;;;;;;;; sllgen boilerplate ;;;;;;;;;;;;;;;;

(sllgen:make-define-datatypes the-lexical-spec the-grammar)

(define show-the-datatypes
  (lambda () (sllgen:list-define-datatypes the-lexical-spec the-grammar)))

(define scan&parse
  (sllgen:make-string-parser the-lexical-spec the-grammar))

(define just-scan
  (sllgen:make-string-scanner the-lexical-spec the-grammar))

