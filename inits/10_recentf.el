;;
;; recentf-mode
;; 

;; ignore files using tramp
;; http://homepage.mac.com/zenitani/elisp-j.html#recentf 
(recentf-mode 1)
(setq recentf-exclude '("^/[^/:]+:"))