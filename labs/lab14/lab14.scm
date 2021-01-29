(define (help head tail n)
    (if (null? tail) 
        (cons head nil)
        (if (= n 0) 
            (cons head tail)
            (help (append head (list (car tail))) (cdr tail) (- n 1))
        )
    )
)

(define (split-at lst n)
    (help nil lst n)
)


(define-macro (switch expr cases)
	(cons _________
		(map (_________ (_________) (cons _________ (cdr case)))
    			cases))
)

