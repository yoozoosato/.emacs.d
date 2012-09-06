;; 
;; twittering-mode
;; http://github.com/hayamiz/twittering-mode/
(when (require 'twittering-mode nil t)
  (setq twittering-use-master-password t)
  (setq twittering-private-info-file "~/.emacs.d/twittering-mode.gpg")
  (twittering-icon-mode t)

  ;; use bit.ly for url shorten service
  (setq twittering-tinyurl-service 'bit.ly)
  (setq twittering-bitly-login "yoozoosato")
  (setq twittering-bitly-api-key "R_78b4299f8b0a4aba927917b468f36f6f")
)

;; same key-map as mew
(when twittering-edit-mode-map
  (let ((km twittering-edit-mode-map))
    (define-key km (kbd "C-c C-q") 'twittering-edit-cancel-status)))

;; http://fukuyama.co/twittering-mode
;; o で次のURLをブラウザでオープン
(add-hook 'twittering-mode-hook
          (lambda ()
            (local-set-key (kbd "o")
               (lambda ()
                 (interactive)
                 (twittering-goto-next-uri)
                 (execute-kbd-macro (kbd "C-m"))
                 ))))

