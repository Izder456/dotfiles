" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Declare the list of plugins.
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'preservim/tagbar'
Plug 'junegunn/fzf.vim'
Plug 'glepnir/dashboard-nvim'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'ouuan/vim-plug-config'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
