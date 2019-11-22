# vim-colors-pencil

> A light (and dark) color scheme for Vim inspired by iA Writer

![markdown-example](http://i.imgur.com/BYLMdx5.jpg)

## Features

The _pencil_ color scheme takes its inspiration from iA Writer, an elegant
word processor available on the iOS and OSX platforms.

This Vim color scheme features:

* Subtle indicators of changes in the gutter for [Signify][sig], [gitgutter][gg], etc.
* Use for both code and prose, though it’s definitely geared towards the latter
* Light and dark background variants
* iTerm color scheme [available][it] for using this color scheme with terminal-based Vim
* Support for [tpope/vim-markdown][tm], [plasticboy/vim-markdown][pm], and
  [gabrielelana/vim-markdown][gm]
* Support for the [bling/vim-airline][ba] status bar plugin
* Support for Vim’s Conceal feature to hide `_` and `*` markup for
  \_*italic*\_, \*\*__bold__\*\* and \*\*\*___bold italic___\*\*\* styled text in Markdown

[tm]: http://github.com/tpope/vim-markdown
[pm]: http://github.com/plasticboy/vim-markdown
[ba]: https://github.com/bling/vim-airline
[gm]: https://github.com/gabrielelana/vim-markdown

## Requirements

Currently requires vim >= 7.0

## Installation

For a basic install simply copy the color scheme file to your
`~/.vim/colors` directory.

For full support in which the airline theme is available, install using
Pathogen, Vundle, Neobundle, or your favorite Vim package manager.

## Configuration

### Contrast

If you’re looking for greater contrast, set the following global in your
`.vimrc`:

```vim
let g:pencil_higher_contrast_ui = 0   " 0=low (def), 1=high
```

It currently only affects the blacks and grays.

### Headings color

When using a filetype of markdown, the ‘#’ heading text is shaded dark
blue by default. This compensates for the lack of a visual cue found in iA
Writer where the heading indicators are inside the left margin.

If you’re looking for neutral heading colors:

```vim
let g:pencil_neutral_headings = 1   " 0=blue (def), 1=normal
```

### Code background color

Similar to the rendered markdown found on GitHub, `inline` and `fenced`
code blocks will have a subtle gray background.

If you’re looking for neutral code background:

```vim
let g:pencil_neutral_code_bg = 1   " 0=gray (def), 1=normal
```

See `g:pencil_higher_contrast_ui` above for adjusting the code background
contrast.

### Gutter Color

For users of [Signify][sig] or [gitgutter][gg], indicators will be subtle
monochrome by default. If you prefer colored indicators, set the following
global:

```vim
let g:pencil_gutter_color = 1      " 0=mono (def), 1=color
```

[sig]: https://github.com/mhinz/vim-signify
[gg]: https://github.com/airblade/vim-gitgutter

### Curled Underline for Spelling Highlights

You can choose between `undercurl` and `underline` in highlighting
misspelled words.

```vim
let g:pencil_spell_undercurl = 1       " 0=underline, 1=undercurl (def)
```

Non-spell underlines remain non-curled.

### Terminal Italics

If you're using Vim in the terminal and your terminal supports italics, you
can opt-in to italic support for some syntax highlighting, such as
comments, by setting the following global:

```vim
let g:pencil_terminal_italics = 1
```

### Airline Theme

![airline-example](http://i.imgur.com/V39pwZq.png)

A matching theme for the [Airline][al] status bar plugin is available.
Enable by adding to your `.vimrc`:

```vim
let g:airline_theme = 'pencil'
```

[al]: https://github.com/bling/vim-airline

### Concealing \_\_styling markup\_\_ in Markdown

The _pencil_ color scheme supports the highlighting groups in the
[tpope/vim-markdown][tm] syntax plugin, to take advantage of Vim’s Conceal
feature to hide `_` and `*` markup for \_*italic*\_, \*\*__bold__\*\* and
\*\*\*___bold italic___\*\*\* styled text in Markdown

See the [vim-pencil][pn] plugin for details on automatically enabling this
feature.

For more details on Vim’s Conceal feature, see:

```vim
:help conceallevel
:help concealcursor
```

[tm]: http://github.com/tpope/vim-markdown

## Usage

Just like any other color scheme:

```vim
:colorscheme pencil
```

You can toggle between the light and dark variants:

```vim
:set background=dark
:set background=light
```

Like any other color scheme, you can add these commands to your `.vimrc`.

## Font choices

iA Writer uses a typeface called ‘Nitti Light’ by Blue Monday. ($)

Free alternatives with **bold** and _italic_ support include:

* [Anonymous Pro](https://www.google.com/fonts/specimen/Anonymous+Pro) (serif)
* [Courier Prime](http://quoteunquoteapps.com/courierprime/) (serif)
* [Cousine](http://www.google.com/fonts/specimen/Cousine)
* [DejaVu Sans Mono](http://dejavu-fonts.org/wiki/Download)
* [Fantasque Sans Mono](http://openfontlibrary.org/en/font/fantasque-sans-mono)
* [Liberation](https://fedorahosted.org/liberation-fonts/)
* [Luxi Mono Regular](http://www.fontsquirrel.com/fonts/Luxi-Mono) (serif)
* [Ubuntu Mono](https://www.google.com/fonts/specimen/Ubuntu+Mono)

Cousine is a good match for Nitti Light.

## See also

* [mattly/iterm-colors-pencil][it] - terminal support for mutt, tmux and iTerm
* [gummesson/term-colors-pencil][tcp] - terminal support for urxvt and termite
* [mattly/atom-colors-pencil-light][ap] - Atom version of the pencil color scheme
* [nickburlett/vim-colors-stylus][vcs] - a fork, with a variation on pencil's colors

[it]: https://github.com/mattly/iterm-colors-pencil
[tcp]: https://github.com/gummesson/term-colors-pencil
[ap]: https://github.com/mattly/atom-colors-pencil-light
[vcs]: https://github.com/nickburlett/vim-colors-stylus

If you find this colorscheme useful, you may want to check out these
plugins by [@reedes][re]:

* [vim-lexical][lx] - building on Vim’s spell-check and thesaurus/dictionary completion
* [vim-litecorrect][lc] - lightweight auto-correction for Vim
* [vim-one][vo] - make use of Vim’s _+clientserver_ capabilities
* [vim-pencil][pn] - rethinking Vim as a tool for writers
* [vim-textobj-quote][qu] - extends Vim to support typographic (‘curly’) quotes
* [vim-textobj-sentence][ts] - improving on Vim's native sentence motion command
* [vim-thematic][th] - modify Vim’s appearance to suit your task and environment
* [vim-wheel][wh] - screen-anchored cursor movement for Vim
* [vim-wordy][wo] - uncovering usage problems in writing
* [vim-wordchipper][wc] - power tool for shredding text in Insert mode

[re]: https://github.com/reedes
[lx]: http://github.com/reedes/vim-lexical
[lc]: http://github.com/reedes/vim-litecorrect
[vo]: http://github.com/reedes/vim-one
[pn]: http://github.com/reedes/vim-pencil
[ts]: http://github.com/reedes/vim-textobj-sentence
[qu]: http://github.com/reedes/vim-textobj-quote
[th]: http://github.com/reedes/vim-thematic
[wh]: http://github.com/reedes/vim-wheel
[wo]: http://github.com/reedes/vim-wordy
[wc]: http://github.com/reedes/vim-wordchipper

The [README](https://github.com/reedes/vim-thematic) in
_thematic_ has more details on setting up emulation of iA Writer.

## Contributors

Thanks to those who have helped improve the _pencil_ color scheme:

* [@mattly](https://github.com/mattly)
* [@tamagokun](https://github.com/tamagokun)
* [@gorodinskiy](https://github.com/gorodinskiy)

## Future development

If you’ve spotted a problem or have an idea on improving this color
scheme, please post it to the github project issue page.

<!-- vim: set tw=74 :-->
