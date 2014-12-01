
;;
;;在特定模式下粘贴自动缩进
(defadvice yank (after indent-region activate)
  "To make yank content indent automatically."
  (if (member major-mode '(emacs-lisp-mode
                           scheme-mode
                           lisp-mode
                           lisp-interaction-mode
                           c-mode
                           c++-mode
                           objc-mode
                           latex-mode
                           plain-tex-mode))
      (indent-region (region-beginning) (region-end) nil)))

;; --- 自动对 C 语言的类型定义识别并进行语法加亮
;;(ctypes-auto-parse-mode 1)

;;解决缩进为8个字符问题
(setq-default tab-width 4)
;;编程时缩进为4个字符（默认为2个字符，在c，c++编程是，默认2个字符很难看）
;;参考资料: emacs中cc-mode的缩进配置方法详解
;; http://hi.baidu.com/susdisk/item/4a33cd87e45b74dfd0f8cd32
(setq c-basic-offset 4)
(setq c-default-style "linux")
(c-set-offset 'inline-open())                   ;;写java时，函数完成后ret后，默认不缩进
(c-set-offset 'case-label() 1)                  ;; switch case 缩进方式

(provide 'programing)
