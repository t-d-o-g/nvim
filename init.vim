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
nmap ˙ <C-w>h    "Buffer Left 
nmap ∆ <C-w>j    "Buffer Down
nmap ˚ <C-w>k    "Buffer Up
nmap ¬ <C-w>w    "Buffer Cycle Right 
nmap – <C-w>_    "Buffer Max Height (- for shift key consistency)
nmap » <C-w>\|   "Buffer Max Width
nmap ≠ <C-w>=    "Buffer Equal Size
nmap ‰ <C-w>R    "Buffer Rotate
nmap ˇ <C-w>T    "Buffer New Tab 
nmap ø <C-w>o    "Close All But Current
nmap ¯ <C-w>10<  "Decrease width 10 lines
nmap ˘ <C-w>10>  "Increase width 10 lines
nmap — <C-w>10-  "Decrease height 10 lines (_ for shift key consistency)
nmap ± <C-w>10+  "Increase height 10 lines

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
