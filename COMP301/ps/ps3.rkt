#lang scheme




; Problem 1

;Top Down Approach
(define (top-down-squares n)
  (if (eq? n 0)
      0
      (cons (top-down-squares (- n 1)) (* n n))
  )
)

;(display (top-down-squares 9))

;Bottom Up Approach
(define (bottom-up-helper lst n)
  (if (eq? n 0)
      lst
      (bottom-up-helper (cons (* n n) lst) (- n 1))
  )
)

(define (bottom-up-squares n)
  (bottom-up-helper '() n)
)

(display (bottom-up-squares 9))

;Rules Of Inference Approach

(define (infer-new-square x y)
  (let ((x-squared (* x x))
        (y-squared (* y y)))
    (let ((two-xy (* 2 x y))
          (x-plus-y (+ x y)))
      ; calculate (x+y)^2 using the equation: (x+y)^2 = x^2 + 2xy + y^2
      (let ((new-square (+ x-squared two-xy y-squared)))
        new-square))))

(define known-x 2)
(define known-y 3)

(display (infer-new-square known-x known-y))