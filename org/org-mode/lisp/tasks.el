;;;;;                       ;;
;;;;  Org Mode ::  Tasks   ;;;
;;;        - mauzybwy -   ;;;;
;;                       ;;;;;

;; TODO Keywords
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "cyan" :weight bold)
              ("DONE" :foreground "green" :weight bold)
              ("WAITING" :foreground "magenta" :weight bold)
              ("HOLD" :foreground "yellow" :weight bold)
              ("CANCELLED" :foreground "brown" :weight bold)
              ("MEETING" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))


;; Fast TODO Selection
(setq org-use-fast-todo-selection t)
(setq org-treat-S-cursor-todo-selection-as-state-change nil)

;; TODO State Triggers
;;(setq org-todo-state-tags-triggers
;;      (quote (("CANCELLED" ("CANCELLED" . t))
;;              ("WAITING" ("WAITING" . t))
;;              ("HOLD" ("WAITING") ("HOLD" . t))
;;              (done ("WAITING") ("HOLD"))
;;              ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
;;              ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
;;              ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))
