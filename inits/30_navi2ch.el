;;
;; navi2ch 
;; 2ch viewer for Emacsen
;; 
;; how to install navi2ch
;; cd ~/.emacs.d
;; git submodule add git://navi2ch.git.sourceforge.net/gitroot/navi2ch/navi2ch \
;;   ./lisp/navi2ch
;; cd ./lisp/navi2ch
;; ./configure
;; make
(autoload 'navi2ch "navi2ch" "Navigator for 2ch for Emacs" t)
(setq navi2ch-icon-directory "~/.emacs.d/lisp/navi2ch/icons")

;; see http://my.opera.com/ymirlin/blog/2010/12/03/navi2ch
(setq navi2ch-article-auto-range nil)
(setq navi2ch-list-stay-list-window t)
(setq navi2ch-list-window-width 37)
(setq navi2ch-board-expire-date nil) ;; 30日以上経過しても削除しない
(setq navi2ch-history-max-line nil)

;; 3ペインで起動したいのだが、上手く動かない・・・
(add-hook 'navi2ch-after-startup-hook
          (lambda ()
            (navi2ch-three-pane)))

;; 起動時にスプラッシュスクリーンを表示しない
(setq navi2ch-display-splash-screen nil)

;; 連続改行を消す
;; http://web.archive.org/web/20041212084758/http://reed1200.at.infoseek.co.jp/navi2ch/
(defun navi2ch-article-shrink-newlines ()
  (save-excursion
    (while (re-search-forward "^[ 　]*\n[ 　]*\n[ 　]*\n\\([ 　]*\n\\)+" nil t)
      (let ((len (count-lines (match-beginning 0) (match-end 0))))
        (when (>= len 8)
          (replace-match (format "\n[[ %d newlines ]]\n\n" len)))))))

(add-hook 'navi2ch-article-arrange-message-hook
          'navi2ch-article-shrink-newlines)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 勢いソート
;; http://my.opera.com/hirohiso/blog/2010/11/27/navi2ch
(defadvice navi2ch-bm-sort (around my-navi2ch-bm-sort)
  (interactive "P")
  (let ((ch (navi2ch-read-char-with-retry
             "Sort by n)umber s)tate t)itle o)ther d)ate? i)kioi?"
             nil '(?n ?s ?t ?o ?d ?i))))
    (message "Sorting...")
    (funcall
     (cond ((eq ch ?n) 'navi2ch-bm-sort-by-number)
           ((eq ch ?s) 'navi2ch-bm-sort-by-state)
           ((eq ch ?t) 'navi2ch-bm-sort-by-subject)
           ((eq ch ?o) 'navi2ch-bm-sort-by-other)
           ((eq ch ?d) 'navi2ch-bm-sort-by-date)
           ((eq ch ?i) 'navi2ch-bm-sort-by-ikioi))
     arg)
    (message "Sorting...done")))
(ad-activate 'navi2ch-bm-sort)

(defun navi2ch-bm-sort-by-ikioi (&optional rev)
  (interactive "P")
  (navi2ch-bm-sort-subr
   (not rev)
   (lambda ()
     (let* ((curtime (current-time))
            (unixtime (+ (* (car curtime) 65536.0) (cadr curtime)))
            (createtime
             (string-to-number
              (cdr
               (assq 'artid (navi2ch-bm-get-article-internal
                             (navi2ch-bm-get-property-internal (point)))))))
            (exittime (- unixtime createtime))
            (resnum (string-to-number
                     (cdr (assq 'response
                                (navi2ch-bm-get-article-internal
                                 (navi2ch-bm-get-property-internal (point))))))))
       (setq resnum (* resnum resnum))
       (/ (* resnum 100) exittime))) nil))
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; スレ保存ディレクトリ
(setq navi2ch-directory "~/Dropbox/Documents/.navi2ch")


;; 3/13 API 取得対応 
;; offline モードで起動しないと、過去スレ表示できなさそう
;(setq navi2ch-offline t)
(setq navi2ch-net-http-proxy "localhost:18080")
(setq navi2ch-net-enable-http11 nil)

(setq navi2ch-list-valid-host-regexp 
(concat "\\(" 
(regexp-opt '(".2ch.net" ".5ch.net" ".bbspink.com" ".mach=ibbs.com" ".mach=i.to")) 
"\\)\\'"))
(setq navi2ch-list-bbstable-url "http://menu.5ch.net/bbstable.html")
