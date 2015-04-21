"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

" pathogen plugin manager
execute pathogen#infect()

" encoding
set encoding=utf-8

" gui font
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12

" colorscheme
if has("gui_running")
  colorscheme molokai
  let g:molokai_original=1
endif

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
 
" Turn on line numbers
set number

" tell the term has 256 colors
set t_Co=256

" no insert mode text
set noshowmode

" vim-powerline
let g:Powerline_symbols = 'fancy'
let g:Powerline_stl_path_style = 'full'
set laststatus=2

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" vim-go config
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
filetype on
filetype plugin indent on
let g:go_disable_autoinstall=0

" Set indenting to hard tabs (nospaces and use 4 chars)
set shiftwidth=4
set tabstop=4
set autoindent		" always set autoindenting on
set smartindent

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" neocomplete
if has("gui_running")
  let g:neocomplete#enable_at_startup = 1
endif

" gotags
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" tagbar
nmap <F8> :TagbarToggle<CR>

" highlight matching [{()}]
set showmatch

" hiding menu, toolbar and scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=b

" window default size
set lines=60 columns=130 