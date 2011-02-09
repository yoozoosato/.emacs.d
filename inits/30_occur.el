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
;; (install-elisp-from-emacswiki "occur-schroeder.el")
(require 'occur-schroeder)
(define-key isearch-mode-map (kbd "M-s o") 'isearch-occur)

;; 
;; moccur 
;; (install-elisp-from-emacswiki "color-moccur.el")
(require 'color-moccur)
(setq moccur-split-word t)

;; 
;; moccur-edit
;; (install-elisp-from-emacswiki "moccur-edit.el")
(require 'moccur-edit)
