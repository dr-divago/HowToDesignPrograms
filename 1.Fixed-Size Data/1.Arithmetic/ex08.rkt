;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex08) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
(define cat (rectangle 10 20 "solid" "blue"))


(if (> (image-height cat) (image-width cat))
    "tall"
    "wide")

;if expression for rectangular image of variable size

(define rec
  (rectangle 50 50 "outline" "red"))

(if (> (image-height rec) (image-width rec))
      "tall"
      (if (< (image-height rec) (image-width rec))
          "wide"
          (if (= (image-height rec) (image-width rec))
              "equal"
              "error")))