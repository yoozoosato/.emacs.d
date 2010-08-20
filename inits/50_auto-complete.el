;; 
;; auto-complete
;; 
(require 'auto-complete)
(require 'auto-complete-config)
(require 'auto-complete-etags)
(global-auto-complete-mode t)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp/auto-complete/dict")
(ac-config-default)

;;(global-set-key (kbd "M-_") 'auto-complete)

(setq ac-auto-start 2)       ; number of characters to show completion
(setq ac-auto-show-menu 0.2) ; time to wait before showing completion
(setq ac-sources '(ac-source-yasnippet
                   ac-source-dictionary
                   ac-source-gtags
                   ac-source-words-in-buffer))
(add-to-list 'ac-modes 'javascript-mode)
(add-to-list 'ac-modes 'java-mode)
(add-to-list 'ac-modes 'ruby-mode)
(add-to-list 'ac-modes 'html-helper-mode)
(add-to-list 'ac-modes 'emacs-lisp-mode)
(add-to-list 'ac-modes 'yaml-mode)

; for emacs-lisp-mode
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (add-to-list 'ac-sources 'ac-source-functions)
             (add-to-list 'ac-sources 'ac-source-symbols)))

; for yaml-mode
(add-hook 'yaml-mode-hook
          '(lambda ()
             (setq ac-sources '(ac-source-words-in-buffer))))

;; ; for objc-mode
;; (require 'etags-table)
;; (add-to-list  'etags-table-alist
;;               '("\\.[mh]$" "~/.emacs.d/tags/objc.TAGS"))
;; (defvar ac-source-etags-table
;;   '((candidates . (lambda ()
;;          (all-completions ac-target (tags-completion-table))))
;;     (candidate-face . ac-candidate-face)
;;     (selection-face . ac-selection-face)
;;     (requires . 1))
;;   "etags をソースにする")
;; (add-hook 'objc-mode-hook
;;           (lambda ()
;;             (push 'ac-source-etags-table ac-sources)))


