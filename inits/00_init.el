;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Library settings begin here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; add library path
;; add load-path
(let ((dir (expand-file-name "~/.emacs.d/lisp")))
 (if (member dir load-path) nil
   (setq load-path (cons dir load-path))
   (let ((default-directory dir))
     (load (expand-file-name "subdirs.el") t t t))))

;; change directory to my home directory
;(cd "~/")

;; backup files
(setq make-backup-files nil)
(setq version-control nil)

;; iswitchb
(iswitchb-mode 1)

;; emacs client
(require 'server)
(unless (server-running-p)
  (server-start))

; coding
(prefer-coding-system 'utf-8)

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
(setq debug-on-error t)
