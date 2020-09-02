;;
;; anything
;; (auto-install-batch "anything")
(when (require 'anything-startup nil t)
  (global-set-key "\C-x;" 'anything)
  (global-set-key "\C-x:" 'anything-resume)
)

;(anything-iswitchb-setup)
(define-key anything-map "\C-p" 'anything-previous-line)
(define-key anything-map "\C-n" 'anything-next-line)
(define-key anything-map "\C-\M-v" 'anything-next-page)
(define-key anything-map "\C-\M-y" 'anything-previous-page)

;; ;; tuning
;; ;; (setq anything-candidate-number-limit 100)
(setq anything-input-idle-delay 0.2)
;; (setq anything-idle-delay 0.25)
;; (setq anything-quick-update t)

;; ;; helm
;; (require 'helm-config)
;; (helm-mode 1)
