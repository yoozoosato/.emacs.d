;;
;; auto-install
;; http://www.emacswiki.org/emacs/AutoInstall
(require 'auto-install)

;; change default directory, add to load-path
(setq auto-install-directory "~/.emacs.d/lisp/auto-install/")
(add-to-list 'load-path auto-install-directory)
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)
(setq ediff-setup-function 'ediff-setup-windows-plain)


;; install-elisp
;; (require 'install-elisp)
;; (setq install-elisp-repository-directory "~/.emacs.d/lisp/auto-install")


