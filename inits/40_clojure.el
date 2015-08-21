;; for clojure
(require 'clojure-mode)

(require 'rainbow-delimiters)
(require 'cl-lib)
(require 'color)
(cl-loop
 for index from 1 to rainbow-delimiters-max-face-count
 do
 (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
   (cl-callf color-saturate-name (face-foreground face) 30)))



;;
;; http://qiita.com/xorphitus/items/a1f433fa6ba2489ff9cf
;;
(add-hook 'clojure-mode-hook 'cider-mode)

;; mini bufferに関数の引数を表示させる
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

;; 'C-x b' した時に *nrepl-connection* と *nrepl-server* のbufferを一覧に表示しない
(setq nrepl-hide-special-buffers t)

;; RELPのbuffer名を 'project名:nREPLのport番号' と表示する
;; project名は project.clj で defproject した名前
(setq nrepl-buffer-name-show-port t)


(require 'ac-cider)
(add-hook 'cider-mode-hook 'ac-flyspell-workaround)
(add-hook 'cider-mode-hook 'ac-cider-setup)
(add-hook 'cider-repl-mode-hook 'ac-cider-setup)
(eval-after-load "auto-complete"
  '(progn
     (add-to-list 'ac-modes 'cider-mode)
     (add-to-list 'ac-modes 'cider-repl-mode)))
