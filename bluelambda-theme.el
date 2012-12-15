;;; bluelambda-theme.el ---

;; Copyright (C) 2012  Federico Squartini

;; Author: Federico Squartini <federico.squartini@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.


(deftheme bluelambda
  "The Bluelambda theme. Low contrast, with
  lightweight syntax highlight.")

(let ((class '((class color) (min-colors 89)))
      (lambda-bg "#102e4e")
      (lambda-fg "white")
      (comment "burlywood")
      (lambda-red "#B13A39")
      (lambda-grey "#405060")
      (lambda-green "green")
      (lambda-yellow "yellow")
      (lambda-blue1 "DeepSkyBlue1")
      (lambda-blue2 "CadetBlue1")
      (lambda-gold "goldenrod")
      (lambda-dark "#1E3C48")
      )

  (custom-theme-set-faces
   'bluelambda
   `(default ((,class (:background ,lambda-bg :foreground ,lambda-fg))))
   `(cursor ((,class (:background ,lambda-gold))))
   `(fringe ((,class (:background ,lambda-grey))))
   `(vertical-border ((,class (:foreground ,lambda-bg))))

   `(minibuffer-prompt ((,class (:foreground ,lambda-fg :background  ,lambda-bg :bold t))))

   `(mode-line ((,class (:background  ,lambda-gold :foreground ,lambda-bg :box (:line-width -1 :style released-button)))))
   `(mode-line-inactive ((,class (:background ,lambda-grey :foreground ,lambda-bg :box (:line-width -1 :style  released-button)))))
   `(mode-line-buffer-id ((,class (:weight bold :background nil :foreground ,lambda-bg))))

   `(menu ((,class (:foreground ,lambda-fg :background ,lambda-bg))))

   `(primary-selection ((,class (:background ,lambda-blue1 :foreground ,lambda-bg))))
   `(secondary-selection ((,class (:background ,lambda-blue2 :foreground ,lambda-bg))))

   `(tooltip ((,class (:background ,lambda-gold :foreground ,lambda-fg))))  

   ;; search
   `(isearch ((,class (:background ,lambda-blue1 :foreground ,lambda-bg))))
   `(isearch-lazy-highlight-face ((,class (:background ,lambda-blue2 :foreground ,lambda-bg))))
   `(isearch-fail ((,class (:foreground ,lambda-red :background ,lambda-bg :bold t))))


   `(success ((,class (:foreground ,lambda-green ))))
   `(warning ((,class (:foreground ,lambda-yellow))))
   `(error ((,class (:foreground ,lambda-red))))

   ;; iswitchb
   `(iswitchb-current-match ((,class (:foreground ,lambda-blue2))))
   `(iswitchb-invalid-regexp ((,class (:bold t :foreground ,lambda-red))))
   `(iswitchb-single-match ((,class (:bold t :foreground ,lambda-blue1))))
   `(iswitchb-virtual-matches ((,class (:foreground "black"))))


   ;;`(header-line ((,class (:background ,error :foreground ,lambda-pink1))))
   ;; Syntax highlight
   `(font-lock-builtin-face  ((,class  (:foreground ,lambda-fg))))
   `(font-lock-comment-face  ((,class  (:foreground ,comment))))
   `(font-lock-comment-delimiter-face  ((,class  (:foreground ,comment))))
   `(font-lock-constant-face  ((,class  (:weight bold :foreground ,lambda-fg))))
   `(font-lock-doc-string-face  ((,class  (:italic t :foreground ,comment))))
   `(font-lock-doc-face  ((,class  (:foreground ,comment))))
   `(font-lock-reference-face  ((,class  (:foreground ,lambda-red))))
   `(font-lock-function-name-face  ((,class  (:foreground ,lambda-fg))))
   `(font-lock-keyword-face  ((,class  (:weight bold  :foreground ,lambda-blue1))))
   `(font-lock-preprocessor-face  ((,class  (:foreground ,lambda-gold))))
   `(font-lock-string-face  ((,class  (:foreground ,lambda-blue2))))
   `(font-lock-type-face  ((,class  (:weight bold :foreground ,lambda-fg))))
   `(font-lock-variable-name-face  ((,class  (:foreground ,lambda-fg))))
   `(font-lock-warning-face  ((,class  (:weight bold :foreground ,lambda-yellow))))

   `(region  ((,class  (:foreground nil :background ,lambda-grey))))
   `(match ((,class (:background ,lambda-dark))))
   `(highlight ((,class (:background ,lambda-green))))

   `(show-paren-match-face ((,class (:background "dark green" :foreground ,lambda-fg))))
   `(show-paren-mismatch-face ((,class (:background ,lambda-red :foreground ,lambda-fg))))

   ;; Hyperlinks
   `(link ((,class (:underline t :foreground ,lambda-blue1))))
   `(link-visited ((,class (:underline t :foreground ,lambda-grey))))

   ;; Info
   `(info-header-node ((,class (:foreground ,lambda-blue1))))
   `(info-header-xref ((,class (:foreground  ,lambda-blue2))))
   `(info-menu-header ((,class (:family "helv" :weight bold))))
   `(info-node ((,class (:foreground ,lambda-blue1))))
   `(info-xref ((,class (:foreground  ,lambda-blue2))))

   ;; Flymake
   `(flymake-errline ((,class (:background nil :underline ,lambda-red))))
   `(flymake-warnline ((,class (:background nil :underline ,lambda-gold))))

   ;; compile
   `(compilation-column-number ((,class (:foreground ,lambda-red))))
   `(compilation-error ((,class (:foreground ,lambda-red weight:bold))))
   `(compilation-info ((,class (:weight normal :foreground ,lambda-red))))
   `(compilation-line-number ((,class (:foreground ,lambda-red))))

   ;; diff
   `(diff-added ((,class(:foreground ,lambda-blue1 :bold t))))
   `(diff-changed ((,class  (:bold t))))
   `(diff-removed ((,class (:foreground ,lambda-red  :bold t))))
   `(diff-header ((,class (:foreground ,comment))))
   `(diff-file-header((,class (:background "tomato1" :foreground "grey10"))))
   `(diff-refine-change ((,class (:background "green"))))

   ;; dired
   `(dired-directory ((,class (:foreground ,lambda-blue1 :weight bold))))
   `(dired-flagged ((,class (:foreground ,lambda-red))))
   `(dired-header ((,class (:foreground ,lambda-bg :background ,lambda-blue1))))
   `(dired-ignored ((,class (:inherit shadow))))
   `(dired-mark ((,class (:foreground ,lambda-yellow :weight bold))))
   `(dired-marked ((,class (:foreground "magenta" :weight bold))))
   `(dired-perm-write ((,class (:foreground ,lambda-fg :underline t))))
   `(dired-symlink ((,class (:foreground "cyan" :weight normal :slant italic))))
   `(dired-warning ((,class (:foreground ,lambda-yellow :underline t))))

   `(comint-highlight-input ((,class (:italic t))))
   `(comint-highlight-prompt ((,class (:weight bold :foreground ,lambda-blue1))))

   ;;whitespace-mode
   `(whitespace-space ((,class (:background ,lambda-bg :foreground ,lambda-dark
                                            :inverse-video t))))
   `(whitespace-hspace ((,class (:background ,lambda-bg :foreground ,lambda-red 
                                             :inverse-video t))))
   `(whitespace-tab ((,class (:background ,lambda-bg :foreground ,lambda-dark
                                          :inverse-video t))))
   `(whitespace-newline ((,class (:foreground ,lambda-dark))))
   `(whitespace-trailing ((,class (:foreground ,lambda-dark :background ,lambda-bg
                                               :inverse-video t))))
   `(whitespace-line ((,class (:background ,lambda-dark :foreground ,lambda-fg
                                           :inverse-video nil))))
   `(whitespace-space-before-tab ((,class (:background ,lambda-bg :foreground ,lambda-green
                                                       :inverse-video t))))
   `(whitespace-indentation ((,class (:foreground ,lambda-bg :background ,lambda-dark
                                                  ))))
   `(whitespace-empty ((,class (:background ,lambda-fg :foreground ,lambda-red :inverse-video t))))
   `(whitespace-space-after-tab ((,class (:background ,lambda-bg  :foreground ,lambda-dark
                                                      :inverse-video t))))
   )
  )


(provide-theme 'bluelambda)
