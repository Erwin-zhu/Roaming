;;There is the emacs plugin config for Emacs

;;ido
(require 'ido)
(ido-mode t)

;;ibuffer
;;(require 'ibuffer)
;;(global-set-key (kbd "C-x C-b") 'ibuffer)

;;sesseion.el
;;(require 'session)
;;(add-hook 'after-init-hook 'session-initialize)

;;desktop
;;(load "desktop")
;;(desktop-load-default)
;;(desktop-read)

;;markdown-mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;hippie-expand
(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list 
   '(try-expand-dabbrev
	try-expand-dabbrev-visible
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol))

;;autopair  https://github.com/capitaomorte/autopair
(add-to-list 'load-path "~/.emacs.d/lisp/autopair-master")
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

;;smartparens
;;(add-to-list 'load-path "~/.emacs.d/lisp/dash.el-master")
;;(add-to-list 'load-path "~/.emacs.d/lisp/smartparens-master")
;;desh 装smartparens依赖这个插件，不然报错
;;(require 'smartparens)
;; use smartparens
;;(require 'smartparens-config)
;;(package-initialize)
;;(smartparens-global-mode)
;;去除难看的自动缩进
;;(setq sp-navigate-reindent-after-up -1)

;; global enabled, and use strict mode
;;(smartparens-global-strict-mode +1)

;;color-theme设置
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp/themes/")
(require 'color-theme)
(color-theme-initialize)
;;(color-theme-robin-hood)
;;(color-theme-calm-foriest)				
;;(color-theme-dark-laptop)
(load-theme 'solarized-dark t)
;;(load-theme 'solarized-light t)

;;乱码问题
(require 'unicad)

;;smex
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;window-numbering
;;from: http://blog.csdn.net/redguardtoo/article/details/7768233(Emacs中的完美多窗口操作)
(add-to-list 'load-path "~/.emacs.d/lisp/window-numbering.el-master")
(require 'window-numbering)
(window-numbering-mode 1)
(winner-mode 1)
;; copied from http://puntoblogspot.blogspot.com/2011/05/undo-layouts-in-emacs.html
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)

;;cnblogs
(add-to-list 'load-path "~/.emacs.d/lisp/cnblogs-master")
(require 'cnblogs)

;;company
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)
;;(setq company-minimum-prefix-length 2)

;;yasnippet
(add-to-list 'load-path "~/.emacs.d/lisp/yasnippet-master")
(require 'yasnippet)
(yas-global-mode 1)
(require 'dropdown-list)
;;(setq yas-prompt-functions '(yas-dropdown-prompt))
(setq yas-prompt-functions '(yas-dropdown-prompt
                              yas-ido-prompt
                              yas-completing-prompt))

(provide 'myPlugin)
