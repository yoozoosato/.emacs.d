;; ruby-mode
;;

;; use rvm as a default ruby interpreter
;; http://github.com/senny/rvm.el
;(require 'rvm)
;(rvm-use-default)

;; use rsense
;; http://cx4a.org/software/rsense/index.html
(setq rsense-home (expand-file-name "~/bin/rsense-0.3"))
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)
(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'ac-complete-rsense)))
(setq rsense-rurema-home "~/src/rurema")

