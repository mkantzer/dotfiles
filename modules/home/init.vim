scriptencoding utf-8

syntax on 
" --- visual ---
colorscheme onedark
set background=dark

set termguicolors
set number
set noruler
set wrap
set showmatch
set matchtime=3
set list
highlight Comment cterm=italic gui=italic
set nofoldenable
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
" --- grep ---
set ignorecase
set smartcase
set wrapscan
set hlsearch
set incsearch
" --- indent ---
set smartindent
set expandtab
" --- keymap ---
" jk as esc
inoremap <silent> jk <Esc>