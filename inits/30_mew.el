;;
;; mew
;; http://www.mew.org/
;; Mail Reader for Emacs
;;
;; how to install
;; cd ~/.emacs.d
;; git submodule add git://github.com/kazu-yamamoto/Mew.git ./lisp/mew
;; cd ./lisp/mew
;; ./configure --prefix=/Applications/Emacs.app/Contents/MacOS --with-emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
;;
(autoload 'mew "mew" nil t)
(autoload 'mew-draft-mode "mew-draft-mode.el" nil t)
(autoload 'mew-send "mew" nil t)

(setq mew-draft-mode-hook (function (lambda () (auto-fill-mode 0))))
(setq url-mail-command 'mew-send)

;; use suffix
(setq mew-use-suffix t)

;; 未読メールにはマークを付ける
(setq mew-use-unread-mark t)

;; gmail の sent に自動で入るので
(setq mew-fcc nil)

;; use c-sig
;; signature file is '~/.signature.alist'
(autoload 'add-signature "c-sig" "c-sig" t)
(autoload 'delete-signature "c-sig" "c-sig" t)
(autoload 'insert-signature-eref "c-sig" "c-sig" t)
(autoload 'insert-signature-automatically "c-sig" "c-sig" t)
;(autoload 'insert-signature-randomly "c-sig" "c-sig" t)
;; insert hook
(add-hook 'mew-draft-mode-hook
(function (lambda ()
(define-key mew-draft-mode-map "\C-c\C-i" 'insert-signature-eref))))

;;
;; for search
(cond
 ;; for Mac
 ((string-match "apple-darwin" system-configuration)
  (setq mew-search-method 'spotlight)
  )
 ;; for Linux
 ((string-match "linux" system-configuration)
  )
 ;; for Windows
 ((string-match "mingw" system-configuration)
  )
 )

;; use w3m
;; (auto-install-from-url "http://rubikitch.com/f/mew-w3m.el")
;; see : http://emacs.rubikitch.com/mew-w3m/
;; (require 'mew-w3m)
;; (setq mew-mime-multipart-alternative-list
;;       '("Text/Plain" "Text/Html" ".*"))
;; (define-key mew-summary-mode-map "T" 'mew-w3m-view-inline-image)
