(setq python-shell-interpreter "python3")
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coq-compile-before-require t)
 '(coq-diffs (quote on))
 '(coq-double-hit-enable t)
 '(coq-maths-menu-enable t)
 '(package-selected-packages
   (quote
    (smooth-scrolling control-mode company-coq proof-general tuareg tabbar session pod-mode muttrc-mode mutt-alias markdown-mode initsplit htmlize graphviz-dot-mode folding eproject diminish csv-mode color-theme-modern browse-kill-ring boxquote bm bar-cursor apache-mode)))
 '(proof-electric-terminator-enable nil)
 '(proof-output-tooltips t)
 '(proof-script-fly-past-comments nil)
 '(tool-bar-style (quote both)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; completions from loaded files
(setq company-coq-live-on-the-edge t)
;; Load company-coq when opening Coq files
(add-hook 'coq-mode-hook #'company-coq-mode)

;; scroll line by line
(require 'smooth-scrolling)
(smooth-scrolling-mode 1)
(setq smooth-scroll-margin 5)

;; key bindings for coq
(eval-after-load "proof-script"
  '(progn
     (define-key proof-mode-map (kbd "C-.") 'proof-assert-next-command-interactive)
     (define-key proof-mode-map (kbd "C-,") 'proof-undo-last-successful-command)
     (define-key proof-mode-map (kbd "C-SPC") 'proof-goto-point)
   )
)
