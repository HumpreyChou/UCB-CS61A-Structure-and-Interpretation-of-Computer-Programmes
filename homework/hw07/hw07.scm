(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  (car (cdr s))
)

(define (caddr s)
  (car (cdr (cdr s)))
)


(define (sign num)
  (cond ((< num 0) -1)
      ((= num 0) 0)
      ((> num 0) 1)
  )

)


(define (square x) (* x x))

(define (pow x y)
    (if (= y 1)
        x
        (if (even? y)
            (square (pow x (/ y 2)))
            (* x (square (pow x (/ (- y 1) 2))))
        )
    )
)


(define (unique s)
    (if (null? s)
        nil
        (cons (car s) (unique (filter (lambda (x) (not (eq? x (car s)))) (cdr s))))
    )
)


(define (replicate x n)
    (define (rep_iter x n s)
        (if (= n 0)
            s
            (rep_iter x (- n 1) (cons x s))
        )
    )
    (rep_iter x n nil)
)


(define (accumulate combiner start n term)
    (if (= n 0)
        start
        (combiner (term n) (accumulate combiner start (- n 1) term))
    )
)


(define (accumulate-tail combiner start n term)
    (define (acc-iter combiner start n term res)
        (if (= n 0)
            res
            (acc-iter combiner start (- n 1) term (combiner (term n) res))
        )
    )
    (acc-iter combiner start n term start)
)


(define-macro (list-of map-expr for var in lst if filter-expr)
    `(map (lambda (,var) ,map-expr) (filter (lambda (,var) ,filter-expr) ,lst))
)

