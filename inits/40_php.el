;;
;; for PHP
;; 
(require 'php-mode)
(autoload 'php-mode "php-mode")
(setq auto-mode-alist
      (cons '("\\.php\\'" . php-mode) auto-mode-alist))
(setq php-mode-force-pear t)
(add-hook 'php-mode-hook 
	  '(lambda ()
	     (setq c-basic-offset 4)
	     (setq c-tab-width 4)
	     (setq c-indent-level 4)
	     (setq tab-width 4)
	     (setq-default tab-width 4)
	     (setq indent-tabs-mode nil)
	     (setq php-manual-url "http://www.phppro.jp/phpmanual/")))

