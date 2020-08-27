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

; clipborad (for Emacs23 on Ubuntu)
(cond (window-system
       (setq x-select-enable-clipboard t)
       ))

;; find-file-at-point, it helps opening .el files via init-log buffer.
(ffap-bindings)

;; alpha
;; (defun ik:toggle-opacity ()
;;   (interactive)
;;   (when window-system
;;     (ignore-errors
;;       (if (= (assoc-default 'alpha (frame-parameters)) 100)
;;           (set-frame-parameter nil 'alpha 80)
;;         (set-frame-parameter nil 'alpha 100)))))

(cond
 ;; when using linux, use Anthy for Japanese Input Mehod.
 ;; Input toggle switch is C-\
 ((string-match "linux" system-configuration)
  (require 'mozc)
  (set-language-environment "Japanese")
  (setq default-input-method "japanese-mozc")
))

;; debug
(setq debug-on-error nil)

;; exec-path-from-shell
;; https://github.com/yoozoosato/.emacs.d/issues/7
(exec-path-from-shell-initialize)
