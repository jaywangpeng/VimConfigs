set nocompatible
syntax on
filetype indent plugin on
execute pathogen#infect()
set shell=cmd

" GVIM Window settings
colorscheme solarized
set background=dark
set lines=45 columns=192
set guifont=Consolas:h12
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set foldmethod=indent
set foldnestmax=99
set splitbelow
set splitright
set relativenumber
set number
set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
set autoindent
set cmdheight=1
set laststatus=2
set ruler
set visualbell
set colorcolumn=80
set diffopt=filler,vertical

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
" Indentation settings for using 4 spaces instead of tabs.
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab

" Indentation for specific file types
autocmd BufNewFile,BufRead *.{json,yaml,js,html,css}
    \set tabstop=2 softtabstop=2 shiftwidth=2

" Custom file type highlighting
autocmd BufNewFile,BufRead *.conf set syntax=ps1

" key mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F8> :TagbarToggle<CR>
map <F4> :NERDTreeToggle<CR>
nnoremap <F3> :noh<CR>

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

" ctrlp settings
set runtimepath^=~/vimfiles/bundle/ctrlp.vim

" YouCompleteMe settings
set encoding=utf-8
