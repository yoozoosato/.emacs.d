;; ruby-mode
;;
(autoload 'ruby-mode "ruby-mode")
(setq auto-mode-alist
      (append '(("\\.rb$" . ruby-mode)) auto-mode-alist))
(setq interpreter-mode-alist (append '(("ruby" . ruby-mode))
                                     interpreter-mode-alist))
(autoload 'run-ruby "inf-ruby")
(autoload 'inf-ruby-keys "inf-ruby")

;; ruby-block.el
;; (auto-install-from-emacswiki "ruby-block.el")
(require 'ruby-block)
(ruby-block-mode t)
;; do overlay
(setq ruby-block-highlight-toggle 'overlay)
;; display to minibuffer
(setq ruby-block-highlight-toggle 'minibuffer)
;; display to minibuffer and do overlay
(setq ruby-block-highlight-toggle t)

;; use rvm as a default ruby interpreter
;; http://github.com/senny/rvm.el
(require 'rvm)
(rvm-use-default)

;; hooks
(add-hook 'ruby-mode-hook 
		  '(lambda () 
			 (ruby-electric-mode t)))

;; ;; use rsense
;; ;; http://cx4a.org/software/rsense/index.html
;; (setq rsense-home (expand-file-name "~/bin/rsense-0.3"))
;; (add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)
;; (add-hook 'ruby-mode-hook
;;           (lambda ()
;;             (local-set-key (kbd "C-c .") 'ac-complete-rsense)))
;; (setq rsense-rurema-home "~/src/rurema")


;; ;; 
;; ;; for rails development
;; ;;
(require 'rinari)
;; ;(dolist (dir (mapcar 'expand-file-name '("/usr/local/bin")))
;; ;  (setenv "PATH" (concat dir ":" (getenv "PATH")))
;; ;  (setq exec-path (append (list dir) exec-path)))
(add-hook 'ruby-mode-hook
		  (lambda () (rinari-launch)))

;; ;;; rhtml-mode
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
    (lambda ()
	  (rinari-launch)
	  (setq abbrev-mode nil)))
