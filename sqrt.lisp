
(define sqrt x)
	(sqrt-iter 1.0 x)
(define (sqrt-iter guess x))
	(if (good-enough? guess x))
	guess
	(sqrt-iter (improve guess x))
				x)))
(define (good-enough? guess x)
	(< abs(- (square guess) x)) 0.001)
(define (improve guess x)
	(average guess(/ x guess)))
(define (average x y )
	(/ (+ x y) 2))

#过程局部化
(define (sqrt x))
	(define (good-enough? guess x)
		(< (abs (-square guess) x)) 0.001))
	(define (improve guess x)
		(average guess (/ x guess)))
	(define (sqrt-iter guess x))
		(if (good-enough? guess x)
			guess
			(sqrt-iter (improve guess x) x)))
	(sqrt-iter 1.0 x)

#x-内部定义中的自由变量
(define (sqrt x))
	(define (good-enough? guess)
		(< (abs (-square guess) x)) 0.001))
	(define (improve guess)
		(average guess (/ x guess)))
	(define (sqrt-iter guess))
		(if (good-enough? guess x)
			guess
			(sqrt-iter (improve guess))))
	(sqrt-iter 1.0 x)
