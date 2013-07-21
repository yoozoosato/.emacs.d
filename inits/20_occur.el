;;
;; occur
;;
(defun occur-at-point() 
"point のある位置の単語を occur にかける" 
(interactive) 
(occur (thing-at-point 'word))) 
(global-set-key "\C-co" 'occur-at-point) 

;; 
;; isearch-occur
;; (auto-install-from-emacswiki "occur-schroeder.el")
(require 'occur-schroeder)
(define-key isearch-mode-map (kbd "M-s o") 'isearch-occur)

;; 
;; moccur 
;; (auto-install-from-emacswiki "color-moccur.el")
(require 'color-moccur)
(setq moccur-split-word t)

;; 
;; moccur-edit
;; (auto-install-from-emacswiki "moccur-edit.el")
(require 'moccur-edit)
