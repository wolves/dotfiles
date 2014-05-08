;;; cjs-package-configs.el --- Custom package configs

;;; Commentary:
;;; Break this out into separate configs later

;;; Code:

;;; PLUGIN CONFIG

;; Auto-Complete
(global-auto-complete-mode t)

;; Exec Path from Shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; js2Mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Projectile
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

;; Scss Mode
(setq scss-compile-at-save nil)

;; Undo-Tree
(global-undo-tree-mode 1)

;; Web Mode
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; Yasnippet
(yas-global-mode 1)

(provide 'cjs-package-configs)
;;; cjs-package-configs.el ends here
