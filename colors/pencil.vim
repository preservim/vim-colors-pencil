" Vim Color File
" Name:       pencil.vim
" Version:    0.1
" Maintainer: github.com/reedes
"
" based on bubblegum and others

set background=light
hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name="pencil"

" preferred groups
" (see `:h w18`)
"
hi Cursor       guifg=#424242    guibg=#a6c6ed
hi Normal       guifg=#424242    guibg=#f5f6f6  gui=none     ctermfg=black        ctermbg=white
hi Comment      guifg=#009900                   gui=italic   ctermfg=darkgreen

" yellow (was #c033ff)
hi Constant     guifg=#679707                                ctermfg=darkyellow
hi String       guifg=#67972F                                ctermfg=darkyellow
hi Character    guifg=#67972F                                ctermfg=darkyellow
hi Number       guifg=#672F00                                ctermfg=darkyellow
hi Boolean      guifg=#67972F                                ctermfg=darkyellow
hi Float        guifg=#A46F00                                ctermfg=darkyellow

" pink
hi Identifier   guifg=#A76FA7                                ctermfg=red
hi Function     guifg=#A76FA7                                ctermfg=red

" blue
hi Statement    guifg=#87AFD7                                ctermfg=darkblue
hi Conditional  guifg=#87AFD7                                ctermfg=darkblue
hi Repeat       guifg=#87AFD7                                ctermfg=darkblue
hi Label        guifg=#87AFD7                                ctermfg=darkblue
hi Operator     guifg=#87AFD7                                ctermfg=darkblue
hi Keyword      guifg=#87AFD7                                ctermfg=darkblue
hi Exception    guifg=#87AFD7                                ctermfg=darkblue

" green
hi PreProc      guifg=#4FB727                                ctermfg=darkgreen
hi Include      guifg=#4FB727                                ctermfg=darkgreen
hi Define       guifg=#4FB727                                ctermfg=darkgreen
hi Macro        guifg=#4FB727                                ctermfg=darkgreen
hi PreCondit    guifg=#4FB727                                ctermfg=darkgreen

" purple
hi Type           guifg=#8F8FB7                              ctermfg=darkcyan
hi StorageClass   guifg=#8F8FB7                              ctermfg=darkcyan
hi Structure      guifg=#8F8FB7                              ctermfg=darkcyan
hi Typedef        guifg=#8F8FB7                              ctermfg=darkcyan

" red
hi Special         guifg=#B76767                             ctermfg=darkred
hi SpecialChar     guifg=#B76767                             ctermfg=darkred
hi Tag             guifg=#B76767                             ctermfg=darkred
hi Delimiter       guifg=#B76767                             ctermfg=darkred
hi SpecialComment  guifg=#B76767                             ctermfg=darkred
hi Debug           guifg=#B76767                             ctermfg=darkred

hi Underlined     guifg=fg                                   ctermfg=fg
hi Ignore         guifg=bg                                   ctermfg=bg
hi Error          guifg=#FFFFFF    guibg=#D75F5F        ctermfg=231    ctermbg=167
hi Todo           guifg=#D7D7FF    guibg=bg    gui=none ctermfg=189    ctermbg=bg     cterm=none

"
" minor groups
hi StatusLine      guifg=fg      guibg=grey86     gui=none ctermfg=fg  ctermbg=bg cterm=none
hi StatusLineNC    guifg=grey50  guibg=grey86     gui=none ctermfg=fg ctermbg=bg cterm=none
hi TabLine         guifg=fg      guibg=DarkBlue   gui=none ctermfg=fg  ctermbg=bg cterm=none
hi TabLineSel      guifg=#DADADA guibg=DarkRed    gui=none ctermfg=253 ctermbg=238 cterm=none
hi TabLineFill     guifg=fg      guibg=#F7DF94    gui=none ctermfg=fg  ctermbg=bg cterm=none

