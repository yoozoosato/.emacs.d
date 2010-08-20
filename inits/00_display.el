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
