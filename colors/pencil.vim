" Vim Color File
" Name:       pencil.vim
" Version:    0.6
" Maintainer: github.com/reedes github.com/mattly
" License:    The MIT License (MIT)

" Original iA Writer colors, to use as a guide
" White           #F1F1F1
" OffWhiteIPad    #F5F2EC
" OffWhiteDemo    #F9F8F4
" Cursor          #20BBFC
" Selection       #B6D6FD
" SelectionNOS    #D4D4D4
" StatusBar       #EDEDED
" StatusBarBorder #D9D9D9   used for search too
" Text            #424242
" Blue            #B5D6FD
" Green           #30C798
" Blue2           #1DAEE4
" gray            #999999
" Red             #E32791
" UnfocusedText   #B8B8B8  or #A9A9A9 ?
" MenuSelected    #2C81FB
" MenuUnSelected  #545454
" MenuText        #F1F1F1
" LightKeyBg      #4B4B4B
" DarkKeyBg       #262626
" NearBlack       #181818
" SyntaxButton    #363738
" SearchHighlight #F3E430  yellow

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='pencil'

if ! exists("g:colors_focus")
  let g:colors_focus = 0
endif

if ! exists("g:pencil_higher_contrast_ui")
  let g:pencil_higher_contrast_ui = 0
endif

if ! exists("g:pencil_neutral_headings")
  let g:pencil_neutral_headings = 0
endif

" Colors
let s:black           = { "gui": "#212121", "cterm": "0"   }
let s:medium_gray     = { "gui": "#A9A9A9", "cterm": "243" }  " was #767676
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }
let s:light_black     = { "gui": "#424242", "cterm": "8"   }
let s:lighter_black   = { "gui": "#545454", "cterm": "240" }

if g:pencil_higher_contrast_ui == 0
  " darker shadow and whiter grays
  let s:subtle_black  = { "gui": "#262626", "cterm": "235" }
  let s:light_gray    = { "gui": "#D9D9D9", "cterm": "253" }
  let s:lighter_gray  = { "gui": "#E5E6E6", "cterm": "254" }
else
  " lighter shadows and darker grays
  let s:subtle_black  = { "gui": "#303030", "cterm": "236" }
  let s:light_gray    = { "gui": "#B2B2B2", "cterm": "249" }
  let s:lighter_gray  = { "gui": "#C6C6C6", "cterm": "251" }
endif

let s:pink            = { "gui": "#fb007a", "cterm": "9"   }
let s:dark_red        = { "gui": "#C30771", "cterm": "1"   }
let s:light_red       = { "gui": "#E32791", "cterm": "1"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }

let s:darker_blue     = { "gui": "#005F87", "cterm": "18"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#b6d6fd", "cterm": "153" }
let s:dark_cyan       = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }

let s:dark_green      = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }

let s:dark_purple     = { "gui": "#523C79", "cterm": "5"   }
let s:light_purple    = { "gui": "#6855DE", "cterm": "13"  }

let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }

if &background == "dark"
  let s:bg               = s:black
  let s:bg_subtle        = s:light_black
  let s:bg_very_subtle   = s:subtle_black
  let s:norm             = s:lighter_gray
  let s:norm_subtle      = s:light_gray
  let s:norm_very_subtle = s:light_black
  let s:purple           = s:light_purple
  let s:cyan             = s:light_cyan
  let s:green            = s:light_green
  let s:red              = s:light_red
  let s:visual           = s:lighter_black
else  " bg=light
  let s:bg               = s:white
  let s:bg_subtle        = s:light_gray
  let s:bg_very_subtle   = s:lighter_gray
  let s:norm             = s:light_black
  let s:norm_subtle      = s:lighter_black
  let s:norm_very_subtle = s:medium_gray
  let s:purple           = s:dark_purple
  let s:cyan             = s:dark_cyan
  let s:green            = s:dark_green
  let s:red              = s:dark_red
  let s:visual           = s:light_blue
endif

if g:pencil_neutral_headings == 1
  let s:head_a         = s:norm
  let s:head_b         = s:norm
  let s:head_c         = s:norm
else
  let s:head_a         = s:dark_blue
  let s:head_b         = s:blue
  let s:head_c         = s:dark_cyan
endif

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(dim_on_focus, group, style)
  if has_key(a:style, "fg")
    if g:colors_focus && a:dim_on_focus
      let l:guifg   = s:norm_very_subtle.gui
      let l:ctermfg = s:norm_very_subtle.cterm
    else
      let l:guifg   = a:style.fg.gui
      let l:ctermfg = a:style.fg.cterm
    endif
  else
    let l:guifg   = "NONE"
    let l:ctermfg = "NONE"
  endif
  execute "highlight" a:group
    \ "guifg="   l:guifg
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" l:ctermfg
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" common groups ================================================================
" (see `:h w18`)

call s:h(1, "Normal",        {"bg": s:bg, "fg": s:norm})
call s:h(0, "Cursor",        {"bg": s:blue, "fg": s:norm })
call s:h(1, "Comment",       {"fg": s:medium_gray, "gui": "italic", "cterm": "italic"})

