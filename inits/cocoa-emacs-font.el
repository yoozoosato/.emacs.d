;;
;; font settings for Carbon emacs
;;
(set-face-attribute 'default nil
                    :family "Menlo"
                    :height 120)

(create-fontset-from-ascii-font "Menlo-14:weight=normal:slant=normal" nil "menlokakugo")
(set-fontset-font "fontset-menlokakugo"
                  'japanese-jisx0208
                  (font-spec :family "Hiragino Kaku Gothic ProN")
                  nil
                  'append)
(set-fontset-font "fontset-menlokakugo"
                  'japanese-jisx0213-1
                  (font-spec :family "Hiragino Kaku Gothic ProN")
                  nil
                  'append)
(set-fontset-font "fontset-menlokakugo"
                  'japanese-jisx0213-2
                  (font-spec :family "Hiragino Kaku Gothic ProN")
                  nil
                  'append)
(set-fontset-font "fontset-menlokakugo"
                  'katakana-jisx0201
                  (font-spec :family "Hiragino Kaku Gothic ProN")
                  nil
                  'append)
(set-fontset-font "fontset-menlokakugo"
                  'japanese-jisx0212
                  (font-spec :family "Hiragino Kaku Gothic ProN")
                  nil
                  'append)
(set-fontset-font "fontset-menlokakugo"
                  'korean-ksc5601
                  (font-spec :family "Nanum Gothic")
                  nil
                  'append)

(add-to-list 'default-frame-alist
             '(font . "fontset-menlokakugo"))
(setq face-font-rescale-alist '((".*Hiragino.*" . 1.0) (".*Menlo.*" . 0.9)))
)

