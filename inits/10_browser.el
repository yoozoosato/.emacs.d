;;; -*- lexical-binding: t; -*-*

;; OSごとのデフォルトブラウザ切り替え
(cond
 ((eq system-type 'darwin)
  (setq browse-url-browser-function 'browse-url-default-macosx-browser))
 ((eq system-type 'windows-nt)
  (setq browse-url-browser-function 'browse-url-default-windows-browser)))
