;;=============================================================================
;;�������Х����
;; \C-h��Хå����ڡ�����
(define-key global-map "\C-h" 'delete-backward-char)
;;\C-c ; �ǥ����ȥ�����
(define-key global-map "\C-c;" 'comment-or-uncomment-region)
;;\C-z��̵��
(define-key global-map "\C-z" nil)
;; �Կ�����ꤷ�ƥ����פ��� (goto-line)
(global-set-key "\C-l" 'goto-line)

;; ȿ��¦�Υ�����ɥ��ˤ�����褦��
(setq windmove-wrap-around t)
; move to left windnow
(define-key global-map (kbd "C-S-<left>") 'windmove-left)
; move to right window
(define-key global-map (kbd "C-S-<right>") 'windmove-right)
; move to upper window
(define-key global-map (kbd "C-S-<up>") 'windmove-up)
; move to downer window       
(define-key global-map (kbd "C-S-<down>") 'windmove-down)      

