set number
hi Normal ctermbg=none
set noswapfile

set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab

autocmd BufNewFile,BufRead *.json setlocal ft=javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

set hidden

set autoread

set title
set cursorline

set title

let mapleader = ','

set hlsearch
set incsearch
set colorcolumn=90
au BufNewFile,BufRead *.coffee set filetype=coffee
imap <C-space> <C-x><C-o>
set nocompatible
filetype off

set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'lukaszkorecki/CoffeeTags'
"Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
"Plugin 'honza/vim-snippets'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jpalardy/vim-slime'
Plugin 'eugen0329/vim-esearch'
Plugin 'chriskempson/base16-vim'
Plugin 'morhetz/gruvbox'
Plugin 'airblade/vim-gitgutter' 
Plugin 'tpope/vim-surround' 
Plugin 'ap/vim-css-color' 
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/loremipsum'
"Plugin 'tkhren/vim-fake'
Plugin 'edkolev/tmuxline.vim'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py' }
call vundle#end()
filetype plugin indent on
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>


cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

nnoremap <silent> <Leader>t :TagbarToggle<cr>
nnoremap <silent> <Leader>n :NERDTreeToggle<cr>

nnoremap <silent> <Leader>q :q!<cr>
inoremap <silent> <Leader>q <esc>:q!<cr>
vnoremap <silent> <Leader>q <esc>:q!<cr>

nnoremap <silent> <Leader>w :w!<cr>
inoremap <silent> <Leader>w <esc>:w!<cr>
vnoremap <silent> <Leader>w <esc>:w!<cr>

"vnoremap <C-S-c> :echo "ctrl shift c"

vnoremap <Tab> >gv
vnoremap <S-Tab> <gv


let g:tmuxline_preset = 'tmux'

function! ChangeBuf(cmd)
	if (&modified && &modifiable)
		execute ":w"
	endif
	execute a:cmd
endfunction

nnoremap <Tab> :call ChangeBuf(":bn")<cr>
nnoremap <S-Tab> :call ChangeBuf(":bp")<cr>

set t_Co=256
set background=dark
syntax enable
colorscheme hybrid
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:gruvbox_contrast_dark = 'hard'


let g:slime_target = "tmux"
let g:slime_no_mappings = 1
let g:slime_python_ipython = 1
xmap <Leader>rc <Plug>SlimeRegionSend
nmap <Leader>c <Plug>SlimeParagraphSend
nmap <Leader>v <Plug>SlimeConfig

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
