(defun sqr (x) (* x x))

(defun expmod (a n m)
  (defun tail-expmod (n acc)
    (cond ((= n 0) acc)
          ((evenp n) (tail-expmod (/ n 2) (mod (sqr acc) m)))
          (t (tail-expmod (- n 1) (mod (* acc a) m)))))
  (tail-expmod n 1))
