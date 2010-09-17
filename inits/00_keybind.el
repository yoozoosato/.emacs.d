;;
;; key-bind
;;

(define-key global-map "\C-h" 'delete-backward-char)
;; this is yet anoter solution for ^C-h
;; (load "term/bobcat")
;; (when (fboundp 'terminal-init-bobcat) (terminal-init-bobcat))

(define-key global-map "\C-xk" 'kill-this-buffer)

;; input non ascii characters in mini buffer while incremental-search
(define-key isearch-mode-map "\C-k" 'isearch-edit-string)

;; emoji-mode
(global-set-key [f4] 'emoji-complete-pictogram)
;; show calendar
(global-set-key [f3] 'calendar)

;; key-chord
;; http://www.emacswiki.org/emacs/key-chord.el
(require 'key-chord)
(setq key-chord-two-keys-delay 0.04)
(key-chord-mode t)

;; sequential-command-config
(require 'sequential-command-config)
(sequential-command-setup-keys)
