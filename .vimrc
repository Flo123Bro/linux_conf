set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

" color config for vim
syntax on
color dracula 

" set numbers in vim standard
" set number
hi Normal guibg=NONE ctermbg=NONE
" Enable folding
set foldmethod=indent
set foldlevel=99
Plugin 'tmhedberb/SimplyFold'

" Enable folding with spacebar
nnoremap <space> za

" Takes care of indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" Set auto-complete
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
 " project_base_dir = os.environ['VIRTUAL_ENV']
 " activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
 " execfile(activate_this, dict(__file__=activate_this))
" EOF

" Python highlighting code
Bundle 'vim-syntastic/syntastic'
Bundle 'nvie/vim-flake8'
let python_highlight_all=1

" Nerdtree to open files
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" Powerline over vim
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" you can acces systemclipboard
set clipboard=unnamed

" Lets you execute python code in vim
" imap <F5> <Esc>:w<CR>:!clear;python %<CR>

" Bundle for python mode
Bundle 'klen/python-mode'

