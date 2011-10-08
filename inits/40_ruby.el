;; ruby-mode
;;

;; ruby-block.el
;; (install-elisp-from-emacswiki "ruby-block.el")
(require 'ruby-block)
(ruby-block-mode t)
;; do overlay
(setq ruby-block-highlight-toggle 'overlay)
;; display to minibuffer
(setq ruby-block-highlight-toggle 'minibuffer)
;; display to minibuffer and do overlay
(setq ruby-block-highlight-toggle t)


;;
;; http://www.cx4a.org/pub/auto-complete-ruby.el
(install-elisp "http://www.cx4a.org/pub/auto-complete-ruby.el")

;; use rvm as a default ruby interpreter
;; http://github.com/senny/rvm.el
;(require 'rvm)
;(rvm-use-default)



;; ;; use rsense
;; ;; http://cx4a.org/software/rsense/index.html
;; (setq rsense-home (expand-file-name "~/bin/rsense-0.3"))
;; (add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)
;; (add-hook 'ruby-mode-hook
;;           (lambda ()
;;             (local-set-key (kbd "C-c .") 'ac-complete-rsense)))
;; (setq rsense-rurema-home "~/src/rurema")

