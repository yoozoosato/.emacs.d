;;
;; mew
;; http://www.mew.org/
;; Mail Reader for Emacs
;;
;; how to install
;; cd ~/.emacs.d
;; git submodule add git://github.com/kazu-yamamoto/Mew.git ./lisp/mew
;; cd ./lisp/mew
;; ./configure --prefix=/Applications/Emacs.app/Contents/MacOS --with-emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
;;
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

(setq mew-draft-mode-hook (function (lambda () (auto-fill-mode 1))))
(add-hook 'mew-draft-mode-hook
      '(lambda ()
         (setq fill-column 70)))
(setq url-mail-command 'mew-send)

;; use suffix
(setq mew-use-suffix t)

;; use c-sig
;; signature file is '~/.signature.alist'
(autoload 'add-signature "c-sig" "c-sig" t)
(autoload 'delete-signature "c-sig" "c-sig" t)
(autoload 'insert-signature-eref "c-sig" "c-sig" t)
(autoload 'insert-signature-automatically "c-sig" "c-sig" t)
;(autoload 'insert-signature-randomly "c-sig" "c-sig" t)
;; insert hook
(add-hook 'mew-draft-mode-hook
(function (lambda ()
(define-key mew-draft-mode-map "\C-c\C-i" 'insert-signature-eref))))

;;
;; for search
(cond
 ;; for Mac
 ((string-match "apple-darwin" system-configuration)
  (setq mew-search-method 'spotlight)
  )
 ;; for Linux
 ((string-match "linux" system-configuration)
  )
 ;; for Windows
 ((string-match "mingw" system-configuration)
  )
 )

;; use w3m
(require 'mew-w3m)
(setq mew-mime-multipart-alternative-list
      '("Text/Plain" "Text/Html" ".*"))
(define-key mew-summary-mode-map "T" 'mew-w3m-view-inline-image)


;; use POPFile
(setq mew-spam: "X-Text-Classification:")
(defun mew-spam-popfile (val)
  (let ((case-fold-search t))
    (if (string-match "alert_ignore" val) "+trash")
	(if (string-match "tinfo" val) "+so-net/work/ml/tinfo")))
(setq mew-inbox-action-alist
      '(("X-Text-Classification:" mew-spam-popfile)))
