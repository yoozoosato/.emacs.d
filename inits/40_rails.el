;; for emacs-rails

;; これを書いておくと html.erb のファイルにも # -*- coding: utf-8 -*- が入る
;(setq auto-mode-alist  (cons '("\\.html\\.erb$" . ruby-mode) auto-mode-alist))

;; (require 'rails)
;; (define-key rails-minor-mode-map "\C-c\C-p" 'rails-lib:run-primary-switch)
;; (define-key rails-minor-mode-map "\C-c\C-n" 'rails-lib:run-secondary-switch)
;; (defun try-complete-abbrev (old)
;;   (if (expand-abbrev) t nil))
;; (setq hippie-expand-try-functions-list
;;       '(try-complete-abbrev
;;         try-complete-file-name
;;         try-expand-dabbrev))