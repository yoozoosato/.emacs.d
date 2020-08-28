;;
;; font setting for Emacs on Linux
;;

;; to install font, run 'sudo apt-get install ttf-inconsolata ttf-takao'
(set-default-font "Inconsolata-11")
(set-face-font 'variable-pitch "Inconsolata-11")
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  '("Takaoゴシック" . "unicode-bmp")
)
