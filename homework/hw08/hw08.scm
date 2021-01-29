(define (helper1 curr num s)
    (if (and (not (null? s)) (= curr (car s))) 
        (helper1 curr (+ num 1) (cdr-stream s))
        (list curr num)
    )
)

(define (next1 s curr)
    (if (null? s) nil
        (if (= (car s) curr) 
            (next1 (cdr-stream s) curr) 
            s
        )
    )
)


(define (rle s)
    (if (null? s) 
        nil
        (cons-stream (helper1 (car s) 0 s) (rle (next1 s (car s))))
    )
)

(define (helper2 curr s ans)
    (if (and (not (null? s)) (<= curr (car s))) (helper2 (car s) (cdr-stream s) 
        (append ans (list (car s))))
        ans 
    )
)

(define (next2 s curr)
    (if (null? s) 
        nil
        (if (>= (car s) curr) 
            (next2 (cdr-stream s) (car s)) 
            s
        )
    )
)


(define (group-by-nondecreasing s)
    (if (null? s) 
        nil
        (cons-stream (helper2 (car s) (cdr-stream s) (list (car s))) (group-by-nondecreasing (next2 s (car s))))
    )  
)


(define finite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 3
                (cons-stream 1
                    (cons-stream 2
                        (cons-stream 2
                            (cons-stream 1 nil))))))))

(define infinite-test-stream
    (cons-stream 1
        (cons-stream 2
            (cons-stream 2
                infinite-test-stream))))

