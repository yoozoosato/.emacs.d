;;
;; emacs settings
;;
(setq inhibit-startup-message t)
(setq visible-bell t)
(setq blink-matching-paren t)
(line-number-mode t)
(column-number-mode t)
(tool-bar-mode 0)
(show-paren-mode t)
(transient-mark-mode 1)
;; 初期表示サイズと位置。環境によって振り分けをした方がいいかもしれない
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
