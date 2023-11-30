(define (smallest-divisor n)
  (test-divisor n 2))

(define (test-divisor n test)
	(
     cond ((> (square test) n) n)
     ((divides? test n) test)
     (else (test-divisor n (+ test 1)))
    )
)

(define (square b) (* b b))

(define (divides? a b) (= (remainder b a) 0))

(define (smallestDivisor a)
	(smallest-divisor a)
  	
  
  
)

(smallestDivisor 25)
