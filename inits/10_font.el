;;
;; font setting for Emacs
;;

(cond
 ((string-match "apple-darwin" system-configuration)
  )
 ((string-match "linux" system-configuration)
  (set-default-font "Inconsolata-11")
  (set-face-font 'variable-pitch "Inconsolata-11")
  (set-fontset-font (frame-parameter nil 'font)
		    'japanese-jisx0208
		    '("Takaoゴシック" . "unicode-bmp")
		    )
  )
 ((string-match "mingw" system-configuration)
  )
 )

