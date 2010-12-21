;;
;; js2-mode
;; (install-elisp "http://js2-mode.googlecode.com/files/js2-20090723b.el")
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook
          '(lambda ()
	     (ac-mode t)
             (setq js2-basic-offset 4)))
