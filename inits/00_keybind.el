;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; common keybindings for both MacOS and Linux
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-key global-map "\C-h" 'delete-backward-char)
;; this is yet anoter solution for ^C-h
;; (load "term/bobcat")
;; (when (fboundp 'terminal-init-bobcat) (terminal-init-bobcat))

(define-key global-map "\C-xk" 'kill-this-buffer)

;; input non ascii characters in mini buffer while incremental-search
(define-key isearch-mode-map "\C-k" 'isearch-edit-string)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; function keys
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; emoji-mode
;;(global-set-key [f4] 'emoji-complete-pictogram)

;; show calendar
(global-set-key [f3] 'calendar)
(global-set-key (kbd "M-<f3>") 'cfw:open-calendar-buffer)

;; ;; for work-log
;; (global-set-key [f6] 'worklog-quick-start)
;; (global-set-key [f7] 'worklog-quick-stop)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; perl-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-ct" 'perltidy-region)
(global-set-key "\C-c\C-t" 'perltidy-defun)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-_") 'auto-complete)

;; sequential-command-config
;; (auto-install-from-emacswiki "sequential-command.el")
;; (auto-install-from-emacswiki "sequential-command-config.el")
;;(require 'sequential-command-config)
;;(sequential-command-setup-keys)

;; accelerate
;; https://www.emacswiki.org/cgi-bin/wiki/accelerate.el
;; (auto-install-from-url "https://www.emacswiki.org/emacs/download/accelerate.el")
(require 'accelerate)
(accelerate previous-line '(1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate next-line '(1 1 1 1 1  1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate smooth-scroll-down '(1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate smooth-scroll-up '(1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate dired-previous-line '(1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate dired-next-line '(1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))

;; Dynamic macro
;; http://www.pitecan.com/DynamicMacro/
;; (auto-install-from-url "http://www.pitecan.com/DynamicMacro/dmacro.el")
;; C-c C-v で繰り返し
(defconst *dmacro-key* "\C-c\C-v");; "\C-y")
(autoload 'dmacro-exec "dmacro" nil t)
(global-set-key *dmacro-key* 'dmacro-exec)

;; window manager.
(global-set-key (kbd "C-<f12>") 'e2wm:start-management)
(global-set-key (kbd "C-<f11>") 'e2wm:stop-management)
(windmove-default-keybindings)
;; vi like bindings
(global-set-key (kbd "C-S-j") 'windmove-down)
(global-set-key (kbd "C-S-k") 'windmove-up)
(global-set-key (kbd "C-S-l") 'windmove-right)
(global-set-key (kbd "C-S-h") 'windmove-left)


;; for magit
(global-set-key (kbd "C-<f9>") 'magit-status)
(global-set-key (kbd "M-<f9>") 'magit-log)


;; key-chord
;; (auto-install-from-url "https://www.emacswiki.org/emacs/download/key-chord.el")
(require 'key-chord)
(setq key-chord-two-keys-delay 0.1)
(key-chord-mode t)

;; key-bind using key-chord
(key-chord-define-global "jk" 'view-mode)
(key-chord-define-global "hj" 'undo)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; text-translator
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-xt" 'text-translator)
(global-set-key "\C-x\M-T" 'text-translator-translate-last-string)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; font-size
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-S-<down>") 'text-scale-decrease)
(global-set-key (kbd "M-S-<up>") 'text-scale-increase)

;; disable C-z (suspend frame)
(define-key global-map (kbd "C-z") nil)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Browse url
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)
