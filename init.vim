call plug#begin('~/.config/nvim/plugged')
Plug 'croaker/mustang-vim'
Plug 'cocopon/iceberg.vim'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'janko-m/vim-test'
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'mklabs/split-term.vim'
call plug#end()

"" Enable code autocomplete
call deoplete#enable()

"" Key Remappings
inoremap kj <Esc>
nmap ew <C-w>
nnoremap <F1> :set nonumber!<CR>    "Number toggle

" Settings
set splitbelow
set splitright
set pastetoggle=<F2>    "Insert mode (Paste) toggle
set wildmode=full

" Pick a colorscheme
"" colorscheme mustang
"" let g:airline_theme='base16_chalk'
colorscheme iceberg 
let g:airline_theme='iceberg'
