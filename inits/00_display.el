;;
;; emacs settings
;;
(setq inhibit-startup-message t)
(setq visible-bell t)

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

;; buffer name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
