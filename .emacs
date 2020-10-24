;; ver 0.0.0

(package-initialize)
(setq load-path (cons "~/.emacs.d/elisp" load-path))
(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/elisp/")
(setq-default tab-width 2 indent-tabs-mode nil)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(if window-system
    (tool-bar-mode 0))

(menu-bar-mode nil)
(require 'auto-complete)
(global-auto-complete-mode t)
(setq transient-mark-mode t)
(require 'linum)
(global-linum-mode t)
(setq inhibit-startup-message t)
(set-frame-parameter nil 'alpha 90)
(set-background-color "black")
(set-foreground-color "green")
(require 'undo-tree)
(global-undo-tree-mode t)

(define-key global-map (kbd "C-\\") nil)                  ; C-\の日本語入力の設定を無効にする
(define-key global-map (kbd "M-?") 'help-for-help)        ; ヘルプ
(define-key global-map (kbd "C-/") 'undo-tree-undo)       ; undo
(define-key global-map (kbd "C-\\") 'undo-tree-redo)      ; redo
(global-unset-key "\C-z")       ; do nothing.
(unless window-system  (xterm-mouse-mode 1)
	(global-set-key [mouse-4] '(lambda ()
				     (interactive)
				     (scroll-down 1)))
	(global-set-key [mouse-5] '(lambda ()
				     (interactive)
				     (scroll-up 1))))

(show-paren-mode t)
(setq kill-whole-line t)
(setq next-line-add-newlines nil)
(setq require-final-newline t)
(setq frame-title-format (format "emacs@%s : %%f" (system-name)))

(custom-set-variables
 '(package-selected-packages (quote (yaml-mode php-mode go-mode)))
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces )
