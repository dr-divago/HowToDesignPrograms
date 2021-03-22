;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex29) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define BASE_ATTENDEE 120)
(define BASE_PRICE 5.0)
(define ATTENDEE_CHANGE 15)
(define PRICE_CHANGE 0.1)
(define VARIABLE_COST 1.50)

(define (attendees ticket-price)
  (- BASE_ATTENDEE (* (- ticket-price BASE_PRICE) (/ ATTENDEE_CHANGE PRICE_CHANGE))))
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))
(define (cost ticket-price)
  ( * VARIABLE_COST (attendees ticket-price)))
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)