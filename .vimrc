" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()
" Auto format code
augroup autoformat_settings
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
augroup END
" Auto run cmd FormatCode when save *.js file
:autocmd BufWritePre *.js Prettier
" Setup themes for airline
" https://github.com/vim-airline/vim-airline
let g:airline_theme='luna'

" Key bindings
inoremap jk <ESC>

nnoremap ss :w<CR>
nnoremap <C-p> :FZF<CR>
set relativenumber
set nu
set smartindent
set tabstop=4
set shiftwidth=4
set noswapfile
set wildmenu
set wildignore+=**/node_modules/**
