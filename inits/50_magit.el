;; magit
(require 'magit)

(add-hook 'server-visit-hook
          (function (lambda ()
                      (if (string-match "COMMIT_EDITMSG" buffer-file-name)
                          (set-buffer-file-coding-system 'utf-8)))))
(add-hook 'magit-mode-hook
		  (set-buffer-file-coding-system 'utf-8))


(setq magit-last-seen-setup-instructions "1.4.0")
