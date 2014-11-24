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

(provide 'programing)
