set nocompatible
filetype indent plugin on
syntax on

" General settings
set encoding=utf-8
set nowrap
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
set backspace=indent,eol,start
set nostartofline
set confirm
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
set colorcolumn=80
highlight ColorColumn ctermbg=8
set diffopt=filler,vertical
set background=dark
colorscheme solarized8

" vim-plug settings
call plug#begin()
Plug 'dense-analysis/ale'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'
Plug 'lifepillar/vim-solarized8',
    \{ 'dir': '~/.vim/pack/themes/opt/solarized8' }
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'PProvost/vim-ps1'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme',
    \{ 'do': 'python3 install.py --clang-completer' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Indentation for specific file types
autocmd FileType json,yaml,js,html,css
    \ setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Custom file type highlighting
" autocmd BufNewFile,BufRead *.conf set syntax=ps1

" key mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <F1> :ALEInfo<CR>
nnoremap <F2> :noh<CR>
nnoremap <F3> :FZF<CR>
map <F4> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>

" YouCompleteMe settings
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" vim-airline-theme settings
let g:airline_theme='tomorrow'

" Rainbow settings
let g:rainbow_active = 1

" fzf settings
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \ | autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" ALE settings
let g:ale_linters = {
    \ 'c': ['clang', 'clangtidy'],
    \ 'python': ['flake8', 'pylint']
    \}
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'python': ['autopep8']
    \}

" Tagbar settings
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_type_ps1 = {
    \ 'ctagstype' : 'powershell',
    \ 'kinds'     : [
        \ 'f:function',
        \ 'i:filter',
        \ 'a:alias'
    \ ]
    \ }
