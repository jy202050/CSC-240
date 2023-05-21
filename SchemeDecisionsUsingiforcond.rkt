#lang racket
; Title: Water Weight and RadioFrequency
; Desc: Write a function call waterweight and radiofrequency
; Author: JIAYUAN YU
; Date: 03/02/2023




; Write a function called WaterWeight that accepts
;   Diameter, Length and either #t or #f

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Write WaterWeight here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(display "Water Weight ")
(newline)
;(calcWaterWeight)
(define (WaterWeight D L K)
    (if K
       (* 3.14159 (/ D 24) L 62.4)
       (* 3.14159 (/ D 24) L 64.08))
)

(display "PW Pipe Diameter 20, Pipe Length 24 ")
(WaterWeight 20 24 #t)
(display "SW Pipe Diameter 20, Pipe Length 24 ")
(WaterWeight 20 24 #f)








; Write a function called RadioFrequency that accepts
;  a frequency
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Write RadioFrequency here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (RadioFrequency RF)
  (cond 
        ((< RF 0.03) "VLF")
        ((< RF 0.3) "LF")
        ((< RF 3) "MF")
        ((< RF 30) "HF")
        ((< RF 328.6) "VHF")
        ((< RF 2009) "UHF")
        ((> RF 2009) "Invalid Value")
        (else "Invalid Value")
  )
)

(newline)
(display "Radio Frequencies")
(newline)
(displayln "20 KHz")
;(displayln (exact->inexact(/ 20 1000)))
(displayln (RadioFrequency .02))
(displayln "50 KHz")
;(displayln (exact->inexact(/ 50 1000)))
(displayln (RadioFrequency .05))
(displayln "350 KHz")
;(displayln (exact->inexact(/ 350 1000)))
(displayln (RadioFrequency .350))
(displayln "3500 KHz")
;(displayln (exact->inexact(/ 3500 1000)))
(displayln (RadioFrequency 3.500))
(displayln   "328599 KHz")
;(displayln (exact->inexact (/ 328599 1000)))
(displayln (RadioFrequency 32.8599))
(displayln   "2000000 KHz")
;(displayln (/ 2000000 1000))
(displayln (RadioFrequency 2000.000))
(displayln   "4000000 KHz")
;(displayln (/ 4000000 1000))
(displayln (RadioFrequency 4000.000))





; Write a function called sales that accepts hourly rate, 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Write sales function here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(define (PayCheck hourly hoursOrSales rate kissup)
    (cond ((eq? hourly #t)                                        
        (- (+ (* hoursOrSales rate) (* (* (* rate 0.5) (max 0 (- hoursOrSales 40))))) kissup))

            (else (cond  
                     ((< hoursOrSales 1000) (- (* hoursOrSales 0.01) kissup))
                     ((< hoursOrSales 10000) (- (* hoursOrSales 0.025) kissup))
                     ((>= hoursOrSales 10000 ) (- (* hoursOrSales 0.06) kissup))
                  )    
            )
    ) 
)  

(newline)
(display "Sales")
(newline)
(display "Pay 35 hours, $10 hr, no kissup $")
(PayCheck #t 35 10 0)
(display "Pay 45 hours, $10 hr, no kissup $")
(PayCheck #t 45 10 0)
(display "Pay 35 hours, $10 hr, $20 kissup $")
(PayCheck #t 35 10 20)
(display "Pay 45 hours, $10 hr, $20 kissup $")
(PayCheck #t 45 10 20)
(display "Pay $500 sales, $0 hr, no kissup $")
(PayCheck #f 500 0 0)
(display "Pay $5000 sales, $0 hr, no kissup $")
(PayCheck #f 5000 0 0)
(display "Pay $15000 sales, $0 hr, no kissup $")
(PayCheck #f 15000 0 0)
(display "Pay $500 sales, $0 hr, $20 kissup $")
(PayCheck #f 500 0 20)
(display "Pay $5000 sales, $0 hr, $20 kissup $")
(PayCheck #f 5000 0 20)
(display "Pay $15000 sales, $0 hr, $20 kissup $")
(PayCheck #f 15000 0 20)




