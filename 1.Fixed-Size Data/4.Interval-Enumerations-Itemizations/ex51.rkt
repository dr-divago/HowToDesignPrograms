;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex51) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/universe)

(define RADIUS 10)

(define WIDTH-OF-WORLD (* RADIUS 40))
(define HEIGTH-OF-WORLD (* RADIUS 20))

(define BACKGROUND
  (empty-scene WIDTH-OF-WORLD HEIGTH-OF-WORLD))

(define (traffic-light-draw color)
  (circle RADIUS "solid" color))

(define (tock ws)
  ( traffic-light-next ws ))

 ; String -> TrafficLight
(define (traffic-light-next s)
  (cond
    [(string=? "red" s) "green"]
    [(string=? "green" s)  "yellow"]
    [(string=? "yellow" s) "red"]))

(define (render tls)
  (place-image ( traffic-light-draw tls) (/ WIDTH-OF-WORLD 2) (/ HEIGTH-OF-WORLD 2) BACKGROUND))


(define (main ws)
  (big-bang ws
    [on-tick tock 2 9]
    [to-draw render]))

(main "red")