call s:h(1, "Constant",      {"fg": s:cyan})
hi! link String           Constant
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant

call s:h(1, "Identifier",    {"fg": s:dark_blue})
hi! link Function         Identifier

call s:h(1, "Statement",     {"fg": s:green})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Operator         Statement
hi! link Keyword          Statement
hi! link Exception        Statement

call s:h(1, "PreProc",       {"fg": s:red})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h(1, "Type",          {"fg": s:purple})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h(1, "Special",       {"fg": s:pink})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link SpecialComment   Special
hi! link Debug            Special

call s:h(1, "Underlined",    {"fg": s:norm                      , "gui": "underline", "cterm": "underline"})
call s:h(1, "Ignore",        {"fg": s:bg                                                                  })
call s:h(1, "Error",         {"fg": s:actual_white, "bg": s:red , "gui": "bold"     , "cterm": "bold"     })
call s:h(1, "Todo",          {"fg": s:actual_white, "bg": s:pink, "gui": "bold"     , "cterm": "bold"     })

" ui chrome ====================================================================
" ordered according to `:help hitest.vim`

call s:h(1, "SpecialKey",    {"fg": s:light_green})
call s:h(1, "NonText",       {"fg": s:medium_gray})
call s:h(1, "Directory",     {"fg": s:dark_blue})
call s:h(1, "ErrorMsg",      {"fg": s:pink})
call s:h(0, "IncSearch",     {"bg": s:yellow, "fg": s:light_black})
call s:h(0, "Search",        {"bg": s:bg_subtle, "fg": s:norm})
call s:h(0, "MoreMsg",       {"fg": s:medium_gray, "gui": "bold", "cterm": "bold"})
hi! link ModeMsg MoreMsg
call s:h(1, "LineNr",        {"fg": s:medium_gray})
call s:h(0, "CursorLineNr",  {"fg": s:blue, "bg": s:bg_very_subtle})
call s:h(1, "Question",      {"fg": s:red})
call s:h(1, "StatusLine",    {"bg": s:bg_very_subtle})
hi! link Conceal Normal
call s:h(1, "StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:medium_gray})
call s:h(1, "VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h(1, "Title",         {"fg": s:dark_blue})
call s:h(0, "Visual",        {"bg": s:visual, "fg": s:norm})
call s:h(1, "VisualNOS",     {"bg": s:bg_subtle})
call s:h(1, "WarningMsg",    {"fg": s:red})
call s:h(1, "WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h(1, "Folded",        {"fg": s:medium_gray})
call s:h(1, "FoldColumn",    {"fg": s:medium_gray})
call s:h(1, "DiffAdd",       {"fg": s:green})
call s:h(1, "DiffDelete",    {"fg": s:red})
call s:h(1, "DiffChange",    {"fg": s:dark_yellow})
call s:h(1, "DiffText",      {"fg": s:dark_blue})
call s:h(1, "SignColumn",    {"fg": s:light_green})

if has("gui_running")
  call s:h(1, "SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h(1, "SpellCap",    {"gui": "underline", "sp": s:light_green})
  call s:h(1, "SpellRare",   {"gui": "underline", "sp": s:pink})
  call s:h(1, "SpellLocal",  {"gui": "underline", "sp": s:dark_green})
else
  call s:h(1, "SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h(1, "SpellCap",    {"cterm": "underline", "fg": s:light_green})
  call s:h(1, "SpellRare",   {"cterm": "underline", "fg": s:pink})
  call s:h(1, "SpellLocal",  {"cterm": "underline", "fg": s:dark_green})
endif
call s:h(0, "Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h(0, "PmenuSel",      {"fg": s:norm, "bg": s:blue})
hi! link PmenuSbar        Pmenu
hi! link PmenuThumb       Pmenu
call s:h(1, "TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h(1, "TabLineSel",    {"fg": s:blue, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h(1, "TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h(1, "CursorColumn",  {"bg": s:bg_very_subtle})
call s:h(1, "ColorColumn",   {"bg": s:bg_subtle})

if g:colors_focus
  " this is the focused line
  call s:h(0, "CursorLine",    {"fg": s:norm, "bg": s:bg})
else
  " the normal cursor line
  call s:h(1, "CursorLine",    {"bg": s:bg_very_subtle})
en

" remainder of syntax highlighting
call s:h(0, "MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h(1, "qfLineNr",      {"fg": s:medium_gray})

" hi helpHyperTextJump guifg=#5FAFD7 ctermfg=74

" HTML syntax
hi! link htmlTag          Special
hi! link htmlEndTag       htmlTag

hi! link htmlTagName      KeyWord
" html5 tags show up as htmlTagN
hi! link htmlTagN         Keyword

" HTML content
call s:h(1, "htmlH1",        {"fg": s:head_a, "gui": "bold,italic", "cterm": "bold"     })
call s:h(1, "htmlH2",        {"fg": s:head_a, "gui": "bold"       , "cterm": "bold"     })
call s:h(1, "htmlH3",        {"fg": s:head_b, "gui": "italic"     , "cterm": "italic"   })
call s:h(1, "htmlH4",        {"fg": s:head_b, "gui": "italic"     , "cterm": "italic"   })
call s:h(1, "htmlH5",        {"fg": s:head_c                                            })
call s:h(1, "htmlH6",        {"fg": s:head_c                                            })
call s:h(1, "htmlLink",      {"fg": s:blue  , "gui": "underline"  , "cterm": "underline"})
call s:h(1, "htmlItalic",    {                "gui": "italic"     , "cterm": "italic"   })
call s:h(1, "htmlBold",      {                "gui": "bold"       , "cterm": "bold"     })
call s:h(1, "htmlBoldItalic",{                "gui": "bold,italic", "cterm": "bold"     })
" hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE

" tpope/vim-markdown
hi! link markdownBlockquote         Normal
hi! link markdownCode               Normal
hi! link markdownCodeDelimiter      Normal
hi! link markdownEscape             Normal
hi! link markdownHeadingDelimiter   Normal
hi! link markdownHeadingRule        Normal
hi! link markdownLinkText           Normal
hi! link markdownListMarker         Normal
hi! link markdownOrderedListMarker  Normal
hi! link markdownRule               Normal
hi! link markdownUrlTitle           Normal
call s:h(1, "markdownBold",            {"fg": s:norm  , "gui": "bold"       , "cterm": "bold"  })
call s:h(1, "markdownBoldItalic",      {"fg": s:norm  , "gui": "bold,italic", "cterm": "bold"  })
call s:h(1, "markdownItalic",          {"fg": s:norm  , "gui": "italic"     , "cterm": "italic"})
call s:h(1, "markdownIdDeclaration",   {"fg": s:norm_subtle})
call s:h(1, "markdownUrl",             {"fg": s:medium_gray, "gui": "underline", "cterm": "underline"})
call s:h(1, "markdownId",              {"fg": s:medium_gray})
hi! link markdownLinkDelimiter      markdownId
hi! link markdownLinkTextDelimiter  markdownId
hi! link markdownUrlDelimiter       markdownId
hi! link markdownUrlTitleDelimiter  markdownId
call s:h(1, "markdownH1",              {"fg": s:head_a, "gui": "bold,italic", "cterm": "bold"  })
call s:h(1, "markdownH2",              {"fg": s:head_a, "gui": "bold"       , "cterm": "bold"  })
call s:h(1, "markdownH3",              {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h(1, "markdownH4",              {"fg": s:head_a, "gui": "italic"     , "cterm": "italic"})
call s:h(1, "markdownH5",              {"fg": s:head_a})
call s:h(1, "markdownH6",              {"fg": s:head_a})

" plasticboy/vim-markdown
hi! link mkdBlockQuote        Normal
hi! link mkdLineContinue      Normal
hi! link mkdLink              Normal
hi! link mkdListItem          Normal
hi! link mkdNonListItemBlock  Normal
hi! link mkdRule              Normal
hi! link mkdCode              Normal
hi! link mkdIndentCode        Normal
call s:h(1, "mkdID",             {"fg": s:medium_gray})
hi! link mkdDelimiter         mkdID
hi! link mkdLinkDef           mkdID
call s:h(1, "mkdUrl",            {"fg": s:medium_gray, "gui": "underline", "cterm": "underline"})

" gabrielelana/vim-markdown
hi! link markdownBlockquoteDelimiter  Normal
hi! link markdownInlineDelimiter      Normal
hi! link markdownItemDelimiter        Normal
hi! link markdownLinkText             Normal
hi! link markdownFencedCodeBlock      Normal
hi! link markdownInlineCode           Normal
call s:h(1, "markdownLinkReference",     {"fg": s:medium_gray})
hi! link markdownLinkTextContainer    markdownLinkReference
hi! link markdownLinkUrlContainer     markdownLinkReference
call s:h(1, "markdownLinkUrl",           {"fg": s:medium_gray, "gui": "underline", "cterm": "underline"})

" mattly/vim-markdown-enhancements
hi! link mmdFootnoteMarker            Normal
hi! link mmdTableAlign                Normal
hi! link mmdTableDelimiter            Normal
hi! link mmdTableHeadDelimiter        Normal
hi! link mmdTableHeader               Normal
hi! link mmdTableCaptionDelimiter     Normal
hi! link mmdTableCaption              Normal
call s:h(1, "mmdFootnoteDelimiter",      {"fg": s:medium_gray})

" Textile content
" https://github.com/timcharper/textile.vim/blob/master/syntax/textile.vim
"call s:h(1, "txtBold",                {"fg": s:norm  , "gui": "bold"       , "cterm": "bold"  })
"call s:h(1, "txtEmphasis",            {"fg": s:norm  , "gui": "italic"     , "cterm": "italic"})

" XML content
hi! link xmlTag                     htmlTag
hi! link xmlEndTag                  xmlTag
hi! link xmlTagName                 htmlTagName

" mhinz/vim-signify
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
" airblade/vim-gitgutter
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr
" chrisbra/changesPlugin
hi link ChangesSignTextAdd          LineNr
hi link ChangesSignTextDel          LineNr
hi link ChangesSignTextCh           LineNr
