;row & column start with zero
(define (pascal row col) 
  (if (or (= col 0) (= row col)) 
    1 
    (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col))))

(pascal 0 0)
(pascal 3 2)
(pascal 4 2)

;factorial by iterative
(define (factorial n) (factor-iter 1 1 n))
(define (factor-iter p i n) 
  (if (> i n) 
    p 
    (factor-iter (* p i) (+ i 1) n)))

(factorial 0)
(factorial 1)
(factorial 4)
