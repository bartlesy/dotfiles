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
set mouse=a
set nowrap
set colorcolumn=80
set smarttab
" Clear search highlight by hitting enter
nnoremap <CR> noh<CR><CR><backspace>

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
filetype plugin on
autocmd BufWritePre * %s/\s\+$//e
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
