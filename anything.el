;; 
;; anything
;;
(require 'anything-config)
(require 'anything-migemo)
(global-set-key "\C-x;" 'anything)
(global-set-key "\C-x:" 'anything-migemo)
(anything-iswitchb-setup)
(define-key anything-map "\C-p" 'anything-previous-line)
(define-key anything-map "\C-n" 'anything-next-line)
(define-key anything-map "\C-v" 'anything-next-page)
(define-key anything-map "\M-v" 'anything-previous-page)
