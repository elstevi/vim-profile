set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'ajh17/spacegray.vim'
Plugin 'nvie/vim-flake8'
Plugin 'roxma/vim-paste-easy'
Plugin 'klen/python-mode'
Plugin 'rodjek/vim-puppet'
Plugin 'itspriddle/vim-shellcheck'

" We could also add repositories with a ".git" extension
"Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
"Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
autocmd FileType python set colorcolumn=120
autocmd vimenter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

filetype plugin indent on
colorscheme spacegray
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

" toggle nerdtree
nnoremap <F12> :NERDTreeToggle<CR>
