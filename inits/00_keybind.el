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
(setq key-chord-two-keys-delay 0.1)
(key-chord-mode t)

;; sequential-command-config
(require 'sequential-command-config)
(sequential-command-setup-keys)

;; accelerate
;; http://www.emacswiki.org/cgi-bin/wiki/accelerate.el
(require 'accelerate)
(accelerate previous-line '(1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate next-line '(1 1 1 1 1  1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate smooth-scroll-down '(1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate smooth-scroll-up '(1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate dired-previous-line '(1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate dired-next-line '(1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))

;; Dynamic macro
;; http://www.pitecan.com/DynamicMacro/
;; C-c C-v で繰り返し
(defconst *dmacro-key* "\C-c\C-v");; "\C-y")
(global-set-key *dmacro-key* 'dmacro-exec)
(autoload 'dmacro-exec "dmacro" nil t)
