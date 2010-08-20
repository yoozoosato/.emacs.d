;;
;; display settings.
;;

;; stop startup message
(setq inhibit-startup-message t)

;; when warn, screen flashes
(setq visible-bell t)

<<<<<<< HEAD
;; parens
(show-paren-mode t)
(setq blink-matching-paren t)

(line-number-mode t)
(column-number-mode t)

;; 
(tool-bar-mode nil)
(scroll-bar-mode nil)

(transient-mark-mode 1)

;; default frame. size and position.
(setq initial-frame-alist
      (append (list
               '(width . 80)  ;; ウィンドウ幅
               '(height . 46) ;; ウィンドウ高さ
               '(top . 30)    ;; 表示位置
               '(left . 20)  ;; 表示位置
               )
              initial-frame-alist))
(setq default-frame-alist initial-frame-alist)
=======
;; highlight another paren when cursor hits one
(show-paren-mode t)
(setq blink-matching-paren t)

;; line-number and column-number
(line-number-mode t)
(column-number-mode t)

;; hide toolbar and scroll bar
(tool-bar-mode 0)
(scroll-bar-mode nil)
>>>>>>> 8cc8396b5a6ca11c3b090d5376f28496e9e8288d

;; default frame settings
(cond
 ((string-match "apple-darwin" system-configuration)
  )
 ((string-match "linux" system-configuration)
  (setq initial-frame-alist
	(append (list
		 '(width . 80)
		 '(height . 46)
		 )
		initial-frame-alist))
  (setq default-frame-alist initial-frame-alist)
  )
 ((string-match "mingw" system-configuration)
  )
 )
