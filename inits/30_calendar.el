;;
;; for calendar & diary
;; latitude and longitude are required for moon phases, sunrise and sunset
(setq calendar-latitude 35.618564)
(setq calendar-longitude 139.727667)

;; 9 hours * 60 minuts
(setq calendar-time-zone +540)

(setq calendar-standard-time-zone-name "JST")
(setq calendar-location-name "Tokyo, JPN")
(setq diary-mail-addr "yoozoosato@gmail.com")
(setq diary-file "~/Dropbox/Documents/diary")
(setq mark-diary-entries-in-calendar nil)


;; 
;; calfw
;; http://d.hatena.ne.jp/kiwanami/20110723/1311434175
;;
;; how to install
;; auto-installを使う場合
;; (auto-install-from-url "https://github.com/kiwanami/emacs-calfw/raw/master/calfw.el")
;; 
;; cd ~/.emacs.d
;; git submodule add https://github.com/kiwanami/emacs-calfw/ ./lisp/calfw
;;
;; (require 'calfw)
;; (cfw:open-calendar-buffer)

;; (require 'calfw-howm)
;; (cfw:install-howm-schedules)
;; (define-key howm-mode-map (kbd "M-C") 'cfw:open-howm-calendar)