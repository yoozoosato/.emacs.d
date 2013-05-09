;; window layout manager.
;;
;; use 'M-x package-list-packages' to install e2wm and window-layout
;; 
(require 'e2wm)
(e2wm:add-keymap
 e2wm:pst-minor-mode-keymap
 '(("<M-left>" . e2wm:dp-code) ; codeへ変更
   ("<M-right>"  . e2wm:dp-two)  ; twoへ変更
   ("<M-up>"    . e2wm:dp-doc)  ; docへ変更
   ("<M-down>"  . e2wm:dp-array) ; arrayへ変更
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

;; for clock
(setq e2wm:def-plugin-clock-url "http://www.bijint.com/jp/tokei_images/%H%M.jpg")
(setq e2wm:def-plugin-clock-referer "http://www.bijint.com/")

(setq e2wm:c-code-recipe
  '(| (:left-max-size 35)
      (- (:upper-size-ratio 0.7)
         files history)
      (- (:upper-size-ratio 0.7)
         (| (:right-max-size 30)
            main 
			(- (:upper-size-ratio 0.7)
			   imenu clock))
         sub)))

(setq e2wm:c-code-winfo
  '((:name main)
    (:name files :plugin files)
    (:name history :plugin history-list)
    (:name clock :plugin clock)
    (:name sub :buffer "*info*" :default-hide t)
    (:name imenu :plugin imenu :default-hide nil))
  )
