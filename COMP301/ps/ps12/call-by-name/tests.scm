(module tests mzscheme
  
  (provide test-list)
  ;;;;;;;;;;;;;;;; tests ;;;;;;;;;;;;;;;;
  
  (define test-list
   ;'((test1 "let a=12 in let f=proc(x) begin x; x; x end in (f begin set a=-(a, -13); a end)" 4))
   '((t1 "let a = 1 in a")1)
  )
)