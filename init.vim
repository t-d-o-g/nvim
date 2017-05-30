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
call plug#end()

"" Enable code autocomplete
call deoplete#enable()

"" Key Remappings
inoremap kj <Esc>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>w
nmap <C-_> <C-w>_
nmap <C-bar> <C-w>|
nmap <C-=> <C-w>=
nmap <C-R> <C-w>R
nmap <C-T> <C-w>T
nmap <C-o> <C-w>o
nnoremap <M-Right> <C-W><Right>
nnoremap <M-Left> <C-W><Left>
nnoremap <M-Up> <C-W><Up>
nnoremap <M-Down> <C-W><Down>

" Settings
set splitbelow
set splitright
set pastetoggle=<F2>    "Insert mode (Paste) toggle
set wildmode=full
nnoremap <F1> :set nonumber!<CR>    "Number toggle

" Pick a colorscheme
"" colorscheme mustang
"" let g:airline_theme='base16_chalk'
colorscheme iceberg 
let g:airline_theme='iceberg'
