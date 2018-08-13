" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set number " show line numbers
set backspace=2
set ruler
set hlsearch " highlights search results
set incsearch " search as characters are entered
set mouse=a
set nowrap
set colorcolumn=80
set smarttab
set smartcase
set lazyredraw  " redraw only when necessary

set encoding=utf-8

" tell vim to recognize .md files as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.ipynb set filetype=json

" to format json use :FormatJSON command
com! FormatJSON %!python -m json.tool

" Clear search highlight by hitting enter
nnoremap <CR> :nohlsearch<CR>

" toggle paste mode to get rid of spacing issues when pasting
map <leader>pp :setlocal paste!<cr>

" use ctrl + jklh for switching b/w vimsplits instead of ctrl+w -> jhlk
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" open new splits below/right of current vim file
set splitbelow
set splitright

syntax on

colorscheme koehler
autocmd BufWritePre * if &ft != 'markdown' | %s/\s\+$//e
filetype plugin on
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd CompleteDone * pclose


" trying this vundle garbage
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-scala'
Plugin 'scrooloose/nerdtree'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'chrisbra/Recover.vim'


" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" let NERDTreeMapOpenInTab='<ENTER>'
