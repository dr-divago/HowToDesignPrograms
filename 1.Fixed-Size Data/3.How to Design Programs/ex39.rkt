;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex39) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))

(define WHEEL (circle WHEEL-RADIUS "solid" "black"))
(define SPACE-WHEEL (rectangle WHEEL-DISTANCE WHEEL-RADIUS "solid" "white"))
(define WHEEL-AND-SPACE (beside WHEEL SPACE-WHEEL WHEEL))

(define BODY-HEIGHT (* WHEEL-RADIUS 10))
(define BODY-WIDTH (* WHEEL-RADIUS 2))

(define BODY (above
              (rectangle (/ BODY-HEIGHT 2) (/ BODY-WIDTH 2) "solid" "red") 
              (rectangle BODY-HEIGHT BODY-WIDTH "solid" "red")) )

(underlay/offset BODY 0 (* WHEEL-RADIUS 2) WHEEL-AND-SPACE)


