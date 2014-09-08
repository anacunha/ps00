;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex09) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 09 -  Define a predicate even? that takes a number as an argument and
; returns true if this number is divisible by 2, and false
; otherwise. (You will probably need to use remainder or something
; similar in the implementation of even?.)

; is-even? : Number -> Boolean
; GIVEN: the number to find out if it is even or not.
; RETURNS: true if it is an even number, false if it is not.
; Examples:
; (is-even? 2)  =>  true
; (is-even? 9)  =>  false

(define (is-even? n)
  (if (= (remainder n 2) 0) true
      false))

; Tests:
(check-expect (is-even? 2) true)
(check-expect (is-even? 4) true)
(check-expect (is-even? 3) false)
(check-expect (is-even? 1) false)
(check-expect (is-even? 9) false)