set nu
syntax enable
filetype plugin indent on

set backupdir=~/.backup

set nowrap
set cursorline
set smartindent
set shiftwidth=4
set expandtab
set tabstop=8
set softtabstop=4

" search options
set hlsearch
set incsearch
set ignorecase
set smartcase

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
let NERDTreeWinSize=25

let g:solarized_italic=1
let g:solarized_bold=1
let g:solarized_underline=1

" for base16 colorscheme
"let base16colorspace=256
set t_Co=256
set background=dark

" gvim
if has("gui_running")
   colorscheme jellybeans
   "set guifont=Dina\ 8
   set guifont=Source\ Code\ Pro\ for\ Powerline\ Medium\ 8
   set guioptions-=l
   set guioptions-=L
   set guioptions-=m
   set guioptions-=T
   set guioptions-=r
else
   colorscheme jellybeans
   "colorscheme solarized
   "set background=dark
   let g:indentLine_color_term = 239
endif

augroup filetype
   au! BufRead,BufNewFile *.gnuplot set filetype=gnuplot
augroup END

let g:tex_conceal = ""

" disable folding in latex-suite
let Tex_FoldedSections=""
let Tex_FoldedEnvironments=""
let Tex_FoldedMisc=""

" compile options for latex-suite
let Tex_DefaultTargetFormat = 'pdf'
let Tex_ViewRule_pdf = 'mupdf'
let Tex_MultipleCompileFormats = 'pdf, div'
let Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode -file-line-error-style $*; xdotool search --class mupdf key r'  " refresh mupdf after a successful compile

" disable folding
let g:vim_markdown_folding_disabled = 1

" disable indent lines for python
autocmd FileType python let g:indentLine_enabled = 0

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
