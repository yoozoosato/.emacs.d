;; 
;; markdown-mode
;; (install-elisp "http://jblevins.org/projects/markdown-mode/markdown-mode.el")
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.mdwn" . markdown-mode) auto-mode-alist))
(setq markdown-command "~/bin/markdown.pl")

;; ブラウザプレビュー時のエラー回避
(setenv "LANG" "en_US.UTF-8")
