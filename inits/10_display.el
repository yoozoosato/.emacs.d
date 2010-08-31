;;
;; display settings.
;;

;; stop startup message
(setq inhibit-startup-message t)

;; when warn, screen flashes
(setq visible-bell t)

;; highlight another paren when cursor hits one
(show-paren-mode t)
(setq blink-matching-paren t)

;; line-number, column-number and menu-bar
(line-number-mode t)
(column-number-mode t)
(menu-bar-mode nil)

;; hide toolbar and scroll bar when using X window and Carbon emacs
(when window-system 'x 'mac
      (tool-bar-mode -1)
      (scroll-bar-mode -1))
  

;; mark region 
;; http://www.mew.org/pipermail/mew-dist/2003-September/023693.html
(transient-mark-mode 1)

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
