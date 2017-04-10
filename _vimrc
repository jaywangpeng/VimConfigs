set nocompatible
set relativenumber
set number
set hidden
set wildmenu
set showcmd
set hlsearch
set cmdheight=1
set laststatus=2
set ruler
set visualbell
set autoindent
set splitbelow
set splitright

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
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

syntax on
filetype indent plugin on
filetype plugin on
set shell=PowerShell
execute pathogen#infect()
colorscheme solarized
set background=dark
set lines=55 columns=162
set guifont=Courier_New:h11
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

"key mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <C-n> :NERDTreeToggle<CR>

"tagbar settings
nnoremap <F8> :TagbarToggle<CR>

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"ctrlp settings
set runtimepath^=~/vimfiles/bundle/ctrlp.vim/plugin/ctrlp.vim
