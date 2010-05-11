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
(load "~/.emacs.d/jde-init.el")
;; pukiwiki-mode
(load "~/.emacs.d/pukiwiki-init.el")
;; twittering-mode
(load "~/.emacs.d/twittering-init.el")
;; howm
(load "~/.emacs.d/howm.el")
;; anything
(load "~/.emacs.d/anything-init.el")
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; key-bind
(load "~/.emacs.d/keybind.el")
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; other settings
(load "~/.emacs.d/display-settings.el")
(load "~/.emacs.d/calendar-settings.el")
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
