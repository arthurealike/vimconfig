:set rnu
:set nu
 ":set ruler "to enable right-bottom numbers
:set splitright
:set laststatus=2
:set listchars=tab:\|\ 

"command line completion
set wim=longest:full,full 
:set wildmenu
"set wildmode=longest:list,full
:set showcmd
:set showmatch
:set smartcase
:set autowrite
:set incsearch

set cul
set cursorlineopt=both "to highlight current line, and line number 
"set cursorlineopt=number "to highlight only line number


"############ COLOR SCHEME ##############
"ONEDARK THEME
"syntax on
":set background=dark
"colorscheme onedark
"let g:airline_theme='onedark'
"let g:onedark_termcolors=256

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic

""DRACULE THEME
"packadd! dracula
"syntax enable
"colorscheme dracula
"AirlineTheme dracula
"let g:dracula_italic = 1 

""############ END ##################

:set guifont=Monaco:s12
:set list
":set listchars=tab:\|\
"add below line to change end of line char
",eol:↲
:set encoding=utf-8
:set tabstop=4
:set shiftwidth=4
:set expandtab
"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

au InsertEnter * hi StatusLine guibg=Red
au InsertLeave * hi StatusLine guibg=#ccdc90

"save and load view automatically
au BufWinLeave * mkview
au BufWinEnter * silent loadview

:set nocompatible              " required
:set encoding=utf-8
"to enable highlighting when searching for patterns
:set hlsearch
:set incsearch "to enable highlighting when starting a search 
"to enable backspace over auto-indentation
"it prevents accidential indentation removals
:set backspace=indent,eol,start

filetype on                  " required
autocmd FileType markdown setlocal noexpandtab tabstop=4 sw=4 sts=4
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

"########## KEYMAPPING #############
"run *.py <F9>
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

"I had a problem with F keys on my macbook, these mappings 
"solved that problem.
map <Esc>OP <F1>
map <Esc>OQ <F2>
map <Esc>OR <F3>
map <Esc>OS <F4>
map <Esc>[16~ <F5>
map <Esc>[17~ <F6>
map <Esc>[18~ <F7>
map <Esc>[19~ <F8>
map <Esc>[20~ <F9>
map <Esc>[21~ <F10>
map <Esc>[23~ <F11>
map <Esc>[24~ <F12>

"leader key is backslash ("\")
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <esc> :noh<return><esc>
 
map <F2> :NERDTreeToggle<CR>

"############# (END) ###############


highlight BadWhitespace ctermfg=253 ctermbg=9 guifg=#000000 guibg=#ff0000

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"let g:airline_theme='onedark'
"let g:onedark_termcolors=256"call vundle#begin('~/some/path/here')

"############# PLUGIN LIST ###############
" let Vundle manage Vundle, required
Bundle 'Valloric/YouCompleteMe'

Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'altercation/vim-colors-solarized'
Plugin 'beyondmarc/opengl.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'google/vim-maktaba'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jnurmine/Zenburn'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'wolfgangmehner/lua-support'
Plugin 'morhetz/gruvbox'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'tikhomirov/vim-glsl'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'aserebryakov/vim-todo-lists'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"##############END###############

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent

let python_highlight_all=1
syntax on

let g:NERDTreeChDirMode = 2

"enable below one if you want to toggle bt dark&light modes.
"call togglebg#map("§")
set clipboard=unnamed

"enable 256colors
if $TERM == "xterm-256color"
  set t_Co=256
endif

:hi Folded ctermfg=15\ guifg=#378787 ctermbg=20

set background=dark
colorscheme dracula

"##### TODO CONFIGURATIONS #####

let g:VimTodoListsDatesEnabled = 1
let g:VimTodoListsDatesFormat = "%a %d, %Y"

filetype plugin on

"It lookin great with dracula -> ~ tilde color
"177 for purple (HIGHLY RECOMMENDED) , 11 for yellow , 62 for blueviolet
highlight NonText ctermfg=177    

"" Disable all blinking:
":set guicursor+=a:blinkon0

