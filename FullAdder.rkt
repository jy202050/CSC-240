#lang racket

; Title: Scheme logic Gates
; Desc: Define a Scheme procedure to simulate the gate logic
; Author: JIAYUAN YU
; Date: 03/25/2023



;-----------------------
; Write the Logic Gate Functions Here
;-----------------------

; Define AND gate funciton.
(define (andgate a b)
  (if (eq? (+ a b) 2)    ; if a+b equal 2, return 1, else if a+b = 0 or 1, return 0
    1  
    0    
  )
)

; Define OR gate function.
(define (orgate a b)
  (if (> (+ a b) 0)      ; if a+b greater than 0, return 1, else if a+b = 0, return 0
   1
   0
  )
)

; Define NOT gate funciton.
(define (notgate a)
  (if (= a 0)            ; if a equal to 0, return 1, else if a equal to 1, return 0
    1
    0
  )
)

; Define XOR gate Function
(define (xorgate a b)
  (if (= a b)            ; if a and b are the same return 0, Ex(0,0) and (1,1) => 0
    0
    1
  )
)



;-----------------------
; Write the FullAdder Function Here
;-----------------------

(define (fulladder x a b)           
  (cons                              ; cons take two argument and return a list
     (xorgate (xorgate a b) x)       ; this is represent sum 
     (orgate (andgate a b) (andgate (orgate a b) x))   ; this is represent carry 
  )
)

;-----------------------
; Write the n-bitAdder Function Here
;-----------------------

(define n-bit-addr (lambda (a b c)  ; take list a list b and carry bit c
  (adderFunction
   (reverseList a) (reverseList b) c '() ))
)

(define adderFunction (lambda (a b c nl)  ; taking 3 lists and 1 carry
   (cond ((= (length a) 0) (cons nl c))
      (else (adderFunction
          (cdr a)                                      
          (cdr b)   
          (cdr (fulladder (car a) (car b) c))           
          (cons (car (fulladder (car a) (car b) c)) nl)))))
)


(define reverseFunction (lambda (l nl)    ; accpet reversion list or empty list
   (cond ((= (length l) 0) nl) 
         (else (reverseFunction (cdr l) (cons (car l) nl)))))
)

(define reverseList (lambda (l)
  (cond ((= (length l) 0) l)
       (else (reverseFunction (cdr l) (cons (car l) '()))))) 
)


;-----------------------
; Below are your test cases.  
;-----------------------

(newline)
(writeln "Testing Logic Gate Methods")
(writeln "AND Gate Test")
(andgate 0 0)
(andgate 0 1)
(andgate 1 0)
(andgate 1 1)

(newline)
(writeln "OR Gate Test")
(orgate 0 0)
(orgate 0 1)
(orgate 1 0)
(orgate 1 1)

(newline)
(writeln "NOT Gate Test")
(notgate 0)
(notgate 1)

(newline)
(writeln "XOR Gate Test")
(xorgate 0 0)
(xorgate 0 1)
(xorgate 1 0)
(xorgate 1 1)

(newline)
(writeln "Testing Fulladder Methods")
(fulladder 0 0 0)
(fulladder 0 0 1)
(fulladder 0 1 0)
(fulladder 0 1 1)
(fulladder 1 0 0)
(fulladder 1 0 1)
(fulladder 1 1 0)
(fulladder 1 1 1)


(newline)
(writeln "Testing n bit adder Methods")
(n-bit-addr '(0 1 0) '(0 1 1) 1)
(n-bit-addr '(1 1 1) '(0 0 0) 1)
(n-bit-addr '(1 1 0 0 1 0 1 0 1) '(1 0 1 1 0 0 0 1 1) 0)



