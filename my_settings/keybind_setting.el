;;=============================================================================
;;■キーバインド
;; \C-hをバックスペースに
(define-key global-map "\C-h" 'delete-backward-char)
;;\C-c ; でコメントアウト
(define-key global-map "\C-c;" 'comment-or-uncomment-region)
;;\C-zは無効
(define-key global-map "\C-z" nil)
;; 行数を指定してジャンプする (goto-line)
(global-set-key "\C-l" 'goto-line)

;; 反対側のウィンドウにいけるように
(setq windmove-wrap-around t)
; move to left windnow
(define-key global-map (kbd "C-S-<left>") 'windmove-left)
; move to right window
(define-key global-map (kbd "C-S-<right>") 'windmove-right)
; move to upper window
(define-key global-map (kbd "C-S-<up>") 'windmove-up)
; move to downer window       
(define-key global-map (kbd "C-S-<down>") 'windmove-down)      

