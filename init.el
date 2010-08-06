;; change directory
(cd "~/")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; key-bind
;(load "~/.emacs.d/keybind.el")
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; other settings
;;(load "~/.emacs.d/display-settings.el")
(load "~/.emacs.d/calendar-settings.el")
;; backup files
(setq make-backup-files nil)
(setq version-control nil)

;; iswitchb
(iswitchb-mode 1)

;; emacs client
(server-start)
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Library settings begin here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; add library path
;; add load-path
(let ((dir (expand-file-name "~/.emacs.d/lisp")))
 (if (member dir load-path) nil
   (setq load-path (cons dir load-path))
   (let ((default-directory dir))
     (load (expand-file-name "subdirs.el") t t t))))
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; load files
;;
;; mona
(load "~/.emacs.d/mona.el")
;; color-theme
(load "~/.emacs.d/color-theme-init.el")
;; jde
;(load "~/.emacs.d/jde-init.el")
;; emacs-rails
;(load "~/.emacs.d/rails-init.el")
;; pukiwiki-mode
(load "~/.emacs.d/pukiwiki-init.el")
;; twittering-mode
(load "~/.emacs.d/twittering-init.el")
;; howm
(load "~/.emacs.d/howm-init.el")
;; anything
(load "~/.emacs.d/anything-init.el")
;; gtags
;(load "~/.emacs.d/gtags-init.el")
;; emoji.el
(require 'emoji)
;; auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)
;; install-elisp
(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/lisp/")

;; auto-intall
;(require 'auto-install)
;(setq auto-install-directory "~/.emacs.d/lisp/")
;(auto-install-update-emacswiki-package-name nil)
;(auto-install-compatibility-setup)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


