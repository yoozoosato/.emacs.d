;;
;; view-mode
;; http://www.emacswiki.org/emacs/ViewMode
;; Emacs Technic Bible p.216

(setq view-mode t)
(setq view-read-only t)
(require 'viewer)
(setq viewer-modeline-color-unwritable "tomato")
(setq viewer-modeline-color-view "orange")
(viewer-change-modeline-color-setup)

;; key-bind using key-chord
(key-chord-define-global "jk" 'view-mode)