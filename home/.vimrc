set nocompatible
filetype off

" TODO https://github.com/Valloric/YouCompleteMe
" TODO https://medium.com/@mhartington/typescript-vim-64783d89e468

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'tpope/vim-fugitive'
    Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'Shougo/vimproc.vim'
    Plugin 'Quramy/tsuquyomi'
call vundle#end()

filetype plugin indent on
syntax on

set showmatch
set ruler
set number
set colorcolumn=80
set expandtab
set tabstop=4
set shiftwidth=4

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

let g:airline_theme='wombat'

:highlight ColorColumn ctermbg=7
:highlight LineNr term=underline ctermfg=7 guifg=White
:highlight Statement term=bold ctermfg=1 gui=bold guifg=Red
:highlight Comment term=bold ctermfg=8 guifg=lightgray

" Keybindings

:noremap <C-t>     :tabnew<CR>

function! TogNumber()
    if (&number == 0)
        set number
    else
        set nonumber
    endif
endfunc

:nmap <C-N><C-N> :call TogNumber()<CR>
:nmap <C-f> :NERDTreeToggle<CR>
