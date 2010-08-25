;;
;; Interactively Do Things (highly recommended, but not strictly required)
;; http://www.emacswiki.org/emacs/InteractivelyDoThings

;; do not confirm a new file or buffer
(setq confirm-nonexistent-file-or-buffer nil)
(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-confirm-unique-completion t)
(setq ido-use-filename-at-point t)
(setq ido-enable-tramp-completion nil)
(icomplete-mode t) 

;; non-used 
;;(ido-mode 'buffer)
;;(setq ido-default-buffer-method 'samewindow)

(cond
 ((string-match "apple-darwin" system-configuration)
  ;; its required for 'carbon-emacs'
  ;; http://www.opensubscriber.com/message/emacs-devel@gnu.org/11028683.html
  (setq ffap-require-prefix t)
  (ffap-bindings)
  )
 ((string-match "linux" system-configuration)
  ;; no problem in Emacs 23 on Ubuntu 10.04 LTS
  )
 ((string-match "mingw" system-configuration)
  )
 )

; sort ido filelist by mtime instead of alphabetically
(add-hook 'ido-make-file-list-hook 'ido-sort-mtime)
(add-hook 'ido-make-dir-list-hook 'ido-sort-mtime)
(defun ido-sort-mtime ()
  (setq ido-temp-list
	(sort ido-temp-list 
	      (lambda (a b)
		(let ((ta (nth 5 (file-attributes (concat ido-current-directory a))))
		      (tb (nth 5 (file-attributes (concat ido-current-directory b)))))
		  (if (= (nth 0 ta) (nth 0 tb))
		      (> (nth 1 ta) (nth 1 tb))
		    (> (nth 0 ta) (nth 0 tb)))))))
  (ido-to-end  ;; move . files to end (again)
   (delq nil (mapcar
	      (lambda (x) (if (string-equal (substring x 0 1) ".") x))
	      ido-temp-list))))