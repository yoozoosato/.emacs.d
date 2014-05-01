;; http://d.hatena.ne.jp/meech/20100523/1274635547
(setq erc-server-coding-system '(utf-8 . utf-8))
(require 'erc-join)
(erc-autojoin-mode 1)
(setq erc-autojoin-channels-alist
	  '(("54.238.198.208" 
	     "#Lobby" "#開発課")))
(setq erc-max-buffer-size 40000)
(defvar erc-insert-post-hook)
(add-hook 'erc-insert-post-hook 'erc-truncate-buffer)
(setq erc-truncate-buffer-on-save t)
