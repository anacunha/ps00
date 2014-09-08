;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex08) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 08 - The area included in a circle of radius r is given by the
; formula pi * r^2. Write the contract, purpose statement, examples, and the
; definition of a function called circle-area that computes the are
; a included in a circle of radius r, using the above formula. Use
; the three calculations you did above as your examples.

; circle-area : Number -> Number
; GIVEN: the radius r of a circle.
; RETURNS: the area included in the circle of radius r.
; Examples:
; (circle-area 1)  =>  3.141592653589793
; (circle-area 5)  =>  78.53981633974483
; (circle-area 7)  =>  153.93804002589985

(define (circle-area r)
  (* pi (* r r)))

; Tests:
(check-within (circle-area 1) 3.141592653589791 3.141592653589794)
(check-within (circle-area 5) 78.53981633974481 78.53981633974484)
(check-within (circle-area 7) 153.93804002589984 153.93804002589986)