;;;;;                           ;;
;;;;  Org Mode Configuration   ;;;
;;;            - mauzybwy -   ;;;;
;;                           ;;;;;


(require 'org)
(my-load-all-in-directory "~/.emacs.d/org/org-mode/lisp/")

;; Startup mode hooks
(add-hook 'org-mode-hook 'auto-fill-mode)
(add-hook 'org-mode-hook 'org-indent-mode)

;;;;
;;; Source Blocks
;;

(require 'ob-ipython)

;;(org-babel-do-load-languages
;; 'org-babel-load-languages
;; '((python . t)))

(setq org-confirm-babel-evaluate nil)   ; don't confirm everytime I want to evaluate

;; Source Block Appearance
(defface org-block-begin-line
  '((t (:underline "#A7A6AA" :foreground "#ACDCCC" :background "#4f4f4f")))
  "Face used for the line delimiting the begin of source blocks.")

(defface org-block-background
  '((t (:background "#353535")))
  "Face used for the source block background.")

(defface org-block-end-line
  '((t (:overline "#A7A6AA" :foreground "#ACDCCC" :background "#4f4f4f")))
  "Face used for the line delimiting the end of source blocks.")

;; display/update images in the buffer after I evaluate
(add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)

;; fontify code
(setq org-src-fontify-natively			t ; syntax highlighting in src blocks
      org-src-preserve-indentation		t ; less shitty indentation in src blocks
      )
