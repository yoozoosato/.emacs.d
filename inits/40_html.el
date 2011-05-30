;;
;; (auto-install-from-url "https://github.com/ataka/html-fold/raw/master/html-fold.el")
(require 'html-fold)
(setq html-fold-inline-list
	'(("[a:" ("a"))
	  ("[c:" ("code"))
	  ("[k:" ("kbd"))
	  ("[v:" ("var"))
	  ("[s:" ("samp"))
	  ("[ab:" ("abbr" "acronym"))
	  ("[lab:" ("label"))
	  ("[opt:" ("option"))
	  ("[rss:" ("rss"))
	  ("[link:" ("link"))
	  ))
(setq html-fold-block-list
	'("script" "style" "table"
	"description" "content" ))
(add-hook 'html-mode-hook 'html-fold-mode)

