;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex07) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 07 - Define a function called circumference that computes the
; circumference of a circle.

; circumference : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its circumference, using the formula 2 * pi * r.
; Examples:
; (circumference 1)  =>  6.283185307179586 
; (circumference 0)  =>  0

(define (circumference r)
  (* 2 pi r))

; Tests:
(check-within (circumference 1) 6.283185307179585 6.283185307179587)
(check-expect (circumference 0) 0)
(check-within (circumference 5) 31.41592653589791 31.41592653589794)