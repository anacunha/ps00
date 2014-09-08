;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex06) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 06 - Write the contract, purpose statement, examples, and
; definition of a function quadratic-root that takes as arguments
; a, b, and c, and computes the root of the corresponding
; quadratic equation.

; quadratic-root: Number Number Number -> Number
; GIVEN: the three coefficients of the equation.
; RETURNS: the root of the corresponding quadratic equation.
; Examples:
; (quadratic-root 1 -3 -4) => 4
; (quadratic-root 1 3 -4) => 1

(define (quadratic-root a b c)
  (/ (+ (- b)(sqrt (- (* b b)(* 4 a c)))) (* 2 a)))

; Tests:
(check-expect (quadratic-root 1 -3 -4) 4)
(check-expect (quadratic-root 1 3 -4) 1)
(check-expect (quadratic-root 1 -7 0) 7)
(check-expect (quadratic-root 1 0 -4) 2)