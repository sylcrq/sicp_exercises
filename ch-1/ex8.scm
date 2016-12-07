(define (square x) (* x x))
(define (good-enough old-guess new-guess) 
  (< (abs (- old-guess new-guess)) 0.0001))
(define (improve guess x) 
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))
(define (cube-root guess x) 
  (if (good-enough guess (improve guess x)) 
    guess 
    (cube-root (improve guess x) x) ))
(define (cbrt x) (cube-root 1.0 x))

(cbrt 9)
(cbrt (* 3 3 3))
