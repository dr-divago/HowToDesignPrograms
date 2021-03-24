;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex42) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/universe)


(define WHEEL-RADIUS 10)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 3))

(define WIDTH-OF-WORLD (* WHEEL-RADIUS 40))
(define HEIGTH-OF-WORLD (* WHEEL-RADIUS 20))

(define WHEEL (circle WHEEL-RADIUS "solid" "black"))
(define SPACE-WHEEL (rectangle WHEEL-DISTANCE WHEEL-RADIUS "solid" "white"))
(define WHEEL-AND-SPACE (beside WHEEL SPACE-WHEEL WHEEL))

(define BODY-LENGTH (* WHEEL-RADIUS 10))
(define BODY-HEIGHT (* WHEEL-RADIUS 2))

(define BODY (above
              (rectangle (/ BODY-LENGTH 2) (/ BODY-HEIGHT 2) "solid" "blue") 
              (rectangle BODY-LENGTH BODY-HEIGHT "solid" "blue")) )

(define CAR
  (underlay/offset BODY
                   0 (* WHEEL-RADIUS 2)
                   WHEEL-AND-SPACE))

(define TREE (underlay/xy (circle 10 "solid" "green") 9 15 (rectangle 2 20 "solid" "brown") ) )

(define BACKGROUND
  (empty-scene WIDTH-OF-WORLD HEIGTH-OF-WORLD))
(define BACKGROUND-TREE
  (place-image TREE 150 90 BACKGROUND))

(define Y-CAR (/ HEIGTH-OF-WORLD 2))

(define (render ws)
  (place-image CAR (- ws BODY-LENGTH) Y-CAR BACKGROUND-TREE))

(define (tock ws)
  (+ ws 3))

(define (last-world? ws)
 (> (tock ws) (+ WIDTH-OF-WORLD (/ BODY-LENGTH 2) ) ))

(define (main ws)
  (big-bang ( + ws BODY-LENGTH)
    [on-tick tock]
    [to-draw render]
    [stop-when last-world?]))

(main 0)
