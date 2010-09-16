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
(require 'key-chord)
(setq key-chord-two-keys-delay 0.04)
(key-chord-mode t)

<<<<<<< HEAD
;; sequential-command-config
(require 'sequential-command-config)
(sequential-command-setup-keys)
=======
;; sequential-command
;; http://www.emacswiki.org/cgi-bin/wiki/download/sequential-command-config.el
(require 'sequential-command-config)
(global-set-key "\C-a" 'seq-home)
(global-set-key "\C-e" 'seq-end)
>>>>>>> a5dfd20bb4b7c5b83f877f955f305c8033246be0
