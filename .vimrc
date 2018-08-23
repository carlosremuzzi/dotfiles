set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chrisbra/colorizer'
Plugin 'diefans/vim-da-yaml'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'sotte/presenting.vim'
Plugin 'zchee/vim-go-slide'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
set number
set background=dark
colorscheme solarized
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
augroup yaml_folding
    au!
    au FileType yaml setlocal foldmethod=indent
augroup END

" .slide filetype file
"if exists("did_load_filetypes")
"  finish
"endif
augroup filetypedetect
  au! BufRead,BufNewFile *.slide		setfiletype slide
augroup END
