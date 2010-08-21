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

;; line-number and column-number
(line-number-mode t)
(column-number-mode t)

;; hide toolbar and scroll bar
(tool-bar-mode 0)
(scroll-bar-mode nil)

;; forgot
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
