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
(server-start)

; coding
(prefer-coding-system 'utf-8)

; clipborad (for Emacs23 on Ubuntu)
(cond (window-system
       (setq x-select-enable-clipboard t)
       ))