#lang racket

; Title: Recursive Functions Assignment
; Desc: Complete each of the recursive implementations
; Author: JIAYUAN YU
; Date: 03/19/2023

;-----------------------
; Write the DotProduct Function Here

(define (dotProduct num1 num2)
  (cond ((null? num1) 0)
    (else
          (+ (* (car num1) (car num2)) (dotProduct (cdr num1) (cdr num2)))
    )
  )
)

;-----------------------

;// If both lists are of length 0
;// return 0
;// else
;// return the sum of the first elements + (a recursive call to DotPorodcut the rest of the list)

;-----------------------
; Write the Duplicates Function Here

(define (duplicates numsList)
  (cond 
      ((empty? numsList) #f)
      ((not (not (member (first numsList) (rest numsList)))) #t)
      (else (duplicates (rest numsList))
    )
  )
)


;-----------------------

;// if (the first element in the list exists in the second list) // This might be another function
;// return true
;// else
;// recursive call to search the rest of the list...

;-----------------------
; Write the MaxDistance Function Here

(define (maxDistance numsList1 numsList2)
  (cond
    ((null? numsList1) 0)
    ((> (car numsList1) (car numsList2)) (max (- (car numsList1) (car numsList2)) 
       (maxDistance (cdr numsList1) (cdr numsList2))))

    (else
        (max (- (car numsList2) (car numsList1)) (maxDistance (cdr numsList1) (cdr numsList2)))
    )
  )
)

;-----------------------

;// This will probably take two functions
;// Function 1 sets dist to the abs of the first element in each list
;// Then calls Function 2 with dist and "the rest of the list"

;// Function 2
;// if the length of the lists are zero, return dist
;// else if the distance between the first elements > dist
;// recursive call to Function 2 pass the new dist and the rest of the list
;// else
;// a recursive call to Function 2 passing the current dist and the rest of the list

;-----------------------
; Below are your test cases.  
;-----------------------

(writeln "Dot Product of two empty lists '() '()")
(dotProduct '() '())
(writeln "Dot Product of single lists '(1) '(4)")
(dotProduct '(1) '(4))
(writeln "Dot Product of longer lists '(8 -2 4 6) '(2 -12 -4 7)")
(dotProduct '(8 -2 4 6) '(2 -12 -4 7))

(newline)
(writeln "Testing Duplicates Methods")
(newline)
(writeln "Duplicates of an empty lists? '()")
(duplicates '())

(writeln "Duplicates of a single list '(2)?")
(duplicates '(2))

(writeln "Duplicates of the list '(82 62 42 92 32)?")
(duplicates '(82 62 42 92 32))

(writeln "Duplicates of the list '(82 62 42 82 32)?")
(duplicates '(82 62 42 82 32))

(writeln "Duplicates of the list '(82 62 42 32 32)?")
(duplicates '(82 62 42 32 32))

(writeln "Duplicates of the list '(32 62 42 32 12)?")
(duplicates '(32 62 42 32 32))

(newline)
(writeln "Testing Max Distance Methods")
(newline)

(writeln "Max Distance of two empty lists '() '()")
(maxDistance '() '())


(writeln "Max Distance of two single lists '(2) '(8)")
(maxDistance '(2) '(8))


(writeln "Max Distance of two single lists '(-4) '(-12)")
(maxDistance '(-4) '(-12))


(writeln "Max Distance of two longer lists")
(writeln "'(3  8 12 4 2 22 -4 18) '(6 -4 20 6 0 22  7  3)")
(maxDistance '(3  8 12 4 2 22 -4 18) '(6 -4 20 6 0 22  7  3))


