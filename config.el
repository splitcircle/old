;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
(load-theme 'doom-snazzy t)

(setq
 display-line-numbers-type 'relative
 )

(setq
 doom-font (font-spec :family "Input Mono" :size 20)
 )

(setq
 fancy-splash-image "~/Documents/kufi.png"
 )

(setq
 mac-right-control-modifier 'meta
 )

(map! 
  :n "C-h" #'evil-window-left
  :n "C-j" #'evil-window-down
  :n "C-k" #'evil-window-up
  :n "C-l" #'evil-window-right)
