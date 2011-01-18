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
;; calfw.el
;; http://d.hatena.ne.jp/kiwanami/20110107/1294404952
;; (auto-install-from-url "https://github.com/kiwanami/emacs-calfw/raw/master/calfw.el")
;; (auto-install-from-url "https://github.com/kiwanami/emacs-calfw/raw/master/calfw-howm.el")
;; (auto-install-from-url "https://github.com/kiwanami/emacs-calfw/raw/master/calfw-ical.el")
(require 'calfw)
;; Emacs22用の設定
;; Emacs23から関数名が変わったのでエイリアスを設定する
(unless (fboundp 'calendar-extract-day)
  (defalias 'calendar-extract-day (symbol-function 'extract-calendar-day))
  (defalias 'calendar-extract-month (symbol-function 'extract-calendar-month))
  (defalias 'calendar-extract-year (symbol-function 'extract-calendar-year)))
;; ;; カレンダー表示
;; (cfw:open-calendar-buffer)
;; ;; テストデータをセットする
;; (cfw:contents-debug-data)

;; Google Calendarとの連携
;(require 'calfw-ical)
;(cfw:install-ical-schedules)
;; 予定のところに表示
;(setq cfw:ical-calendar-contents-sources '("http://www.google.com/calendar/ical/yoozoosato%40gmail.com/private-49acc63389f6ade2359466372579b852/basic.ics"))
;; 日付のところに表示
;(setq cfw:ical-calendar-annotations-sources '("http://www.google.com/calendar/ical/japanese__ja%40holiday.calendar.google.com/public/basic.ics"))
;; キャッシュをクリア (cfw:ical-calendar-clear-cache)
