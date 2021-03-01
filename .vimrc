call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'beautify-web/js-beautify'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" " `:help :Glaive` for usage.
Plug 'google/vim-glaive'
call plug#end()
call glaive#Install()
" Auto format code
augroup autoformat_settings
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
augroup END
" Key bindings
inoremap jk <ESC>

nnoremap ss :w<CR>
nnoremap <C-p> :FZF<CR>
set relativenumber
set nu
set smartindent
set tabstop=4
set shiftwidth=4
