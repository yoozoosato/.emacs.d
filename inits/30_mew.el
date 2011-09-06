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
(autoload 'mew-send "mew" nil t)

;; add mewl exec path
(setq exec-path (cons "~/.emacs.d/lisp/mew/bin" exec-path))

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