set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'edkolev/tmuxline.vim'
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
Plugin 'tpope/vim-sensible'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'guns/vim-clojure-static'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-clojure-highlight'
Plugin 'tpope/vim-fireplace'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-scripts/CSApprox'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set t_Co=256
let g:solarized_termcolors=256
let base16colorspace=256
set background=dark
colorscheme jellybeans
syntax on
set number
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

" line movement mappings from http://vim.wikia.com/wiki/Moving_lines_up_or_down
" Use Alt-j or Alt-k to move lines up or down, respectively
nnoremap <A-j> :m+<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
nnoremap <A-k> :m-2<CR>==
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-k> :m-2<CR>gv=gv

" Map Ctrl+Backspace in insert mode to delete back a word
inoremap <C-BS> <C-w>

" Tab configurations for different filetypes --------------------------------
autocmd BufNewFile,BufEnter *.clj,*.c,*.html,*.js,*.coffee,*.json setlocal shiftwidth=2
autocmd BufNewFile,BufEnter Makefile,*.php setlocal noexpandtab
autocmd BufNewFile,BufRead *.pp,Vagrantfile set ft=ruby
autocmd BufNewFile,BufRead *.edn set filetype=clojure
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.ino set filetype=c

" ctrlp ----------------------------------------------------------------------
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.hg$\|\.venv$\|env$\|build$\|\.compiled$\|\.awesomo$\|node_modules$\|bower.*$',
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

" VimClojure -----------------------------------------------------------------
" notes on setup:
"http://naleid.com/blog/2011/12/19/getting-a-clojure-repl-in-vim-with-vimclojure-nailgun-and-leiningen/
"let g:vimclojure#HighlightBuiltins = 1
"let g:vimclojure#ParenRainbow = 1
"let g:vimclojure#NailgunClient = "/home/vagrant/bin/ng"
"let g:vimclojure#WantNailgun = 0
"let g:vimclojure#SplitPos = "right"
"let g:vimclojure#SplitSize = 70
