;; マウスホイールでスクロール
(defun scroll-down-with-lines ()
  ""
  (interactive)
  (scroll-down 1))
(defun scroll-up-with-lines ()
   ""
   (interactive)
   (scroll-up 1))
(global-set-key [mouse-4] 'scroll-down-with-lines)
(global-set-key [mouse-5] 'scroll-up-with-lines)
;; 右クリックの設定
(if window-system
		(progn
			;; 右ボタンの割り当て(押しながらの操作)をはずす。
			(global-unset-key [down-mouse-3])
			;; マウスの右クリックメニューを出す(押して、離したときにだけメニューが出る)
			(defun bingalls-edit-menu (event)
				(interactive "e")
				(popup-menu menu-bar-edit-menu))
			(global-set-key [mouse-3] 'bingalls-edit-menu)))
;;マウスポインターが分割ウィンドウ上に移動したらフォーカスが移動するようにする
(setq mouse-autoselect-window t)
