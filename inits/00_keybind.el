;;
;; key-bind
;;
(define-key global-map "\C-h" 'delete-backward-char)
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

