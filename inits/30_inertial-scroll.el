;; intertial scroll.
;; (auto-install-from-url "https://raw.githubusercontent.com/kiwanami/emacs-deferred/master/deferred.el")
;; (auto-install-from-url "https://raw.githubusercontent.com/kiwanami/emacs-inertial-scroll/master/inertial-scroll.el")

(require 'inertial-scroll)
(setq inertias-initial-velocity 50)
(setq inertias-friction 120)
(setq inertias-update-time 50)
(setq inertias-rest-coef 0.1)
(setq inertias-global-minor-mode-map 
      (inertias-define-keymap
       '(
         ;; Mouse wheel scrolling
         ("<wheel-up>"   . inertias-down-wheel)
         ("<wheel-down>" . inertias-up-wheel)
         ("<mouse-4>"    . inertias-down-wheel)
         ("<mouse-5>"    . inertias-up-wheel)
         ;; Scroll keys
         ("<next>"  . inertias-up)
         ("<prior>" . inertias-down)
         ("C-v"     . inertias-up)
         ("M-v"     . inertias-down)
         ) inertias-prefix-key))

(inertias-global-minor-mode t)
