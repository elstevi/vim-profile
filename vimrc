set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
"Plugin 'scrooloose/nerdtree'
Plugin 'ajh17/spacegray.vim'
Plugin 'nvie/vim-flake8'
Plugin 'roxma/vim-paste-easy'
Plugin 'tyru/open-browser.vim'
Plugin 'klen/python-mode'
Plugin 'bhurlow/vim-parinfer'
Plugin 'rodjek/vim-puppet'
Plugin 'ntpeters/vim-better-whitespace'

" We could also add repositories with a ".git" extension
"Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
"Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
autocmd FileType python set colorcolumn=120
filetype plugin indent on
colorscheme spacegray
set hlsearch
set mouse=
syntax on
