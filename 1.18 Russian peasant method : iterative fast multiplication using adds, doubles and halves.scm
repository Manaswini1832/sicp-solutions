; own

(define (log-mult a b)
	(if (even? b) (log-mult-iter (double a) (halve b) 0)
        (log-mult-iter (double a) (halve (- b 1)) a))
)

(define (log-mult-iter douba halfb sum)
  	(if(= halfb 0) sum
    	(log-mult-iter douba (- halfb 1) (+ sum douba))   
    )
  )

(define (double a) (* 2 a))

(define (halve a) (/ a 2))

(log-mult 9 5)
