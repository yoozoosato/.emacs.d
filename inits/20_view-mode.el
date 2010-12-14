;;
;; view-mode
;; (install-elisp-from-emacswiki "http://www.emacswiki.org/emacs/viewer.el")
;; Emacs Technic Bible p.216

(require 'viewer)
(setq viewer-modeline-color-unwritable "tomato")
(setq viewer-modeline-color-view "orange")
(viewer-change-modeline-color-setup)
(setq view-mode t)
(setq view-read-only t)
