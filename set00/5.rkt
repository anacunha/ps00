;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex05) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 05 - Define a function called sq that computes the square of a
; number. Write the contract, purpose statement, examples and
; definition of this function.

; sq : Number -> Number
; GIVEN: the number to compute the square of
; RETURNS: the square of the given number
; Examples:
; (sq 5)  => 25
; (sq 12) => 144

(define (sq x)
  (* x x))

; Tests:
(check-expect (sq 5) 25)
(check-expect (sq 12) 144)
(check-expect (sq 9) 81)
(check-expect (sq 13) 169)