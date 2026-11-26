;;; -*- lexical-binding: t; -*-

(setq org-directory
      (expand-file-name "Org"
                        (getenv "OneDriveCommercial")))
(setq org-default-notes-file
      (expand-file-name "inbox.org" org-directory))
(add-hook 'org-mode-hook #'visual-line-mode)

;; --------------------------------------------------
;; Org-mode で Markdown エクスポートを有効化
;; --------------------------------------------------
(with-eval-after-load 'org
  (require 'ox-md))

;; --------------------------------------------------
;; Markdown エクスポートのクリーン化設定
;; --------------------------------------------------
(with-eval-after-load 'ox-md
  ;; 1. デフォルトで目次を出力しない
  (setq org-export-with-toc nil)
  
  ;; 2. <a id="..."></a> アンカータグを出力させない
  (defun my/org-md-headline-no-anchor (headline contents info)
    (let ((text (org-export-data (org-element-property :title headline) info))
          (level (org-export-get-relative-level headline info)))
      (concat (make-string level ?#) " " text "\n\n" contents)))
  (advice-add 'org-md-headline :override #'my/org-md-headline-no-anchor)

  ;; 3. 箇条書きのハイフン直後の余分なスペースを1つに詰める
  (defun my/org-md-item-single-space (orig-fun &rest args)
    (let ((result (apply orig-fun args)))
      (when result
        (replace-regexp-in-string "^\\([ \t]*[-+*]\\)[ \t]+" "\\1 " result))))
  (advice-add 'org-md-item :around #'my/org-md-item-single-space))

;; --------------------------------------------------
;; Org-mode から MediaWiki 形式へのエクスポートを有効化
;; --------------------------------------------------
(with-eval-after-load 'org
  (require 'ox-mediawiki))

;; --------------------------------------------------
;; Org-mode タスク管理・アジェンダ基本設定
;; --------------------------------------------------

;; 1. tasks.org のパスを定義
(setq my/org-tasks-file (expand-file-name "tasks.org" org-directory))

;; 2. アジェンダ機能の検索対象ファイルリスト
;; (今後ファイルが増えたらここに追加、またはディレクトリ指定も可能)
(setq org-agenda-files (list org-default-notes-file my/org-tasks-file))

;; 3. TODO ステータスの遷移設定 (TODO -> DOING -> DONE)
(with-eval-after-load 'org
  (setq org-todo-keywords
        '((sequence "TODO(t)" "DOING(i)" "|" "DONE(d)")))
  
  ;; 4. 全局ショートカットキーの登録
  ;; C-c a でアジェンダメニューを開く
  (define-key global-map (kbd "C-c a") 'org-agenda))


(with-eval-after-load 'org
  ;; 見出しやリストに応じた自動インデントを行わない
  (setq org-adapt-indentation nil))
