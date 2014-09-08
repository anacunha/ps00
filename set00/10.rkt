;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex10) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 10 - Define a function that takes three numbers as arguments
; and returns the sum of the two larger numbers. As always, write
; down contract, purpose statement, and examples.

; sum-of-two-larger : Number Number Number -> Number
; GIVEN: three numbers.
; RETURNS: the sum of the two larger numbers.
; Examples:
; (sum-of-two-larger 1 2 3)     =>  5
; (sum-of-two-larger 17 13 33)  =>  50

(define (sum-of-two-larger x y z)
  (cond 
    [(and (>= x y) (>= z y)) (+ x z)]
    [(and (>= x z) (>= y z)) (+ x y)]
    [(and (>= y x) (>= z x)) (+ y z)]
    ))

; Tests:
(check-expect (sum-of-two-larger 1 2 3) 5)
(check-expect (sum-of-two-larger 1 3 2) 5)
(check-expect (sum-of-two-larger 2 1 3) 5)
(check-expect (sum-of-two-larger 2 3 1) 5)
(check-expect (sum-of-two-larger 3 2 1) 5)
(check-expect (sum-of-two-larger 3 1 2) 5)
(check-expect (sum-of-two-larger 2 2 3) 5)
(check-expect (sum-of-two-larger 3 2 2) 5)
(check-expect (sum-of-two-larger 2 3 2) 5)
(check-expect (sum-of-two-larger 3 3 3) 6)
