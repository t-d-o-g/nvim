"" https://github.com/junegunn/vim-plug
"" To Install plugins run :PlugInstall
call plug#begin('~/.config/nvim/plugged')				" vim-plug plugin manager
Plug 'croaker/mustang-vim' 						" mustang color theme
Plug 'cocopon/iceberg.vim' 						" iceberg color theme
Plug 'w0rp/ale'								" asnyc lint engine
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }	" fuzzy finder in Go
Plug 'tpope/vim-fugitive'						" git wrapper
Plug 'vim-airline/vim-airline'						" status/tabline
Plug 'vim-airline/vim-airline-themes'					" vim-airline theme collection
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }		" async keyword completion
Plug 'janko-m/vim-test'							" vim wrapper for running tests
Plug 'pangloss/vim-javascript'						" js indentation & syntax
Plug 'moll/vim-node'							" node tools and environment
Plug 'mklabs/split-term.vim'						" utilities for neovim :terminal
call plug#end()

"" Enable code autocomplete
call deoplete#enable()

"" Key Remappings
command FormatOptionsToggle if &fo =~ 't' | set fo-=t | else | set fo+=t | endif
nnoremap <F3> :FormatOptionsToggle<CR>
inoremap kj <Esc>
nmap ew <C-w>
nnoremap <F1> :set nonumber!<CR>
nnoremap <silent> <C-l> :nohl<CR><C-l>					" map no highlight to C-l

" deoplete tab complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Settings
set shiftwidth=4
set textwidth=80
set tabstop=4
set expandtab
set splitbelow
set splitright
set pastetoggle=<F2>    						" Insert mode (Paste) toggle
set wildmode=full
:au FocusGained * :redraw!  						" automatic redraw

" Pick a colorscheme
"" colorscheme mustang
"" let g:airline_theme='base16_chalk'
colorscheme iceberg 
let g:airline_theme='iceberg'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
