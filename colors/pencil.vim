" Vim Color File
" Name:       pencil.vim
" Version:    0.1
" Maintainer: github.com/reedes
"
" based on bubblegum and others
"

set background=light
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='pencil'

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

" preferred groups
" (see `:h w18`)
"
hi Cursor       guifg=#424242    guibg=#20BBFC
hi Normal       guifg=#424242    guibg=#f1f1f1  gui=none     ctermfg=black        ctermbg=white
hi Comment      guifg=#10A778                   gui=italic   ctermfg=darkgreen

" yellow (was #c033ff)
hi Constant     guifg=#679707                                ctermfg=darkyellow
hi String       guifg=#67972F                                ctermfg=darkyellow
hi Character    guifg=#67972F                                ctermfg=darkyellow
hi Number       guifg=#672F00                                ctermfg=darkyellow
hi Boolean      guifg=#67972F                                ctermfg=darkyellow
hi Float        guifg=#A46F00                                ctermfg=darkyellow

" pink
hi Identifier   guifg=#C30771                                ctermfg=red
hi Function     guifg=#C30771                                ctermfg=red

" blue
hi Statement    guifg=#008EC4                                ctermfg=darkblue
hi Conditional  guifg=#008EC4                                ctermfg=darkblue
hi Repeat       guifg=#008EC4                                ctermfg=darkblue
hi Label        guifg=#008EC4                                ctermfg=darkblue
hi Operator     guifg=#008EC4                                ctermfg=darkblue
hi Keyword      guifg=#008EC4                                ctermfg=darkblue
hi Exception    guifg=#008EC4                                ctermfg=darkblue

" green
hi PreProc      guifg=#10A778                                ctermfg=darkgreen
hi Include      guifg=#10A778                                ctermfg=darkgreen
hi Define       guifg=#10A778                                ctermfg=darkgreen
hi Macro        guifg=#10A778                                ctermfg=darkgreen
hi PreCondit    guifg=#10A778                                ctermfg=darkgreen

" purple
hi Type           guifg=#8F8FB7                              ctermfg=darkcyan
hi StorageClass   guifg=#8F8FB7                              ctermfg=darkcyan
hi Structure      guifg=#8F8FB7                              ctermfg=darkcyan
hi Typedef        guifg=#8F8FB7                              ctermfg=darkcyan

" red
hi Special         guifg=#C30771                             ctermfg=darkred
hi SpecialChar     guifg=#C30771                             ctermfg=darkred
hi Tag             guifg=#C30771                             ctermfg=darkred
hi Delimiter       guifg=#C30771                             ctermfg=darkred
hi SpecialComment  guifg=#C30771                             ctermfg=darkred
hi Debug           guifg=#C30771                             ctermfg=darkred

hi Underlined     guifg=fg                                   ctermfg=fg
hi Ignore         guifg=bg                                   ctermfg=bg
hi Error          guifg=#FFFFFF    guibg=#D75F5F        ctermfg=231    ctermbg=167
hi Todo           guifg=#D7D7FF    guibg=bg    gui=none ctermfg=189    ctermbg=bg     cterm=none

"
" minor groups
hi StatusLine      guifg=fg      guibg=#D9D9D9    gui=none ctermfg=fg  ctermbg=bg cterm=none
hi StatusLineNC    guifg=grey50  guibg=#D9D9D9    gui=none ctermfg=fg ctermbg=bg cterm=none
hi TabLine         guifg=#F1F1F1 guibg=#545454    gui=none ctermfg=fg  ctermbg=bg cterm=none
hi TabLineSel      guifg=#F1F1F1 guibg=#2C81FB    gui=none ctermfg=253 ctermbg=238 cterm=none
hi TabLineFill     guifg=#F1F1F1 guibg=#181818    gui=none ctermfg=fg  ctermbg=bg cterm=none

hi Pmenu          guifg=#F1F1F1  guibg=#545454              ctermfg=fg     ctermbg=bg
hi PmenuSel       guifg=#F1F1F1  guibg=#2C81FB              ctermfg=231    ctermbg=244
hi PmenuSbar      guifg=#F1F1F1  guibg=#545454              ctermfg=231    ctermbg=244
hi PmenuThumb     guifg=#F1F1F1  guibg=#545454
hi WildMenu       guifg=#F1F1F1  guibg=#262626    gui=none  ctermfg=71     ctermbg=bg    cterm=none

