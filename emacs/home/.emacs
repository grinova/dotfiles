(custom-set-variables
 '(custom-enabled-themes (quote (grin)))
 '(custom-safe-themes
   (quote
    ("ebf7e4649273caa7c749d194f00ba3eac1619fd87aba8a3e1eae6e1ce90a3cb1" "e9181c919b097f213d9c0683774998bde113b3fa76d3d6d025390ad0df7a99cd" "b2d4299c237857d665d698e8b68cda3393beb3b65812b2129742f24a6f05a904" "0e66c8a308218723677a70302e7216c7c59e669b55fc84f6888b02aca02e82c8" "8815433956d1b15a1c232a3aa11aaed67aba915cae48dce80b27a6bf1a4305c1" default)))
 '(helm-boring-buffer-regexp-list
   (quote
    ("\\` " "\\*helm" "\\*helm-mode" "\\*Echo Area" "\\*Minibuf" "^\\*[^\\*]*\\*$")))
 '(js-indent-level 2)
 '(menu-bar-mode nil)
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(show-paren-mode t)
 '(when (not (facep (aref ansi-term-color-vector 0)))))

(custom-set-faces)
(setq-default buffer-file-coding-system 'utf-8-unix)
(setq-default default-buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq ad-redefinition-action 'accept)

(require 'package)
(package-initialize)

(defun linum-mode-init ()
  (column-number-mode t)
  (line-number-mode t)
  (hlinum-activate)
  (highlight-parentheses-mode t)
  (auto-complete-mode t)
  ;; (rainbow-delimiters-mode t)
)
(add-hook 'clojure-mode-hook 'hlinum-activate)
(add-hook 'clojure-mode-hook 'highlight-parentheses-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
;; (add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'show-paren-mode)

(defun auto-complete-mode-init ()
  (global-set-key (kbd "C-^") 'auto-complete))

(add-hook 'linum-mode-hook 'linum-mode-init)
(add-hook 'auto-complete-hook 'auto-complete-mode-init)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(global-set-key (kbd "C-c p") 'helm-git-files)
(global-set-key (kbd "C-c s") 'helm-git-grep)
(global-set-key (kbd "C-c b") 'helm-buffers-list)
(global-set-key (kbd "C-c o") 'dirtree)

(kill-buffer "*scratch*")
(global-linum-mode)
(global-set-key (kbd "C-c b") 'helm-buffers-list)

(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "<down>") 'scroll-up-line)
(global-set-key (kbd "<up>") 'scroll-down-line)
