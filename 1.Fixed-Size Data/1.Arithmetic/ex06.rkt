;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex06) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/image)

(define cat <cat image>)

(define (image-area img)
  (* (image-width img) (image-height img)))

(image-area cat)

;Note: To run the program, it is necessary to replace "<cat image>" with actual image of cat.
;The number of pixels in the image is simply the area of the rectangle in which the cat is contained.