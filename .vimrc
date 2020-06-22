:set rnu
:set nu
 ":set ruler "to enable right-bottom numbers
:set splitright
:set laststatus=2
au InsertEnter * hi StatusLine guibg=Red
au InsertLeave * hi StatusLine guibg=#ccdc90

:set nocompatible              " required
:set encoding=utf-8
"to enable highlighting when searching for patterns
:set hlsearch
:set incsearch "to enable highlighting when starting a search 
"to enable backspace over auto-indentation
"it prevents accidential indentation removals
:set backspace=indent,eol,start

filetype off                  " required

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf='/Users/gurcanbadin/.vim/bundle/youcompleteme/cpp/.ycm_extra_conf.py'

" setup for ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_python_binary_path = 'python'
let g:ycm_complete_in_comments = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_semantic_triggers =  {
  \ 'c' : ['re!\w{2}'],
  \ 'cpp' : ['re!\w{2}'],
  \ 'python' : ['re!\w{2}'],
  \ }

" setup for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']


autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

highlight BadWhitespace ctermfg=253 ctermbg=9 guifg=#000000 guibg=#ff0000

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

colorscheme koehler
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tmhedberg/SimpylFold'
Plugin 'tikhomirov/vim-glsl'
Plugin 'beyondmarc/opengl.vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

Plugin 'vim-airline/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'morhetz/gruvbox'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

let python_highlight_all=1
syntax on

let g:NERDTreeChDirMode = 2

"mappings

map <F2> :NERDTreeToggle<CR>

"enable below one if you want to toggle bt dark&light modes.
"call togglebg#map("§")
set clipboard=unnamed