hi Visual         guifg=fg       guibg=#b6d6fd            ctermfg=fg     ctermbg=117
hi VisualNOS      guifg=fg       guibg=#D4D4D4            ctermfg=bg     ctermbg=244
hi VertSplit      guifg=fg       guibg=#D9D9D9    gui=none ctermfg=244    ctermbg=bg    cterm=none
hi LineNr         guifg=fg       guibg=#B6D6FD             ctermfg=244    ctermbg=bg

hi Title          guifg=DarkBlue                  ctermfg=109
hi SpecialKey     guifg=#87D787                   ctermfg=114
hi NonText        guifg=DarkRed                   ctermfg=244
hi MatchParen     guifg=fg        guibg=#F7DF94   ctermfg=16     ctermbg=72
hi Directory      guifg=#8787AF                   ctermfg=103

hi ErrorMsg       guifg=#FF8787    guibg=bg   ctermfg=210    ctermbg=bg
hi WarningMsg     guifg=#AF87D7               ctermfg=140
hi MoreMsg        guifg=DarkBlue              ctermfg=darkblue
hi ModeMsg        guifg=DarkGreen             ctermfg=darkgreen

hi Search         guifg=fg      guibg=#D9D9D9  gui=none  ctermfg=16     ctermbg=179     cterm=none
hi IncSearch      guifg=fg      guibg=#F3E430  gui=none  ctermfg=231    ctermbg=168     cterm=none
hi Question       guifg=DarkRed                          ctermfg=38

hi Folded          guifg=#808080    guibg=bg       ctermfg=244    ctermbg=bg
hi FoldColumn      guifg=#5FD7AF    guibg=bg       ctermfg=79     ctermbg=bg
hi SignColumn      guifg=#5FD7AF    guibg=bg       ctermfg=79     ctermbg=bg
hi ColorColumn     guifg=#5FD7AF    guibg=#D9D9D9  ctermfg=79     ctermbg=bg

hi CursorColumn  guibg=#E5E6E6                gui=none  ctermbg=bg    cterm=none
hi CursorLine    guibg=#E5E6E6                gui=none  ctermbg=bg    cterm=none

hi DiffAdd       guifg=#99DD99    guibg=NONE     ctermfg=darkgreen  ctermbg=bg
hi DiffDelete    guifg=#FFCCCC    guibg=NONE     ctermfg=darkred    ctermbg=bg
hi DiffText      guifg=darkblue   guibg=NONE     ctermfg=darkblue   ctermbg=bg
hi DiffChange    guifg=#CCCCFF    guibg=NONE     ctermfg=darkcyan   ctermbg=bg

hi SpellBad      guifg=fg         guibg=bg    gui=undercurl   guisp=#cc0000 ctermfg=210    ctermbg=bg      cterm=underline
hi SpellCap      guifg=fg         guibg=bg    gui=undercurl   guisp=#22cc22 ctermfg=174    ctermbg=bg      cterm=underline
hi SpellRare     guifg=fg         guibg=bg    gui=undercurl                 ctermfg=181    ctermbg=bg      cterm=underline
hi SpellLocal    guifg=fg         guibg=bg    gui=undercurl                 ctermfg=180    ctermbg=bg      cterm=underline

hi vimFold           guifg=#808080 ctermfg=244
hi vimCommentTitle   guifg=fg      ctermfg=fg
hi helpHyperTextJump guifg=#5FAFD7 ctermfg=74

hi htmlItalic     guifg=fg      guibg=NONE gui=italic      ctermfg=38  ctermbg=NONE cterm=bold
hi htmlBold       guifg=fg      guibg=NONE gui=bold        ctermfg=38  ctermbg=NONE cterm=bold
hi htmlBoldItalic guifg=fg      guibg=NONE gui=bold,italic ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH1         guifg=#424242 guibg=NONE gui=bold,italic ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH2         guifg=#424242 guibg=NONE gui=bold        ctermfg=38  ctermbg=NONE cterm=bold
hi link htmlH3 htmlH2
hi link htmlH4 htmlH3
hi htmlH5         guifg=#424242 guibg=NONE gui=italic       ctermfg=38  ctermbg=NONE cterm=bold
hi link htmlH6 htmlH5
hi htmlLink       guifg=#929292 guibg=NONE gui=underline   ctermfg=185 ctermbg=NONE cterm=NONE
hi htmlString     guifg=#87875f guibg=NONE gui=NONE        ctermfg=101 ctermbg=NONE cterm=NONE
hi htmlTagName    guifg=fg      guibg=NONE gui=NONE        ctermfg=182 ctermbg=NONE cterm=NONE
hi link htmlTag         Keyword
hi link htmlEndTag      Identifier
hi link htmlTagName     Conditional

" tpope/vim-markdown
hi markdownHeadingDelimiter  guifg=black ctermfg=black

hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier
