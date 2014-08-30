" ============================================================================
" File:        pencil.vim
" Description: vim-colors-pencil plugin
" Maintainer:  Reed Esau <github.com/reedes>
" Created:     August 29, 2014
" License:     The MIT License (MIT)
" ============================================================================
"
if exists('g:loaded_colors_pencil') || &cp | fini | en
let g:loaded_colors_pencil = 1

" Save 'cpoptions' and set Vim default to enable line continuations.
let s:save_cpo = &cpo
set cpo&vim

nnoremap <unique> <script> <Plug>ToggleFocus <SID>TogFocus
inoremap <unique> <script> <Plug>ToggleFocus <ESC><SID>TogFocus<ESC>a
vnoremap <unique> <script> <Plug>ToggleFocus <ESC><SID>TogFocus<ESC>gv
noremap <SID>TogFocus  :call <SID>TogFocus()<CR>

" a generic focus toggle, usable with any color scheme that supports it
fun! s:TogFocus()
  if !exists('g:colors_focus') || g:colors_focus == 0
    set cursorline
    set laststatus=0
    set noruler
    "set scrolloff=999
    let g:colors_focus = 1
  else
    set nocursorline
    let g:colors_focus = 0
  en
  if exists('g:colors_name')
    exe 'colorscheme ' . g:colors_name
  en
endf

if !exists(':ToggleFocus')
  com ToggleFocus :call s:TogFocus()
en

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:ts=2:sw=2:sts=2
