;; 
;; key-bind
;; 
(define-key global-map "\C-h" 'delete-backward-char)

;; input non ascii characters in mini buffer while incremental-search
(define-key isearch-mode-map "\C-k" 'isearch-edit-string)

