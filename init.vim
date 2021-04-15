
" # --- sets ---

set nu rnu
set nowrap
set colorcolumn=80
set clipboard=unnamedplus
set nohlsearch
set scrolloff=10
set termguicolors
set hidden
set signcolumn=yes

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab  
set smartindent

set noswapfile
set nobackup

" # --- plugins ---

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" --- gruvbox

colorscheme gruvbox
highlight Normal guibg=none

" --- vimwiki

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" # --- remaps ---

let g:mapleader = ' '

" nnoremap <leader>W :w<CR> " use ZZ = :wq
" nnoremap <leader>q :q<CR> " use ZQ = :q!

" --- Telescope
" Find files using Telescope command-line sugar.

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" # --- colors ---

highlight ColorColumn ctermbg=0 guibg=grey 
highlight LineNr guifg=#5eacd3
hi CursorLineNR guibg=none
hi CursorLineNR guifg=#ff8659
hi SignColumn guibg=none
