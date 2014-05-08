;;; cjs-keybinds.el --- Custom Keybinds

;;; Commentary:

;;; Code:

;;; KEY MAPPINGS

;; Bind M-x to easier binding
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;; Toggle Line Numbers
(global-set-key "\C-c\l" 'linum-mode)

(provide 'cjs-keybinds)
;;; cjs-keybinds.el ends here
