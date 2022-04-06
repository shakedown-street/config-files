syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set number relativenumber
set nowrap
set smartcase
set noswapfile 
set incsearch
set colorcolumn=80
set showmatch
set ruler

" TODO https://github.com/Valloric/YouCompleteMe"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'joshdick/onedark.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'tpope/vim-fugitive'
    Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'prettier/vim-prettier'
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'
    " Plugin 'valloric/youcompleteme'
call vundle#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

":w colorscheme onedark

let g:airline_theme='term'

" Prettier configuration
let g:prettier#config#arrow_parens='always'
let g:prettier#config#print_width='120'
let g:prettier#config#quote_props='consistent'
let g:prettier#config#semi='true'
let g:prettier#config#single_quote='true'

" Prettier autosave
let g:prettier#autoformat=0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" Keybindings

:noremap <C-t>     :tabnew<CR>
:nmap <C-f> :NERDTreeToggle<CR>

