;;
;; redo+
;; (install-elisp-from-emacswiki "redo+.el")
;; 
(require 'redo+)
(global-set-key (kbd "C-M-/") 'redo)
(setq undo-no-redo)

(setq undo-limit 10000)
(setq undo-strong-limit 900000)
