;;
;; auto-async-byte-compile
;; http://www.emacswiki.org/emacs/AutoAsyncByteCompile
(require 'auto-async-byte-compile)
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)
