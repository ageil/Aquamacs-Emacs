
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
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 308 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(auto-fill-function nil t)
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
	("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
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
 '(ns-right-alternate-modifier nil)
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(package-selected-packages
   (quote
	(neotree diff-hl org-pdfview pdf-tools smex flx ivy xwidgete htmlize auctex magit epoch-view zenburn-theme solarized-theme gnome-c-style fsharp-mode)))
 '(size-indication-mode t)
 '(smooth-scrolling-mode t)
 '(tabbar-mode t nil (tabbar))
 '(visual-line-mode nil t)
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(autoface-default ((t (:inherit default))))
 '(highlight ((t (:background "#073642"))))
 '(text-mode-default ((t (:inherit autoface-default :stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 150 :width normal :family "Inconsolata")))))
