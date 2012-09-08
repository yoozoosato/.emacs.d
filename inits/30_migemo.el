;;
;; migemo
;;
(require 'migemo)
;; when using Cocoa Emacs, use cmigemo.
(cond
 ;; for Mac
 ((string-match "apple-darwin" system-configuration)
  (setq migemo-command "cmigemo")
  (setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
  )
 ;; for Ubuntu Linux
 ;; migemo was installed with command 'sudo apt-get install migemo'
 ((string-match "linux" system-configuration)
  (setq migemo-command "cmigemo")
  (setq migemo-options '("-q" "--emacs" "-i" "\a"))
  (setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")
  )
 ;; for Windows
 ((string-match "mingw" system-configuration)
  )
 )
(setq migemo-options '("-q" "--emacs"))
(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(load-library "migemo")
(migemo-init)