" Vim Color File
" Name:       pencil.vim
" Version:    0.1
" Maintainer: github.com/reedes github.com/mattly

hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='pencil'

" Colors
let s:black           = { "gui": "#212121", "cterm": "0"   }
let s:light_black     = { "gui": "#424242", "cterm": "8"   }
let s:medium_grey     = { "gui": "#808080", "cterm": "240" }
let s:light_grey      = { "gui": "#D9D9D9", "cterm": "253" }
let s:lighter_grey    = { "gui": "#E5E6E6", "cterm": "254" }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }

let s:pink            = { "gui": "#fb007a", "cterm": "9"   }
let s:red             = { "gui": "#C30771", "cterm": "1"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }

let s:blue            = { "gui": "#20BBFC", "cterm": "12"  }
let s:light_blue      = { "gui": "#b6d6fd", "cterm": "153" }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "4"   }
let s:cyan            = { "gui": "#20A5BA", "cterm": "6"   }
let s:light_cyan      = { "gui": "#4FB8CC", "cterm": "14"  }

let s:green           = { "gui": "#10A778", "cterm": "2"   }
let s:light_green     = { "gui": "#5FD7A7", "cterm": "10"  }
let s:purple          = { "gui": "#523C79", "cterm": "5"   }
let s:yellow          = { "gui": "#F3E430", "cterm": "11"  }
let s:dark_yellow     = { "gui": "#A89C14", "cterm": "3"   }



" maybe pursue something like this: https://github.com/noahfrederick/vim-hemisu/
"let s:iaWhite           = { 'gui': '#F1F1F1' }
"let s:iaOffWhiteIPad    = { 'gui': '#F5F2EC' }
"let s:iaOffWhiteDemo    = { 'gui': '#F9F8F4' }
"let s:iaCursor          = { 'gui': '#20BBFC' }
"let s:iaSelection       = { 'gui': '#B6D6FD' }
"let s:iaSelectionNOS    = { 'gui': '#D4D4D4' }
"let s:iaStatusBar       = { 'gui': '#EDEDED' }
"let s:iaStatusBarBorder = { 'gui': '#D9D9D9' }   used for search too
"let s:iaText            = { 'gui': '#424242' }
"let s:iaBlue            = { 'gui': '#B5D6FD' }
"let s:iaGreen           = { 'gui': '#30C798' }   darkened to: #10A778
"let s:iaBlue2           = { 'gui': '#1DAEE4' }   darkened to: #008EC4
"let s:iaGrey            = { 'gui': '#999999' }   lightened to: #D9D9D9
"let s:iaRed             = { 'gui': '#E32791' }   darkened to: #C30771
"let s:iaUnfocusedText   = { 'gui': '#B8B8B8' }
"let s:iaMenuSelected    = { 'gui': '#2C81FB' }
"let s:iaMenuUnSelected  = { 'gui': '#545454' }
"let s:iaMenuText        = { 'gui': '#F1F1F1' }
"let s:iaLightKeyBg      = { 'gui': '#4B4B4B' }
"let s:iaDarkKeyBg       = { 'gui': '#262626' }
"let s:iaNearBlack       = { 'gui': '#181818' }
"let s:iaSyntaxButton    = { 'gui': '#363738' }
"let s:iaSearchHighlight = { 'gui': '#F3E430' }  yellow
" Purple: #8F8FB7
" Headings: #4242FF

if &background == "dark"
  let s:bg              = s:black
  let s:norm            = s:white
else
  let s:bg              = s:white
  let s:norm            = s:light_black
endif

function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" common groups ================================================================
" (see `:h w18`)

call s:h("Normal",    {"bg": s:bg, "fg": s:norm})
call s:h("Cursor",    {"bg": s:blue, "fg": s:norm })
call s:h("Comment",   {"fg": s:medium_grey, "gui": "italic"})

" yellow
call s:h("Constant", {"fg": s:green})
hi! link String       Constant
hi! link Character    Constant
hi! link Number       Constant
hi! link Boolean      Constant
hi! link Float        Constant

" pink
call s:h("Identifier", {"fg": s:pink})
hi! link Function     Identifier

" blue
call s:h("Statement", {"fg": s:dark_blue})
hi! link Conditonal  Statement
hi! link Repeat       Statement
hi! link Label        Statement
hi! link Operator     Statement
hi! link Keyword      Statement
hi! link Exception    Statement

" green
call s:h("PreProc", {"fg": s:cyan})
hi! link Include      PreProc
hi! link Include      Define
hi! link Include      Macro
hi! link Include      PreCondit

" purple
call s:h("Type", {"fg": s:purple})
hi! link StorageClass Type
hi! link Structure    Type
hi! link Typedef      Type

" red
call s:h("Special", {"fg": s:red})
hi! link Special      Special
hi! link SpecialChar  Special
hi! link Tag          Special
hi! link Delimiter    Special
hi! link SpecialComment Special
hi! link Debug        Special

