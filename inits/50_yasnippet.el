;; yasnippet
;;
(require 'yasnippet) ;; not yasnippet-bundle
(setq yas/snippet-dirs "~/Dropbox/Documents/snippets/")
(yas/global-mode 1)

;; default ix x-popup
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/dropdown-prompt))

;; for literal and comment
(setq yas/buffer-local-condition
      '(or (not (or (string= "font-lock-comment-face"
                             (get-char-property (point) 'face))
                    (string= "font-lock-string-face"
                             (get-char-property (point) 'face))))
           '(require-snippet-condition . force-in-comment)))

