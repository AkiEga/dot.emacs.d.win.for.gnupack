;; �ޥ����ۥ�����ǥ�������
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
;; ������å�������
(if window-system
		(progn
			;; ���ܥ���γ������(�����ʤ�������)��Ϥ�����
			(global-unset-key [down-mouse-3])
			;; �ޥ����α�����å���˥塼��Ф�(�����ơ�Υ�����Ȥ��ˤ�����˥塼���Ф�)
			(defun bingalls-edit-menu (event)
				(interactive "e")
				(popup-menu menu-bar-edit-menu))
			(global-set-key [mouse-3] 'bingalls-edit-menu)))
;;�ޥ����ݥ��󥿡���ʬ�䥦����ɥ���˰�ư������ե�����������ư����褦�ˤ���
(setq mouse-autoselect-window t)
