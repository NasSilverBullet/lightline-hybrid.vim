" Author:  cocopon <cocopon@me.com>
" License: MIT License

let s:c_red    = 9
let s:c_green  = 10
let s:c_blue   = 12
let s:c_orange = 3

let s:none = 'NONE'
let s:gray = 237
let s:fox = 251

let s:p = {
			\ 'normal':   {},
			\ 'inactive': {},
			\ 'insert':   {},
			\ 'replace':  {},
			\ 'visual':   {},
			\ 'tabline':  {}}

let s:style = exists('g:lightline_hybrid_style')
			\ ? g:lightline_hybrid_style
			\ : ''

" [[guifg, guibg, ctermfg, ctermbg], ...]
let s:p.normal.middle = [
      \ [s:none, s:none, s:fox, s:gray]]
let s:p.normal.left = [
      \ [s:none, s:none, s:gray, s:fox],
      \ [s:none, s:none, s:gray, s:fox]]
let s:p.normal.right = [
      \ [s:none, s:none, s:gray, s:fox],
      \ [s:none, s:none, s:gray, s:fox]]

let s:p.normal.error = [
			\ [s:none, s:none, s:gray, s:c_red]]
let s:p.normal.warning = [
			\ [s:none, s:none, s:gray, s:c_orange]]

let s:p.inactive.middle = [
			\ [s:none, s:none, s:fox, s:gray]]
let s:p.inactive.right = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]
let s:p.inactive.left = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]

let s:p.insert.left = [
			\ [s:none, s:none, s:gray, s:fox],
			\ s:p.normal.left[1]]
let s:p.replace.left = [
			\ [s:none, s:none, s:gray, s:fox],
			\ s:p.normal.left[1]]
let s:p.visual.left = [
			\ [s:none, s:none, s:gray, s:fox],
			\ s:p.normal.left[1]]

let s:p.tabline.middle = [
      \ [s:none, s:none, s:gray, s:fox]]
let s:p.tabline.right = [
      \ [s:none, s:none, s:gray, s:fox]]
let s:p.tabline.left = [
      \ [s:none, s:none, s:gray, s:fox]]
let s:p.tabline.tabsel = [
      \ [s:none, s:none, s:fox, s:gray]]

let g:lightline#colorscheme#hybrid#palette = s:p
