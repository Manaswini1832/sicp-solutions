(define (fast-expt b n)
  	(define sqb (square b))
	(if (even? n) (expt-helper sqb (/ n 2) 1)
    (expt-helper sqb (/ (- n 1) 2) b)) 
)

(define (expt-helper sqb halfexp product)
	(if (= halfexp 0) product
    (expt-helper sqb (- halfexp 1) (* product sqb)))
)

(define (even? b)
	(= (remainder b 2) 0)
)

(define (square b) (* b b))

(expt 2 0)
