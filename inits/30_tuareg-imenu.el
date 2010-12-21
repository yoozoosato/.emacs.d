(autoload 'tuareg-imenu-set-imenu "tuareg-imenu" "Configuration of imenu for tuareg" t)
(add-hook 'tuareg-mode-hook
	  (lambda ()
	    (tuareg-imenu-set-imenu)))
