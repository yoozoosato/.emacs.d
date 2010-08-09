;; 
;; markdown-mode
;;
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.mdwn" . markdown-mode) auto-mode-alist))
(setq markdown-command "~/bin/markdown.pl")

