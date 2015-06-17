;標準IMEの設定
(setq default-input-method "W32-IME")
;IMEの初期化
(w32-ime-initialize)			
;IME OFF時の初期カーソルカラー
(set-cursor-color "red")		
;バッファ切り替え時にIME状態を引き継ぐ
(setq w32-ime-buffer-switch-p nil)	
; i-searchしたときquail/KKCが（勝手に起動して）終了しないので終了する
(global-set-key '[non-convert] 'kkc-cancel)
; quail/KKC起動キーを無効化
(global-set-key "\C-\\" 'nil)
(global-set-key '[non-convert] 'toggle-input-method)

;; IME mode-line indicator
;; ON  : [あ] OFF : [--]
(setq-default w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator-list
      '("[--]" "[あ]" "[--]"))


;IME ON/OFF時のカーソルカラー
(add-hook 'input-method-activate-hook
	  (lambda() (set-cursor-color "green")))
(add-hook 'input-method-inactivate-hook
	  (lambda() (set-cursor-color "red")))

;; IMEの制御（yes/noをタイプするところでは IME をオフにする）
(wrap-function-to-control-ime 'universal-argument t nil)
(wrap-function-to-control-ime 'read-string nil nil)
(wrap-function-to-control-ime 'read-char nil nil)
(wrap-function-to-control-ime 'read-from-minibuffer nil nil)
(wrap-function-to-control-ime 'y-or-n-p nil nil)
(wrap-function-to-control-ime 'yes-or-no-p nil nil)
(wrap-function-to-control-ime 'map-y-or-n-p nil nil)
