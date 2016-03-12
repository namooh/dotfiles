set nocompatible              " be iMproved, required
filetype off                  " required

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    endif

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
"Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
"Plug 'guns/vim-clojure-highlight'
Plug 'kien/rainbow_parentheses.vim', { 'for': 'clojure' }
"Plug 'tpope/vim-salve.git'
"Plug 'tpope/vim-projectionist.git'
"Plug 'tpope/vim-dispatch.git'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'ervandew/supertab'
Plug 'tpope/vim-sexp-mappings-for-regular-people', { 'for': 'clojure' }
Plug 'guns/vim-sexp', { 'for': 'clojure' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

call plug#end()

filetype plugin indent on    " required

" Font and appearance
set gfn=Source\ Code\ Pro\ for\ Powerline:h13
set t_Co=256
let g:solarized_termcolors=256
"let base16colorspace=256
set background=dark
colorscheme apprentice "seoul256
syntax on
set relativenumber
set nu
set cursorline
set numberwidth=5
set shiftwidth=4
set tabstop=4
set expandtab
set splitbelow
set splitright
set noswapfile
set completeopt=menu,preview
set complete-=t,i
set colorcolumn=80

autocmd BufEnter * set list

let mapleader = ","

" Map Ctrl+Backspace in insert mode to delete back a word
inoremap <C-BS> <C-w>

" Tab configurations for different filetypes --------------------------------
autocmd BufNewFile,BufEnter *.clj,*.c,*.html,*.js,*.coffee,*.json setlocal shiftwidth=2
autocmd BufNewFile,BufEnter Makefile,*.php setlocal noexpandtab
autocmd BufNewFile,BufEnter *.clj set nowrap
autocmd BufNewFile,BufRead *.pp,Vagrantfile set ft=ruby
autocmd BufNewFile,BufRead *.edn set filetype=clojure
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.ino set filetype=c

" ctrlp ----------------------------------------------------------------------
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.hg$\|\.venv$\|env$\|build$\|target$\|\.compiled$\|\.awesomo$\|node_modules$\|bower.*$',
    \ 'file': '\.swp$\|\.pyc$',
    \ }
let g:ctrlp_by_filename = 1 " default to filename search instead of full path
let g:ctrlp_regexp = 1 " default to regexp search
let g:ctrlp_working_path_mode = 0

" Syntastic ------------------------------------------------------------------
let g:syntastic_javascript_checkers = ["jslint"]
let g:syntastic_json_checkers = ["jsonlint"]
let g:syntastic_php_checkers = ["php"]

" NerdTree toggle ------------------------------------------------------------
nnoremap <F5> :NERDTreeToggle<CR>

" Background Toggle
map <F6> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
map <F7> :colorscheme apprentice<CR>

" vim-clojure-static ---------------------------------------------------------
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let','^fact','^future-fact','^match']
let g:clojure_fuzzy_indent_blacklist = ['-fn$','\v^with-%(meta|out-str|loading-context)$']
let g:clojure_align_multiline_strings = 0
let g:clojure_align_subforms = 1
let g:clojure_special_indent_words = 'deftype,defrecord,reify,proxy,extend-type,extend-protocol,letfn,fact'

" airline---------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
