;;
;; display settings.
;;

;; stop startup message
(setq inhibit-startup-message t)

;; when warn, screen flashes
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; highlight another paren when cursor hits one
(show-paren-mode t)
(setq blink-matching-paren t)

;; modeline (line-number, column-number)
(line-number-mode 1)
(column-number-mode 1)
;; nyan-mode on modeline
(require 'nyan-mode)
(nyan-mode)
(nyan-start-animation)

;; menu-bar
(menu-bar-mode 0)

;; default length = 32. it's too long!
(setq nyan-bar-length 12)

;; default tab width
(setq-default tab-width 4)

;; hide toolbar and scroll bar when using X window and Carbon emacs
(when window-system 'x 'mac
      (tool-bar-mode -1)
      (scroll-bar-mode -1))

;; mark region 
;; http://www.mew.org/pipermail/mew-dist/2003-September/023693.html
(transient-mark-mode 1)

;; 
;; show file path and name on the top of the frame.
(setq frame-title-format (format "%%f - Emacs@%s" (system-name)))

;; default frame settings
(cond
 ((string-match "apple-darwin" system-configuration)
  (if window-system
	  (setq default-frame-alist
			(append (list
					 '(width . 120)
					 '(height . 50)
					 '(top . 10)
					 '(left . 10)
					 )
					default-frame-alist)))
  )
 ((string-match "linux" system-configuration)
  (setq initial-frame-alist
	(append (list
		 '(width . 80)
		 '(height . 46)
		 )
		initial-frame-alist))
  (setq default-frame-alist initial-frame-alist)
  ;(set-frame-parameter nil 'alpha 75)
  )
 ((string-match "mingw" system-configuration)
  )
 )

;; Color theming
(load-theme 'tango-dark)
