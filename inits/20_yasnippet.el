;; yasnippet
;;
(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs
        '("~/Dropbox/Documents/snippets/"
          "~/.emacs.d/snippets"))
  
  ;; 1. グローバルモードを有効にする
  (yas-global-mode 1)

  ;; 2. 【重要】起動時に明示的にスニペットを読み込む
  ;; これを入れることで M-x yas-reload-all を打ったのと同じ状態になります
  (yas-reload-all)

  ;; 3. 以前お伝えしたプロンプトと条件の設定
  (setq yas-prompt-functions '(yas-completing-prompt))
  (setq yas-buffer-local-condition
        '(or (not (let ((face (get-char-property (point) 'face)))
                    (or (eq face 'font-lock-comment-face)
                        (eq face 'font-lock-string-face))))
             '(require-snippet-condition . force-in-comment))))
