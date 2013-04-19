;;
;; font setting for Emacs
;;

(cond
 ;; for Mac
 ((string-match "apple-darwin" system-configuration)

  (create-fontset-from-ascii-font "Menlo-14:weight=normal:slant=normal" nil "menlokakugo")
  (set-fontset-font "fontset-menlokakugo"
					'unicode
					(font-spec :family "Hiragino Kaku Gothic ProN" )
					nil
					'append)
  (add-to-list 'default-frame-alist
			   '(font . "fontset-menlokakugo"))
  (setq face-font-rescale-alist '((".*Hiragino.*" . 1.0) (".*Menlo.*" . 0.9)))
  )

 ;; for Linux
 ;; use this command to install font, 'sudo apt-get install ttf-inconsolata ttf-takao'
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

