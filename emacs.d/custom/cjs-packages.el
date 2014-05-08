;;; cjs-packages.el --- Auto-install packages

;;; Commentary:
;;    auto-install packages

;;; Code:
(dolist (package
         '(
           ag
           auto-complete
           flycheck
           grizzl
           projectile
           undo-tree
           yasnippet
           
           ;; Modes
           coffee-mode
           elixir-mode
           gitconfig-mode
           gitignore-mode
           go-mode
           haml-mode
           js2-mode
           less-css-mode
           markdown-mode
           puppet-mode
           rspec-mode
           sass-mode
           slim-mode
           web-mode
           yaml-mode
         ))
  (unless (package-installed-p package)
    (package-install package)))

(provide 'cjs-packages)
;;; cjs-packages.el ends here
