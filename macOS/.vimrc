set nocompatible
filetype indent plugin on
syntax on

" General settings
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
set colorcolumn=80
set diffopt=filler,vertical
set backspace=indent,eol,start
set nostartofline
set confirm
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
set lines=200 columns=400

" Font and theme
set background=dark
set guifont=Consolas:h14
colorscheme solarized

" Indentation for specific file types
autocmd FileType json,yaml,js,html,css,tf
            \ setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" Custom file type highlighting
autocmd BufNewFile,BufRead *.conf set syntax=ps1
autocmd BufNewFile,BufRead *.groovy set syntax=java
autocmd BufNewFile,BufRead *.PublishSettings set syntax=xml

" key mappings
nnoremap <Space> <Nop>
let mapleader=" "
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <leader>j :ALENext<cr>
nnoremap <silent> <leader>k :ALEPrevious<cr>
nnoremap <F1> :ALEInfo<CR>
nnoremap <F2> :noh<CR>
nnoremap <F3> :FZF<CR>
nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F11> :ls<cr>

" vim-plug
call plug#begin()
Plug 'dense-analysis/ale'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'PProvost/vim-ps1'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme', { 'do': 'python3 install.py --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-repeat'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'prabirshrestha/vim-lsp'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/groovy.vim'
call plug#end()

" youcompleteme settings
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" vim-airline-theme settings
let g:airline_theme='tomorrow'

" Rainbow settings
let g:rainbow_active = 1

" fzf settings
set rtp+=/usr/local/opt/fzf
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
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_type_ps1 = {
    \ 'ctagstype' : 'powershell',
    \ 'kinds'     : [
        \ 'f:function',
        \ 'i:filter',
        \ 'a:alias'
    \ ]
    \ }

" bash-lsp settings
if executable('bash-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'allowlist': ['sh'],
        \ })
endif
