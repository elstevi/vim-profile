set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'ajh17/spacegray.vim'
Plugin 'nvie/vim-flake8'
Plugin 'roxma/vim-paste-easy'
Plugin 'klen/python-mode'
Plugin 'rodjek/vim-puppet'
Plugin 'itspriddle/vim-shellcheck'

" Now we can turn our filetype functionality back on
autocmd FileType python set colorcolumn=120
autocmd vimenter * NERDTree

" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

filetype plugin indent on
set hlsearch
set mouse=
set number relativenumber
let g:pymode_options_max_line_length = 160
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '.'
syntax on

" disable arrow key navigation
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"toggle nerdtree
nnoremap <F12> :NERDTreeToggle<CR>
silent! colorscheme spacegray
