This manual, written by Protesilaos Stavrou, describes the customisation
options for the `modus-operandi` and `modus-vivendi` themes, and provides
every other piece of information pertinent to them.  The document
corresponds to version 0.13.0, expected to be released in
late September 2020.  As such, the present entry should be considered a
work-in-progress.

Copyright (C) 2020 Free Software Foundation, Inc.

> Permission is granted to copy, distribute and/or modify this
> document under the terms of the GNU Free Documentation License,
> Version 1.3 or any later version published by the Free Software
> Foundation; with no Invariant Sections, with no Front-Cover Texts,
> and with no Back-Cover Texts.

[Info manual HTML version](https://protesilaos.com/modus-themes).


# Table of Contents

1.  [Overview](#h:f0f3dbcb-602d-40cf-b918-8f929c441baf)
    1.  [How do the themes look like](#h:69b92089-069c-4ba1-9d94-cc3415fc4f87)
2.  [Installation](#h:1af85373-7f81-4c35-af25-afcef490c111)
    1.  [Install from the archives](#h:c4b10085-149f-43e2-bd4d-347f33aee054)
    2.  [Install on GNU/Linux](#h:da640eb1-95dd-4e86-bb4e-1027b27885f0)
        1.  [Debian 11 Bullseye](#h:7e570360-9ee6-4bc5-8c04-9dc11418a3e4)
        2.  [GNU Guix](#h:a4ca52cd-869f-46a5-9e16-4d9665f5b88e)
3.  [Enable and load](#h:3f3c3728-1b34-437d-9d0c-b110f5b161a9)
    1.  [Load automatically](#h:1777c247-1b56-46b7-a4ce-54e720b33d06)
    2.  [Load at a given time or at sunset/sunrise](#h:4e936e31-e9eb-4b50-8fdd-45d827a03cca)
    3.  [Toggle between the themes on demand](#h:2a0895a6-3281-4e55-8aa1-8a737555821e)
    4.  [Configure options prior to loading](#org7fe1155)
4.  [Customisation Options](#h:bf1c82f2-46c7-4eb2-ad00-dd11fdd8b53f)
    1.  [Bold constructs](#h:b25714f6-0fbe-41f6-89b5-6912d304091e)
    2.  [Slanted constructs](#h:977c900d-0d6d-4dbb-82d9-c2aae69543d6)
    3.  [Syntax highlighting](#h:741379fe-7203-4dad-a7f8-ab71f61b43e6)
    4.  [Command prompts](#h:db5a9a7c-2928-4a28-b0f0-6f2b9bd52ba1)
    5.  [Mode line](#h:27943af6-d950-42d0-bc23-106e43f50a24)
    6.  [Completion UIs](#h:f1c20c02-7b34-4c35-9c65-99170efb2882)
    7.  [Fringes](#h:1983c3fc-74f6-44f3-b917-967c403bebae)
    8.  [Line highlighting](#h:1dba1cfe-d079-4c13-a810-f768e8789177)
    9.  [Matching parentheses](#h:e66a7e4d-a512-4bc7-9f86-fbbb5923bf37)
    10. [Diffs](#h:ea7ac54f-5827-49bd-b09f-62424b3b6427)
    11. [Org mode blocks](#h:b7e328c0-3034-4db7-9cdf-d5ba12081ca2)
    12. [Accented headings](#h:61b65cff-cc37-4c69-91d7-f818293139a0)
    13. [Section headings](#h:7649e1b4-7b1d-41bc-aebd-fdae585212d9)
    14. [Scaled headings](#h:075eb022-37a6-41a4-a040-cc189f6bfa1f)
        1.  [Scaled heading sizes](#h:6868baa1-beba-45ed-baa5-5fd68322ccb3)
    15. [Headings' font](#h:97caca76-fa13-456c-aef1-a2aa165ea274)
5.  [Advanced customisation (do-it-yourself)](#h:f4651d55-8c07-46aa-b52b-bed1e53463bb)
    1.  [Tweak colours (DIY)](#h:1487c631-f4fe-490d-8d58-d72ffa3bd474)
    2.  [Font configs (DIY)](#h:defcf4fc-8fa8-4c29-b12e-7119582cc929)
6.  [Face coverage](#h:a9c8f29d-7f72-4b54-b74b-ddefe15d6a19)
    1.  [Supported packages](#h:60ed4275-60d6-49f8-9287-9a64e54bea0e)
    2.  [Covered indirectly](#h:2cb359c7-3a84-4262-bab3-dcdc1d0034d7)
    3.  [Will NOT be supported](#h:6c6e8d94-6782-47fc-9eef-ad78671e9eea)
7.  [Notes for individual packages](#h:4c4d901a-84d7-4f20-bd99-0808c2b06eba)
    1.  [Note for powerline or spaceline](#h:9130a8ba-d8e3-41be-a58b-3cb1eb7b6d17)
    2.  [Note on shr colours](#h:4cc767dc-ffef-4c5c-9f10-82eb7b8921bf)
    3.  [Note for Helm grep](#h:d28879a2-8e4b-4525-986e-14c0f873d229)
    4.  [Note on vc-annotate-background-mode](#h:5095cbd1-e17a-419c-93e8-951c186362a3)
8.  [Contributing](#h:9c3cd842-14b7-44d7-84b2-a5c8bc3fc3b1)
    1.  [Sources of the themes](#h:89504f1c-c9a1-4bd9-ab39-78fd0eddb47c)
    2.  [Issues you can help with](#h:6536c8d5-3f98-43ab-a787-b94120e735e8)
    3.  [Merge requests](#h:111773e2-f26f-4b68-8c4f-9794ca6b9633)
9.  [Acknowledgements](#h:95c3da23-217f-404e-b5f3-56c75760ebcf)
10. [Meta](#h:13752581-4378-478c-af17-165b6e76bc1b)
11. [External projects (ports)](#h:21adb7c8-2208-41e8-803c-052e42e2c05d)
12. [GNU Free Documentation License](#h:3077c3d2-7f90-4228-8f0a-73124f4026f6)


<a id="h:f0f3dbcb-602d-40cf-b918-8f929c441baf"></a>

# Overview

The Modus themes are designed for accessible readability.  They conform
with the highest standard for colour contrast between any given
combination of background and foreground colours.  This corresponds to
the WCAG AAA standard, which specifies a minimum rate of distance in
relative luminance of 7:1.

Modus Operandi (`modus-operandi`) is a light theme, while Modus Vivendi
(`modus-vivendi`) is dark.  Each theme&rsquo;s colour palette is designed to
meet the needs of the numerous interfaces that are possible in the Emacs
computing environment.

The overarching objective of this project is to always offer accessible
colour combinations.  There shall never be a compromise on this
principle.  If there is an inescapable trade-off between readability and
stylistic considerations, we will always opt for the former.

To ensure that users have a consistently accessible experience, the
themes strive to achieve as close to full face coverage as possible
(see [Face coverage](#h:a9c8f29d-7f72-4b54-b74b-ddefe15d6a19)).

Starting with version 0.12.0, the themes are built into Emacs.  Their
version is that of the latest tagged release.  This is because I
(Protesilaos Stavrou) do not have push privileges to the Emacs
repository and must contact the mailing list for someone else to make
the changes for me.  As you can understand, it would be too tedious to
do this each time I make a commit.

If I am ever granted access to the Emacs git repo, I will make sure that
the built-in themes are synced with the `HEAD` of my `master` branch.


<a id="h:69b92089-069c-4ba1-9d94-cc3415fc4f87"></a>

## How do the themes look like

Check the [web page with the screen shots](https://gitlab.com/protesilaos/modus-themes/wikis/Screenshots).  There are lots of scenaria on
display that draw attention to details and important aspects in the
design of the themes.  They also showcase the numerous customisation
options.

[Customisation options](#h:bf1c82f2-46c7-4eb2-ad00-dd11fdd8b53f).


<a id="h:1af85373-7f81-4c35-af25-afcef490c111"></a>

# Installation

The Modus themes are built into Emacs&rsquo; development branch (`master`) which
corresponds to the nominal version 28.0.50.  Otherwise they can be
installed using Emacs&rsquo; package manager or manually from their code
repository.

Modus Operandi (light theme) and Modus Vivendi (dark) are normally
distributed as standalone packages in Emacs-specific archives: GNU ELPA,
MELPA, and MELPA Stable.  There also exist packages for GNU/Linux
distributions.


<a id="h:c4b10085-149f-43e2-bd4d-347f33aee054"></a>

## Install from the archives

`modus-operandi-theme` and `modus-vivendi-theme` are available from GNU
Elpa, Melpa, Melpa-Stable.

Prior to querying any package archive, make sure to have updated the
index, with `M-x package-refresh-contents`.  Then all you need to do is
type `M-x package-install` and specify the theme of your choice.

GNU Elpa and Melpa-Stable contain the last tagged release.  While Melpa
builds from the latest commit to the [Modus theme&rsquo;s Git repository](https://gitlab.com/protesilaos/modus-themes).


<a id="h:da640eb1-95dd-4e86-bb4e-1027b27885f0"></a>

## Install on GNU/Linux

The themes are also available from the archives of some GNU/Linux
distributions.  These should correspond to a tagged release rather than
building directly from the latest Git commit.  It all depends on the
distro&rsquo;s packaging policies.


<a id="h:7e570360-9ee6-4bc5-8c04-9dc11418a3e4"></a>

### Debian 11 Bullseye

The two themes are distributed as a single package for Debian and its
derivatives.  Currently in the unstable and testing suites and should be
available in time for Debian 11 Bullseye (next stable).

Get them with:

    sudo apt install elpa-modus-themes


<a id="h:a4ca52cd-869f-46a5-9e16-4d9665f5b88e"></a>

### GNU Guix

Users of either GuixSD (the distro) or just Guix (the package manager)
can get each theme as a standalone package.

    guix package -i modus-operandi-theme

And/or:

    guix package -i modus-vivendi-theme


<a id="h:3f3c3728-1b34-437d-9d0c-b110f5b161a9"></a>

# Enable and load

This section documents techniques on how to load the theme of your
choice and how to further control its initialisation.  It also includes
some sample code snippets that could help you in the task, especially if
you intend to use both Modus Operandi and Modus Vivendi.


<a id="h:1777c247-1b56-46b7-a4ce-54e720b33d06"></a>

## Load automatically

A simple way to load the theme from your Emacs initialisation file is to
include either of the following expressions:

    (load-theme 'modus-operandi t)          ; Light theme
    (load-theme 'modus-vivendi t)           ; Dark theme

Make sure to remove any other theme that is being loaded, otherwise you
might run into unexpected issues (you can also `M-x disable-theme`).


<a id="h:4e936e31-e9eb-4b50-8fdd-45d827a03cca"></a>

## Load at a given time or at sunset/sunrise

It is possible to schedule a time during the day at or after which a
given theme will be loaded.<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>

    ;; Light for the day
    (load-theme 'modus-operandi t t)
    (run-at-time "05:00" (* 60 60 24)
                 (lambda ()
                   (enable-theme 'modus-operandi)))
    
    ;; Dark for the night
    (load-theme 'modus-vivendi t t)
    (run-at-time "21:00" (* 60 60 24)
                 (lambda ()
                   (enable-theme 'modus-vivendi)))

A modified version of the above technique is to use the sunrise and
sunset as references, instead of specifying a fixed value.<sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup>
If you set `calendar-latitude` and `calendar-longitude` (defined in the
built-in `solar.el` library&#x2014;read it with `M-x find-library`), you can
automatically switch between both themes at the appropriate time-of-day.
Note that *those calendar variables need to be set before loading the
themes*.

    ;; Define coordinates
    (setq calendar-latitude 35.17
          calendar-longitude 33.36)
    
    ;; Light at sunrise
    (load-theme 'modus-operandi t t)
    (run-at-time (nth 1 (split-string (sunrise-sunset)))
                 (* 60 60 24)
                 (lambda ()
                   (enable-theme 'modus-operandi)))
    
    ;; Dark at sunset
    (load-theme 'modus-vivendi t t)
    (run-at-time (nth 4 (split-string (sunrise-sunset)))
                 (* 60 60 24)
                 (lambda ()
                   (enable-theme 'modus-vivendi)))

For the sake of completeness, the `load-theme` call in these snippets is
slightly different than the one shown in [Load automatically](#h:1777c247-1b56-46b7-a4ce-54e720b33d06), because it
does not enable the theme directly: the subsequent `enable-theme` does
that when needed.


<a id="h:2a0895a6-3281-4e55-8aa1-8a737555821e"></a>

## Toggle between the themes on demand

With both themes available, it is possible to design a simple command to
switch between them on demand.

    (defun modus-themes-toggle ()
      "Toggle between `modus-operandi' and `modus-vivendi' themes."
      (interactive)
      (if (eq (car custom-enabled-themes) 'modus-operandi)
          (progn
            (disable-theme 'modus-operandi)
            (load-theme 'modus-vivendi t))
        (disable-theme 'modus-vivendi)
        (load-theme 'modus-operandi t)))


<a id="org7fe1155"></a>

## Configure options prior to loading

If you plan to use both themes and wish to apply styles consistently
(see [Customisation Options](#h:bf1c82f2-46c7-4eb2-ad00-dd11fdd8b53f)), you could define wrapper functions around
the standard `load-theme` command.  These extend the simple function we
presented in [Toggle between the themes on demand](#h:2a0895a6-3281-4e55-8aa1-8a737555821e).

Here is a comprehensive setup (the values assigned to the variables are
just for the sake of this demonstration):<sup><a id="fnr.3" class="footref" href="#fn.3">3</a></sup>

    (defmacro modus-themes-format-sexp (sexp &rest objects)
      `(eval (read (format ,(format "%S" sexp) ,@objects))))
    
    (dolist (theme '("operandi" "vivendi"))
      (modus-themes-format-sexp
       (defun modus-%1$s-theme-load ()
         (setq modus-%1$s-theme-slanted-constructs t
               modus-%1$s-theme-bold-constructs t
               modus-%1$s-theme-fringes 'subtle ; {nil,'subtle,'intense}
               modus-%1$s-theme-mode-line '3d ; {nil,'3d,'moody}
               modus-%1$s-theme-faint-syntax nil
               modus-%1$s-theme-intense-hl-line nil
               modus-%1$s-theme-intense-paren-match nil
               modus-%1$s-theme-prompts nil ; {nil,'subtle,'intense}
               modus-%1$s-theme-completions 'moderate ; {nil,'moderate,'opinionated}
               modus-%1$s-theme-diffs nil ; {nil,'desaturated,'fg-only}
               modus-%1$s-theme-org-blocks 'greyscale ; {nil,'greyscale,'rainbow}
               modus-%1$s-theme-variable-pitch-headings t
               modus-%1$s-theme-rainbow-headings t
               modus-%1$s-theme-section-headings t
               modus-%1$s-theme-scale-headings t
               modus-%1$s-theme-scale-1 1.1
               modus-%1$s-theme-scale-2 1.15
               modus-%1$s-theme-scale-3 1.21
               modus-%1$s-theme-scale-4 1.27
               modus-%1$s-theme-scale-5 1.33)
         (load-theme 'modus-%1$s t))
       theme))
    
    (defun modus-themes-toggle ()
      "Toggle between `modus-operandi' and `modus-vivendi' themes."
      (interactive)
      (if (eq (car custom-enabled-themes) 'modus-operandi)
          (progn
            (disable-theme 'modus-operandi)
            (modus-vivendi-theme-load))
        (disable-theme 'modus-vivendi)
        (modus-operandi-theme-load)))


<a id="h:bf1c82f2-46c7-4eb2-ad00-dd11fdd8b53f"></a>

# Customisation Options

The Modus themes are highly configurable.  Though they should work well
without any further tweaks.

By default, all customisation options are set to `nil`.

All customisation options need to be evaluated before loading their
theme (see [Enable and load](#h:3f3c3728-1b34-437d-9d0c-b110f5b161a9)).


<a id="h:b25714f6-0fbe-41f6-89b5-6912d304091e"></a>

## Option for more bold constructs

Symbol names:

-   `modus-operandi-theme-bold-constructs`
-   `modus-vivendi-theme-bold-constructs`

Possible values:

1.  `nil` (default)
2.  `t`

Display several constructs in bold weight.  This concerns keywords and
other important aspects of code syntax.  It also affects certain mode
line indicators.

The default is to only use a bold weight when it is necessary.

Additionally and while not necessary, to define the precise weight for
bold constructs, you can change the typographic intensity of the `bold`
face.  Assuming your typeface of choice supports a &ldquo;semibold&rdquo; weight,
adding the following snippet to your init file should suffice:

    (set-face-attribute 'bold nil :weight 'semibold)

The standard is a bold weight.  It requires no further intervention.


<a id="h:977c900d-0d6d-4dbb-82d9-c2aae69543d6"></a>

## Option for more slanted constructs

Symbol names:

-   `modus-operandi-theme-slanted-constructs`
-   `modus-vivendi-theme-slanted-constructs`

Possible values:

1.  `nil` (default)
2.  `t`

Choose to render more faces in slanted text (italics).  This typically
affects documentation strings and code comments.

The default is to not use italics unless it is absolutely necessary.


<a id="h:741379fe-7203-4dad-a7f8-ab71f61b43e6"></a>

## Option for faint code syntax highlighting

Symbol names:

-   `modus-operandi-theme-faint-syntax`
-   `modus-vivendi-theme-faint-syntax`

Possible values:

1.  `nil` (default)
2.  `t`

Use less saturated colours in programming modes for highlighting code
syntax.  The default is to use saturated colours.

This option essentially affects the font-lock faces, so it may also have
effects in other places that are hard-wired to rely directly on
font-lock.  The author is aware of `vc-dir` as a case in point.


<a id="h:db5a9a7c-2928-4a28-b0f0-6f2b9bd52ba1"></a>

## Option for command prompt styles

Symbol names:

-   `modus-operandi-theme-prompts`
-   `modus-vivendi-theme-prompts`

Possible values:

1.  `nil` (default)
2.  `subtle`
3.  `intense`

The symbols &ldquo;subtle&rdquo; and &ldquo;intense&rdquo; will apply a combination of accented
background and foreground to the minibuffer and other REPL prompts (like
`M-x shell` and `M-x eshell`).  The difference between the two is that the
latter has a more pronounced/noticeable effect than the former.

The default is to not use any background for such prompts, while only
relying on an accented foreground colour.


<a id="h:27943af6-d950-42d0-bc23-106e43f50a24"></a>

## Option for mode line presentation

Symbol names:

-   `modus-operandi-theme-mode-line`
-   `modus-vivendi-theme-mode-line`

Possible values:

1.  `nil` (default)
2.  `3d`
3.  `moody`

The default value (`nil`) produces a two-dimensional effect both for the
active and inactive modelines.  The differences between the two are
limited to distinct shades of greyscale values, with the active being
more intense than the inactive.

A `3d` symbol will make the active modeline look like a three-dimensional
rectangle.  Inactive modelines remain 2D, though they are slightly toned
down relative to the default.  This aesthetic is the same as what you
get when you run Emacs without any customisations (`emacs -Q` on the
command line).

While `moody` removes all box effects from the modelines and applies
underline and overline properties instead.  It also tones down a bit the
inactive modelines.  This is meant to optimise things for use with the
[moody package](https://github.com/tarsius/moody), though it can work fine even without it.


<a id="h:f1c20c02-7b34-4c35-9c65-99170efb2882"></a>

## Option for completion framework aesthetics

Symbol names:

-   `modus-operandi-theme-completions`
-   `modus-vivendi-theme-completions`

Possible values:

1.  `nil` (default)
2.  `moderate`
3.  `opinionated`

This is a special option that has different effects depending on the
completion UI.  The interfaces can be grouped in two categories, based
on their default aesthetics: (i) those that only or mostly use
foreground colours for their interaction model, and (ii) those that
combine background and foreground values for some of their metaphors.
The former category encompasses the built-in tools, namely, Icomplete
and Ido, as well as third party packages like Orderless and Flx.  The
latter covers Helm, Ivy, Selectrum, and similar.

A value of `nil` will respect the metaphors of each completion framework.

The symbol `moderate` will apply a combination of background and
foreground that is fairly subtle.  For Icomplete and friends this
constitutes a departure from their default aesthetics, however the
difference is small.  While Helm et al will appear slightly different
than their original looks, as they are toned down a bit.

The symbol `opinionated` will apply colour combinations that refashion the
completion UI.  For the Icomplete camp this means that intense
background and foreground combinations are used: in effect their looks
emulate those of Ivy and co. in their original style.  Whereas the other
group of packages will revert to an even more nuanced aesthetic with
some additional changes to the choice of hues.

To appreciate the scope of this customisation option, you should spend
some time with every one of the `nil` (default), `moderate`, and `opinionated`
possibilities.


<a id="h:1983c3fc-74f6-44f3-b917-967c403bebae"></a>

## Option for fringe visibility

Symbol names:

-   `modus-operandi-theme-fringes`
-   `modus-vivendi-theme-fringes`

Possible values:

1.  `nil` (default)
2.  `subtle`
3.  `intense`

The &ldquo;subtle&rdquo; symbol will apply a greyscale background that is visible,
yet close enough to the main background colour.  While the &ldquo;intense&rdquo;
symbol will use a more noticeable greyscale background.

The default is to use the same colour as that of the main background,
meaning that the fringes are not obvious though they still occupy the
space given to them by `fringe-mode`.


<a id="h:1dba1cfe-d079-4c13-a810-f768e8789177"></a>

## Option for line highlighting (hl-line-mode)

Symbol names:

-   `modus-operandi-theme-intense-hl-line`
-   `modus-vivendi-theme-intense-hl-line`

Possible values:

1.  `nil` (default)
2.  `t`

Draw the current line of `hl-line-mode` or its global equivalent in a more
prominent background colour.  This would also affect several packages
that enable `hl-line-mode`, such as `elfeed` and `mu4e`.

The default is to use a more subtle grey.


<a id="h:e66a7e4d-a512-4bc7-9f86-fbbb5923bf37"></a>

## Option for parenthesis matching (show-paren-mode)

Symbol names:

-   `modus-operandi-theme-intense-paren-match`
-   `modus-vivendi-theme-intense-paren-match`

Possible values:

1.  `nil` (default)
2.  `t`

Apply a more intense background to the matching parentheses (or
delimiters).  This affects tools such as the built-in `show-paren-mode`.
The default is to use a subtle warm colour for the background of those
overlays.


<a id="h:ea7ac54f-5827-49bd-b09f-62424b3b6427"></a>

## Option for diff buffer looks

Symbol names:

-   `modus-operandi-theme-diffs`
-   `modus-vivendi-theme-diffs`

Possible values:

1.  `nil` (default)
2.  `desaturated`
3.  `fg-only`

By default the themes will apply richly coloured backgrounds to the
output of diffs, such as those of `diff-mode`, `ediff`, `smerge-mode`, and
`magit`.  These are colour combinations of an accented background and
foreground so that, for example, added lines have a pronounced green
background with an appropriate shade of green for the affected text.
Word-wise or &ldquo;refined&rdquo; changes follow this pattern but use different
shades of those colours to remain distinct.

A `desaturated` value tones down all relevant colour values.  It still
combines an accented background with an appropriate background, yet its
overall impression is very subtle.  Refined changes are a bit more
intense to fulfil their intended function, though still less saturated
than default.

While `fg-only` will remove all accented backgrounds and instead rely on
colour-coded text to denote changes.  For instance, added lines use an
intense green foreground, while their background is the same as the rest
of the buffer.  Word-wise highlights still use a background value which
is, nonetheless, more subtle than its default equivalent.

Concerning `magit`, an extra set of tweaks are introduced for the effect
of highlighting the current diff hunk, so as to remain consistent with
the overall experience of that mode.  Expect changes that are consistent
with the overall intent of the aforementioned.


<a id="h:b7e328c0-3034-4db7-9cdf-d5ba12081ca2"></a>

## Option for org-mode block styles

Symbol names:

-   `modus-operandi-theme-org-blocks`
-   `modus-vivendi-theme-org-blocks`

Possible values:

1.  `nil` (default)
2.  `greyscale`
3.  `rainbow`

The default is to use the same background as the rest of the buffer for
the contents of the block.

A value of `greyscale` will apply a subtle neutral grey background to the
block&rsquo;s contents.  It will also extend to the edge of the window the
background of the &ldquo;begin&rdquo; and &ldquo;end&rdquo; block delimiter lines (only relevant
for Emacs versions >= 27 where the &rsquo;extend&rsquo; keyword is recognised by
`set-face-attribute`).

While `rainbow` will instead use an accented background for the contents
of the block.  The exact colour will depend on the programming language
and is controlled by the `org-src-block-faces` variable (refer to the
theme&rsquo;s source code for the current association list).  This is most
suitable for users who work on literate programming documents that mix
and match several languages.

Note that the &ldquo;rainbow&rdquo; blocks may require you to also reload the
major-mode so that the colours are applied properly: use `M-x org-mode` or
`M-x org-mode-restart` to refresh the buffer.  Or start typing in each
code block (inefficient at scale, but it still works).


<a id="h:61b65cff-cc37-4c69-91d7-f818293139a0"></a>

## Option for colourful headings

Symbol names:

-   `modus-operandi-theme-rainbow-headings`
-   `modus-vivendi-theme-rainbow-headings`

Possible values:

1.  `nil` (default)
2.  `t`

Apply more saturated colours to headings in `org-mode` and `outline-mode`
while retaining all other heading properties.  The colours follow the
rainbow&rsquo;s spectrum.  In Org headings, some additional tweaks are made to
adapt keywords (like &ldquo;TODO&rdquo;) to the more vivid presentation.

The default uses a more frugal aesthetic for headings, letting their
bold typography and the nuances between the various heading levels
provide the elements of differentiation.


<a id="h:7649e1b4-7b1d-41bc-aebd-fdae585212d9"></a>

## Option for sectioned headings

Symbol names:

-   `modus-operandi-theme-section-headings`
-   `modus-vivendi-theme-section-headings`

Possible values:

1.  `nil` (default)
2.  `t`

Uses a background colour and an overline to mark section headings in
`org-mode` and `outline-mode`.  These attributes are applied in addition to
the existing foreground colour and the bold weight and can, therefore,
be combined with the &ldquo;rainbow&rdquo; headings option (as well as all the other
options pertaining to headings).  For Org several additional faces are
configured accordingly, such as `TODO` keywords which gain a box style.

The default is to use only a subtle foreground and a bold weight for
headings, while no boxes or {under,over}-line effects are present.

Note that the background for sectioned headings will extend to the edge
of the window.  To make it cover just the area occupied by the heading&rsquo;s
text, use this:

    (setq org-fontify-whole-heading-line nil)


<a id="h:075eb022-37a6-41a4-a040-cc189f6bfa1f"></a>

## Option for scaled headings

Symbol names:

-   `modus-operandi-theme-scale-headings`
-   `modus-vivendi-theme-scale-headings`

Possible values:

1.  `nil` (default)
2.  `t`

Make headings larger in height relative to the main text.  This is
noticeable in modes like Org.  The default is to use the same size for
headings and body copy.


<a id="h:6868baa1-beba-45ed-baa5-5fd68322ccb3"></a>

### Control the scale of headings

In addition to toggles for enabling scaled headings, users can also
specify a number of their own.

-   If it is a floating point, say, `1.5`, it is interpreted as a multiple
    of the base font size.
-   If it is an integer, it is read as an absolute font height.  The
    number is basically the point size multiplied by a hundred.  So if you
    want it to be `18pt` you must pass `180`.

Below are the variables in their default values, using the floating
point paradigm.  The numbers are very conservative, but you are free to
change them to your liking, such as `1.2`, `1.4`, `1.6`, `1.8`, `2.0`&#x2014;or use a
resource for finding a consistent scale:

    (setq modus-operandi-theme-scale-1 1.05
          modus-operandi-theme-scale-2 1.1
          modus-operandi-theme-scale-3 1.15
          modus-operandi-theme-scale-4 1.2
          modus-operandi-theme-scale-5 1.3)
    
    (setq modus-vivendi-theme-scale-1 1.05
          modus-vivendi-theme-scale-2 1.1
          modus-vivendi-theme-scale-3 1.15
          modus-vivendi-theme-scale-4 1.2
          modus-vivendi-theme-scale-5 1.3)

Note that in Org, scaling only increases the size of the heading, but
not of keywords that are added to it, like &ldquo;TODO&rdquo;.  This is outside the
control of the themes and I am not aware of any way to make such
keywords scale accordingly without patching upstream Org (see [issue 37](https://gitlab.com/protesilaos/modus-themes/-/issues/37)
in the themes&rsquo; issue tracker).


<a id="h:97caca76-fa13-456c-aef1-a2aa165ea274"></a>

## Option for variable-pitch font in headings

Symbol names:

-   `modus-operandi-theme-variable-pitch-headings`
-   `modus-vivendi-theme-variable-pitch-headings`

Possible values:

1.  `nil` (default)
2.  `t`

Choose to apply a proportionately spaced, else &ldquo;variable-pitch&rdquo;,
typeface to headings (such as in Org mode).  The default is to use the
main font family.

[Font configurations for Org (and others)](#h:defcf4fc-8fa8-4c29-b12e-7119582cc929).


<a id="h:f4651d55-8c07-46aa-b52b-bed1e53463bb"></a>

# Advanced customisation (do-it-yourself)

Unlike the predefined customisation options which follow a
straightforward pattern of allowing the user to quickly specify their
preference, the themes also provide a more flexible, albeit difficult,
mechanism to control things with precision (see [Customisation Options](#h:bf1c82f2-46c7-4eb2-ad00-dd11fdd8b53f)).

This section is of interest only to users who are prepared to maintain
their own local tweaks and who are willing to deal with any possible
incompatibilities between versioned releases of the themes.  As such,
they are labelled as &ldquo;do-it-yourself&rdquo; or &ldquo;DIY&rdquo;.


<a id="h:1487c631-f4fe-490d-8d58-d72ffa3bd474"></a>

## Full access to the themes' palette

The variables are:

-   `modus-operandi-theme-override-colors-alist`
-   `modus-vivendi-theme-override-colors-alist`

Users can specify an association list that maps the names of colour
variables to hexadecimal RGB values (in the form of `#RRGGBB`).  This
means that it is possible to override the entire palette or subsets
thereof (see the source code for the actual names and values).

Example:

    ;; Redefine the values of those three variables for the given theme
    (setq modus-vivendi-theme-override-colors-alist
          '(("magenta" . "#ffaabb")
            ("magenta-alt" . "#ee88ff")
            ("magenta-alt-other" . "#bbaaff")))

If you want to be creative, you can define a minor mode that refashions
the themes on demand.  The following is a minor mode that gets activated
on demand.  We combine it with the function to switch between Modus
Operandi and Modus Vivendi (see [Toggle between the themes on demand](#h:2a0895a6-3281-4e55-8aa1-8a737555821e) for
a basic command, and/or [Configure options prior to loading](#org7fe1155) for a more
comprehensive setup).

    (define-minor-mode modus-themes-alt-mode
      "Override Modus themes' palette variables with custom values.
    
    This is intended as a proof-of-concept.  It is, nonetheless, a
    perfectly accessible alternative, conforming with the design
    principles of the Modus themes.  It still is not as good as the
    default colours."
      :init-value nil
      :global t
      (if modus-themes-alt-mode
          (setq modus-operandi-theme-override-colors-alist
                '(("bg-main" . "#fefcf4")
                  ("bg-dim" . "#faf6ef")
                  ("bg-alt" . "#f7efe5")
                  ("bg-hl-line" . "#f4f0e3")
                  ("bg-active" . "#e8dfd1")
                  ("bg-inactive" . "#f6ece5")
                  ("bg-region" . "#c6bab1")
                  ("bg-header" . "#ede3e0")
                  ("bg-tab-bar" . "#dcd3d3")
                  ("bg-tab-active" . "#fdf6eb")
                  ("bg-tab-inactive" . "#c8bab8")
                  ("fg-unfocused" . "#55556f"))
                modus-vivendi-theme-override-colors-alist
                '(("bg-main" . "#100b17")
                  ("bg-dim" . "#161129")
                  ("bg-alt" . "#181732")
                  ("bg-hl-line" . "#191628")
                  ("bg-active" . "#282e46")
                  ("bg-inactive" . "#1a1e39")
                  ("bg-region" . "#393a53")
                  ("bg-header" . "#202037")
                  ("bg-tab-bar" . "#262b41")
                  ("bg-tab-active" . "#120f18")
                  ("bg-tab-inactive" . "#3a3a5a")
                  ("fg-unfocused" . "#9a9aab")))
        (setq modus-operandi-theme-override-colors-alist nil
              modus-vivendi-theme-override-colors-alist nil)))
    
    (defun modus-themes-toggle (&optional arg)
      "Toggle between `modus-operandi' and `modus-vivendi' themes.
    
    With optional \\[universal-argument] prefix, enable
    `modus-themes-alt-mode' for the loaded theme."
      (interactive "P")
      (if arg
          (modus-themes-alt-mode 1)
        (modus-themes-alt-mode -1))
      (if (eq (car custom-enabled-themes) 'modus-operandi)
          (progn
            (disable-theme 'modus-operandi)
            (load-theme 'modus-vivendi t))
        (disable-theme 'modus-vivendi)
        (load-theme 'modus-operandi t)))


<a id="h:defcf4fc-8fa8-4c29-b12e-7119582cc929"></a>

## Font configurations for Org (and others)

The themes are designed to cope well with mixed font settings.
Currently this applies to `org-mode` and `markdown-mode`.

In practice it means that the user can safely opt for a more
prose-friendly proportionately spaced typeface as their default, while
letting spacing-sensitive elements like tables and inline code to always
use a monospaced font, by inheriting from the `fixed-pitch` face.

Users can try the built-in `M-x variable-pitch-mode` to see the effect in
action.

To make everything use your desired font families, you need to configure
the `variable-pitch` (proportional spacing) and `fixed-pitch` (monospaced)
faces respectively.  It may also be convenient to set your main typeface
by configuring the `default` face in the same way.

Put something like this in your initialisation file (make sure to read
the documentation of `set-face-attribute`, with `M-x describe-function`):

    ;; Main typeface
    (set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 110)
    ;; Proportionately spaced typeface
    (set-face-attribute 'variable-pitch nil :family "DejaVu Serif" :height 110)
    ;; Monospaced typeface
    (set-face-attribute 'fixed-pitch nil :family "DejaVu Sans Mono" :height 110)

The value of the `:height` attribute essentially is the point size × 100.
So if you want to use a font at point size `11`, you set the height to
`110`.  Values do not need to be rounded to multiples of ten: the likes of
`115` are perfectly valid.

An alternative syntax, which the author of this documents prefers, is to
pass all typeface parameters directly to a `font` property.  Note that
here we use a standard point size.

    (set-face-attribute 'default nil :font "DejaVu Sans Mono-11")
    (set-face-attribute 'variable-pitch nil :font "DejaVu Serif-11")
    (set-face-attribute 'fixed-pitch nil :font "DejaVu Sans Mono-11")

For a more succinct setup, you can configure the same value for multiple
faces like this:

    (dolist (face '(default fixed-pitch))
      (set-face-attribute face nil :font "DejaVu Sans Mono-11"))


<a id="h:a9c8f29d-7f72-4b54-b74b-ddefe15d6a19"></a>

# Face coverage

Modus Operandi and Modus Vivendi try to provide as close to full face
coverage as possible.  This is necessary to ensure a consistently
accessible reading experience across all possible interfaces.


<a id="h:60ed4275-60d6-49f8-9287-9a64e54bea0e"></a>

## Full support for packages or face groups

This list will always be updated to reflect the current state of the
project.  The idea is to offer an overview of the known status of all
affected face groups.  The items with an appended asterisk `*` tend to
have lots of extensions, so the &ldquo;full support&rdquo; may not be 100% true…

-   ace-window
-   ag
-   alert
-   all-the-icons
-   annotate
-   anzu
-   apropos
-   apt-sources-list
-   artbollocks-mode
-   auctex and TeX
-   auto-dim-other-buffers
-   avy
-   bm
-   bongo
-   boon
-   breakpoint (provided by the built-in `gdb-mi.el` library)
-   buffer-expose
-   calendar and diary
-   calfw
-   centaur-tabs
-   change-log and log-view (such as `vc-print-log` and `vc-print-root-log`)
-   cider
-   circe
-   color-rg
-   column-enforce-mode
-   company-mode\*
-   company-posframe
-   compilation-mode
-   completions
-   counsel\*
-   counsel-css
-   counsel-notmuch
-   counsel-org-capture-string
-   cov
-   csv-mode
-   ctrlf
-   custom (`M-x customize`)
-   dap-mode
-   dashboard (emacs-dashboard)
-   deadgrep
-   debbugs
-   define-word
-   deft
-   dictionary
-   diff-hl
-   diff-mode
-   dim-autoload
-   dired
-   dired-async
-   dired-git
-   dired-git-info
-   dired-narrow
-   dired-subtree
-   diredfl
-   disk-usage
-   doom-modeline
-   dynamic-ruler
-   easy-jekyll
-   easy-kill
-   ebdb
-   ediff
-   eglot
-   el-search
-   eldoc-box
-   elfeed
-   elfeed-score
-   emms
-   enhanced-ruby-mode
-   epa
-   equake
-   erc
-   eros
-   ert
-   eshell
-   eshell-fringe-status
-   eshell-git-prompt
-   eshell-prompt-extras (epe)
-   evil\* (evil-mode)
-   evil-goggles
-   evil-visual-mark-mode
-   eww
-   eyebrowse
-   fancy-dabbrev
-   flycheck
-   flycheck-indicator
-   flycheck-posframe
-   flymake
-   flyspell
-   flyspell-correct
-   flx
-   freeze-it
-   frog-menu
-   focus
-   fold-this
-   font-lock (generic syntax highlighting)
-   forge
-   fountain (fountain-mode)
-   geiser
-   git-commit
-   git-gutter (and variants)
-   git-lens
-   git-rebase
-   git-timemachine
-   git-walktree
-   gnus
-   golden-ratio-scroll-screen
-   helm\*
-   helm-ls-git
-   helm-switch-shell
-   helm-xref
-   helpful
-   highlight-blocks
-   highlight-defined
-   highlight-escape-sequences (`hes-mode`)
-   highlight-indentation
-   highlight-numbers
-   highlight-symbol
-   highlight-tail
-   highlight-thing
-   hl-defined
-   hl-fill-column
-   hl-line-mode
-   hl-todo
-   hydra
-   hyperlist
-   ibuffer
-   icomplete
-   icomplete-vertical
-   ido-mode
-   iedit
-   iflipb
-   imenu-list
-   indium
-   info
-   info-colors
-   interaction-log
-   ioccur
-   isearch, occur, etc.
-   ivy\*
-   ivy-posframe
-   jira (org-jira)
-   journalctl-mode
-   js2-mode
-   julia
-   jupyter
-   kaocha-runner
-   keycast
-   line numbers (`display-line-numbers-mode` and global variant)
-   lsp-mode
-   lsp-ui
-   magit
-   magit-imerge
-   man
-   markdown-mode
-   markup-faces (`adoc-mode`)
-   mentor
-   messages
-   minibuffer-line
-   minimap
-   modeline
-   mood-line
-   moody
-   mu4e
-   mu4e-conversation
-   multiple-cursors
-   neotree
-   no-emoji
-   notmuch
-   num3-mode
-   nxml-mode
-   objed
-   orderless
-   org\*
-   org-journal
-   org-noter
-   org-pomodoro
-   org-recur
-   org-roam
-   org-superstar
-   org-table-sticky-header
-   org-treescope
-   origami
-   outline-mode
-   outline-minor-faces
-   package (`M-x list-packages`)
-   page-break-lines
-   paradox
-   paren-face
-   parrot
-   pass
-   persp-mode
-   perspective
-   phi-grep
-   phi-search
-   pkgbuild-mode
-   pomidor
-   powerline
-   powerline-evil
-   proced
-   prodigy
-   rainbow-blocks
-   rainbow-identifiers
-   rainbow-delimiters
-   rcirc
-   regexp-builder (also known as `re-builder`)
-   rg (rg.el)
-   ripgrep
-   rmail
-   ruler-mode
-   sallet
-   selectrum
-   semantic
-   sesman
-   shell-script-mode
-   show-paren-mode
-   side-notes
-   skewer-mode
-   smart-mode-line
-   smartparens
-   smerge
-   spaceline
-   speedbar
-   spell-fu
-   stripes
-   suggest
-   switch-window
-   swiper
-   swoop
-   sx
-   symbol-overlay
-   syslog-mode
-   table (built-in table.el)
-   telephone-line
-   term
-   tomatinho
-   transient (pop-up windows such as Magit&rsquo;s)
-   trashed
-   treemacs
-   tty-menu
-   tuareg
-   undo-tree
-   vc (built-in mode line status for version control)
-   vc-annotate (`C-x v g`)
-   vdiff
-   vimish-fold
-   visible-mark
-   visual-regexp
-   volatile-highlights
-   vterm
-   wcheck-mode
-   web-mode
-   wgrep
-   which-function-mode
-   which-key
-   whitespace-mode
-   window-divider-mode
-   winum
-   writegood-mode
-   woman
-   xah-elisp-mode
-   xref
-   xterm-color (and ansi-colors)
-   yaml-mode
-   yasnippet
-   ztree

Plus many other miscellaneous faces that are provided by the upstream
GNU Emacs distribution.


<a id="h:2cb359c7-3a84-4262-bab3-dcdc1d0034d7"></a>

## Covered indirectly

These do not require any extra styles because they are configured to
inherit from some basic faces.  Please confirm.

-   edit-indirect
-   php-mode
-   swift-mode


<a id="h:6c6e8d94-6782-47fc-9eef-ad78671e9eea"></a>

## Will NOT be supported

I have thus far identified a single package that does fit into the
overarching objective of this project: [solaire](https://github.com/hlissner/emacs-solaire-mode).  It basically tries to
cast a less intense background on the main file-visiting buffers, so
that secondary elements like sidebars can have the default (pure
white/black) background.

I will only cover this package if it ever supports the inverse effect:
less intense colours (but still accessible) for supportive interfaces
and the intended styles for the content you are actually working on.


<a id="h:4c4d901a-84d7-4f20-bd99-0808c2b06eba"></a>

# Notes for individual packages

This section covers information that may be of interest to users of
individual packages.


<a id="h:9130a8ba-d8e3-41be-a58b-3cb1eb7b6d17"></a>

## Note for powerline or spaceline

Both Powerline and Spaceline package users will likely need to use the
command `powerline-reset` whenever they make changes to their themes
and/or modeline setup.


<a id="h:4cc767dc-ffef-4c5c-9f10-82eb7b8921bf"></a>

## Note on shr colours

Emacs&rsquo; HTML rendering mechanism (`shr`) may need explicit configuration to
respect the theme&rsquo;s colours instead of whatever specifications the
webpage provides.  Consult `C-h v shr-use-colors`.


<a id="h:d28879a2-8e4b-4525-986e-14c0f873d229"></a>

## Note for Helm grep

There is one face from the Helm package that is meant to highlight the
matches of a grep or grep-like command (`ag` or `ripgrep`).  It is
`helm-grep-match`.  However, this face can only apply when the user does
not pass `--color=always` as a command-line option for their command.

Here is the docstring for that face, which is defined in the
`helm-grep.el` library (view a library with `M-x find-library`).

> Face used to highlight grep matches.  Have no effect when grep backend
> use &ldquo;&#x2013;color=&rdquo;

The user must either remove `--color` from the flags passed to the grep
function, or explicitly use `--color=never` (or equivalent).  Helm
provides user-facing customisation options for controlling the grep
function&rsquo;s parameters, such as `helm-grep-default-command` and
`helm-grep-git-grep-command`.

When `--color=always` is in effect, the grep output will use red text in
bold letter forms to present the matching part in the list of
candidates.  That style still meets the contrast ratio target of >= 7:1
(accessibility standard WCAG AAA), because it draws the reference to
ANSI colour number 1 (red) from the already-supported array of
`ansi-color-names-vector`.


<a id="h:5095cbd1-e17a-419c-93e8-951c186362a3"></a>

## Note on vc-annotate-background-mode

Due to the unique way `vc-annotate` (`C-x v g`) applies colours, support for
its background mode (`vc-annotate-background-mode`) is disabled at the
theme level.

Normally, such a drastic measure should not belong in a theme: assuming
the user&rsquo;s preferences is bad practice.  However, it has been deemed
necessary in the interest of preserving colour contrast accessibility
while still supporting a useful built-in tool.

If there actually is a way to avoid such a course of action, without
prejudice to the accessibility standard of this project, then please
report as much or send patches (see [Contributing](#h:9c3cd842-14b7-44d7-84b2-a5c8bc3fc3b1)).


<a id="h:9c3cd842-14b7-44d7-84b2-a5c8bc3fc3b1"></a>

# Contributing

This section documents the canonical sources of the themes and the ways
in which you can contribute to their ongoing development.


<a id="h:89504f1c-c9a1-4bd9-ab39-78fd0eddb47c"></a>

## Sources of the themes

The `modus-operandi` and `modus-vivendi` themes are built into Emacs.
Currently they are in the project&rsquo;s `master` branch, which is tracking the
nominal development release target of `28.0.50`.

The source code of the themes is [available on Gitlab](https://gitlab.com/protesilaos/modus-themes/), for the time
being.  A [mirror on Github](https://github.com/protesilaos/modus-themes/) is also on offer.

An HTML version of this manual is available as an extension to the
[author&rsquo;s personal website](https://protesilaos.com/modus-themes/) (does not rely on any non-free code).


<a id="h:6536c8d5-3f98-43ab-a787-b94120e735e8"></a>

## Issues you can help with

A few tasks you can help with:

-   Suggest refinements to packages that are covered.
-   Report packages not covered thus far.
-   Report bugs, inconsistencies, shortcomings.
-   Help expand the documentation of covered-but-not-styled packages.
-   Suggest refinements to the colour palette.
-   Help expand this document or any other piece of documentation.
-   Merge requests for code refinements.

[Patches require copyright assignment to the FSF](#h:111773e2-f26f-4b68-8c4f-9794ca6b9633).

It would be great if your feedback also includes some screenshots, GIFs,
or short videos, as well as further instructions to reproduce a given
setup.  Though this is not a requirement.

Whatever you do, bear in mind the overarching objective of the Modus
themes: to keep a contrast ratio that is greater or equal to 7:1 between
background and foreground colours.  If a compromise is ever necessary
between aesthetics and accessibility, it shall always be made in the
interest of the latter.


<a id="h:111773e2-f26f-4b68-8c4f-9794ca6b9633"></a>

## Patches require copyright assignment to the FSF

Code contributions are most welcome.  For any major edit (more than 15
lines, or so, in aggregate per person), you need to make a copyright
assignment to the Free Software Foundation.  This is necessary because
the themes are part of the upstream Emacs distribution: the FSF must at
all times be in a position to enforce the GNU General Public License.

Copyright assignment is a simple process.  Check the [request form](https://git.savannah.gnu.org/cgit/gnulib.git/tree/doc/Copyright/request-assign.future).  You
must write an email to the address mentioned in the form and then wait
for the FSF to send you a legal agreement.  Sign the document and file
it back to them.  This could all happen via email and take about a week.

You are encouraged to go through this process.  You only need to do it
once.  It will allow you to make contributions to Emacs in general.


<a id="h:95c3da23-217f-404e-b5f3-56c75760ebcf"></a>

# Acknowledgements

The Modus themes are a collective effort.  Every contribution counts.

Author/maintainer:

-   Protesilaos Stavrou

Code contributions:

-   Anders Johansson
-   Basil L. Contovounisios
-   Matthew Stevenson

Ideas and user feedback:

-   Aaron Jensen
-   Adam Spiers
-   Alex Peitsinis
-   Alexey Shmalko
-   Anders Johansson
-   André Alexandre Gomes
-   Arif Rezai
-   Basil L. Contovounisios
-   Damien Cassou
-   David Edmondson
-   Davor Rotim
-   Divan Santana
-   Gerry Agbobada
-   Gianluca Recchia
-   Len Trigg
-   Manuel Uberti
-   Mark Burton
-   Michael Goldenberg
-   Murilo Pereira
-   Nicolas De Jaeghere
-   Pierre Téchoueyres
-   Ryan Phillips
-   Shreyas Ragavan
-   Thibaut Verron
-   Trey Merkley
-   Uri Sharf
-   User &ldquo;Ben&rdquo;
-   User &ldquo;Fourchaux&rdquo;
-   User &ldquo;Fredrik&rdquo;
-   User &ldquo;Moesasji&rdquo;
-   User &ldquo;TheBlob42&rdquo;
-   User &ldquo;dinko&rdquo;
-   User &ldquo;doolio&rdquo;
-   User &ldquo;okamsn&rdquo;
-   User &ldquo;tycho garen&rdquo;
-   Vincent Foley

Packaging:

-   Dhavan Vaidya (Debian)
-   Stefan Kangas (core Emacs)
-   Stefan Monnier (GNU Elpa)

Inspiration for certain features:

-   Fabrice Niessen (leuven-theme)
-   Bozhidar Batsov (zenburn-theme)


<a id="h:13752581-4378-478c-af17-165b6e76bc1b"></a>

# Meta

If you are curious about the principles that govern the development of
this project read the essay [On the design of the Modus themes](https://protesilaos.com/codelog/2020-03-17-design-modus-themes-emacs/)
(2020-03-17).

Here are some more publications for those interested in the kind of work
that goes into this project:

-   [Modus Operandi theme subtle palette review](https://protesilaos.com/codelog/2020-05-10-modus-operandi-palette-review/) (2020-05-10)
-   [Modus Vivendi theme subtle palette review](https://protesilaos.com/codelog/2020-06-13-modus-vivendi-palette-review/) (2020-06-13)
-   [Modus themes: new &ldquo;faint syntax&rdquo; option](https://protesilaos.com/codelog/2020-07-04-modus-themes-faint-colours/) (2020-07-04)
-   [Modus themes: major review of &ldquo;nuanced&rdquo; colours](https://protesilaos.com/codelog/2020-07-08-modus-themes-nuanced-colours/) (2020-07-08)


<a id="h:21adb7c8-2208-41e8-803c-052e42e2c05d"></a>

# External projects (ports)

The present section documents projects that extend the scope of the
Modus themes.  The following list will be updated whenever relevant
information is brought to my attention.  If you already have or intend
to produce such a port, feel welcome [to contact me](https://protesilaos.com/contact).

-   **Modus exporter:** This is [an Elisp library written by Simon Pugnet](https://github.com/polaris64/modus-exporter).
    Licensed under the terms of the GNU General Public License.  It is
    meant to capture the colour values of the active Modus theme (Operandi
    or Vivendi) and output it as a valid theme for some other application.


<a id="h:3077c3d2-7f90-4228-8f0a-73124f4026f6"></a>

# GNU Free Documentation License

                    GNU Free Documentation License
                     Version 1.3, 3 November 2008
    
    
     Copyright (C) 2000, 2001, 2002, 2007, 2008 Free Software Foundation, Inc.
         <https://fsf.org/>
     Everyone is permitted to copy and distribute verbatim copies
     of this license document, but changing it is not allowed.
    
    0. PREAMBLE
    
    The purpose of this License is to make a manual, textbook, or other
    functional and useful document "free" in the sense of freedom: to
    assure everyone the effective freedom to copy and redistribute it,
    with or without modifying it, either commercially or noncommercially.
    Secondarily, this License preserves for the author and publisher a way
    to get credit for their work, while not being considered responsible
    for modifications made by others.
    
    This License is a kind of "copyleft", which means that derivative
    works of the document must themselves be free in the same sense.  It
    complements the GNU General Public License, which is a copyleft
    license designed for free software.
    
    We have designed this License in order to use it for manuals for free
    software, because free software needs free documentation: a free
    program should come with manuals providing the same freedoms that the
    software does.  But this License is not limited to software manuals;
    it can be used for any textual work, regardless of subject matter or
    whether it is published as a printed book.  We recommend this License
    principally for works whose purpose is instruction or reference.
    
    
    1. APPLICABILITY AND DEFINITIONS
    
    This License applies to any manual or other work, in any medium, that
    contains a notice placed by the copyright holder saying it can be
    distributed under the terms of this License.  Such a notice grants a
    world-wide, royalty-free license, unlimited in duration, to use that
    work under the conditions stated herein.  The "Document", below,
    refers to any such manual or work.  Any member of the public is a
    licensee, and is addressed as "you".  You accept the license if you
    copy, modify or distribute the work in a way requiring permission
    under copyright law.
    
    A "Modified Version" of the Document means any work containing the
    Document or a portion of it, either copied verbatim, or with
    modifications and/or translated into another language.
    
    A "Secondary Section" is a named appendix or a front-matter section of
    the Document that deals exclusively with the relationship of the
    publishers or authors of the Document to the Document's overall
    subject (or to related matters) and contains nothing that could fall
    directly within that overall subject.  (Thus, if the Document is in
    part a textbook of mathematics, a Secondary Section may not explain
    any mathematics.)  The relationship could be a matter of historical
    connection with the subject or with related matters, or of legal,
    commercial, philosophical, ethical or political position regarding
    them.
    
    The "Invariant Sections" are certain Secondary Sections whose titles
    are designated, as being those of Invariant Sections, in the notice
    that says that the Document is released under this License.  If a
    section does not fit the above definition of Secondary then it is not
    allowed to be designated as Invariant.  The Document may contain zero
    Invariant Sections.  If the Document does not identify any Invariant
    Sections then there are none.
    
    The "Cover Texts" are certain short passages of text that are listed,
    as Front-Cover Texts or Back-Cover Texts, in the notice that says that
    the Document is released under this License.  A Front-Cover Text may
    be at most 5 words, and a Back-Cover Text may be at most 25 words.
    
    A "Transparent" copy of the Document means a machine-readable copy,
    represented in a format whose specification is available to the
    general public, that is suitable for revising the document
    straightforwardly with generic text editors or (for images composed of
    pixels) generic paint programs or (for drawings) some widely available
    drawing editor, and that is suitable for input to text formatters or
    for automatic translation to a variety of formats suitable for input
    to text formatters.  A copy made in an otherwise Transparent file
    format whose markup, or absence of markup, has been arranged to thwart
    or discourage subsequent modification by readers is not Transparent.
    An image format is not Transparent if used for any substantial amount
    of text.  A copy that is not "Transparent" is called "Opaque".
    
    Examples of suitable formats for Transparent copies include plain
    ASCII without markup, Texinfo input format, LaTeX input format, SGML
    or XML using a publicly available DTD, and standard-conforming simple
    HTML, PostScript or PDF designed for human modification.  Examples of
    transparent image formats include PNG, XCF and JPG.  Opaque formats
    include proprietary formats that can be read and edited only by
    proprietary word processors, SGML or XML for which the DTD and/or
    processing tools are not generally available, and the
    machine-generated HTML, PostScript or PDF produced by some word
    processors for output purposes only.
    
    The "Title Page" means, for a printed book, the title page itself,
    plus such following pages as are needed to hold, legibly, the material
    this License requires to appear in the title page.  For works in
    formats which do not have any title page as such, "Title Page" means
    the text near the most prominent appearance of the work's title,
    preceding the beginning of the body of the text.
    
    The "publisher" means any person or entity that distributes copies of
    the Document to the public.
    
    A section "Entitled XYZ" means a named subunit of the Document whose
    title either is precisely XYZ or contains XYZ in parentheses following
    text that translates XYZ in another language.  (Here XYZ stands for a
    specific section name mentioned below, such as "Acknowledgements",
    "Dedications", "Endorsements", or "History".)  To "Preserve the Title"
    of such a section when you modify the Document means that it remains a
    section "Entitled XYZ" according to this definition.
    
    The Document may include Warranty Disclaimers next to the notice which
    states that this License applies to the Document.  These Warranty
    Disclaimers are considered to be included by reference in this
    License, but only as regards disclaiming warranties: any other
    implication that these Warranty Disclaimers may have is void and has
    no effect on the meaning of this License.
    
    2. VERBATIM COPYING
    
    You may copy and distribute the Document in any medium, either
    commercially or noncommercially, provided that this License, the
    copyright notices, and the license notice saying this License applies
    to the Document are reproduced in all copies, and that you add no
    other conditions whatsoever to those of this License.  You may not use
    technical measures to obstruct or control the reading or further
    copying of the copies you make or distribute.  However, you may accept
    compensation in exchange for copies.  If you distribute a large enough
    number of copies you must also follow the conditions in section 3.
    
    You may also lend copies, under the same conditions stated above, and
    you may publicly display copies.
    
    
    3. COPYING IN QUANTITY
    
    If you publish printed copies (or copies in media that commonly have
    printed covers) of the Document, numbering more than 100, and the
    Document's license notice requires Cover Texts, you must enclose the
    copies in covers that carry, clearly and legibly, all these Cover
    Texts: Front-Cover Texts on the front cover, and Back-Cover Texts on
    the back cover.  Both covers must also clearly and legibly identify
    you as the publisher of these copies.  The front cover must present
    the full title with all words of the title equally prominent and
    visible.  You may add other material on the covers in addition.
    Copying with changes limited to the covers, as long as they preserve
    the title of the Document and satisfy these conditions, can be treated
    as verbatim copying in other respects.
    
    If the required texts for either cover are too voluminous to fit
    legibly, you should put the first ones listed (as many as fit
    reasonably) on the actual cover, and continue the rest onto adjacent
    pages.
    
    If you publish or distribute Opaque copies of the Document numbering
    more than 100, you must either include a machine-readable Transparent
    copy along with each Opaque copy, or state in or with each Opaque copy
    a computer-network location from which the general network-using
    public has access to download using public-standard network protocols
    a complete Transparent copy of the Document, free of added material.
    If you use the latter option, you must take reasonably prudent steps,
    when you begin distribution of Opaque copies in quantity, to ensure
    that this Transparent copy will remain thus accessible at the stated
    location until at least one year after the last time you distribute an
    Opaque copy (directly or through your agents or retailers) of that
    edition to the public.
    
    It is requested, but not required, that you contact the authors of the
    Document well before redistributing any large number of copies, to
    give them a chance to provide you with an updated version of the
    Document.
    
    
    4. MODIFICATIONS
    
    You may copy and distribute a Modified Version of the Document under
    the conditions of sections 2 and 3 above, provided that you release
    the Modified Version under precisely this License, with the Modified
    Version filling the role of the Document, thus licensing distribution
    and modification of the Modified Version to whoever possesses a copy
    of it.  In addition, you must do these things in the Modified Version:
    
    A. Use in the Title Page (and on the covers, if any) a title distinct
       from that of the Document, and from those of previous versions
       (which should, if there were any, be listed in the History section
       of the Document).  You may use the same title as a previous version
       if the original publisher of that version gives permission.
    B. List on the Title Page, as authors, one or more persons or entities
       responsible for authorship of the modifications in the Modified
       Version, together with at least five of the principal authors of the
       Document (all of its principal authors, if it has fewer than five),
       unless they release you from this requirement.
    C. State on the Title page the name of the publisher of the
       Modified Version, as the publisher.
    D. Preserve all the copyright notices of the Document.
    E. Add an appropriate copyright notice for your modifications
       adjacent to the other copyright notices.
    F. Include, immediately after the copyright notices, a license notice
       giving the public permission to use the Modified Version under the
       terms of this License, in the form shown in the Addendum below.
    G. Preserve in that license notice the full lists of Invariant Sections
       and required Cover Texts given in the Document's license notice.
    H. Include an unaltered copy of this License.
    I. Preserve the section Entitled "History", Preserve its Title, and add
       to it an item stating at least the title, year, new authors, and
       publisher of the Modified Version as given on the Title Page.  If
       there is no section Entitled "History" in the Document, create one
       stating the title, year, authors, and publisher of the Document as
       given on its Title Page, then add an item describing the Modified
       Version as stated in the previous sentence.
    J. Preserve the network location, if any, given in the Document for
       public access to a Transparent copy of the Document, and likewise
       the network locations given in the Document for previous versions
       it was based on.  These may be placed in the "History" section.
       You may omit a network location for a work that was published at
       least four years before the Document itself, or if the original
       publisher of the version it refers to gives permission.
    K. For any section Entitled "Acknowledgements" or "Dedications",
       Preserve the Title of the section, and preserve in the section all
       the substance and tone of each of the contributor acknowledgements
       and/or dedications given therein.
    L. Preserve all the Invariant Sections of the Document,
       unaltered in their text and in their titles.  Section numbers
       or the equivalent are not considered part of the section titles.
    M. Delete any section Entitled "Endorsements".  Such a section
       may not be included in the Modified Version.
    N. Do not retitle any existing section to be Entitled "Endorsements"
       or to conflict in title with any Invariant Section.
    O. Preserve any Warranty Disclaimers.
    
    If the Modified Version includes new front-matter sections or
    appendices that qualify as Secondary Sections and contain no material
    copied from the Document, you may at your option designate some or all
    of these sections as invariant.  To do this, add their titles to the
    list of Invariant Sections in the Modified Version's license notice.
    These titles must be distinct from any other section titles.
    
    You may add a section Entitled "Endorsements", provided it contains
    nothing but endorsements of your Modified Version by various
    parties--for example, statements of peer review or that the text has
    been approved by an organization as the authoritative definition of a
    standard.
    
    You may add a passage of up to five words as a Front-Cover Text, and a
    passage of up to 25 words as a Back-Cover Text, to the end of the list
    of Cover Texts in the Modified Version.  Only one passage of
    Front-Cover Text and one of Back-Cover Text may be added by (or
    through arrangements made by) any one entity.  If the Document already
    includes a cover text for the same cover, previously added by you or
    by arrangement made by the same entity you are acting on behalf of,
    you may not add another; but you may replace the old one, on explicit
    permission from the previous publisher that added the old one.
    
    The author(s) and publisher(s) of the Document do not by this License
    give permission to use their names for publicity for or to assert or
    imply endorsement of any Modified Version.
    
    
    5. COMBINING DOCUMENTS
    
    You may combine the Document with other documents released under this
    License, under the terms defined in section 4 above for modified
    versions, provided that you include in the combination all of the
    Invariant Sections of all of the original documents, unmodified, and
    list them all as Invariant Sections of your combined work in its
    license notice, and that you preserve all their Warranty Disclaimers.
    
    The combined work need only contain one copy of this License, and
    multiple identical Invariant Sections may be replaced with a single
    copy.  If there are multiple Invariant Sections with the same name but
    different contents, make the title of each such section unique by
    adding at the end of it, in parentheses, the name of the original
    author or publisher of that section if known, or else a unique number.
    Make the same adjustment to the section titles in the list of
    Invariant Sections in the license notice of the combined work.
    
    In the combination, you must combine any sections Entitled "History"
    in the various original documents, forming one section Entitled
    "History"; likewise combine any sections Entitled "Acknowledgements",
    and any sections Entitled "Dedications".  You must delete all sections
    Entitled "Endorsements".
    
    
    6. COLLECTIONS OF DOCUMENTS
    
    You may make a collection consisting of the Document and other
    documents released under this License, and replace the individual
    copies of this License in the various documents with a single copy
    that is included in the collection, provided that you follow the rules
    of this License for verbatim copying of each of the documents in all
    other respects.
    
    You may extract a single document from such a collection, and
    distribute it individually under this License, provided you insert a
    copy of this License into the extracted document, and follow this
    License in all other respects regarding verbatim copying of that
    document.
    
    
    7. AGGREGATION WITH INDEPENDENT WORKS
    
    A compilation of the Document or its derivatives with other separate
    and independent documents or works, in or on a volume of a storage or
    distribution medium, is called an "aggregate" if the copyright
    resulting from the compilation is not used to limit the legal rights
    of the compilation's users beyond what the individual works permit.
    When the Document is included in an aggregate, this License does not
    apply to the other works in the aggregate which are not themselves
    derivative works of the Document.
    
    If the Cover Text requirement of section 3 is applicable to these
    copies of the Document, then if the Document is less than one half of
    the entire aggregate, the Document's Cover Texts may be placed on
    covers that bracket the Document within the aggregate, or the
    electronic equivalent of covers if the Document is in electronic form.
    Otherwise they must appear on printed covers that bracket the whole
    aggregate.
    
    
    8. TRANSLATION
    
    Translation is considered a kind of modification, so you may
    distribute translations of the Document under the terms of section 4.
    Replacing Invariant Sections with translations requires special
    permission from their copyright holders, but you may include
    translations of some or all Invariant Sections in addition to the
    original versions of these Invariant Sections.  You may include a
    translation of this License, and all the license notices in the
    Document, and any Warranty Disclaimers, provided that you also include
    the original English version of this License and the original versions
    of those notices and disclaimers.  In case of a disagreement between
    the translation and the original version of this License or a notice
    or disclaimer, the original version will prevail.
    
    If a section in the Document is Entitled "Acknowledgements",
    "Dedications", or "History", the requirement (section 4) to Preserve
    its Title (section 1) will typically require changing the actual
    title.
    
    
    9. TERMINATION
    
    You may not copy, modify, sublicense, or distribute the Document
    except as expressly provided under this License.  Any attempt
    otherwise to copy, modify, sublicense, or distribute it is void, and
    will automatically terminate your rights under this License.
    
    However, if you cease all violation of this License, then your license
    from a particular copyright holder is reinstated (a) provisionally,
    unless and until the copyright holder explicitly and finally
    terminates your license, and (b) permanently, if the copyright holder
    fails to notify you of the violation by some reasonable means prior to
    60 days after the cessation.
    
    Moreover, your license from a particular copyright holder is
    reinstated permanently if the copyright holder notifies you of the
    violation by some reasonable means, this is the first time you have
    received notice of violation of this License (for any work) from that
    copyright holder, and you cure the violation prior to 30 days after
    your receipt of the notice.
    
    Termination of your rights under this section does not terminate the
    licenses of parties who have received copies or rights from you under
    this License.  If your rights have been terminated and not permanently
    reinstated, receipt of a copy of some or all of the same material does
    not give you any rights to use it.
    
    
    10. FUTURE REVISIONS OF THIS LICENSE
    
    The Free Software Foundation may publish new, revised versions of the
    GNU Free Documentation License from time to time.  Such new versions
    will be similar in spirit to the present version, but may differ in
    detail to address new problems or concerns.  See
    https://www.gnu.org/licenses/.
    
    Each version of the License is given a distinguishing version number.
    If the Document specifies that a particular numbered version of this
    License "or any later version" applies to it, you have the option of
    following the terms and conditions either of that specified version or
    of any later version that has been published (not as a draft) by the
    Free Software Foundation.  If the Document does not specify a version
    number of this License, you may choose any version ever published (not
    as a draft) by the Free Software Foundation.  If the Document
    specifies that a proxy can decide which future versions of this
    License can be used, that proxy's public statement of acceptance of a
    version permanently authorizes you to choose that version for the
    Document.
    
    11. RELICENSING
    
    "Massive Multiauthor Collaboration Site" (or "MMC Site") means any
    World Wide Web server that publishes copyrightable works and also
    provides prominent facilities for anybody to edit those works.  A
    public wiki that anybody can edit is an example of such a server.  A
    "Massive Multiauthor Collaboration" (or "MMC") contained in the site
    means any set of copyrightable works thus published on the MMC site.
    
    "CC-BY-SA" means the Creative Commons Attribution-Share Alike 3.0 
    license published by Creative Commons Corporation, a not-for-profit 
    corporation with a principal place of business in San Francisco, 
    California, as well as future copyleft versions of that license 
    published by that same organization.
    
    "Incorporate" means to publish or republish a Document, in whole or in 
    part, as part of another Document.
    
    An MMC is "eligible for relicensing" if it is licensed under this 
    License, and if all works that were first published under this License 
    somewhere other than this MMC, and subsequently incorporated in whole or 
    in part into the MMC, (1) had no cover texts or invariant sections, and 
    (2) were thus incorporated prior to November 1, 2008.
    
    The operator of an MMC Site may republish an MMC contained in the site
    under CC-BY-SA on the same site at any time before August 1, 2009,
    provided the MMC is eligible for relicensing.
    
    
    ADDENDUM: How to use this License for your documents
    
    To use this License in a document you have written, include a copy of
    the License in the document and put the following copyright and
    license notices just after the title page:
    
        Copyright (c)  YEAR  YOUR NAME.
        Permission is granted to copy, distribute and/or modify this document
        under the terms of the GNU Free Documentation License, Version 1.3
        or any later version published by the Free Software Foundation;
        with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts.
        A copy of the license is included in the section entitled "GNU
        Free Documentation License".
    
    If you have Invariant Sections, Front-Cover Texts and Back-Cover Texts,
    replace the "with...Texts." line with this:
    
        with the Invariant Sections being LIST THEIR TITLES, with the
        Front-Cover Texts being LIST, and with the Back-Cover Texts being LIST.
    
    If you have Invariant Sections without Cover Texts, or some other
    combination of the three, merge those two alternatives to suit the
    situation.
    
    If your document contains nontrivial examples of program code, we
    recommend releasing these examples in parallel under your choice of
    free software license, such as the GNU General Public License,
    to permit their use in free software.


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> Contributed on Reddit by user b3n
<https://www.reddit.com/r/emacs/comments/gdtqov/weekly_tipstricketc_thread/fq9186h/>.

<sup><a id="fn.2" href="#fnr.2">2</a></sup> Contributed directly by André Alexandre Gomes <https://gitlab.com/aadcg>.

<sup><a id="fn.3" href="#fnr.3">3</a></sup> The `defmacro` and `dolist`
method was contributed on Reddit by user b3n
<https://www.reddit.com/r/emacs/comments/gqsz8u/weekly_tipstricketc_thread/fsfakhg/>.