;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex01) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 01 - Write an expression whose value s the number of seconds 
; in a leap year (a leap year has 366 days). Next, write 2 more
; expressions that have the same value.

(* 366 (* 24 (* 60 60)))
(* 316224 (/ 1000 10))
(* 3600 (* 122 3 (/ 120 5)))