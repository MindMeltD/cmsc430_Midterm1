#lang racket
(provide Eof Lit Prim0 Prim1 If Begin When Unless)

;; type Expr =
;; | (Eof)
;; | (Lit Datum)
;; | (Prim0 Op0)
;; | (Prim1 Op1 Expr)
;; | (If Expr Expr Expr)
;; | (Begin Expr Expr)
;; | (When Expr Expr)   ;; NEW
;; | (Unless Expr Expr) ;; NEW
;; type Datum = Integer
;;            | Boolean
;;            | Character
;; type Op0 = 'read-byte | 'peek-byte | 'void
;; type Op1 = 'add1 | 'sub1 | 'zero?
;;          | 'char? | 'integer->char | 'char->integer
;;          | 'write-byte | 'eof-object?
(struct Eof   ()         #:prefab)
(struct Lit   (d)        #:prefab)
(struct Prim0 (p)        #:prefab)
(struct Prim1 (p e)      #:prefab)
(struct If    (e1 e2 e3) #:prefab)
(struct Begin (e1 e2)    #:prefab)
(struct When  (e1 e2)    #:prefab)
(struct Unless (e1 e2)   #:prefab)
