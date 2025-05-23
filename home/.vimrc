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
set matchtime=0
set ruler
" set t_Co=32

filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'morhetz/gruvbox'
    Plugin 'scrooloose/nerdtree'
    Plugin 'preservim/nerdcommenter'
    Plugin 'tpope/vim-fugitive'
    Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'prettier/vim-prettier'
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'
    Plugin 'rust-lang/rust.vim'
    Plugin 'wfxr/minimap.vim'
call vundle#end()

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

colorscheme gruvbox

let g:airline_theme='gruvbox'

" Prettier configuration
let g:prettier#config#arrow_parens='always'
let g:prettier#config#print_width='120'
let g:prettier#config#quote_props='consistent'
let g:prettier#config#semi='true'
let g:prettier#config#single_quote='true'

" Prettier autosave
let g:prettier#autoformat=0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" rustfmt auto save
let g:rustfmt_autosave = 1

" NerdTree
let NERDTreeShowHidden = 1

" NerdCommenter

let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1

" Minimap
let g:minimap_width = 12
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

" Keybindings

:noremap <C-t>     :tabnew<CR>
:nmap <C-f> :NERDTreeToggle<CR>
:noremap <C-p> :Files<CR>
