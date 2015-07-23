(deftheme grin
  "Created 2015-04-06.")

(custom-theme-set-variables
 'grin
 '(custom-safe-themes (quote ("c537bf460334a1eca099e05a662699415f3971b438972bed499c5efeb821086b" default)))
 '(column-number-mode t)
 '(projectile-global-mode t)
 '(blink-cursor-mode t)
 '(ansi-color-names-vector ["#343d46" "#bf616a" "#a3be8c" "#ebcb8b" "#8fa1b3" "#b48ead" "#8fa1b3" "#dfe1e8"]))

(custom-theme-set-faces
 'grin
 '(fringe ((t (:background "#65737e"))))
 '(minibuffer-prompt ((t (:foreground "#8fa1b3"))))
 '(mode-line ((t (:background "#65737e" :foreground "#dfe1e8"))))
 '(region ((t (:background "#a7adba"))))
 '(font-lock-comment-face ((t (:foreground "#a7adba"))))
 '(font-lock-constant-face ((t (:foreground "#00cd00"))))
 '(font-lock-function-name-face ((t (:foreground "#8fa1b3"))))
 '(font-lock-keyword-face ((t (:foreground "#b48ead"))))
 '(font-lock-string-face ((t (:foreground "#a3be8c"))))
 '(font-lock-type-face ((t (:foreground "#ebcb8b"))))
 '(font-lock-variable-name-face ((t (:foreground "#bf616a"))))
 '(font-lock-warning-face ((t (:foreground "#bf616a"))))
 '(org-date ((t (:foreground "#b48ead"))))
 '(org-done ((t (:foreground "#a3be8c"))))
 '(org-hide ((t (:foreground "#65737e"))))
 '(org-link ((t (:foreground "#8fa1b3"))))
 '(org-todo ((t (:foreground "#bf616a"))))
 '(show-paren-match ((t (:background "#8fa1b3" :foreground "#65737e"))))
 '(show-paren-mismatch ((t (:background "#d08770" :foreground "#65737e"))))
 '(default ((t (:background "#000000" :foreground "#dfe1e8")))))

(provide-theme 'grin)
