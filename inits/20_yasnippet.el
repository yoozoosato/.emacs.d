;; yasnippet
;;
(require 'yasnippet)
(setq yas-snippet-dirs
	  '("~/Dropbox/Documents/snippets/" ;; メール用 snippet とか公開できないので Dropbox で管理
		"~/.emacs.d/snippets" ;; リポジトリに入れてpushで良いものは後ほど Dropbox から移動させる
	  ))
(yas-global-mode 1)

;; default ix x-popup
(require 'dropdown-list)
(setq yas-prompt-functions '(yas-dropdown-prompt))

;; for literal and comment
(setq yas-buffer-local-condition
      '(or (not (or (string= "font-lock-comment-face"
                             (get-char-property (point) 'face))
                    (string= "font-lock-string-face"
                             (get-char-property (point) 'face))))
           '(require-snippet-condition . force-in-comment)))

