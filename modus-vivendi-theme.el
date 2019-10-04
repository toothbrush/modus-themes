;; modus-vivendi-theme.el --- very accessible dark theme (WCAG AAA)
;;
;; This file is not part of GNU Emacs.
;;
;; Copyright (c) 2019 Protesilaos Stavrou <info@protesilaos.com>
;;
;; This program is free software; you can redistribute it and/or
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; The primary purpose of this theme is to provide a consistent
;; minimum contrast ratio between background and foreground values of
;; 7:1 or higher.  This meets the highest such accessibility criterion
;; per the guidelines of the Worldwide Web Consortium's Working Group
;; on Accessibility.
;;
;; The secondary goal is to provide as close to full coverage as
;; possible.  The output of `list-faces-display' offers all we need.
;; Note though, that it is difficult to create theme styles without
;; actually using the packages/interfaces that require them.  As such,
;; the development of this theme will be incremental, gradually
;; incorporating the customisations for packages I use or have been
;; exposed to.
;;
;; The original template is provided by `customize-create-theme'.  The
;; design of the colour variables was taken from the Tango theme that
;; comes packaged with GNU Emacs (at least it does on Debian 10).

(deftheme modus-vivendi
  "Dark theme that conforms with the highest accessibility
  standard for colour contrast between background and
  foreground elements (WCAG AAA).")

;; These faces will be inherited by actual constructs.  They are meant
;; for those cases where a face needs to distinguish its output from
;; the rest of the text, such as `isearch' and `occur'…  We define
;; these separately in order to combine each colour with its
;; appropriate foreground value.  This is to ensure a consistent
;; contrast ratio of >= 7:1.
(defface modus-theme-subtle-bg-red nil t)
(defface modus-theme-subtle-bg-green nil t)
(defface modus-theme-subtle-bg-yellow nil t)
(defface modus-theme-subtle-bg-blue nil t)
(defface modus-theme-subtle-bg-magenta nil t)
(defface modus-theme-subtle-bg-cyan nil t)
(defface modus-theme-subtle-bg-neutral nil t)
(defface modus-theme-intense-bg-red nil t)
(defface modus-theme-intense-bg-green nil t)
(defface modus-theme-intense-bg-yellow nil t)
(defface modus-theme-intense-bg-blue nil t)
(defface modus-theme-intense-bg-magenta nil t)
(defface modus-theme-intense-bg-cyan nil t)
(defface modus-theme-intense-bg-neutral nil t)
(defface modus-theme-refine-red nil t)
(defface modus-theme-refine-green nil t)
(defface modus-theme-refine-yellow nil t)
(defface modus-theme-refine-blue nil t)
(defface modus-theme-refine-magenta nil t)
(defface modus-theme-refine-cyan nil t)

;; Define colour palette.  Each colour must have a >= 7:1 contrast
;; ratio relative to the foreground/background colour it is rendered
;; against.
(let ((class '((class color) (min-colors 89)))
	  (fg-main "#ffffff") (bg-main "#000000")
	  (fg-alt "#d8cdcf") (bg-alt "#201626")
	  (fg-dim "#e0e6f0") (bg-dim "#14091c")
	  ;; specifically for on/off states (e.g. mode-line)
	  ;; must be combined with themselves
	  (fg-active "#f5f5f5") (bg-active "#303030")
	  (fg-inactive "#a3a3a3") (bg-inactive "#181818")
	  ;; styles for the main constructs
	  ;; must be combined with: bg-main, bg-alt, bg-dim
	  (red "#ff8059") (green "#44bc44")
	  (yellow "#eecc00") (blue "#33beff")
	  (magenta "#feacd0") (cyan "#00d3d0")
	  ;; styles for common, but still specialised constructs
	  ;; must be combined with: bg-main, bg-alt, bg-dim
	  (red-alt "#f4923b") (green-alt "#58dd13")
	  (yellow-alt "#f0ce43") (blue-alt "#62aaff")
	  (magenta-alt "#ed98f4") (cyan-alt "#4ae8fc")
	  ;; same purpose as above, just slight differences
	  ;; must be combined with: bg-main, bg-alt, bg-dim
	  (red-alt-other "#ff9977") (green-alt-other "#90d800")
	  (yellow-alt-other "#e0e040") (blue-alt-other "#08baf0")
	  (magenta-alt-other "#bba3ff") (cyan-alt-other "#6ae4b9")
	  ;; styles for elements that should draw attention to themselves
	  ;; must be combined with: bg-main
	  (red-intense "#fb6859") (green-intense "#00fc50")
	  (yellow-intense "#ffdd00") (blue-intense "#00a2ff")
	  (magenta-intense "#ff8bd4") (cyan-intense "#30ffc0")
	  ;; styles for background elements that should be visible yet subtle
	  ;; must be combined with: fg-dim
	  (red-subtle-bg "#8f1d2e") (green-subtle-bg "#3f5100")
	  (yellow-subtle-bg "#654230") (blue-subtle-bg "#2c3fa8")
	  (magenta-subtle-bg "#720a4f") (cyan-subtle-bg "#00425f")
	  ;; styles for background elements that should be visible and distinguishable
	  ;; must be combined with: fg-main
	  (red-intense-bg "#a2252a") (green-intense-bg "#20662a")
	  (yellow-intense-bg "#625a00") (blue-intense-bg "#0a12ca")
	  (magenta-intense-bg "#7f2dba") (cyan-intense-bg "#064a70")
	  ;; styles for refined git diffs and other contexts where both
	  ;; the foreground and the background need to have the
	  ;; same/similar hue
	  ;; must be combined with themselves
	  (red-refine-bg "#780000") (green-refine-bg "#004c00")
	  (yellow-refine-bg "#755000") (blue-refine-bg "#0000bb")
	  (magenta-refine-bg "#770077") (cyan-refine-bg "#005597")
  	  (red-refine-fg "#ffcccc") (green-refine-fg "#bcffbc")
	  (yellow-refine-fg "#ffffcc") (blue-refine-fg "#ddddff")
	  (magenta-refine-fg "#ffccff") (cyan-refine-fg "#ccffff"))
  (custom-theme-set-faces
   'modus-vivendi
   ;; custom faces that are inherited by other constructs below
   ;;; subtle coloured backgrounds
   `(modus-theme-subtle-bg-red ((,class (:background ,red-subtle-bg :foreground ,fg-dim))))
   `(modus-theme-subtle-bg-green ((,class (:background ,green-subtle-bg :foreground ,fg-dim))))
   `(modus-theme-subtle-bg-yellow ((,class (:background ,yellow-subtle-bg :foreground ,fg-dim))))
   `(modus-theme-subtle-bg-blue ((,class (:background ,blue-subtle-bg :foreground ,fg-dim))))
   `(modus-theme-subtle-bg-magenta ((,class (:background ,magenta-subtle-bg :foreground ,fg-dim))))
   `(modus-theme-subtle-bg-cyan ((,class (:background ,cyan-subtle-bg :foreground ,fg-dim))))
   `(modus-theme-subtle-bg-neutral ((,class (:background ,bg-alt :foreground ,fg-alt))))
   ;;; intense coloured backgrounds
   `(modus-theme-intense-bg-red ((,class (:background ,red-intense-bg :foreground ,fg-main))))
   `(modus-theme-intense-bg-green ((,class (:background ,green-intense-bg :foreground ,fg-main))))
   `(modus-theme-intense-bg-yellow ((,class (:background ,yellow-intense-bg :foreground ,fg-main))))
   `(modus-theme-intense-bg-blue ((,class (:background ,blue-intense-bg :foreground ,fg-main))))
   `(modus-theme-intense-bg-magenta ((,class (:background ,magenta-intense-bg :foreground ,fg-main))))
   `(modus-theme-intense-bg-cyan ((,class (:background ,cyan-intense-bg :foreground ,fg-main))))
   `(modus-theme-intense-bg-neutral ((,class (:background ,bg-dim :foreground ,fg-main))))
   ;;; refined background and foreground combinations (for git diff and the like)
   `(modus-theme-refine-red ((,class (:background ,red-refine-bg :foreground ,red-refine-fg))))
   `(modus-theme-refine-green ((,class (:background ,green-refine-bg :foreground ,green-refine-fg))))
   `(modus-theme-refine-yellow ((,class (:background ,yellow-refine-bg :foreground ,yellow-refine-fg))))
   `(modus-theme-refine-blue ((,class (:background ,blue-refine-bg :foreground ,blue-refine-fg))))
   `(modus-theme-refine-magenta ((,class (:background ,magenta-refine-bg :foreground ,magenta-refine-fg))))
   `(modus-theme-refine-cyan ((,class (:background ,cyan-refine-bg :foreground ,cyan-refine-fg))))
   ;; actual styles
   `(default ((,class (:background ,bg-main :foreground ,fg-main))))
   `(fringe ((t (:inherit (default)))))
   `(cursor ((,class (:background ,fg-main))))
   `(italic ((,class (:foreground ,yellow :slant italic))))
   `(warning ((,class (:foreground ,red :weight bold))))
   `(error ((t (:inherit (modus-theme-intense-bg-red) :weight bold))))
   `(success ((t (:inherit (modus-theme-intense-bg-green) :weight bold))))
   `(escape-glyph ((,class (:weight bold :foreground ,yellow-alt))))
   `(homoglyph ((,class (:foreground ,yellow-alt-other))))
   `(ibuffer-locked-buffer ((,class (:foreground ,yellow-alt-other))))
   `(minibuffer-prompt ((,class (:foreground ,cyan-intense))))
   `(mm-command-output ((,class (:foreground ,red-alt-other))))
   `(highlight ((t (:inherit (modus-theme-subtle-bg-blue)))))
   `(highlight-changes ((,class (:foreground ,yellow-alt-other))))
   `(highlight-changes-delete ((,class (:foreground ,red-alt-other :underline t))))
   `(hl-line ((,class (:background ,bg-alt))))
   `(hi-black-b ((t ((:background ,fg-main :foreground ,bg-main)))))
   `(hi-green-b ((t (:inherit (modus-theme-intense-bg-green)))))
   `(hi-blue-b ((t (:inherit (modus-theme-intense-bg-blue)))))
   `(hi-red-b ((t (:inherit (modus-theme-intense-bg-red)))))
   `(hi-green ((,class (:background ,bg-alt :underline (:color foreground-color :style line) :foreground ,green))))
   `(hi-blue ((,class (:background ,bg-alt :underline (:color foreground-color :style line) :foreground ,blue))))
   `(hi-yellow ((,class (:background ,bg-alt :underline (:color foreground-color :style line) :foreground ,yellow))))
   `(hi-pink ((,class (:background ,bg-alt :underline (:color foreground-color :style line) :foreground ,magenta))))
   `(region ((,class (:inherit (modus-theme-intense-bg-cyan)))))
   `(shadow ((,class (:foreground ,fg-alt))))
   `(secondary-selection ((t (:inherit (modus-theme-subtle-bg-magenta)))))
   `(whitespace-tab ((,class (:foreground ,fg-alt))))
   `(trailing-whitespace ((,class (:background ,red-alt))))
   `(font-lock-builtin-face ((,class (:foreground ,magenta-alt))))
   `(font-lock-comment-face ((t (:foreground ,fg-alt))))
   `(font-lock-comment-delimiter-face ((t (:inherit (font-lock-comment-face)))))
   `(font-lock-constant-face ((,class (:foreground ,blue-alt-other))))
   `(font-lock-string-face ((,class (:foreground ,blue-alt))))
   `(font-lock-doc-face ((,class (:foreground ,cyan-alt-other))))
   `(font-lock-function-name-face ((,class (:foreground ,magenta :weight normal))))
   `(font-lock-keyword-face ((,class (:foreground ,magenta-alt-other))))
   `(font-lock-negation-char-face ((t nil)))
   `(font-lock-preprocessor-face ((,class (:foreground ,magenta))))
   `(font-lock-regexp-grouping-backslash ((t (:weight bold))))
   `(font-lock-regexp-grouping-construct ((t (:weight bold))))
   `(font-lock-type-face ((,class (:foreground ,magenta-alt :weight normal))))
   `(font-lock-variable-name-face ((,class (:foreground ,cyan :weight normal))))
   `(font-lock-warning-face ((,class (:weight bold :foreground ,yellow-alt-other))))
   `(link ((,class (:underline (:color foreground-color :style line) :foreground ,blue-alt-other))))
   `(link-visited ((,class (:foreground ,magenta-alt-other))))
   `(button ((t (:inherit (link)))))
   `(widget-button ((t (:inherit (link)))))
   `(header-line ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(tooltip ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   `(mode-line ((,class (:box (:line-width 1 :color ,bg-active) :background ,bg-active :foreground ,fg-active))))
   `(mode-line-buffer-id ((t (:weight normal))))
   `(mode-line-emphasis ((t (:weight bold :inherit (highlight)))))
   `(mode-line-highlight ((,class (:box (:line-width 1 :color ,fg-main) :background ,bg-main))))
   `(mode-line-inactive ((,class (:box (:line-width 1 :color ,bg-inactive) :background ,bg-inactive :foreground ,fg-inactive))))
   `(which-func ((,class (:foreground ,fg-main))))
   `(isearch ((t (:weight bold :inherit (modus-theme-intense-bg-green)))))
   `(isearch-fail ((t (:inherit (modus-theme-subtle-bg-red)))))
   `(lazy-highlight ((t (:inherit (modus-theme-subtle-bg-green)))))
   `(match ((t (:inherit (modus-theme-intense-bg-blue)))))
   `(next-error ((t (:inherit (modus-theme-intense-bg-red))))) ;; check
   `(query-replace ((t (:inherit (isearch)))))
   `(show-paren-match ((t (:inherit (modus-theme-intense-bg-magenta) :weight bold))))
   `(show-paren-match-expression ((,class :background ,bg-active :foreground ,fg-active)))
   `(show-paren-mismatch ((t (:inherit (modus-theme-intense-bg-red)))))
   `(completions-annotations ((t (:inherit (italic)))))
   `(completions-common-part ((t nil)))
   `(completions-first-difference ((t (:inherit (bold)))))
   ;;;; compilation feedback
   `(compilation-column-number ((,class (:background ,bg-main :foreground ,green-intense))))
   `(compilation-line-number ((,class (:background ,bg-main :foreground ,magenta-intense))))
   `(compilation-error ((,class (:background ,bg-main :foreground ,red-intense :weight bold))))
   `(compilation-info ((,class (:background ,bg-dim :foreground ,green))))
   `(compilation-warning ((,class (:background ,bg-dim :foreground ,yellow :weight bold))))
   `(compilation-mode-line-exit ((,class (:background ,bg-dim :foreground ,blue :weight bold))))
   `(compilation-mode-line-fail ((,class (:background ,bg-dim :foreground ,red :weight bold))))
   `(compilation-mode-line-run ((,class (:background ,bg-dim :foreground ,cyan :weight bold))))
   ;;;; ido-mode
   `(ido-first-match ((,class (:foreground ,magenta :weight bold))))
   `(ido-only-match ((,class (:foreground ,magenta-intense :weight bold))))
   `(ido-incomplete-regexp ((t (:inherit (error)))))
   `(ido-subdir ((,class (:foreground ,blue-alt-other))))
   `(ido-indicator ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   `(ido-virtual ((,class (:foreground ,yellow-alt-other))))
   `(flx-highlight-face ((t (:inherit (modus-theme-intense-bg-magenta)))))
   ;;;; dired
   `(dired-header ((t (:foreground ,fg-main :weight bold))))
   `(dired-directory ((t (:foreground ,blue :weight bold))))
   `(dired-flagged ((t (:inherit (modus-theme-intense-bg-red)))))
   `(dired-marked ((t (:inherit (modus-theme-intense-bg-magenta)))))
   `(dired-subtree-depth-1-face ((,class (:background ,bg-dim))))
   `(dired-subtree-depth-2-face ((,class (:background ,bg-alt))))
   `(dired-subtree-depth-3-face ((,class (:background ,bg-main))))
   `(dired-subtree-depth-4-face ((,class (:background ,bg-dim))))
   `(dired-subtree-depth-5-face ((,class (:background ,bg-alt))))
   `(dired-subtree-depth-6-face ((,class (:background ,bg-main))))
   `(dired-async-failures ((t (:inherit (modus-theme-intense-bg-red)))))
   `(dired-async-message ((t (:inherit (modus-theme-intense-bg-green)))))
   `(dired-async-mode-message ((t (:inherit (modus-theme-intense-bg-magenta)))))
   ;;;; info pages (help pages)
   `(info-node ((t ((:weight bold)))))
   `(info-header-node ((t ((:weight bold)))))
   `(info-menu-star ((t (:inherit default))))
   ;;;; display-line-numbers-mode (and global variant)
   `(line-number ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(line-number-current-line ((,class (:background ,bg-dim :foreground ,fg-dim :weight bold))))
   ;;;; flyspell
   `(flyspell-duplicate ((t (:underline (:color foreground-color :style line) :inherit (modus-theme-subtle-bg-yellow)))))
   `(flyspell-incorrect ((t (:underline (:color foreground-color :style line) :inherit (modus-theme-subtle-bg-red)))))
   ;;;; markdown format
   `(markdown-header-face ((t (:weight bold))))
   `(markdown-pre-face ((,class (:background ,bg-dim :foreground ,magenta-alt))))
   `(markdown-inline-code-face ((t (:inherit (markdown-pre-face)))))
   `(markdown-blockquote-face ((,class (:background ,bg-alt))))
   ;;;; shell scripts
   `(sh-heredoc ((t (:inherit (font-lock-string-face)))))
   `(sh-quoted-exec ((t (:inherit (font-lock-builtin-face)))))
   ;;;; diff-mode
   `(diff-added ((t (:inherit (modus-theme-subtle-bg-green)))))
   `(diff-indicator-added ((t (:inherit (diff-added)))))
   `(diff-changed ((t (:inherit (diff-added) :weight bold))))
   `(diff-indicator-changed ((t (:inherit (diff-changed)))))
   `(diff-removed ((t (:inherit (modus-theme-subtle-bg-red)))))
   `(diff-indicator-removed ((t (:inherit (diff-removed)))))
   `(diff-file-header ((,class (:background ,bg-alt :foreground ,fg-main :weight bold))))
   `(diff-function ((t (:inherit (diff-file-header) :weight normal))))
   `(diff-header ((t (:inherit (diff-function)))))
   `(diff-hunk-header ((t (:inherit (diff-function)))))
   `(diff-index-header ((t (:inherit (diff-function)))))
   `(diff-refine-added ((t (:inherit (modus-theme-refine-green) :weight bold))))
   `(diff-refine-changed ((t (:inherit (modus-theme-refine-yellow) :weight bold))))
   `(diff-refine-removed ((t (:inherit (modus-theme-refine-red) :weight bold))))
   ;;;; git
   `(git-commit-overlong-summary ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   ;;;; magit
   `(magit-section ((,class (:background ,bg-dim :foreground ,fg-main))))
   `(magit-section-heading ((t (:inherit font-lock-variable-name-face))))
   `(magit-section-highlight ((,class (:background ,bg-main))))
   `(magit-diff-file-heading ((t (:inherit (diff-file-header)))))
   `(magit-diff-file-heading-highlight ((t (:inherit (magit-section-highlight)))))
   `(magit-diff-hunk-heading ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,bg-active :foreground ,fg-active))))
   `(magit-diff-context ((,class (:background ,bg-dim))))
   `(magit-diff-context-highlight ((t (:background ,bg-main))))
   `(magit-diff-removed ((t (:inherit (modus-theme-subtle-bg-red)))))
   `(magit-diff-removed-highlight ((t (:inherit (modus-theme-intense-bg-red)))))
   `(magit-diff-added ((t (:inherit (modus-theme-subtle-bg-green)))))
   `(magit-diff-added-highlight ((t (:inherit (modus-theme-intense-bg-green)))))
   `(magit-diff-base ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   `(magit-diff-base-highlight ((t (:inherit (modus-theme-intense-bg-yellow)))))
   `(magit-diff-lines-heading ((t (:inherit (modus-theme-subtle-bg-magenta)))))
   `(magit-diff-changed ((t (:weight bold))))
   `(magit-diff-changed-highlight ((t (:weight bold))))
   `(magit-diffstat-added ((t (:inherit (magit-diff-added)))))
   `(magit-diffstat-removed ((t (:inherit (magit-diff-removed)))))
   `(magit-branch-local ((t (:inherit (font-lock-builtin-face)))))
   `(magit-branch-current ((t (:inherit (font-lock-type-face)))))
   `(magit-branch-remote ((t (:inherit (font-lock-function-name-face)))))
   `(magit-hash ((t (:inherit (shadow)))))
   `(magit-process-ok ((t (:inherit (success)))))
   `(magit-process-ng ((t (:inherit (error)))))
   `(magit-reflog-amend ((,class (:foreground ,magenta-intense))))
   `(magit-reflog-checkout ((,class (:foreground ,blue-intense))))
   `(magit-reflog-merge ((,class (:foreground ,green-intense))))
   `(magit-reflog-commit ((,class (:foreground ,green-intense))))
   `(magit-reflog-other ((,class (:foreground ,cyan-intense))))
   `(magit-reflog-rebase ((,class (:foreground ,magenta-intense))))
   `(magit-reflog-remote ((,class (:foreground ,cyan-intense))))
   `(magit-reflog-reset ((,class (:foreground ,red-intense))))
   `(magit-reflog-cherry-pick ((,class (:foreground ,green-intense))))
   `(magit-cherry-equivalent ((,class (:foreground ,magenta-intense))))
   `(magit-cherry-unmatched ((,class (:foreground ,cyan-intense))))
   `(magit-signature-untrusted ((,class (:foreground ,cyan-intense))))
   `(magit-signature-revoked ((,class (:foreground ,magenta-intense))))
   `(magit-signature-good ((,class (:foreground ,green-intense))))
   `(magit-signature-bad ((,class (:foreground ,red-intense :weight bold))))
   `(magit-signature-error ((,class (:foreground ,red-intense))))
   `(magit-signature-expired ((,class (:foreground ,yellow-intense))))
   `(magit-signature-expired-key ((,class (:foreground ,yellow-intense))))
   ;;;; gnus
   `(gnus-button ((t (:inherit (button)))))
   `(gnus-summary-cancelled ((t (:inherit (modus-theme-intense-bg-yellow)))))
   `(gnus-summary-high-ancient ((,class (:foreground ,fg-alt :weight bold))))
   `(gnus-summary-high-read ((,class (:foreground ,fg-dim :weight bold))))
   `(gnus-summary-high-unread ((,class (:foreground ,fg-main :weight bold))))
   `(gnus-summary-high-ticked ((,class (:foreground ,red-alt :weight bold))))
   `(gnus-summary-high-undownloaded ((,class (:foreground ,yellow :weight bold))))
   `(gnus-summary-low-ancient ((,class (:foreground ,fg-alt :slant italic))))
   `(gnus-summary-low-read ((,class (:foreground ,fg-dim :slant italic))))
   `(gnus-summary-low-unread ((,class (:foreground ,fg-main :slant italic))))
   `(gnus-summary-low-ticked ((,class (:foreground ,red-alt :slant italic))))
   `(gnus-summary-low-undownloaded ((,class (:foreground ,yellow :slant italic))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,fg-alt))))
   `(gnus-summary-normal-read ((,class (:foreground ,fg-dim))))
   `(gnus-summary-normal-unread ((,class (:foreground ,fg-main))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,red-alt))))
   `(gnus-summary-normal-undownloaded ((,class (:foreground ,yellow))))
   `(gnus-summary-selected ((t (:inherit (modus-theme-subtle-bg-cyan)))))
   `(gnus-cite-1 ((,class (:foreground ,blue-alt))))
   `(gnus-cite-2 ((,class (:foreground ,red-alt))))
   `(gnus-cite-3 ((,class (:foreground ,green-alt))))
   `(gnus-cite-4 ((,class (:foreground ,magenta-alt))))
   `(gnus-cite-5 ((,class (:foreground ,yellow-alt))))
   `(gnus-cite-6 ((,class (:foreground ,cyan-alt))))
   `(gnus-cite-7 ((,class (:foreground ,blue-alt-other))))
   `(gnus-cite-8 ((,class (:foreground ,red-alt-other))))
   `(gnus-cite-9 ((,class (:foreground ,green-alt-other))))
   `(gnus-cite-10 ((,class (:foreground ,magenta-alt-other))))
   `(gnus-cite-11 ((,class (:foreground ,yellow-alt-other))))
   `(gnus-cite-attribution ((,class (:foreground ,fg-main :slant italic))))
   `(gnus-emphasis-highlight-words ((t (:inherit (modus-theme-intense-bg-yellow)))))
   `(gnus-group-mail-1 ((,class (:foreground ,magenta :weight bold))))
   `(gnus-group-mail-1-empty ((,class (:foreground ,magenta))))
   `(gnus-group-mail-2 ((,class (:foreground ,magenta-alt :weight bold))))
   `(gnus-group-mail-2-empty ((,class (:foreground ,magenta-alt))))
   `(gnus-group-mail-3 ((,class (:foreground ,magenta-alt-other :weight bold))))
   `(gnus-group-mail-3-empty ((,class (:foreground ,magenta-alt-other))))
   `(gnus-group-mail-low ((,class (:foreground ,fg-alt :weight bold))))
   `(gnus-group-mail-low-empty ((,class (:foreground ,fg-alt))))
   `(gnus-group-news-1 ((,class (:foreground ,cyan :weight bold))))
   `(gnus-group-news-1-empty ((,class (:foreground ,cyan))))
   `(gnus-group-news-2 ((,class (:foreground ,cyan-alt :weight bold))))
   `(gnus-group-news-2-empty ((,class (:foreground ,cyan-alt))))
   `(gnus-group-news-3 ((,class (:foreground ,cyan-alt-other :weight bold))))
   `(gnus-group-news-3-empty ((,class (:foreground ,cyan-alt-other))))
   `(gnus-group-news-4 ((,class (:foreground ,green :weight bold))))
   `(gnus-group-news-4-empty ((,class (:foreground ,green))))
   `(gnus-group-news-5 ((,class (:foreground ,green-alt :weight bold))))
   `(gnus-group-news-5-empty ((,class (:foreground ,green-alt))))
   `(gnus-group-news-6 ((,class (:foreground ,green-alt-other :weight bold))))
   `(gnus-group-news-6-empty ((,class (:foreground ,green-alt-other))))
   `(gnus-group-news-low ((,class (:foreground ,fg-alt :weight bold))))
   `(gnus-group-news-low-empty ((,class (:foreground ,fg-alt))))
   `(gnus-header-content ((,class (:foreground ,fg-main))))
   `(gnus-header-from ((,class (:foreground ,fg-main))))
   `(gnus-header-name ((,class (:foreground ,fg-dim :weight bold))))
   `(gnus-header-newsgroup ((,class (:foreground ,blue))))
   `(gnus-header-subject ((,class (:foreground ,fg-main))))
   `(gnus-server-agent ((,class (:foreground ,cyan :weight bold))))
   `(gnus-server-closed ((,class (:foreground ,magenta))))
   `(gnus-server-cloud ((,class (:foreground ,cyan-alt :weight bold))))
   `(gnus-server-cloud-host ((,class (:background ,cyan-alt :foreground ,bg-main))))
   `(gnus-server-denied ((,class (:foreground ,red :weight bold))))
   `(gnus-server-offline ((,class (:foreground ,yellow :weight bold))))
   `(gnus-server-opened ((,class (:foreground ,green :weight bold))))
   `(gnus-signature ((,class (:foreground ,yellow-alt-other :slant italic))))
   `(gnus-splash ((,class (:foreground ,fg-alt))))
   ;;;; mu4e
   `(mu4e-cited-1-face ((,class (:foreground ,blue-alt))))
   `(mu4e-cited-2-face ((,class (:foreground ,red-alt))))
   `(mu4e-cited-3-face ((,class (:foreground ,green-alt))))
   `(mu4e-cited-4-face ((,class (:foreground ,magenta-alt))))
   `(mu4e-cited-5-face ((,class (:foreground ,cyan-alt))))
   `(mu4e-cited-6-face ((,class (:foreground ,blue-alt-other))))
   `(mu4e-cited-7-face ((,class (:foreground ,red-alt-other))))
   `(mu4e-compose-header-face ((,class (:foreground ,green-alt))))
   `(mu4e-compose-separator-face ((t (:inherit (mode-line)))))
   `(mu4e-context-face ((,class (:foreground ,blue :background ,bg-alt :weight bold))))
   `(mu4e-draft-face ((,class (:foreground ,yellow-alt-other))))
   `(mu4e-flagged-face ((,class (:foreground ,red-alt-other))))
   `(mu4e-footer-face ((,class (:foreground ,fg-alt))))
   `(mu4e-forwarded-face ((,class (:foreground ,cyan))))
   `(mu4e-header-face ((,class (:foreground ,fg-main))))
   `(mu4e-header-highlight-face ((t (:inherit (hl-line)))))
   `(mu4e-header-key-face ((,class (:foreground ,fg-dim :weight bold))))
   `(mu4e-header-marks-face ((,class (:foreground ,magenta))))
   `(mu4e-header-title-face ((,class (:foreground ,magenta-alt))))
   `(mu4e-header-value-face ((,class (:foreground ,magenta-alt-other))))
   `(mu4e-highlight-face ((,class (:background ,bg-main :foreground ,magenta-intense :weight bold))))
   `(mu4e-link-face ((t (:inherit (link)))))
   `(mu4e-modeline-face ((,class (:foreground ,cyan :background ,bg-alt :weight bold))))
   `(mu4e-moved-face ((,class (:foreground ,fg-alt :background ,bg-alt))))
   `(mu4e-ok-face ((,class (:foreground ,green-intense :weight bold))))
   `(mu4e-region-code ((t (:inherit (show-paren-match-expression)))))
   `(mu4e-replied-face ((,class (:foreground ,fg-dim))))
   `(mu4e-special-header-value-face ((,class (:foreground ,magenta-intense))))
   `(mu4e-system-face ((,class (:background ,bg-main :foreground ,fg-alt))))
   `(mu4e-title-face ((,class (:foreground ,fg-main :weight bold))))
   `(mu4e-unread-face ((,class (:foreground ,fg-main :weight bold))))
   `(mu4e-url-number-face ((,class (:foreground ,blue-alt-other :weight bold))))
   `(mu4e-view-body-face ((t (:inherit (default)))))
   `(mu4e-warning-face ((t (:inherit (warning)))))
   ;;;; generic message
   `(message-cited-text ((,class (:foreground ,red-alt))))
   `(message-header-cc ((,class (:foreground ,green-alt :weight bold))))
   `(message-header-name ((,class (:foreground ,fg-dim :weight bold))))
   `(message-header-newsgroups ((,class (:foreground ,yellow-alt :weight bold))))
   `(message-header-other ((,class (:foreground ,green-alt :weight bold))))
   `(message-header-subject ((,class (:foreground ,green-alt :weight bold))))
   `(message-header-to ((,class (:foreground ,green-alt :weight bold))))
   `(message-header-xheader ((,class (:foreground ,yellow-alt :weight bold))))
   `(message-mml ((,class (:foreground ,cyan))))
   `(message-separator ((,class (:background ,bg-alt :foreground ,fg-alt))))
   ;;;; elfeed
   `(elfeed-search-date-face ((t (:inherit (default)))))
   `(elfeed-search-title-face ((t (:inherit (default) :weight normal))))
   `(elfeed-search-unread-title-face ((t (:inherit (default) :weight bold))))
   `(elfeed-search-feed-face ((,class (:foreground ,blue))))
   `(elfeed-search-tag-face ((,class (:foreground ,cyan))))
   `(elfeed-log-debug-level-face ((t (:inherit (modus-theme-intense-bg-magenta)))))
   `(elfeed-log-error-level-face ((t (:inherit (modus-theme-intense-bg-red)))))
   `(elfeed-log-warn-level-face ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   `(elfeed-log-info-level-face ((t (:inherit (modus-theme-subtle-bg-cyan)))))
   ;;;; org-mode
   `(org-block ((,class (:background ,bg-main :foreground ,fg-main))))
   `(org-block-begin-line ((,class (:background ,bg-dim :foreground ,fg-alt))))
   `(org-block-end-line ((t (:inherit (org-block-begin-line)))))
   `(org-emphasis ((t (:inherit (italic)))))
   `(org-level-1 ((,class (:foreground ,fg-main :weight bold))))
   `(org-level-2 ((,class (:foreground ,magenta-alt-other :weight bold))))
   `(org-level-3 ((,class (:foreground ,blue-alt-other :weight bold))))
   `(org-level-4 ((,class (:foreground ,cyan-alt-other :weight bold))))
   `(org-level-5 ((,class (:foreground ,green-alt-other :weight bold))))
   `(org-level-6 ((,class (:foreground ,yellow-alt-other :weight bold))))
   `(org-level-7 ((,class (:foreground ,red-alt-other :weight bold))))
   `(org-level-8 ((,class (:foreground ,fg-alt :weight bold))))
   `(org-table ((,class (:foreground ,fg-dim))))
   `(org-todo ((t (:background ,bg-alt :foreground ,yellow-alt-other))))
   `(org-verbatim ((,class (:background ,bg-dim :foreground ,green))))
   ;;;; outline-mode
   `(outline-1 ((t (:inherit (org-level-1)))))
   `(outline-2 ((t (:inherit (org-level-2)))))
   `(outline-3 ((t (:inherit (org-level-3)))))
   `(outline-4 ((t (:inherit (org-level-4)))))
   `(outline-5 ((t (:inherit (org-level-5)))))
   `(outline-6 ((t (:inherit (org-level-6)))))
   `(outline-7 ((t (:inherit (org-level-7)))))
   `(outline-8 ((t (:inherit (org-level-8)))))
   ;;;; ivy
   `(ivy-cursor ((t (:inherit (cursor)))))
   `(ivy-grep-info ((t (:inherit (modus-theme-intense-bg-green)))))
   `(ivy-match-required-face ((t (:inherit (error)))))
   `(ivy-confirm-face ((t (:inherit (font-lock-variable-name-face)))))
   `(ivy-grep-line-number ((t (:inherit (line-number)))))
   `(ivy-current-match ((t (:inherit (modus-theme-intense-bg-green) :weight bold))))
   `(ivy-minibuffer-match-face-1 ((t (:inherit (modus-theme-subtle-bg-neutral)))))
   `(ivy-minibuffer-match-face-2 ((t (:inherit (modus-theme-subtle-bg-green)))))
   `(ivy-minibuffer-match-face-3 ((t (:inherit (modus-theme-subtle-bg-magenta)))))
   `(ivy-minibuffer-match-face-4 ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   `(ivy-remote ((t (:inherit (font-lock-function-name-face)))))
   `(ivy-org ((t (:inherit (default)))))
   ;;;; swiper
   `(swiper-line-face ((t (:inherit (ivy-current-match)))))
   `(swiper-background-match-face-1 ((t (:inherit (modus-theme-subtle-bg-neutral)))))
   `(swiper-background-match-face-2 ((t (:inherit (modus-theme-subtle-bg-magenta)))))
   `(swiper-background-match-face-3 ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   `(swiper-background-match-face-4 ((t (:inherit (modus-theme-subtle-bg-green)))))
   `(swiper-match-face-1 ((t (:inherit (modus-theme-intense-bg-neutral)))))
   `(swiper-match-face-2 ((t (:inherit (modus-theme-intense-bg-magenta)))))
   `(swiper-match-face-3 ((t (:inherit (modus-theme-intense-bg-yellow)))))
   `(swiper-match-face-4 ((t (:inherit (modus-theme-intense-bg-green)))))
   ;;;; visual-regexp
   `(vr/group-0 ((t (:inherit (modus-theme-intense-bg-cyan) :weight bold))))
   `(vr/group-1 ((t (:inherit (modus-theme-intense-bg-magenta) :weight bold))))
   `(vr/group-2 ((t (:inherit (modus-theme-intense-bg-blue) :weight bold))))
   `(vr/match-0 ((t (:inherit (modus-theme-subtle-bg-green)))))
   `(vr/match-1 ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   `(vr/match-separator-face ((t (:inherit (modus-theme-intense-bg-red)))))
   ;;;; undo-tree
   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,fg-main :weight bold))))
   `(undo-tree-visualizer-current-face ((,class (:foreground ,blue-intense))))
   `(undo-tree-visualizer-default-face ((,class (:foreground ,fg-alt))))
   `(undo-tree-visualizer-register-face ((,class (:foreground ,magenta-intense))))
   `(undo-tree-visualizer-unmodified-face ((,class (:foreground ,green-intense))))
   ;;;; whitespace-mode
   `(whitespace-space ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(whitespace-empty ((t (:inherit (modus-theme-intense-bg-magenta)))))
   `(whitespace-hspace ((t (whitespace-space))))
   `(whitespace-indentation ((t (:inherit (whitespace-space)))))
   `(whitespace-line ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   `(whitespace-newline ((t (:inherit (whitespace-space)))))
   `(whitespace-space-after-tab ((t (:inherit (modus-theme-subtle-bg-magenta)))))
   `(whitespace-space-before-tab ((t (:inherit (modus-theme-subtle-bg-yellow)))))
   `(whitespace-tab ((t (:inherit (whitespace-space)))))
   `(whitespace-trailing ((t (:inherit (modus-theme-intense-bg-red)))))
   `(whitespace-big-indent ((t (:inherit (modus-theme-intense-bg-red)))))
   ;;;; which-key
   `(which-key-key-face ((,class (:foreground ,blue-alt :weight bold))))
   `(which-key-separator-face ((,class (:foreground ,fg-dim))))
   `(which-key-note-face ((,class (:foreground ,fg-alt))))
   `(which-key-special-key-face ((,class (:foreground ,green-alt))))
   `(which-key-group-description-face ((,class (:foreground ,magenta-alt))))
   `(which-key-command-description-face ((,class (:foreground ,cyan-alt))))
   `(which-key-local-map-description-face ((,class (:foreground ,cyan-alt))))
   ;;;; emms
   `(emms-playlist-track-face ((,class (:foreground ,blue))))
   `(emms-playlist-selected-face ((,class (:foreground ,magenta :weight bold))))
   ;;;; eww
   `(eww-invalid-certificate ((t (:inherit (error)))))
   `(eww-valid-certificate ((t (:inherit (success)))))
   `(eww-form-checkbox ((,class (:box (:line-width 1 :color ,fg-inactive :style released-button) :background ,bg-inactive :foreground ,fg-main))))
   `(eww-form-file ((,class (:box (:line-width 1 :color ,fg-inactive :style released-button) :background ,bg-active :foreground ,fg-main))))
   `(eww-form-select ((t (:inherit (eww-form-checkbox)))))
   `(eww-form-submit ((t (:inherit (eww-form-file)))))
   `(eww-form-text ((,class (:box (:line-width 1 :color ,fg-inactive :style none) :background ,bg-active :foreground ,fg-active))))
   `(eww-form-textarea ((,class (:background ,bg-alt :foreground ,fg-main))))
   ;;;; company-mode
   `(company-preview ((t (:inherit (modus-theme-intense-bg-neutral)))))
   `(company-tooltip ((,class (:background ,bg-alt))))
   `(company-scrollbar-bg ((,class (:background ,bg-active))))
   `(company-scrollbar-fg ((,class (:background ,fg-active))))
   `(company-echo-common ((,class (:foreground ,magenta-alt-other))))
   `(company-preview-common ((,class (:foreground ,magenta-alt-other))))
   `(company-tooltip-common ((,class (:foreground ,magenta-alt-other))))
   `(company-tooltip-annotation ((,class (:foreground ,magenta-alt-other))))
   `(company-tooltip-selection ((t (:inherit (modus-theme-intense-bg-cyan)))))
   `(company-tooltip-mouse ((t (:inherit (modus-theme-intense-bg-blue)))))
   `(company-tooltip-search ((t (:inherit (modus-theme-subtle-bg-green)))))
   `(company-template-field ((t (:inherit (modus-theme-intense-bg-magenta)))))
   `(company-tooltip-search-selection ((t (:inherit (modus-theme-intense-bg-green)))))
   `(company-tooltip-common-selection ((,class (:foreground ,fg-main :weight bold))))
   `(company-tooltip-annotation-selection ((,class (:foreground ,fg-main :weight bold))))
   ;;;; fancy-dabbrev
   `(fancy-dabbrev-menu-face ((,class (:background ,bg-alt :foreground ,fg-alt))))
   `(fancy-dabbrev-preview-face ((,class (:underline (:color foreground-color :style line) :foreground ,fg-alt))))
   `(fancy-dabbrev-selection-face ((t (:inherit (modus-theme-intense-bg-cyan) :weight bold))))
   ;;;; rainbow-delimiters
   `(rainbow-delimiters-base-face ((,class (:foreground ,fg-main))))
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,green-alt-other))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,magenta-alt-other))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,cyan-alt-other))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,yellow-alt-other))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,blue-alt-other))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,green-alt))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,magenta-alt))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,cyan-alt))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,yellow-alt))))
   `(rainbow-delimiters-mismatched-face ((,class (:foreground ,red-alt :weight bold))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,red :weight bold))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
(file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'modus-vivendi)

;; modus-vivendi-theme.el ends here
