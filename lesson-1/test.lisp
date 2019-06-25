; 1. Написати функцію sum, яка рахує суму чисел зі списку-аргументу.
; (sum '(1 2 3)) -> 6
; 2. Написати функцію inc-lst, яка приймає на вхід список чисел і
; повертає новий список з числами, більшими на 1.
; (inc-list '(1 2 3)) -> (2 3 4)
; 3. Написати функцію my-reverse, яка розвертає список у зворотному
; порядку (створює новий список).
; (my-reverse '(1 2 3)) -> (3 2 1)
; 4. Написати функцію delete-repeats, яка видаляє дублікати елементів зі
; списку-аргументу. Елементи — числа і символи.
; (delete-repeats '(1 1 2 3 3 3 a a b)) -> (1 2 3 a b)

;; TASK 1
;; sum iterative approach
(defun sum-lst-iterative(some-list)
  (let ((sum 0))
  (dolist (el some-list)1
    (setq sum (+ sum el))
    )
  sum))
;; sum recursive approach
(defun sum-lst-recursive(some-lst)
  (if (null some-lst)
      0
      (+ (sum-lst-recursive( cdr some-lst)) (car some-lst))
      )
  )


;; TASK 2

(defun inc-1-lst(lst)
  (unless (endp lst)
    (print (car lst))
    (cons (1+ (first lst))
    (inc-1-lst (cdr lst)))
    )
  )
;; TASK 3
(defun my-reverse(lst)
  (cond
    ((null lst)	`())
    (t (append
	(my-reverse (cdr lst))
	    (list (car lst))
		))
	)
  )

;; TASK 4

(defun el-in-lst(el lst)
  (cond
    ((null lst) nil)
    ((equal el (first lst)) t)
     (t (el-in-lst el (cdr lst)))
    )
  )
       

(defun delete-repeats(lst)
  (if (null lst)
      NIL
      (if (equal (el-in-lst (car lst) (cdr lst)) T)
	  (delete-repeats (cdr lst))
	  (cons (car lst) (delete-repeats (cdr lst)))
	  )
      )
  )
 
