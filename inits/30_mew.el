;;
;; mew
;; http://www.mew.org/
(setq mew-draft-mode-hook (function (lambda () (auto-fill-mode 1))))
(add-hook 'mew-draft-mode-hook
	  '(lambda ()
	     (setq fill-column 70)))
(setq url-mail-command 'mew-send)
