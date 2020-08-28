;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Library settings begin here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; change directory to my home directory
(cd "~/")

;; backup files
(setq make-backup-files nil)
(setq version-control nil)

;; emacs client
(require 'server)
(unless (server-running-p)
  (server-start))

; coding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8-unix)

; use system clipborad 
(cond (window-system
       (setq x-select-enable-clipboard t)
       ))

;; find-file-at-point, it helps opening .el files via init-log buffer.
(ffap-bindings)

;; debug
(setq debug-on-error nil)

;; exec-path-from-shell
;; https://github.com/yoozoosato/.emacs.d/issues/7
(exec-path-from-shell-initialize)
