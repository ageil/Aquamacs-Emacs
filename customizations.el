
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 308 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(auto-fill-function nil t)
 '(company-quickhelp-mode nil)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-type (quote bar))
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
	("0e219d63550634bc5b0c214aced55eb9528640377daf486e13fb18a32bf39856" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "dcf7154867ba67b250fe2c5cdc15a7d170acd9cbe6707cc36d9dd1462282224d" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(default-frame-alist
	(quote
	 ((cursor-type . box)
	  (vertical-scroll-bars . right)
	  (internal-border-width . 0)
	  (mouse-color . "black")
	  (cursor-color . "#839496")
	  (modeline . t)
	  (fringe)
	  (background-mode . dark)
	  (tool-bar-lines . 1)
	  (menu-bar-lines . 1)
	  (right-fringe . 11)
	  (left-fringe . 3)
	  (background-color . "#002b36")
	  (foreground-color . "#839496")
	  (font . "-*-Inconsolata-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")
	  (fontsize . 0)
	  (font-backend mac-ct))))
 '(fci-rule-color "#073642")
 '(fringe-indicator-alist
   (quote
	((continuation nil nil)
	 (truncation left-truncation right-truncation)
	 (continuation left-continuation right-continuation)
	 (overlay-arrow . right-triangle)
	 (up . up-arrow)
	 (down . down-arrow)
	 (top top-left-angle top-right-angle)
	 (bottom bottom-left-angle bottom-right-angle top-right-angle top-left-angle)
	 (top-bottom left-bracket right-bracket top-right-angle top-left-angle)
	 (empty-line . empty-line)
	 (unknown . question-mark))) t)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
	(solarized-color-blend it "#002b36" 0.25)
	(quote
	 ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
	(("#073642" . 0)
	 ("#546E00" . 20)
	 ("#00736F" . 30)
	 ("#00629D" . 50)
	 ("#7B6000" . 60)
	 ("#8B2C02" . 70)
	 ("#93115C" . 85)
	 ("#073642" . 100))))
 '(hl-bg-colors
   (quote
	("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
	("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(initial-major-mode (quote org-mode))
 '(initial-scratch-message nil)
 '(mac-key-mode t)
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
	("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(ns-alternate-modifier (quote meta))
 '(ns-right-alternate-modifier nil)
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(one-buffer-one-frame-mode nil nil (aquamacs-frame-setup))
 '(package-selected-packages
   (quote
	(frame-cmds yasnippet spacemacs-theme command-log-mode use-package smooth-scroll org-bullets org-beautify-theme ess babel csv-mode bongo edit-server-htmlize org-pdfview pdf-tools all-the-icons neotree diff-hl smex flx ivy xwidgete htmlize auctex magit epoch-view zenburn-theme solarized-theme gnome-c-style fsharp-mode)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(scroll-margin 5)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(smooth-scrolling-mode t)
 '(tabbar-mode t nil (tabbar))
 '(tabbar-separator (quote (0.5)))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(text-mode-hook
   (quote
	(auto-detect-wrap smart-spacing-mode auto-detect-wrap)))
 '(truncate-lines t)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#dc322f")
	 (40 . "#c85d17")
	 (60 . "#be730b")
	 (80 . "#b58900")
	 (100 . "#a58e00")
	 (120 . "#9d9100")
	 (140 . "#959300")
	 (160 . "#8d9600")
	 (180 . "#859900")
	 (200 . "#669b32")
	 (220 . "#579d4c")
	 (240 . "#489e65")
	 (260 . "#399f7e")
	 (280 . "#2aa198")
	 (300 . "#2898af")
	 (320 . "#2793ba")
	 (340 . "#268fc6")
	 (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(visual-line-mode nil t)
 '(weechat-color-list
   (quote
	(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(word-wrap t)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(autoface-default ((t (:inherit default))))
 '(highlight ((t (:background "#073642"))))
 '(text-mode-default ((t (:inherit autoface-default :stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 150 :width normal :family "Inconsolata")))))
