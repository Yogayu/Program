#阶乘-线性递归(三角形)
(define (factorial n)
	(if (= n 1)
		1
		(* n (factorial (- n 1)))))

#线性迭代（长方形）
#product <- count * product
#count <- count + 1

define(factorial n)
	(fact-iter 1 1 n))
define(fact-iter product count max-count)
	((if (> count max-count)
		product
		(fact-iter  (* count product) 
					(+ count +)
					(max-count)))
#树形递归(树)
#斐波那契数
(define (fib n)
	cond((= n 0 ) 0
		(= n 1) 1
		(else (+ fib(- n 1) (fib(- n 2))))))
(define (fib n))
	(fib-iter 1 0 n))
#a<-a+b
#b<-a
(define (fact-iter a b count)
	((if (= count 0)
		b
		(fib-iter (+ a b) a (- count 1))))

#换零钱
(define (count-change amount)
	(cc amount 5))
(define cc amount kinds-of-coins)
	(cond (= amount 0) 1)
	((or (< amount 0) (= kinds-of-coins 0)) 0)
	(else (+ (cc amount
				 (- kinds-of-coins 1))
			 (cc (- amount
			 		(first-denmoination kinds-of-coins))
			 	kinds-of-coins))))
(define (first-denmoination kinds-of-coins)
	(cond ((= kinds-of-coins 1) 1)
		  ((= kinds-of-coins 2) 5)
		  ((= kinds-of-coins 3) 10)
		  ((= kinds-of-coins 4) 25)
		  ((= kinds-of-coins 5) 50)))




