(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sin_new x) 
  (if (< (abs x) 0.1) x (p (sin_new (/ x 3.0))) ))

(cube 3)
(sin 90)
(sin -90)
(sin_new 90)
(sin_new -90)

(trace-entry p)
(sin_new 12.15)

