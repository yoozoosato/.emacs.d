;; 
;; pukiwiki-mode
;; http://www.bookshelf.jp/pukiwiki/pukiwiki.php?%A5%A2%A5%A4%A5%C7%A5%A2%BD%B8%2Fpukiwiki-mode
(load-library "pukiwiki-mode")
(setq pukiwiki-site-list
      '(
	;; Genesis Lightning Talks
	("lt" "http://wiki.somethingnew2.com/lt/index.php" nil euc-jp-dos)
	))

;; sava post data on local disc ('~/pukiwiki' is default directory)
(setq pukiwiki-save-post-data t)

;; use ediff when viewing changeset
(setq pukiwiki-diff-using-ediff t)