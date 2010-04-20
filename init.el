;; backup files
(setq make-backup-files nil)
(setq version-control nil)

;; iswitchb
(iswitchb-mode 1)

;; emacs client
(server-start)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
;; load files
;;
;; mona
(load "~/.emacs.d/mona.el")
;; jde
(load "~/.emacs.d/jde.el")
;; pukiwiki-mode
(load "~/.emacs.d/pukiwiki.el")
;; twittering-mode
(load "~/.emacs.d/twittering-mode.el")
;; howm
(load "~/.emacs.d/howm.el")
;; anything
(load "~/.emacs.d/anything.el")
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; key-bind
(load "~/.emacs.d/keybind.el")
(load "~/.emacs.d/display-settings.el")
(load "~/.emacs.d/calendar-settings.el")
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;