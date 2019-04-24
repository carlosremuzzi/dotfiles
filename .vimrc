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
Plugin 'chrisbra/colorizer'
Plugin 'diefans/vim-da-yaml'
Plugin 'morhetz/gruvbox'
Plugin 'pangloss/vim-javascript'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'sotte/presenting.vim'
Plugin 'zchee/vim-go-slide'
Plugin 'mboughaba/i3config.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Put your non-Plugin stuff after this line
syntax on
set number
set background=dark
set tabstop=4 shiftwidth=4 expandtab
colorscheme gruvbox
let g:airline_theme='gruvbox'
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

augroup filetypedetect
    au! BufRead,BufNewFile *.slide setfiletype slide
augroup END
