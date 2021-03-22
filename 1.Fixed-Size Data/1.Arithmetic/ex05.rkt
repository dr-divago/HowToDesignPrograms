;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex05) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/image)

;; Physical Constants;

(define WHEEL-RADIUS 5)  ; single point of controlx
(define WHEEL-OFFSET (* WHEEL-RADIUS 3))

;; Graphical Constants
(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))

(define SPACE
  (rectangle WHEEL-OFFSET WHEEL-RADIUS "solid" "transparent"))

(define BOTH-WHEELS (beside WHEEL SPACE WHEEL))

(define BODY-LENGTH (* WHEEL-RADIUS 10))
(define BODY-HEIGHT (* WHEEL-RADIUS 2))

(define BODY
  (above
    (rectangle (/ BODY-LENGTH 2) (/ BODY-HEIGHT 2) "solid" "blue")
    (rectangle BODY-LENGTH BODY-HEIGHT "solid" "blue")))


(underlay/offset BODY 0 BODY-HEIGHT BOTH-WHEELS)
