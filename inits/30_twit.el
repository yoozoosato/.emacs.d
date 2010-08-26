;; 
;; twittering-mode
;; 
(when (require 'twittering-mode nil t)
  (setq twittering-auth-method 'xauth)
;  (setq twittering-username "yoozoosato")
;  (setq twittering-password "")
  (twittering-icon-mode t)
)

;; same key-map as mew
(when twittering-edit-mode-map
  (let ((km twittering-edit-mode-map))
    (define-key km (kbd "C-c C-q") 'twittering-edit-cancel-status)))
