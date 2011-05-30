;;
;; (install-elisp-from-emacswiki "text-translator.el")
;; (install-elisp-from-emacswiki "text-translator-vars.el")
;; (install-elisp-from-emacswiki "text-translator-load.el")
(require 'text-translator)
(global-set-key "\C-xt" 'text-translator)
(global-set-key "\C-x\M-T" 'text-translator-translate-last-string)

