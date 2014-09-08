;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex03) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 03 - Write the definition of a function that converts a 
; temperature from degrees Fahrenheit to degrees Celsius. The 
; formula for the conversion is C = (F-32) * (5/9).

; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celsius.
; Examples:
; (f->c 32)  => 0
; (f->c 100) => 37.77777777777778

(define (f->c x)
  (* (- x 32) (/ 5 9)))

; Tests:
(check-expect (f->c 32) 0)
(check-expect (f->c 50) 10)
(check-expect (f->c 68) 20)
(check-within (f->c 100) 37.7 37.77777777777778)