hi Pmenu          guifg=fg       guibg=grey86               ctermfg=fg     ctermbg=bg
hi PmenuSel       guifg=fg       guibg=#F7DF94              ctermfg=231    ctermbg=244
hi PmenuSbar      guifg=fg       guibg=grey86               ctermfg=231    ctermbg=244
hi WildMenu       guifg=fg       guibg=#F7DF94    gui=none  ctermfg=71     ctermbg=bg    cterm=none

hi Visual         guifg=fg       guibg=#b6d6fd            ctermfg=fg     ctermbg=117
hi VisualNOS      guifg=bg       guibg=#b6d6fd            ctermfg=bg     ctermbg=116
hi VertSplit      guifg=fg       guibg=grey86    gui=none ctermfg=244    ctermbg=bg    cterm=none
hi LineNr         guifg=fg       guibg=grey86             ctermfg=244    ctermbg=bg

hi Title          guifg=DarkBlue                  ctermfg=109
hi SpecialKey     guifg=#87D787                   ctermfg=114
hi NonText        guifg=DarkRed                   ctermfg=244
hi MatchParen     guifg=fg        guibg=#F7DF94   ctermfg=16     ctermbg=72
hi Directory      guifg=#8787AF                   ctermfg=103

hi ErrorMsg       guifg=#FF8787    guibg=bg   ctermfg=210    ctermbg=bg
hi WarningMsg     guifg=#AF87D7               ctermfg=140
hi MoreMsg        guifg=DarkBlue              ctermfg=darkblue
hi ModeMsg        guifg=DarkGreen             ctermfg=darkgreen

hi Search         guifg=fg      guibg=grey86   gui=none  ctermfg=16     ctermbg=179     cterm=none
hi IncSearch      guifg=fg      guibg=#F7DF94  gui=none  ctermfg=231    ctermbg=168     cterm=none
hi Question       guifg=DarkRed                          ctermfg=38

hi Folded          guifg=#808080    guibg=bg       ctermfg=244    ctermbg=bg
hi FoldColumn      guifg=#5FD7AF    guibg=bg       ctermfg=79     ctermbg=bg
hi SignColumn      guifg=#5FD7AF    guibg=bg       ctermfg=79     ctermbg=bg
hi ColorColumn     guifg=#5FD7AF    guibg=grey86  ctermfg=79     ctermbg=bg

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

hi htmlItalic     guifg=fg      guibg=NONE gui=italic    ctermfg=38  ctermbg=NONE cterm=bold
hi htmlBold       guifg=fg      guibg=NONE gui=bold      ctermfg=38  ctermbg=NONE cterm=bold
hi htmlBoldItalic guifg=fg      guibg=NONE gui=bold,italic ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH1         guifg=#6686ad guibg=NONE gui=bold      ctermfg=38  ctermbg=NONE cterm=bold
hi htmlH2         guifg=#6686ad guibg=NONE gui=NONE      ctermfg=38  ctermbg=NONE cterm=bold
hi htmlLink       guifg=#929292 guibg=NONE gui=underline ctermfg=185 ctermbg=NONE cterm=NONE
hi htmlString     guifg=#87875f guibg=NONE gui=NONE      ctermfg=101 ctermbg=NONE cterm=NONE
hi htmlTagName    guifg=fg      guibg=NONE gui=NONE      ctermfg=182 ctermbg=NONE cterm=NONE
hi link htmlTag         Keyword
hi link htmlEndTag      Identifier
hi link htmlTagName     Conditional
"hi link htmlH2 htmlH1
hi link htmlH3 htmlH1
hi link htmlH4 htmlH1

hi mkdCode    guifg=#808080 ctermfg=244
hi mkdURL     guifg=#87AFFF ctermfg=111
hi mkdLink    guifg=#D7AFAF ctermfg=181

" tpope/vim-markdown
hi markdownHeadingDelimiter  guifg=black ctermfg=black

hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier
