;; 
;; mona-
;; 
(defvar default-msg "おまえモナー")
(defvar mona
'("　　∧＿∧　　 ／￣￣￣￣￣￣￣￣\n"
"　（ ´∀｀）＜　" mona-msg "\n"
"　（　　　 ）　＼＿＿＿＿＿＿＿＿\n"
"　 ｜ ｜　｜\n"
"　（_＿）＿）\n"))
(defun mona (msg)
"どこでもモナー。
mew とかで メール見てるときにやると面白いかも."
(interactive "smessage: ")

(let ((list mona)
      (mona-msg default-msg)
      rect tmp)
  (unless (string= msg "")
    (setq mona-msg msg))
  (while list
    (setq tmp (concat tmp (eval (car list))))
    (if (string-match "\\(.*\\)\n" tmp)
	(progn
	  (setq rect (cons (match-string 1 tmp) rect))
	  (setq tmp nil)))
    (setq list (cdr list)))
  (setq rect (reverse rect))
  (let ((buffer-read-only nil))
    (insert-rectangle rect))))

;; key-bind
(global-set-key "\C-cm" 'mona)
