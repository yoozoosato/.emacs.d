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
	       '(top . 20)    ;; 表示位置
	       '(left . 20)  ;; 表示位置
	       )
	      initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

;; buffer name
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; 
;; color-theme
;;
(require 'color-theme)
;; Carbon Emacsの場合、initializeが必要。Ubuntu 10.04のEmacs23では必要ない
(cond
 ((string-match "apple-darwin" system-configuration)
  (color-theme-initialize)
  )
 ((string-match "linux" system-configuration)
  ; とりあえずUbuntuでは何もする必要ない
  )
)
;((string-match "mingw" system-configuration)
;必要ならここにWindows用の設定を書く
; )
;)
(color-theme-clarity)



