;;
;; recentf-mode
;; (auto-install-from-emacswiki "recentf-ext.el")

;; ignore files using tramp
;; http://homepage.mac.com/zenitani/elisp-j.html#recentf 
(recentf-mode 1)
(setq recentf-exclude '("^/[^/:]+:"))

(setq recentf-max-menu-items 100)
(setq recentf-max-saved-items 200)