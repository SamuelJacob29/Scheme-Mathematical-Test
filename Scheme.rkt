#lang Racket

(define cubeInt
 (lambda (x)
   (expt x 3)))

(define cube
  (lambda (x)
    (expt x 3)))

(define triple
  (lambda (x)
    (* x 3)))

(define tripleCube
  (lambda (x)
    (* 3 (cube x))))

(define mult
  (lambda (x y)
    (if (= y 1) x
    (+ x(mult x (- y 1))))))

(define mult5
  (lambda (x)
    (mult x 5)))

(define fibrec
  (lambda (n)
    (if (or(= n 1)(= n 2) )
        1
        (+ (fibrec(- n 1)) (fibrec(- n 2))))))

(define fibhelp
  (lambda(a b n)
    (if (= n 1)
        b
        (fibhelp b(+ a b) ( - n 1)))))
    
(define fib
  (lambda (n)
    (fibhelp 0 1 n)))

(define first
  (lambda (list)
    (cons (car (car list)) (cons (car (car (cdr list))) '()))))

(define second
  (lambda (list)
    (cons (cdr (car list)) (cons (cdr (car (cdr list))) '()))))

(define threeDifferent
  (lambda (a b c)
    (not (or (= a b)(or (= a c) (= b c))))))

(define minThree
  (lambda (a b c)
    (cond [(and (> b a) (> c a)) a ]
          [(and (> a b) (> c b)) b ]
          [ c ])))

(define concat
  (lambda (list)
    (append* list))) 

(define length
  {lambda (list)
   (cond ((null? list)
          0)
         (else
          (+ 1 (length (cdr list)))))})

    
