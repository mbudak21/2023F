#lang eopl

;; interpreter for the LET language.  The \commentboxes are the
;; latex code for inserting the rules into the code in the book.
;; These are too complicated to put here, see the text, sorry.

(require "lang.rkt")
(require "data-structures.rkt")
(require "environments.rkt")

(provide value-of-program value-of)

;;;;;;;;;;;;;;;; the interpreter ;;;;;;;;;;;;;;;;

;; value-of-program : Program -> ExpVal
;; Page: 71
(define value-of-program 
  (lambda (pgm)
    (cases program pgm
      (a-program (exp1)
        (value-of exp1 (init-env))))))

;; value-of : Exp * Env -> ExpVal
;; Page: 71
(define value-of
  (lambda (exp env)
    (cases expression exp

      (cons-exp (exp1 lst)
        (let ((val1 (value-of exp1 env))
          (val2 (value-of lst env)))
            (let ((num1 (expval->num val1))
              (lst1 (expval->list val2)))
                (list-val(cons num1 lst1)))))

      (sum-exp (lst)
        (let ((val1 (value-of lst env)))
          (let ((lst1 (expval->list val1)))
            (num-val (sum-helper lst1)))))
      (max-exp (lst)
        (let ((val1 (value-of lst env)))
          (let ((lst1 (expval->list val1)))
            (num-val (max-in-list lst1)))))
      


      (rational-exp (num1 num2)
        (if (= num2 0)
          (eopl:error "error")
          (rational-val (cons num1 num2)))) ;Returns a rational-val
      
      (const-exp (num) (num-val num)) ;Returns a num-val

      (var-exp (var) (apply-env env var)) ;Finds the value by looking up the symbol from env
      
      (op-exp (exp1 exp2 op) ; Handles arithmetic operations between different types
              (let ((val1 (value-of exp1 env))
                    (val2 (value-of exp2 env)))
                  (let ((num1 (expval->rational val1))
                        (num2 (expval->rational val2)))
                      (cond ; we have num1 and num2 at this point
                        ((and (number? num1) (number? num2))
                        ;If both integers
                          (num-val
                            (cond 
                              ((= op 1) (+ num1 num2))
                              ((= op 2) (* num1 num2))
                                    ;; -----------------------
                                    ;; INSERT YOUR CODE HERE 
                                    ;; -----------------------
                              ((= op 3) (/ num1 num2))
                              (else (- num1 num2))
                              
                                    ;; -----------------------
                              )))
                        
                        ((and (number? num1) (not (number? num2)))
                        ;if num1 integer, num2 rational
                          (rational-val
                          (let ((num2top (car num2))
                                (num2bot (cdr num2)))
                            (cond 
                              ((= op 1) (cons (+ (* num1 num2bot) num2top) num2bot))
                              ((= op 2) (cons (* num1 num2top) num2bot))
                              ;; -----------------------
                              ;; INSERT YOUR CODE HERE 
                              ;; -----------------------


                              ;; -----------------------

                              
                              ))))

                        ((and (number? num2) (not (number? num1)))
                        ;if num1 rational, num2 integer
                          (rational-val
                          (let ((num1top (car num1))
                                (num1bot (cdr num1)))
                            (cond 
                              ((= op 1) (cons (+ (* num1bot num2) num1top) num1bot))
                              ((= op 2) (cons (* num1top num2) num1bot))
                              ;; -----------------------
                              ;; INSERT YOUR CODE HERE 
                              ;; -----------------------


                              ;; -----------------------
                              ))))

                        (else
                        ;if both rational
                          (rational-val
                          (let ((num1top (car num1))
                                (num1bot (cdr num1))
                                (num2top (car num2))
                                (num2bot (cdr num2)))
                            (cond 
                              ((= op 1) (cons (+ (* num1top num2bot) (* num1bot num2top)) (* num1bot num2bot))) ;; add
                              ((= op 2) (cons (* num1top num2top) (* num1bot num2bot))) ;; multiply
                              ;; -----------------------
                              ;; INSERT YOUR CODE HERE 
                              ;; -----------------------


                              ;; ----------------------- 
                            ))))))))
      (zero?-exp (exp1) ; Checks if exp1 evaluates to zero
        (let ((val1 (value-of exp1 env)))
          (let ((num1 (expval->rational val1)))
            (if (number? num1)
              (if (zero? num1)
                (bool-val #t)
                (bool-val #f))
                ;; -----------------------
                ;; INSERT YOUR CODE HERE 
                ;; -----------------------


                ;; -----------------------
              (display "idk")
            )
          )
        )
      )

      

      (let-exp (var exp1 body) ; Evaluates the body of a let expression in an environment extended with the new binding.
               (let ((val1 (value-of exp1 env)))
                 (value-of body
                           (extend-env var val1 env))))

      ;; -----------------------
      ;; INSERT YOUR CODE HERE 
      ;; -----------------------
      (list-exp () (list-val '()))

      (else
       (display "else trigger"))


      ;; -----------------------

      )))

(define sum-helper
  (lambda (lst)
    (if (pair? lst)
      (+ (car lst) (sum-helper (cdr lst)))
      0)))

(define (max-in-list lst)
  (if (pair? lst)
    (max (car lst) (max-in-list (cdr lst)))
    -1
  )
)