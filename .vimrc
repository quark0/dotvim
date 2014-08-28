set nu
syntax enable
filetype plugin indent on

set nowrap
set cursorline
set smartindent
set shiftwidth=4
set expandtab

" search options
set hlsearch
set incsearch
set ignorecase
set smartcase

" powerline
let g:Powerline_symbols = 'fancy'
set nocompatible
set laststatus=2

" pathogen
execute pathogen#infect()

" for indent line
let g:indentLine_char = '|'

" NerdTree
autocmd VimEnter * nmap <F3> :NERDTreeToggle<CR>
autocmd VimEnter * imap <F3> <Esc>:NERDTreeToggle<CR>a
let NERDTreeQuitOnOpen=1
let NERDChristmasTree=1
let NERDTreeWinSize=30

let g:solarized_italic=0
let g:solarized_bold=1
let g:solarized_underline=1

" gvim
set t_Co=256
set background=dark
if has("gui_running")
    colorscheme solarized
    set guifont=Gohufont\ 12
    set guioptions-=l
    set guioptions-=L
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
else
    colorscheme solarized
    set background=dark
    let g:indentLine_color_term = 239
endif

augroup filetype
    au! BufRead,BufNewFile *.gnuplot set filetype=gnuplot
augroup END

let g:tex_conceal = ""

" disable folding in latex suite
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""
