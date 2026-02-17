;; flymake
;;
(setq flymake-fringe-indicator-position 'left-fringe)

;; 3. 各言語で Flymake を有効にする設定
;; Ruby で有効にする
(add-hook 'ruby-mode-hook 'flymake-mode)

;; JavaScript / TypeScript で有効にする
(add-hook 'js-mode-hook 'flymake-mode)
(add-hook 'typescript-mode-hook 'flymake-mode)

;; キーバインド（エラー箇所への移動を便利にする）
(with-eval-after-load 'flymake
  (define-key flymake-mode-map (kbd "M-n") 'flymake-goto-next-error)
  (define-key flymake-mode-map (kbd "M-p") 'flymake-goto-prev-error))
