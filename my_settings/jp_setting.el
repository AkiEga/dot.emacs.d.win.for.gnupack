;ɸ��IME������
(setq default-input-method "W32-IME")
;IME�ν����
(w32-ime-initialize)			
;IME OFF���ν���������륫�顼
(set-cursor-color "red")		
;�Хåե��ڤ��ؤ�����IME���֤�����Ѥ�
(setq w32-ime-buffer-switch-p nil)	
; i-search�����Ȥ�quail/KKC���ʾ���˵�ư���ơ˽�λ���ʤ��Τǽ�λ����
(global-set-key '[non-convert] 'kkc-cancel)
; quail/KKC��ư������̵����
(global-set-key "\C-\\" 'nil)
(global-set-key '[non-convert] 'toggle-input-method)

;; IME mode-line indicator
;; ON  : [��] OFF : [--]
(setq-default w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator-list
      '("[--]" "[��]" "[--]"))


;IME ON/OFF���Υ������륫�顼
(add-hook 'input-method-activate-hook
	  (lambda() (set-cursor-color "green")))
(add-hook 'input-method-inactivate-hook
	  (lambda() (set-cursor-color "red")))

;; IME�������yes/no�򥿥��פ���Ȥ���Ǥ� IME �򥪥դˤ����
(wrap-function-to-control-ime 'universal-argument t nil)
(wrap-function-to-control-ime 'read-string nil nil)
(wrap-function-to-control-ime 'read-char nil nil)
(wrap-function-to-control-ime 'read-from-minibuffer nil nil)
(wrap-function-to-control-ime 'y-or-n-p nil nil)
(wrap-function-to-control-ime 'yes-or-no-p nil nil)
(wrap-function-to-control-ime 'map-y-or-n-p nil nil)
