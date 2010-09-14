;;
;; mew
;; http://www.mew.org/
(setq mew-draft-mode-hook (function (lambda () (auto-fill-mode 1))))
(add-hook 'mew-draft-mode-hook
	  '(lambda ()
	     (setq fill-column 70)))
(setq url-mail-command 'mew-send)

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