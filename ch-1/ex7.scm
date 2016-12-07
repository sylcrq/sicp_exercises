(define (square x) (* x x))
(define (good-enough old-guess new-guess) 
  (< (/ (abs (- old-guess new-guess)) old-guess) 0.0001))
(define (improve guess x) 
  (/ (+ (/ x guess) guess) 2))
(define (square-root guess x) 
  (if (good-enough guess (improve guess x)) 
    guess 
    (square-root (improve guess x) x) ))
(define (sqrt-1 x) (square-root 1.0 x))

(sqrt-1 3)
(sqrt-1 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)
