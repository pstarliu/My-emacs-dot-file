(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;;global shortcut key
(global-set-key [f12] 'compile)

;;set default c style
(setq c-default-style "k&r"
      c-basic-offset 4)
