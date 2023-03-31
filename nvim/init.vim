let mapleader=","

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
	silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync
endif

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
Plug 'preservim/nerdtree'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
" Plug 'ervandew/supertab'
" Plug 'neovim/nvim-lspconfig'
call plug#end()

let g:gruvbox_termcolors = 16
let g:gruvbox_italic = 1
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

colorscheme gruvbox
syntax on
set number relativenumber
set splitbelow splitright
set clipboard+=unnamedplus
set encoding=utf-8
set cursorline
set nohlsearch
set ignorecase
set smartcase
set mouse=a
set scroll=10
set scrolloff=5
set tabstop=4
set shiftwidth=4
set laststatus=2
set completeopt=menuone,noinsert
" set omnifunc=v:lua.vim.lsp.omnifunc

set statusline+=%<
set statusline+=\ %F%r%m
set statusline+=%=
set statusline+=\ %l/%L,\ %v
set statusline+=\ 
set statusline+=%#StatusLineNC#
set statusline+=\ %Y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ 

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯХЪБЮ;ABCDEFGHIJKLMNOPQRSTUVWXYZ{}<>,фисвуапршолдьтщзйкыегмцчняхъэ;abcdefghijklmnopqrstuvwxyz[]'

imap ;j <Esc>
imap жо <Esc>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <leader>f :NERDTreeToggle<CR>

" lua require('lspconfig').pylsp.setup{}
" lua require('lspconfig').clangd.setup{filetypes = { "c", "cpp", "objc", "objcpp", "ch" }}
" lua require('lspconfig').gopls.setup{}
" lua require('lspconfig').rls.setup{}
" lua require('lspconfig').quick_lint_js.setup{}

" nmap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
" nmap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
" nmap <silent> gK <cmd>lua vim.lsp.buf.hover()<CR>
" nmap <silent> gz <cmd>lua vim.lsp.buf.references()<CR>
" nmap <silent> <leader>n <cmd>lua vim.lsp.buf.rename()<CR>
" nmap <silent> <leader>b <cmd>lua vim.lsp.buf.formatting()<CR>
" nmap <silent> <leader>a <cmd>lua vim.lsp.buf.code_action()<CR>
" nmap <silent> <leader>w <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" nmap <silent> <leader>l <cmd>lua vim.diagnostic.setloclist()<CR>
" nmap <silent> ]g <cmd>lua vim.diagnostic.goto_next()<CR>
" nmap <silent> [g <cmd>lua vim.diagnostic.goto_prev()<CR>

autocmd FileType c map <buffer> <leader>e :w<CR>:exec '!gcc' shellescape(@%, 1) '-o out; ./out'<CR>
autocmd FileType python map <buffer> <leader>e :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType sh map <buffer> <leader>e :w<CR>:exec '!sh' shellescape(@%, 1)<CR>
" autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE
autocmd VimLeave,VimSuspend * set guicursor=a:block-blinkon250
