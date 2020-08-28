;;
;; font setting for Emacs on Linux
;;

;; when using linux, use Anthy for Japanese Input Mehod.
;; Input toggle switch is C-\
;; （厳密にはフォントとは違うが、現時点では無駄にファイルを増やしたくないのでここに書いておく）
(require 'mozc)
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")


;; to install font, run 'sudo apt-get install ttf-inconsolata ttf-takao'
(set-default-font "Inconsolata-11")
(set-face-font 'variable-pitch "Inconsolata-11")
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  '("Takaoゴシック" . "unicode-bmp")
)
