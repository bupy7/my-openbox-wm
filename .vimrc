" debian xterm compatibility
set t_Co=256

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ---- INSTALL ----

" common
Plugin 'VundleVim/Vundle.vim'

" syntax
Plugin 'tpope/vim-pathogen'
Plugin 'scrooloose/syntastic'

" status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" tree
Plugin 'scrooloose/nerdtree'

" git
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'

" color scheme
Plugin 'kristijanhusak/vim-hybrid-material'

" search
Plugin 'vim-scripts/IndexedSearch'

call vundle#end()            " required
filetype plugin indent on    " required

" ---- SETTINGS ----

" common
set updatetime=250
set splitbelow
set exrc
set secure

" fonts
set encoding=utf8

" formatting
set backspace=indent,eol,start
set colorcolumn=110
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set nowrap

" theme
syntax on
set number
set background=dark
colorscheme hybrid_material

" tab line
set showtabline=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#branch#enabled=1 

" status bar & tab line
let g:airline_theme='hybrid'
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = 'L'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⑆'
let g:airline_symbols.paste = 'ˇ'
let g:airline_symbols.spell = '‽'
let g:airline_symbols.notexists = 'ø'
let g:airline_symbols.whitespace = 'Ξ'

" git
autocmd VimEnter * GitGutter
let g:gitgutter_realtime=1
let g:gitgutter_eager=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "≠",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" syntax
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
