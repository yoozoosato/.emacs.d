;;
;; anything
;; (auto-install-batch "anything")
(require 'anything-startup)
(global-set-key "\C-x;" 'anything)
(global-set-key "\C-x:" 'anything-resume)
(anything-iswitchb-setup)
(define-key anything-map "\C-p" 'anything-previous-line)
(define-key anything-map "\C-n" 'anything-next-line)
(define-key anything-map "\C-\M-v" 'anything-next-page)
(define-key anything-map "\C-\M-y" 'anything-previous-page)

;; http://d.hatena.ne.jp/tomoya/20090423/1240456834
;; http://www24.atwiki.jp/anything/m/pages/13.html?guid=on#id_b64e0dd3
(setq anything-sources
      '(anything-c-source-buffers+
        anything-c-source-recentf
        anything-c-source-kill-ring
        anything-c-source-files-in-current-dir
;;         anything-c-source-mac-spotlight
;;         anything-c-source-google-suggest
;;         anything-c-source-emacs-commands
;;         anything-c-source-emacs-functions
;;         anything-c-source-colors
;;         anything-c-source-man-pages
        ))