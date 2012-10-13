(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(message "applying theme zenburn ...")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

(message "applying global settings ...")
(custom-set-variables
'(session-save-file "~/.emacs.d/.session"))

(message "applying global shortcut key ...")
;;global shortcut key
(global-set-key [f12] 'compile)

(message "setting default laguage style ...")
;;set default c style
(setq c-default-style "k&r"
      c-basic-offset 4)

;; Octove related mode

(message "applying autoload mode ...")
;; Auto octave mode for all .m files
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(message "applying auto languate features ...")
;; Auto turn on abbrevs, auto-fill and font-lock
(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))
