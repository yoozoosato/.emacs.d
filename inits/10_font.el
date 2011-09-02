;;
;; font setting for Emacs
;;

(cond
 ;; for Mac
 ((string-match "apple-darwin" system-configuration)
  (create-fontset-from-ascii-font "Menlo-12:weight=normal:slant=normal" nil "menlokakugo")
  (set-fontset-font "fontset-menlokakugo"
					'unicode
					(font-spec :family "Hiragino Kaku Gothic ProN" :size 12)
					nil
					'append)
  (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))
  )
 ;; for Linux
 ((string-match "linux" system-configuration)
  (set-default-font "Inconsolata-11")
  (set-face-font 'variable-pitch "Inconsolata-11")
  (set-fontset-font (frame-parameter nil 'font)
		    'japanese-jisx0208
		    '("Takaoゴシック" . "unicode-bmp")
		    )
  )
 ;; for Windows
 ((string-match "mingw" system-configuration)
  )
 )

