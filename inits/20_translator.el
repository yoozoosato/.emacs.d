;;
;; (auto-install-from-emacswiki "text-translator.el")
;; (auto-install-from-emacswiki "text-translator-vars.el")
;; (auto-install-from-emacswiki "text-translator-load.el")
(require 'text-translator)
(setq text-translator-auto-selection-func
      'text-translator-translate-by-auto-selection-enja)


;; key
(global-set-key "\C-xt" 'text-translator)
(global-set-key "\C-x\M-T" 'text-translator-translate-last-string)