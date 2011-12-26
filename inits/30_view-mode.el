;;
;; view-mode
;; (auto-install-from-emacswiki "http://www.emacswiki.org/emacs/viewer.el")
;; Emacs Technic Bible p.216
;; ;; (auto-install-from-emacswiki "viewer.el")
(require 'viewer)
(viewer-stay-in-setup)
(setq viewer-modeline-color-unwritable "tomato")
(setq viewer-modeline-color-view "orange")
(viewer-change-modeline-color-setup)
(setq view-mode t)
(setq view-read-only t)


(require 'view)
;; like 'less'
(define-key view-mode-map (kbd "N") 'View-search-last-regexp-backward)
(define-key view-mode-map (kbd "?") 'View-search-regexp-backwaed)
(define-key view-mode-map (kbd "G") 'View-goto-line-last)
(define-key view-mode-map (kbd "b") 'View-scroll-page-backward)
(define-key view-mode-map (kbd "f") 'View-scroll-page-forward)
;; live 'vi'
(define-key view-mode-map (kbd "h") 'backward-char)
(define-key view-mode-map (kbd "j") 'next-line)
(define-key view-mode-map (kbd "k") 'previous-line)
(define-key view-mode-map (kbd "l") 'forward-char)
(define-key view-mode-map (kbd "J") 'View-scroll-line-forward)
(define-key view-mode-map (kbd "K") 'View-scroll-line-backward)
;; for bm.el
;; (define-key view-mode-map (kbd "m") 'bm-toggle)
;; (define-key view-mode-map (kbd "[") 'bm-previous)
;; (define-key view-mode-map (kbd "]") 'bm-next)