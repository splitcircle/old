;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; load org mode config
(load! "+org")

(load-theme 'doom-dark+ t)

(setq display-line-numbers-type 'relative)

(setq doom-font (font-spec :family "Input Mono" :size 14))

(setq mac-right-control-modifier 'meta)

(setq treemacs-position 'right)

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))

(map! 
  :n "C-h" #'evil-window-left
  :n "C-j" #'evil-window-down
  :n "C-k" #'evil-window-up
  :n "C-l" #'evil-window-right)

(map!
 (:leader
  :desc "Org Pomodoro" "P" #'org-pomodoro))

;; mode-specific bindings
(defun custom-indent-web-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)

(add-hook 'web-mode-hook  'custom-indent-web-hook)
