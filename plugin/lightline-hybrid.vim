" Author:  cocopon <cocopon@me.com>
" License: MIT License


" Color palette from vim-hybrid
if exists('g:hybrid_reduced_contrast') && g:hybrid_reduced_contrast == 1
	let s:mono0 = '#232c31'
	let s:mono1 = '#2d3c46'
	let s:mono3 = '#425059'
	let s:mono4 = '#6c7a80'
else
	let s:mono0 = '#1d1f21'
	let s:mono1 = '#282a2e'
	let s:mono3 = '#373b41'
	let s:mono4 = '#707880'
endif

let s:mono2   = '#303030'
let s:mono5   = '#c5c8c6'

let s:red      = '#cc6666'
let s:green    = '#b5bd68'
let s:blue     = '#81a2be'
let s:orange   = '#de935f'
let s:c_red    = 9
let s:c_green  = 10
let s:c_blue   = 12
let s:c_orange = 3

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
      \ [s:mono3, s:mono4, s:fox, 'NONE']]
let s:p.normal.left = [
      \ [s:mono0, s:mono4, s:gray, s:fox],
      \ [s:mono0, s:mono4, s:gray, s:fox]]
let s:p.normal.right = [
      \ [s:mono0, s:mono4, s:gray, s:fox],
      \ [s:mono0, s:mono4, s:gray, s:fox]]

let s:p.normal.error = [
			\ [s:mono0, s:red, s:gray, s:c_red]]
let s:p.normal.warning = [
			\ [s:mono0, s:orange, s:gray, s:c_orange]]

let s:p.inactive.middle = [
			\ [s:mono4, s:mono2, s:fox, 'NONE']]
let s:p.inactive.right = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]
let s:p.inactive.left = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]

let s:p.insert.left = [
			\ [s:mono0, s:blue, s:gray, s:fox],
			\ s:p.normal.left[1]]
let s:p.replace.left = [
			\ [s:mono0, s:red, s:gray, s:fox],
			\ s:p.normal.left[1]]
let s:p.visual.left = [
			\ [s:mono0, s:orange, s:gray, s:fox],
			\ s:p.normal.left[1]]

let s:p.tabline.middle = [
      \ [s:mono0, s:mono5, s:gray, s:fox]]
let s:p.tabline.right = [
      \ [s:mono0, s:mono5, s:gray, s:fox]]
let s:p.tabline.left = [
      \ [s:mono0, s:mono5, s:gray, s:fox]]
let s:p.tabline.tabsel = [
      \ [s:mono5, s:mono0, s:fox, s:gray]]

let g:lightline#colorscheme#hybrid#palette = s:p
