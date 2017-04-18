(defun sqr (x) (* x x))

(defun expmod (a n m)
  (cond ((= n 0) 1)
        ((evenp n) (mod (sqr (expmod a (/ n 2) m)) m))
        (t (mod (* a (expmod a (- n 1) m)) m))))

(defun fermat-test (n)
  (defun try-it (a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(defun fast-prime? (n times)
  (cond ((= times 0) t)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (t nil)))
