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

;; ruby-electric
(require 'ruby-electric)

;; hooks
(add-hook 'ruby-mode-hook 
		  '(lambda () 
			 (ruby-electric-mode t)
			 (inf-ruby-keys)))

;; anything-rcode
;; (auto-install-from-emacswiki "anything-rcodetools.el")
;;
;; http://www.cx4a.org/pub/auto-complete-ruby.el
;;(auto-install-from-url "http://www.cx4a.org/pub/auto-complete-ruby.el")

(require 'auto-complete)
(require 'rcodetools)

(defvar ac-ruby-sources
  '(ac-source-rcodetools))

(defvar ac-source-rcodetools
  '((init . (lambda ()
              (condition-case x
                  (save-excursion
                    (rct-exec-and-eval rct-complete-command-name "--completion-emacs-icicles"))
                (error) (setq rct-method-completion-table nil))))
    (candidates . (lambda ()
                    (all-completions
                     ac-prefix
                     (mapcar
                      (lambda (completion)
                        (replace-regexp-in-string "\t.*$" "" (car completion)))
                      rct-method-completion-table))))))

(defun ac-ruby-setup ()
  ;(setq ac-sources (append ac-sources ac-ruby-sources))
  (setq ac-omni-completion-sources (list (cons "\\." ac-ruby-sources)
                                         (cons "::" ac-ruby-sources))))

(defun ac-ruby-init ()
  (add-hook 'ruby-mode-hook 'ac-ruby-setup))
  
(provide 'auto-complete-ruby)



;; ;; use rsense
;; ;; http://cx4a.org/software/rsense/index.html
;; (setq rsense-home (expand-file-name "~/bin/rsense-0.3"))
;; (add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)
;; (add-hook 'ruby-mode-hook
;;           (lambda ()
;;             (local-set-key (kbd "C-c .") 'ac-complete-rsense)))
;; (setq rsense-rurema-home "~/src/rurema")

