;;
;; js2-mode
;; (install-elisp "http://js2-mode.googlecode.com/files/js2-20090723b.el")
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook
          '(lambda ()
;			 (ac-mode t)
             (setq js2-basic-offset 2)
			 (setq js2-cleanup-whitespace t)
			 ))

;; 
;; espresso-mode
;; (auto-install-from-url "http://download-mirror.savannah.gnu.org/releases/espresso/espresso.el")
(autoload 'espresso-mode "espresso")
(defun my-js2-mode-hook ()
  (require 'espresso)
  (setq espresso-indent-level 2
        indent-tabs-mode nil
        c-basic-offset 2)
  (c-toggle-auto-state 0))