;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex58) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define LOW-TAX 1000)
(define HIGH-TAX 10000)

(define (sales-tax p)
  (cond
    [(and (<= 0 p) (< p LOW-TAX)) 0]
    [(and (<= LOW-TAX p) (< p HIGH-TAX)) (* 0.05 p)]
    [(>= p HIGH-TAX) (* 0.08 p)]))

(check-expect (sales-tax 537) 0)
(check-expect (sales-tax 1000) 50)
(check-expect (sales-tax 12017) 961.36)