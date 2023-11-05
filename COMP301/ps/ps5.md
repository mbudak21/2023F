## Problem 1

### Part A

```clojure
#(struct: a-program
	#(struct: if-exp
        #(struct: zero?-exp x)
        #(struct: const-exp 55)
        #(struct: diff-exp
            #(struct: const-exp 44)
            #(struct: var-exp x)
        )
    )
)

```


### Part B
```
let x 97 in –(32 , x)

```
## Problem 2

```clojure
(define (create-point x y)
  (lambda (mode)
    (cond
      ((= mode 0) x)
      ((= mode 1) y)
      ((= mode 2)
        (lambda (new-x)
          ; Your code here ;
          ; Hint: You can use the set! function to change the value of a variable ;
          (set! x new-x)
        )
      )
      ((= mode 3)
        ; Your code here ;
        (lambda (new-y)
          (set! y new-y))
      )
    )
  )
)

(define (get-x point)
  (point 0)
)

(define (get-y point)
  (point 1)
)

(define (set-x point new-x)
  ((point 2) new-x)
)

(define (set-y point new-y)
  ((point 3) new-y)
)

(define (square x)
  (* x x)
)
(define (get-distance point-1 point-2)
  ; Your code here ;
  (sqrt
   (+ (square (- (get-x point-2) (get-x point-1)))
      (square (- (get-y point-2) (get-y point-1)))))
)
```