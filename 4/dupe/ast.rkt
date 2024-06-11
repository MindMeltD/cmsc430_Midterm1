#lang racket
(provide Lit Prim1 If)

;; type Expr =
;; | (Lit Datum)
;; | (Prim1 Op Expr)
;; | (If Expr Expr Expr)
;; type Datum = Integer
;;            | Boolean
;; type Op = 'add1 | 'sub1 | 'zero? | 'odd?
(struct Lit (d)       #:prefab)
(struct Prim1 (p e)   #:prefab)
(struct If (e1 e2 e3) #:prefab)
