;;
;; auto-async-byte-compile
;; (install-elisp-from-emacswiki "auto-async-byte-compile.el")
(require 'auto-async-byte-compile)

;; exclude files.
(setq auto-async-byte-compile-exclude-files-regexp "/inits/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)