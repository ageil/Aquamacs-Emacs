;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; BASICS

;; add lisp folder to load-path
(add-to-list 'load-path "~/Library/Preferences/Aquamacs Emacs/Packages/lisp")

;; set default directory
(setq default-directory "~/Google Drev/Københavns Universitet/Datalogi/" )

;; smooth-scroll (package)
(use-package smooth-scroll
  :config
  (smooth-scroll-mode 1)
  (setq smooth-scroll/vscroll-step-size 5)
  )

;; auto-close bracket insertion
;(electric-pair-mode 1)

;; default soft wrapping
(global-visual-line-mode t)

;; bind toggle truncate lines
(global-set-key (kbd "M-t") 'toggle-truncate-lines)

;; highlight uncommitted changes
(require 'diff-hl)
(add-hook 'prog-mode-hook 'turn-on-diff-hl-mode)
(add-hook 'vc-dir-mode-hook 'turn-on-diff-hl-mode)

;; Dash-support
;(require 'dash-at-point)
;(global-set-key (kbd "C-c d") 'dash-at-point)

;; no trailing newlines
(setq require-final-newline t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; MELPA:
;; install package-archives
(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; THEMES:
;; set marker highlight color for solarized-dark
; (set-face-attribute 'region nil :background "#93a1a1" :foreground "#002b36")
; (load-theme 'solarized-light t)

;; Cycle between solarized-dark & light (C-t)
(setq my-themes '(solarized-dark solarized-light))

(setq my-cur-theme nil)
(defun cycle-my-theme ()
  "Cycle through a list of themes, my-themes"
  (interactive)
  (when my-cur-theme
    (disable-theme my-cur-theme)
    (setq my-themes (append my-themes (list my-cur-theme))))
  (setq my-cur-theme (pop my-themes))
  (load-theme my-cur-theme t))

(cycle-my-theme) ; switch to first theme
(global-set-key (kbd "C-t") 'cycle-my-theme) ; bind to C-t

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; KEY BINDINGS:
;; meta key only on left alt
(setq ns-right-alternate-modifier nil)

;; save emacs sessions
;(desktop-save-mode 1)

;; tab is 4 spaces (default 8)
(setq-default tab-width 4)

;; ctrl+tab for next/prev tab
(global-set-key [C-tab] 'tabbar-forward-tab)
(global-set-key [C-S-tab] 'tabbar-backward-tab)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; FRAME/WINDOW-MANAGEMENT

;; default frame size/position
(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
      (progn
        (if (> (x-display-pixel-width) 1680)
			;; for larger displays
            (setq initial-frame-alist
                  '((top . 50)(left . -20)
                    (width . 120)(height . 80)
                    ))
		    (setq default-frame-alist
                  '((top . 50)(left . -20)
                    (width . 120)(height . 80)
                    ))
		;; for smaller displays
	    (setq initial-frame-alist
              '((top . 20) (left . 1040)
                (width . 86)(height . 60)
                ))
	    (setq default-frame-alist
              '((top . 20) (left . 1000)
                (width . 86)(height . 60)
                )))
        )))
(set-frame-size-according-to-resolution)

(setq linum-format "%d ") ; dont cap off line numvering
(set-fringe-mode '(1 . 1)) ; minimal fringe-mode


;; navigation between windows in same frame
(global-set-key (kbd "<C-up>") 'windmove-up)
(global-set-key (kbd "<C-down>") 'windmove-down)
(global-set-key (kbd "<C-left>") 'windmove-left)
(global-set-key (kbd "<C-right>") 'windmove-right)

;; enlarge/shrink windows internally
(global-set-key (kbd "C-S-<up>") 'shrink-window)
(global-set-key (kbd "C-S-<down>") 'enlarge-window)
(global-set-key (kbd "C-S-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-S-<right>") 'shrink-window-horizontally)


;; set frame size & position
(defun bjm-frame-resize-l ()
  "set frame full height and 86 columns wide and position at screen left"
  (interactive)
  (set-frame-width (selected-frame) 86)
;  (maximize-frame-vertically) ;; doesnt account for aquamacs tabs!
  (set-frame-height (selected-frame) 67)
  (set-frame-position (selected-frame) 0 0)
  )

(defun bjm-frame-resize-r ()
  "set frame full height and 86 columns wide and position at screen right"
  (interactive)
  (set-frame-width (selected-frame) 86)
;  (maximize-frame-vertically) ;; doesnt account for aquamacs tabs!
  (set-frame-height (selected-frame) 67)
  (set-frame-position (selected-frame) (- (display-pixel-width) (frame-pixel-width)) 0)
  )

(defun bjm-frame-resize-l2 ()
  "set frame full height and 172 columns wide and position at screen left"
  (interactive)
  (set-frame-width (selected-frame) 172)
;  (maximize-frame-vertically) ;; doesnt account for aquamacs tabs!
  (set-frame-height (selected-frame) 67)
  (set-frame-position (selected-frame) 0 0)
  )

(defun bjm-frame-resize-r2 ()
  "set frame full height and 86 columns wide and position at screen right of left hand screen in 2 monitor display assumes monitors are same resolution"
  (interactive)
  (set-frame-width (selected-frame) 172)
;  (maximize-frame-vertically) ;; doesnt account for aquamacs tabs!
  (set-frame-height (selected-frame) 67)
  (set-frame-position (selected-frame) (- (display-pixel-width) (frame-pixel-width)) 0)
  )

(defun bjm-frame-resize-fs ()
  "set frame full height and 86 columns wide and position at screen right of left hand screen in 2 monitor display assumes monitors are same resolution"
  (interactive)
  (set-frame-width (selected-frame) 237)
;  (maximize-frame-vertically) ;; doesnt account for aquamacs tabs!
  (set-frame-height (selected-frame) 67)
  (set-frame-position (selected-frame) 0 0)
  )

(defun bjm-frame-resize-mid ()
  "set frame full height and 86 columns wide and position at screen right of left hand screen in 2 monitor display assumes monitors are same resolution"
  (interactive)
  (set-frame-width (selected-frame) 86)
;  (maximize-frame-vertically) ;; doesnt account for aquamacs tabs!
  (set-frame-height (selected-frame) 67)
  (set-frame-position (selected-frame) (/ (display-pixel-width) 3) 0)
  )

(global-set-key (kbd "C-M-<left>") 'bjm-frame-resize-l)
(global-set-key (kbd "C-M-<right>") 'bjm-frame-resize-r)
(global-set-key (kbd "C-M-S-<left>") 'bjm-frame-resize-l2)
(global-set-key (kbd "C-M-S-<right>") 'bjm-frame-resize-r2)
(global-set-key (kbd "C-M-S-<up>") 'bjm-frame-resize-fs)
(global-set-key (kbd "C-M-S-<down>") 'bjm-frame-resize-mid)
(global-set-key (kbd "C-x 4") 'balance-windows)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; COMPANY-MODE

;; company-mode (for auto-complete)
;(global-company-mode 1)
;(setq company-global-modes '(not org-mode))
;(setq-default company-auto-complete t)

;; stop blinking
;(setq company-echo-delay 0)

;; turn off quickhelp mode (yellow popup description)
(add-hook 'company-mode-hook
          '(lambda () 
              (company-quickhelp-mode nil)))

;; fast auto-complete
;(setq-default company-idle-delay 0.05)

;; dont autocomplete on return
(with-eval-after-load 'company
  ;(company-quickhelp-mode -1)
  (define-key company-active-map (kbd "RET") nil)
  (define-key company-active-map [return] nil)
;  (define-key company-active-map (kbd ".") nil)
  (define-key company-active-map [tab] 'company-complete-selection)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; ORG-MODE:
;; nice bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; arrow instead of ... for folded sections
(setq org-ellipsis "⤵")

;; nice quotes when exporting
(setq org-export-with-smart-quotes t)

;; no html postamble with personal details
(setq org-html-postamble nil)

;; disable C-tab (so we can switch tabs instead)
(add-hook 'org-mode-hook
          '(lambda ()
             (define-key org-mode-map [(control tab)] nil)))

;; unmap alt-arrow-keys in tables
(with-eval-after-load 'org
  (define-key org-mode-map (kbd "<M-up>") nil)
  (define-key org-mode-map (kbd "<M-down>") nil)
  (define-key org-mode-map (kbd "<M-left>") nil)
  (define-key org-mode-map (kbd "<M-right>") nil)
  (define-key org-mode-map (kbd "<M-S-up>") nil)
  (define-key org-mode-map (kbd "<M-S-down>") nil)
  (define-key org-mode-map (kbd "<M-S-left>") nil)
  (define-key org-mode-map (kbd "<M-S-right>") nil))

;; highlight current line
(global-hl-line-mode)

;; enable languages for in-buffer evaluation
(require 'ob-python)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((C . t)
  (emacs-lisp . t)
  (ditaa . t)
  (gnuplot . t)
  (haskell . t)
  (js . t)
  (latex . t)
  (octave . t)
  (python . t)
  (R . t)
  (sh . t)
  (sql . t)
  ))

;; code blocks random opts
(setq org-src-fontify-natively t) ;; kodeblok farver
(setq org-confirm-babel-evaluate nil) ;; kodeblok kører uden confirmation
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)
(add-hook 'org-mode-hook 'org-display-inline-images)
(setq org-src-tab-acts-natively t)

;; add ob-fsharp.el to babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t) (fsharp . t)))

;; Default LaTeX export packages
(setq org-export-latex-classes
  (quote
  (("article" "\\documentclass[a4paper]{article}
	\\usepackage[utf8x]{inputenc}
	\\usepackage{latexsym}
	\\usepackage[danish]{babel}
	\\usepackage{graphicx}
	\\usepackage{hyperref}
	\\usepackage[all]{hypcap}
	\\usepackage[skins,listings,breakable]{tcolorbox}"
	))
))

;; Syntax highlighting with LaTeX
(setq org-highlight-latex-and-related '(latex script entities))

;; Syntax highlighting with LaTeX for pdf export
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
(add-to-list 'org-latex-packages-alist '("" "minted"))
(setq org-latex-listings 'minted)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; IVY:
(require 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-load-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)

;; let ivy use flx for fuzzy-matching
(require 'flx)
(setq ivy-re-builders-alist '((t . ivy--regex-fuzzy)))

;; Use Enter on a directory to navigate into the directory, 
;; not open it with dired.
(setq ivy-extra-directories nil)

(defun eh-ivy-open-current-typed-path ()
  (interactive)
  (when ivy--directory
    (let* ((dir ivy--directory)
           (text-typed ivy-text)
           (path (concat dir text-typed)))
      (delete-minibuffer-contents)
      (ivy--done path))))

(define-key ivy-minibuffer-map (kbd "<return>") 'ivy-alt-done)
(define-key ivy-minibuffer-map (kbd "<A-return>") 'eh-ivy-open-current-typed-path)

;; Let projectile use ivy
(setq projectile-completion-system 'ivy)

;; ivy completion for magit
(setq magit-completing-read-function 'ivy-completing-read)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; NEOTREE
(require 'neotree)

;; toggle neotree on/off
(global-set-key (kbd "C-$") 'neotree-toggle)

;; set neotree theme
(require 'all-the-icons)
(setq neo-theme (if window-system 'icons 'arrow))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; PDF-TOOLS (docview replacement)
(pdf-tools-install)

;; integrate with org-mode
(eval-after-load 'org '(require 'org-pdfview))
(add-to-list 'org-file-apps '("\\.pdf\\'" . org-pdfview-open))
(add-to-list 'org-file-apps '("\\.pdf::\\([[:digit:]]+\\)\\'" . org-pdfview-open))

;; integrate with TeX
(setq TeX-view-program-selection '((output-pdf "pdf-tools")))
(setq TeX-view-program-list '(("pdf-tools" "TeX-pdf-tools-sync-view")))

;; keybindings
(defun my-pdfview-config ()
  (local-set-key (kbd "<left>") 'image-backward-hscroll)
  (local-set-key (kbd "<right>") 'image-forward-hscroll)
  (local-set-key (kbd "<M-up>") 'pdf-view-previous-page)
  (local-set-key (kbd "<M-down>") 'pdf-view-next-page)
  (local-set-key (kbd "<A-up>") 'pdf-view-first-page)
  (local-set-key (kbd "<A-down>") 'pdf-view-last-page))

(add-hook 'pdf-view-mode-hook 'my-pdfview-config)

;; docview scrolls across pages
(setq doc-view-continuous t)
