" Vim Color File
" Name:       pencil.vim
" Version:    0.1
" Maintainer: github.com/reedes
"
" based on bubblegum and others
"

" set background=light
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='pencil'

" Colors
let s:black           = { "gui": "#212121", "cterm": "0"   }
let s:light_black     = { "gui": "#424242", "cterm": "8"   }
let s:white           = { "gui": "#F1F1F1", "cterm": "15"  }
let s:actual_white    = { "gui": "#FFFFFF", "cterm": "231" }

let s:pink            = { "gui": "#C30771", "cterm": "9"   }
let s:red             = { "gui": "#C30771", "cterm": "1"   }
let s:orange          = { "gui": "#D75F5F", "cterm": "167" }

let s:blue            = { "gui": "#20BBFC", "cterm": "4"   }
let s:light_blue      = { "gui": "#b6d6fd", "cterm": "12"  }
let s:dark_blue       = { "gui": "#008EC4", "cterm": "31"  }

let s:green           = { "gui": "#10A778", "cterm": "2"   }

let s:purple          = { "gui": "#8F8FB7", "cterm": "5"   }

let s:dark_yellow     = { "gui": "#DFCF1D", "cterm": "3"   }


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
call s:h("Comment",   {"fg": s:green, "gui": "italic"})

" yellow (was #c033ff)
call s:h("Constant", {"fg": s:dark_yellow})
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
hi! link Condiitonal  Statement
hi! link Repeat       Statement
hi! link Label        Statement
hi! link Operator     Statement
hi! link Keyword      Statement
hi! link Exception    Statement

" green
call s:h("PreProc", {"fg": s:green})
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

hi SpecialKey     guifg=#87D787                   ctermfg=114
hi NonText        guifg=DarkRed                   ctermfg=244
hi Directory      guifg=#8787AF                   ctermfg=103
hi ErrorMsg       guifg=#FF8787    guibg=bg   ctermfg=210    ctermbg=bg
hi IncSearch      guifg=fg      guibg=#F3E430  gui=none  ctermfg=231    ctermbg=168     cterm=none
hi Search         guifg=fg      guibg=#D9D9D9  gui=none  ctermfg=16     ctermbg=179     cterm=none
hi MoreMsg        guifg=DarkBlue              ctermfg=darkblue
hi ModeMsg        guifg=DarkGreen             ctermfg=darkgreen
hi LineNr         guifg=#D9D9D9  guibg=NONE               ctermfg=244    ctermbg=none
hi CursorLineNr   guifg=#20BBFC  guibg=NONE               ctermfg=244    ctermbg=none
hi Question       guifg=DarkRed                          ctermfg=38
hi StatusLine      guifg=fg      guibg=#D9D9D9    gui=none ctermfg=fg  ctermbg=bg cterm=none
hi StatusLineNC    guifg=grey50  guibg=#D9D9D9    gui=none ctermfg=fg ctermbg=bg cterm=none
hi VertSplit      guifg=fg       guibg=#D9D9D9    gui=none ctermfg=244    ctermbg=bg    cterm=none
hi Title          guifg=DarkBlue                  ctermfg=109
hi Visual         guifg=fg       guibg=#b6d6fd            ctermfg=fg     ctermbg=117
hi VisualNOS      guifg=fg       guibg=#D4D4D4            ctermfg=bg     ctermbg=244
hi WarningMsg     guifg=#AF87D7               ctermfg=140
hi WildMenu       guifg=#F1F1F1  guibg=#262626    gui=none  ctermfg=71     ctermbg=bg    cterm=none
hi Folded          guifg=#808080    guibg=bg       ctermfg=244    ctermbg=bg
hi FoldColumn      guifg=#5FD7AF    guibg=bg       ctermfg=79     ctermbg=bg
hi DiffAdd       guifg=#10A778    guibg=NONE     ctermfg=darkgreen  ctermbg=bg
hi DiffDelete    guifg=#C30771    guibg=NONE     ctermfg=darkred    ctermbg=bg
hi DiffChange    guifg=#F3E430    guibg=NONE     ctermfg=darkyellow ctermbg=bg
hi DiffText      guifg=#008EC4    guibg=NONE     ctermfg=darkblue   ctermbg=bg
hi SignColumn      guifg=#5FD7AF    guibg=bg       ctermfg=79     ctermbg=bg
" hi Conceal
hi SpellBad      guifg=fg         guibg=bg    gui=undercurl   guisp=#cc0000 ctermfg=210    ctermbg=bg      cterm=underline
hi SpellCap      guifg=fg         guibg=bg    gui=undercurl   guisp=#22cc22 ctermfg=174    ctermbg=bg      cterm=underline
hi SpellRare     guifg=fg         guibg=bg    gui=undercurl                 ctermfg=181    ctermbg=bg      cterm=underline
hi SpellLocal    guifg=fg         guibg=bg    gui=undercurl                 ctermfg=180    ctermbg=bg      cterm=underline
hi Pmenu          guifg=#F1F1F1  guibg=#545454              ctermfg=fg     ctermbg=bg
hi PmenuSel       guifg=#F1F1F1  guibg=#2C81FB              ctermfg=231    ctermbg=244
hi PmenuSbar      guifg=#F1F1F1  guibg=#545454              ctermfg=231    ctermbg=244
hi PmenuThumb     guifg=#F1F1F1  guibg=#545454
hi TabLine         guifg=#F1F1F1 guibg=#545454    gui=none ctermfg=fg  ctermbg=bg cterm=none
hi TabLineSel      guifg=#F1F1F1 guibg=#2C81FB    gui=none ctermfg=253 ctermbg=238 cterm=none
hi TabLineFill     guifg=#F1F1F1 guibg=#181818    gui=none ctermfg=fg  ctermbg=bg cterm=none
hi CursorColumn  guibg=#E5E6E6                gui=none  ctermbg=253    cterm=none
hi CursorLine    guibg=#E5E6E6                gui=none  ctermbg=253    cterm=none
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

