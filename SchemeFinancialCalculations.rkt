#lang racket
; Title: Scheme Financial Calculations Assignment
; Desc: This is an assignment that allows us to practice creating functions
;       Make sure you document all Functions as shown for distance and FutureValue.
;       Refer to the pdf on Canvas for the exact formulas and the answers you should get
; Author:  JIAYUAN YU
; Date: 02/15/2023




; Function Example.  The distance function
; Given   r - Rate of Speed
;         t - Time of Travel
; Result  d = rt

(define (distance r t)
  (display "Distance is: ")
  (display (* r t)))

(distance 70 1)
(newline)
(newline)





; Function 1.  Future Value Function
; Given P payment
;       r interest
;       t num years
; Result Future Value of your investment at end of t years

; Write a small one to calculate the numerator.  Makes it easier

(define (FVNum r t)
  (- (expt (+ 1 r) t) 1))

(define (FutureValue p r t)
  (display "Future Value is: " )
  (display (* p (/ (FVNum r t) r) (+ 1 r))))


(FutureValue 2000 .10 20)  ; Should print 126004.9988
(newline)
(newline)




; Function 2. Money Deposited
; Given pymt regular payment
;          r annual interest rate
;          c Cost of Living Adjustment
;          t term years
; (Payment1 10000 0.05 0.02 10)

(define (PNum1 c r t) 
  (- 1(expt (/ (+ 1 c)(+ 1 r)) t)))
  

(define (Payment1 pymt r c t)
  (display "Initial deposit is: ") 
  (display (* pymt (/ (PNum1 c r t)(- r c)))))

(Payment1 10000 0.05 0.02 10)
(newline)
(newline)




; Function 3. Mustang Monthly Payment
; Given i monthly interest rate
;       N number of months
;       P present value
; (MonthlyPayment 0.01 36 12000)

(define (MonthlyPayment i N P)
    (let 
        (
          (MPNum1 (- 1 (expt (+ 1 i) (- N))))
        )

        (display "Monthly Payment is: ")
        (display (/ (* P i) MPNum1)))
    )

(MonthlyPayment 0.01 36 12000)
(newline)
(newline)





; Function 4. Money After 10 years
; Given m monthly payment
;       i monthly interest rate
;       N number of months
; (Accrued 200 0.005 120)

(define (Accrued m i N)
  (let
     (
        (ANum1 (- (expt (+ 1 i)(+ N 1)) 1))
     )

     (display "Accrued Amount is ")
     (display (- (* (/ m i) ANum1) m)))    
)

(Accrued 200 0.005 120)
(newline)
(newline)




; Function 5. Deposit at the end of each of the next 11 months
; Given F future value
;       r annual interest rate
;       t number of years (0.9167 years)
;       i periodic interest rate
;       n number of periods
; (Savings 1000 0.01 11)

(define (MonthlyPayment2 F i n)
  (let
     (
        (MPay1 (- (expt (+ 1 i) n) 1))
     )

     (display "Monthly Deposit is: ")
     (display (/ (* F i) MPay1))
  )
)

(MonthlyPayment2 1000 0.01 11)
(newline)
(newline)





; Function 6. Present Value Ordinary Annuit
; Given m monthly payment
;       i monthly interest rate
;       N number of months
; (PresentValue 100 0.01 60)

(define (PresentValue m i N)
   (let
       (
          (PVNum1 (- 1 (expt (+ 1 i) (- N))))
       )

       (display "Present Value is: ")
       (display (* (/ m i) PVNum1))
   )
)

(PresentValue 100 0.01 60)
(newline)