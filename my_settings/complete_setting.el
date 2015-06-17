;;��ư�䴰
(require 'auto-complete)
(global-auto-complete-mode t)
(defcustom ac-modes
  '(emacs-lisp-mode lisp-interaction-mode
                    c-mode c++-mode cuda-mode java-mode
                    perl-mode cperl-mode python-mode
                    makefile-mode sh-mode fortran-mode f90-mode ada-mode
                    xml-mode sgml-mode)
  "Majo modes `auto-complete-mode' can run on."
  :type '(list symbol)
  :group 'auto-complete)
(ac-set-trigger-key "TAB")
(add-to-list 'load-path "~/.emacs.d/elisp/auto-complete")
(when (require 'auto-complete-config nil t)
  (ac-config-default)
  ;(setq ac-auto-start 1)
  (setq ac-dwim t)
	;; C-n/C-p�Ǹ��������ǽ
  ;(setq ac-use-menu-map t) 
	;; ���YASnippet���䴰�����
	(add-to-list 'ac-sources 'ac-source-yasnippet) 
	;; ����ե�����Υǥ��쥯�ȥ�
	(setq ac-dictionary-directories "~/.emacs.d/elisp/auto-complete/ac-dict")
	;; �䴰����Υ���å�����
  (setq ac-comphist-file "~/.emacs.d/elisp/auto-complete/ac-comphist.dat"))

;; �ޤ����(folding.el)
(require 'folding)
;; �䴰��ǽ(gccsense.el)
(require 'gccsense)
(add-hook 'c-mode-common-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'gccsense-complete)))

(autoload 'folding-mode "folding" "Folding mode" t)
(add-hook 'c-mode-hook 'turn-on-folding-mode t)
(add-hook 'c++-mode-hook 'turn-on-folding-mode t)

;;cuda-mode
(require 'cuda-mode)
(autoload 'cuda-mode "cuda-mode.el" "Cuda mode." t)
(add-hook 'cuda-mode-hook 'turn-on-folding-mode t)

;;.c.h�ե������c++-mode�˼�ưŪ�˴�Ϣ�դ�
(setq auto-mode-alist
			(cons (cons "\\.c$" 'c++-mode) auto-mode-alist))
(setq auto-mode-alist
			(cons (cons "\\.h$" 'c++-mode) auto-mode-alist))
; Open .cu file in cuda-mode
;; (setq auto-mode-alist
;; 			(cons (cons "\\.cu$" 'cuda-mode) auto-mode-alist))
(setq auto-mode-alist
			(cons (cons "\\.cu$" 'c++-mode) auto-mode-alist))
(setq auto-mode-alist
			(cons (cons "\\.tex$" 'tex-mode) auto-mode-alist))
(setq auto-mode-alist
			(cons (cons "\\.m$" 'octave-mode) auto-mode-alist))
; csv-mode
;(require 'csv-mode)
;(setq auto-mode-alist
;			(cons (cons "\\.csv$" 'csv-mode) auto-mode-alist))


;; insert printf for debuging
(defun my-insert-printf-debug ()
  (interactive)
  (insert "printf(\"%s %s:%d\\n\", __func__, __FILE__, __LINE__);")
  (indent-according-to-mode))

(add-hook 'c++-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'gccsense-complete)
						(local-set-key (kbd "C-c d") 'my-insert-printf-debug)))
(add-hook 'cuda-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'gccsense-complete)
						(local-set-key (kbd "C-c d") 'my-insert-printf-debug)))

;;���å����䴰
(add-to-list 'load-path "~/.emacs.d/elisp/autopair.el")
(require 'autopair)
;; enable autopair in all buffers_ 
(autopair-global-mode)

;; C-c c �� compile ���ޥ�ɤ�ƤӽФ�
(define-key global-map "\C-cc" 'compile)
