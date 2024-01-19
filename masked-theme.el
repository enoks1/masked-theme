;;; masked-theme.el --- Masked color theme for GNU Emacs.

;; Copyright (C) 2024 oeshak <https://github.com/oeshak>

;; Author: oeshak <>
;; URL: https://github.com/oeshak/masked-theme
;; Version: 0.1

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

(deftheme masked ()
          "Masked theme for GNU Emacs")

;; colors with `+c' are lighter; and with `-c' darker
(let ((masked-bg+2        "#2f2f4d")
      (masked-bg+1        "#222238")
      (masked-bg+05       "#0f0f10")
      (masked-bg+00       "#0a0a10")
      (masked-bg          "#000010")

      (masked-red         "#a34443")
      (masked-green       "#8ba446")
      (masked-yellow      "#987d3e")
      (masked-blue        "#496f94")
      (masked-magenta     "#897399")
      (masked-cyan        "#518a8a")

      (masked-fg          "#bbbbbb")
      (masked-fg-1        "#969696")

      (masked-blue-alt    "#004daa")
      (masked-magenta-alt "#c617e6")

      (masked-gold        "#ffd700")
      (masked-black       "#000000")
      (masked-white       "#ffffff"))

  (custom-theme-set-faces
   'masked

   ;; general
   `(cursor ((t (:background ,masked-gold))))
   `(default ((t ,(list :foreground masked-fg :background masked-bg))))
   `(fringe ((t ,(list :foreground masked-fg :background masked-bg+00))))
   `(minibuffer-prompt ((t (:foreground ,masked-white))))
   `(region ((t (:foreground ,masked-white :background ,masked-blue-alt))))
   `(link ((t (:foreground ,masked-magenta-alt :underline t))))
   `(link-visited ((t (:foreground ,masked-magenta :underline t))))

   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground ,masked-green))))
   `(font-lock-comment-face ((t (:foreground ,masked-blue :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,masked-blue :slant italic))))
   `(font-lock-constant-face ((t (:foreground ,masked-cyan))))
   `(font-lock-doc-face ((t (:foreground ,masked-green))))
   `(font-lock-function-name-face ((t (:foreground ,masked-fg))))
   `(font-lock-keyword-face ((t (:foreground ,masked-yellow :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,masked-magenta))))
   `(font-lock-string-face ((t (:foreground ,masked-red))))
   `(font-lock-type-face ((t (:foreground ,masked-magenta))))
   `(font-lock-variable-name-face ((t (:foreground ,masked-fg))))
   `(font-lock-warning-face ((t (:foreground ,masked-red))))
   `(font-lock-negation-char-face ((t (:foreground ,masked-red))))

   ;; mode-line
   `(mode-line ((t ,(list :foreground masked-black :background masked-yellow))))
   `(mode-line-inactive ((t ,(list :foreground masked-fg-1 :background masked-bg+05))))

   ;; line-numbers
   `(line-number ((t (:inherit default :foreground ,masked-bg+1 :background ,masked-bg+05))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,masked-bg+2 :background ,masked-bg+05 :bold t))))

   ;; whitespace
   `(whitespace-space ((t (:foreground ,masked-bg+05 :background ,masked-bg ))))
   `(whitespace-tab ((t (:foreground ,masked-bg+05 :background ,masked-bg ))))

   ;; org
   `(org-date ((t (:foreground ,masked-blue :background ,masked-bg))))
   `(org-hide ((t (:foreground ,masked-fg-1 :background ,masked-bg))))
   `(org-todo ((t (:foreground ,masked-red :background ,masked-bg))))
   `(org-done ((t (:foreground ,masked-green :background ,masked-bg))))
   `(org-headline-done ((t (:inherit org-done))))
   `(org-level-1 ((t (:foreground ,masked-blue :background ,masked-bg))))
   `(org-level-2 ((t (:foreground ,masked-cyan :background ,masked-bg))))
   `(org-level-3 ((t (:foreground ,masked-gold :background ,masked-bg))))
   `(org-level-4 ((t (:foreground ,masked-green :background ,masked-bg))))
   `(org-level-5 ((t (:foreground ,masked-magenta :background ,masked-bg))))

   ;; compilation
   `(compilation-info ((t ,(list :foreground masked-green :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground masked-yellow :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,masked-red :inherit 'unspecified))))
   `(compilation-mode-line-fail ((t ,(list :foreground masked-red :weight 'bold :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground masked-green :weight 'bold :inherit 'unspecified))))

   ;; highlight-numbers
   `(highlight-numbers-number ((t (:foreground ,masked-red))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'masked)

;;; masked-theme.el ends here.
