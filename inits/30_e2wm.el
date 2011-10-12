;; window layout manager.
;;
;; (auto-install-from-url "https://github.com/kiwanami/emacs-window-layout/raw/master/window-layout.el")
;; (auto-install-from-url "https://github.com/kiwanami/emacs-window-manager/raw/master/e2wm.el")
;; (auto-install-from-url "https://github.com/kiwanami/emacs-window-manager/raw/master/e2wm-config.el")
(require 'e2wm)
(e2wm:add-keymap
 e2wm:pst-minor-mode-keymap
 '(("<M-left>" . e2wm:dp-code) ; codeへ変更
   ("<M-right>"  . e2wm:dp-two)  ; twoへ変更
   ("<M-up>"    . e2wm:dp-doc)  ; docへ変更
   ("<M-down>"  . e2wm:dp-dashboard) ; dashboardへ変更
   ("C-."       . e2wm:pst-history-forward-command) ; 履歴を進む
   ("C-,"       . e2wm:pst-history-back-command) ; 履歴をもどる
   ("prefix L"  . ielm)
   ("M-m"       . e2wm:pst-window-select-main-command)
   ) e2wm:prefix-key)

;; ;; ;; for 1024x768
;; (setq e2wm:c-code-recipe
;;       '(| (:left-max-size 35)
;;    (- (:upper-size-ratio 0.7)
;;       (- (:upper-size-ratio 0.6)
;;      files imenu)
;;       history)
;;    (- (:upper-size-ratio 0.7)
;;       main sub)))
(setq e2wm:c-code-winfo
  '((:name main)
    (:name files :plugin files)
    (:name history :plugin history-list)
    ;; (:name history :plugin clock)
    (:name sub :buffer "*info*" :default-hide t)
    (:name imenu :plugin imenu :default-hide nil))
  )