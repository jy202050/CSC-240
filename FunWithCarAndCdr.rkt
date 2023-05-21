#lang racket
; Write Scheme expressions to extract each item out of the following list
; Run the Output Test when finished
(define lst '((a b) c (d (e f)) ((g (h) i))))
; First one is done for you
(car (car lst))
(car (cdr (car lst)))
(cadr lst)
(car (car (cdr (cdr lst))))
(car (cadr (caddr lst)))
(cadr (cadr (caddr lst)))
(car (car (cadddr lst)))
(car (cadr (car (cadddr lst))))
(car (cddr (car (cadddr lst))))





