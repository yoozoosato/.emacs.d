;;
;; key-bind
;;

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
(global-set-key [f4] 'emoji-complete-pictogram)
;; show calendar
(global-set-key [f3] 'calendar)

;; for work-log
(global-set-key [f6] 'worklog-quick-start)
(global-set-key [f7] 'worklog-quick-stop)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; perl-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-ct" 'perltidy-region)
(global-set-key "\C-c\C-t" 'perltidy-defun)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-_") 'auto-complete)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


;; sequential-command-config
;; (auto-install-from-emacswiki "sequential-command.el")
;; (auto-install-from-emacswiki "sequential-command-config.el")
(require 'sequential-command-config)
(sequential-command-setup-keys)

;; accelerate
;; http://www.emacswiki.org/cgi-bin/wiki/accelerate.el
;; (install-elisp-from-emacswiki "accelerate.el")
(require 'accelerate)
(accelerate previous-line '(1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate next-line '(1 1 1 1 1  1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate smooth-scroll-down '(1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate smooth-scroll-up '(1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate dired-previous-line '(1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))
(accelerate dired-next-line '(1 1 1 1 1 1 2 2 2 2 2 2 2 3 3))

;; Dynamic macro
;; http://www.pitecan.com/DynamicMacro/
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

;; key-chord
;; (install-elisp-from-emacswiki "http://www.emacswiki.org/emacs/key-chord.el")
(require 'key-chord)
(setq key-chord-two-keys-delay 0.1)
(key-chord-mode t)

;; key-bind using key-chord
(key-chord-define-global "jk" 'view-mode)
(key-chord-define-global "hj" 'undo)

;; occur
(defun occur-at-point() 
"point のある位置の単語を occur にかける" 
(interactive) 
(occur (thing-at-point 'word))) 
(global-set-key "\C-co" 'occur-at-point) 
