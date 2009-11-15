" Vim color file
" Originator: Tiza (www.vim.org)
" Maintainer: Reshen Amin
" Last Change: 19Dec2003 12:34:22
" Version: 1.0
" This color scheme uses a dark background.
" GUI only

"Commonly used colors (hex rgb)
"Dark Grey = #666666
"Light Blue = #6699cc
"Dark Blue = #336699
"Green = #33ff33

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

"mark end white space at end of line 
"hi WhitespaceEOL guifg=Red guibg=Red
"match WhitespaceEOL /\s\+$/

let colors_name = "night"

"hi Normal       guifg=#f0f0f8 guibg=#303040
hi Normal     ctermfg=White guibg=black guifg=white

" Search
hi IncSearch    gui=UNDERLINE,BOLD guifg=#000000 guibg=#ffff00
hi Search       gui=NONE guifg=#000000 guibg=#ffff00

" Messages
hi ErrorMsg     gui=BOLD guifg=#ffffff guibg=#f00080
hi WarningMsg   gui=BOLD guifg=#ffffff guibg=#f00080
hi ModeMsg      gui=BOLD guifg=#00e0ff guibg=NONE
hi MoreMsg      gui=BOLD guifg=#00ffdd guibg=NONE
hi Question     gui=BOLD guifg=#d0d050 guibg=NONE

" Split area
hi StatusLine   gui=NONE guifg=#101018 guibg=#c8c8d8
hi StatusLineNC gui=NONE guifg=#606080 guibg=#c8c8d8
hi VertSplit    gui=NONE guifg=#606080 guibg=#c8c8d8
hi WildMenu     gui=NONE guifg=#101018 guibg=black

" Diff
hi DiffText     gui=NONE guifg=#ffffff guibg=#40a060
hi DiffChange   gui=NONE guifg=#ffffff guibg=#007070
hi DiffDelete   gui=NONE guifg=#ffffff guibg=#40a0c0
hi DiffAdd      gui=NONE guifg=#ffffff guibg=#40a0c0

" Cursor
hi Cursor       gui=NONE guifg=#ffffff guibg=#ff9933
hi lCursor      gui=NONE guifg=#ffffff guibg=#6699cc
hi CursorIM     gui=NONE guifg=#ffffff guibg=#e000b0

" Fold
hi Folded       gui=BOLD guifg=white guibg=#333333
hi FoldColumn   gui=NONE guifg=#a0a0b0 guibg=#333399

" Other
hi Directory    gui=NONE guifg=#00ffff guibg=NONE
hi LineNr       gui=NONE guifg=white guibg=#333333
hi NonText      gui=BOLD guifg=#666666 guibg=#333333
hi SpecialKey   gui=BOLD guifg=#60a0ff guibg=NONE
hi Title        gui=BOLD guifg=#f0f0f8 guibg=#9000a0
hi Visual       gui=NONE guifg=#ffffff guibg=#336699

" Syntax group
hi Operator     gui=NONE guifg=#ffffff guibg=NONE
"hi Comment      gui=NONE guifg=#666666 guibg=NONE
hi Comment      gui=NONE guifg=#999999 guibg=NONE
hi Constant     gui=NONE guifg=#33ff33 guibg=NONE
hi Error        gui=BOLD guifg=#f00080 guibg=NONE
hi Identifier   gui=NONE guifg=#339999 guibg=NONE
hi Ignore       gui=NONE guifg=#303040 guibg=NONE
hi PreProc      gui=NONE guifg=#339999 guibg=NONE
hi Special      gui=NONE guifg=#40f8f8 guibg=#4830a0
hi Statement    gui=BOLD guifg=#6699cc guibg=NONE
hi Todo         gui=BOLD guifg=#ff9933 guibg=NONE
hi Type         gui=NONE guifg=#6699cc guibg=NONE
hi Underlined   gui=UNDERLINE,BOLD guifg=#f0f0f8 guibg=NONE

" HTML
hi htmlLink                 gui=UNDERLINE,BOLD
hi htmlBold                 gui=BOLD
hi htmlBoldItalic           gui=BOLD,ITALIC
hi htmlBoldUnderline        gui=BOLD,UNDERLINE
hi htmlBoldUnderlineItalic  gui=BOLD,UNDERLINE,ITALIC
hi htmlItalic               gui=ITALIC
hi htmlUnderline            gui=UNDERLINE
hi htmlUnderlineItalic      gui=UNDERLINE,ITALIC

