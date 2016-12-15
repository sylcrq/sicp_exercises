(define (f n) 
  (if (< n 3) 
    n 
    (+ (f (- n 1)) 
       (* 2 (f (- n 2) ))
       (* 3 (f (- n 3))))))

(define (f-new n) (f-iter 2 1 0 0 n))
(define (f-iter a b c i n) 
  (if (= i n) 
    c
    (f-iter (+ a (* 2 b) (* 3 c)) a b (+ i 1) n)))

(f 2)
(f 3)
(f 4)

(f-new 2)
(f-new 3)
(f-new 4)
