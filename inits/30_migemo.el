;;
;; migemo
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  old version 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (load "migemo")
;; (setq migemo-use-pattern-alist t)
;; (setq migemo-use-frequent-pattern-alist t)
;; (setq migemo-command "cmigemo"
;;       migemo-options '("-t" "emacs"))

(require 'migemo)
(setq migemo-command "cmigemo")
(setq migemo-options '("-q" "--emacs"))
(setq migemo-dictionary "/usr/local/share/migemo/utf-8/migemo-dict")
(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)
(setq migemo-coding-system 'utf-8-unix)
(load-library "migemo")
(migemo-init)
