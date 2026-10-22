;;; -*- lexical-binding: t; -*-

(setq org-directory
      (expand-file-name "Org"
                        (getenv "OneDriveCommercial")))
(setq org-default-notes-file
      (expand-file-name "inbox.org" org-directory))
(add-hook 'org-mode-hook #'visual-line-mode)


;; Org-mode で Markdown エクスポートを有効化
(with-eval-after-load 'org
  (require 'ox-md))

;; Markdown エクスポートのクリーン化設定
(with-eval-after-load 'ox-md
  ;; 1. デフォルトで目次を出力しない
  (setq org-export-with-toc nil)
  
  ;; 2. <a id="..."></a> アンカータグを出力させない（アドバイス設定）
  (defun my/org-md-headline-no-anchor (headline contents info)
    (let ((text (org-export-data (org-element-property :title headline) info))
          (level (org-export-get-relative-level headline info)))
      (concat (make-string level ?#) " " text "\n\n" contents)))
  (advice-add 'org-md-headline :override #'my/org-md-headline-no-anchor))

;; 選択領域（または全体）を Markdown 形式でクリップボードにコピーするコマンド
(defun my/org-copy-as-markdown ()
  "Convert current region or buffer to Markdown and copy to clipboard."
  (interactive)
  (let ((md (org-export-as 'md t)))
    (with-temp-buffer
      (insert md)
      (clipboard-kill-ring-save (point-min) (point-max)))
    (message "Markdown に変換してクリップボードにコピーしました！")))

;; Org-mode から MediaWiki 形式へのエクスポートを有効化
(with-eval-after-load 'org
  (require 'ox-mediawiki))

;; Org-mode から MediaWiki 形式へのエクスポートエンジンを有効化
(with-eval-after-load 'org
  (require 'ox-mediawiki))

;; 選択領域（または全体）を MediaWiki 記法に変換してクリップボードにコピーする関数
(defun my/org-copy-as-mediawiki ()
  "Convert current region or buffer to compact MediaWiki syntax with spaces and copy to clipboard."
  (interactive)
  (require 'ox-mediawiki)
  ;; バックエンド 'mw を直接指定して同期的にテキストを生成
  (let ((wiki-text (org-export-as 'mw (use-region-p) nil t)))
    (with-temp-buffer
      (insert wiki-text)
      ;; 1. 連続する改行（空行）を1つの改行に置換して詰める
      (goto-char (point-min))
      (while (re-search-forward "\n\n+" nil t)
        (replace-match "\n"))
      ;; 2. 行頭の `*` の直後に半角スペースがない場合、挿入する
      (goto-char (point-min))
      (while (re-search-forward "^\\(\\*+\\)\\([^ *\t\n]\\)" nil t)
        (replace-match "\\1 \\2"))
      ;; 3. クリップボードへ保存
      (clipboard-kill-ring-save (point-min) (point-max)))
    (message "MediaWiki 記法（スペース挿入・空行詰め済み）をクリップボードにコピーしました！")))

;; ショートカットキー割り当て (C-c w)
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c w") 'my/org-copy-as-mediawiki))
