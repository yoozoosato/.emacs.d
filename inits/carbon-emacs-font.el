;;
;; font settings for Carbon emacs
;;

(if (eq window-system 'mac)
    (set-face-attribute 'default nil
			:family "Menlo"
			:height 120))

;; ;; fontset-mplus
;; (create-fontset-from-mac-roman-font
;;  "-apple-m+ 1m-medium-r-normal--14-*-*-*-*-*-iso10646-1" nil "mplus")
;; (set-fontset-font "fontset-mplus" 'japanese-jisx0208
;;                   '("m+ 1m light" . "iso10646"))
;; (set-fontset-font "fontset-mplus" (cons (make-char 'japanese-jisx0208 #x30 #x20)
;;                                         (make-char 'japanese-jisx0208 #x74 #x7f))
;;                   '("ヒラギノ角ゴ pro w3" . "jisx0208.1983"))
;; (set-fontset-font "fontset-mplus" 'katakana-jisx0201
;;                     '("m+ 1m light" . "iso10646"))



;; ;; fontset-asciimplus
;; (create-fontset-from-mac-roman-font
;;  "-apple-m+ 1m-medium-r-normal--14-*-*-*-*-*-iso10646-1" nil "asciimplus")
;; (set-fontset-font "fontset-asciimplus" 'japanese-jisx0208
;;                   '("ヒラギノ角ゴ pro w3" . "jisx0208.1983"))
;; (set-fontset-font "fontset-asciimplus" 'katakana-jisx0201
;;                   '("ヒラギノ角ゴ pro w3" . "jisx0201.1976"))


;; (defun my-set-default-fontset (fontset)
;;   (interactive			 ; borrowed from describe-fontset code
;;    (if (not (and window-system (fboundp 'fontset-list)))
;;        (error "No fontsets being used")
;;      (let ((fontset-list (nconc
;;                           (fontset-list)
;;                           (mapcar 'cdr fontset-alias-alist)))
;;            (completion-ignore-case t))
;;        (list (completing-read
;;               "Fontset: "
;;               fontset-list nil t "fontset-")))))
;;   (let ((old (assoc 'font default-frame-alist)))
;;     (if old (setcdr old fontset)
;;       (add-to-list 'default-frame-alist (cons 'font fontset))))
;;   (set-frame-font fontset))

;; (my-set-default-fontset "fontset-mplus")
