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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

nmap <F2> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
