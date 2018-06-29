;;
;; auto-async-byte-compile
;; (auto-install-from-url "https://www.emacswiki.org/emacs/download/auto-async-byte-compile.el")
(require 'auto-async-byte-compile)

;; exclude files.
(setq auto-async-byte-compile-exclude-files-regexp "\\(inits\\|elpa\\)")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)
