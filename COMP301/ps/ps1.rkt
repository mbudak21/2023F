#lang eopl

(define idx_getter
  (lambda (ilist index)
    (cond
      ((null? ilist) '())
      ((eq? index 0) (car ilist))
      (else (idx_getter (cdr ilist) (- index 1)))
    )
  )
)

; (display(idx_getter '(5 8 6 91 87 12) 2))
; Returning range from i to j: I would add a j parameter that would also decrement each iteration, when j hits 0 set the second element of the current list iteration to 0 and return the list.
; But I guess i would have to create a new list and pop the elements from ilist to the new list i would later return.



(define part_b
  (lambda (n)
    (cond
      ((< n 0) 0)
      ((= n 0) 1)
      ((> n 0) (+ 4(* (part_b (- n 1)) (part_b (- n 1)))))
    )
  )
)

;(display (part_b 3))