call s:h("Underlined", {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore", {"fg": s:bg})
call s:h("Error",  {"fg": s:actual_white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",   {"fg": s:actual_white, "bg": s:pink, "gui": "bold", "cterm": "bold"})

" ui chrome ====================================================================
" ordered according to `:help hitest.vim`

call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:medium_grey})
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:pink})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:norm})
call s:h("Search",        {"bg": s:yellow, "fg": s:norm})
call s:h("MoreMsg",       {"fg": s:medium_grey, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:light_grey})
call s:h("CursorLineNr",  {"fg": s:blue, "bg": s:lighter_grey})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:light_grey})
call s:h("StatusLineNC",  {"bg": s:light_grey, "fg": s:medium_grey})
call s:h("VertSplit",     {"bg": s:light_grey, "fg": s:light_grey})
call s:h("Title",         {"fg": s:dark_blue})
call s:h("Visual",        {"bg": s:light_blue})
call s:h("VisualNOS",     {"bg": s:light_grey})
call s:h("WarningMsg",    {"fg": s:red})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:medium_grey})
call s:h("FoldColumn",    {"fg": s:light_green})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:dark_yellow})
call s:h("DiffText",      {"fg": s:dark_blue})
call s:h("SignColumn",    {"fg": s:light_green})
" hi Conceal
hi SpellBad      guifg=fg         guibg=bg    gui=undercurl   guisp=#cc0000 ctermfg=210    ctermbg=bg      cterm=underline
hi SpellCap      guifg=fg         guibg=bg    gui=undercurl   guisp=#22cc22 ctermfg=174    ctermbg=bg      cterm=underline
hi SpellRare     guifg=fg         guibg=bg    gui=undercurl                 ctermfg=181    ctermbg=bg      cterm=underline
hi SpellLocal    guifg=fg         guibg=bg    gui=undercurl                 ctermfg=180    ctermbg=bg      cterm=underline
call s:h("Pmenu",         {"fg": s:norm, "bg": s:light_grey})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:blue})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:light_grey})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:light_grey})
call s:h("TabLine",       {"fg": s:norm, "bg": s:light_grey})
call s:h("TabLineSel",    {"fg": s:norm, "bg": s:blue})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:light_grey})
call s:h("CursorColumn",  {"bg": s:lighter_grey})
call s:h("CursorLine",    {"bg": s:lighter_grey})
hi ColorColumn     guifg=#5FD7AF    guibg=#D9D9D9                 ctermbg=79


" remainder of syntax highlighting
hi MatchParen     guifg=fg        guibg=#F7DF94   ctermfg=16     ctermbg=72
hi vimFold           guifg=#808080 ctermfg=244
hi vimCommentTitle   guifg=fg      ctermfg=fg
hi helpHyperTextJump guifg=#5FAFD7 ctermfg=74

hi htmlItalic     guifg=fg      guibg=NONE gui=italic      ctermfg=38  ctermbg=NONE cterm=bold
hi htmlBold       guifg=fg      guibg=NONE gui=bold        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlBoldItalic guifg=fg      guibg=NONE gui=bold,italic ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH1         guifg=#226292 guibg=NONE gui=bold,italic ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH2         guifg=#226282 guibg=NONE gui=bold        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH3         guifg=#325272 guibg=NONE gui=italic      ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH4         guifg=#325262 guibg=NONE gui=NONE        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH5         guifg=#424252 guibg=NONE gui=NONE        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH6         guifg=#424242 guibg=NONE gui=NONE        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlLink       guifg=#424242 guibg=NONE gui=NONE        ctermfg=185 ctermbg=NONE cterm=NONE
hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE
hi htmlTagName    guifg=fg      guibg=NONE gui=NONE        ctermfg=182 ctermbg=NONE cterm=NONE
hi link htmlTag         Keyword
hi link htmlEndTag      Identifier
hi link htmlTagName     Conditional

" tpope/vim-markdown
" Needed to retain the syntax highlighting for code
" TODO support for plasticboy/vim-markdown as well
hi markdownHeadingDelimiter  guifg=#424242
hi markdownRule              guifg=#424242
hi markdownIdDeclaration     guifg=#424242
hi markdownId                guifg=#999999
hi markdownIdDelimiter       guifg=#999999
hi markdownLinkTextDelimiter guifg=#999999
hi markdownLinkDelimiter     guifg=#999999
hi markdownUrl               guifg=#999999

hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier

" Signify, git-gutter
" We're not defaulting to diff, as these are meant to be subtle
highlight SignifySignAdd    guifg=#99DD99 guibg=NONE  cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete guifg=#FFCCCC guibg=NONE  cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange guifg=#CCCCFF guibg=NONE  cterm=bold ctermbg=237  ctermfg=227

highlight GitGutterAdd          guifg=#99DD99 guibg=NONE  cterm=bold ctermbg=237  ctermfg=119    
highlight GitGutterDelete       guifg=#FFCCCC guibg=NONE  cterm=bold ctermbg=237  ctermfg=167  
highlight GitGutterChange       guifg=#CCCCFF guibg=NONE  cterm=bold ctermbg=237  ctermfg=227   
highlight GitGutterChangeDelete guifg=#CCCCFF guibg=NONE  cterm=bold ctermbg=237  ctermfg=227

