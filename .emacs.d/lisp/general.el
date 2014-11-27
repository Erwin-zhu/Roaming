;;There is the general config about emacs.


(setq user-full-name "Erwin Zhu")                                      ;;设置个人信息
(setq user-mail-address "erwin_zhu@163.com")
(tool-bar-mode -1)                                                     ;;关闭工具栏
(mouse-avoidance-mode 'jump)                                           ;;光标靠近鼠标时让鼠标自动走开
;;显示行号
(global-linum-mode 1)
;;设定自动缩进的注视风格
(setq-default comment-style 'indent)
(global-auto-revert-mode 1)               ;自动更新buffer

;;置org-mode自动换行
(add-hook 'org-mode-hook (lambda()(setq truncate-lines nil)))

;;光标自动匹配对应括号（高亮对应括号）
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;禁止自动备份
(setq make-backup-files nil)

;;在标题栏上显示buffer的名字
(setq frame-title-format "emacs@%b")

;;英文字体设置
;;(set-frame-font "bitstream vera sans mono-11")
;;(set-frame-font "dejavu sans mono-12")
(set-frame-font "Monaco-12")
;;中文字体设置
(set-fontset-font "fontset-default" 'han "微软雅黑-11.0")

;;关闭出错的提示音
(setq visible-bell t)

;;Emacs启动时在屏幕中的位置
(set-frame-position (selected-frame) 225 0)
;;窗口大小
(set-frame-width (selected-frame) 80)
(set-frame-height (selected-frame) 29)

;;关闭启动画面
(setq inhibit-startup-message t)

(provide 'general)
