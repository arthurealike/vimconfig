" SECTIONS:  
"Type find key "/" which is regular slash and type section name with #"
"#General
"#Vundle
"#Plugins
"#Colors
"#Airline
"#Keymapping
"#vim-todo
"#YouCompleteME
"#syntastic
"#YouCompleteMe
"#Python
"#lua
"#Bufonly.vim
"#love2d                 

"##########################################
"#                #General                # 
"##########################################
        
        
" Do not ever change this : 
" help 'nocompatible'
set nocp
 
set tws=22x0 "size of terminal window "30x0" uses 30 rows and the current window width.

" It is a deadly sin for vim users to delete this minus symbol
set mouse-=a
set guioptions= "hide scrollbars left & right 

"Relative numbers ** HIGLY RECOMMENDED **
set rnu
set nu

set ic "case-insensitive search
set ruler "to enable right-bottom numbers in statusbar
set spr "splitright
"set laststatus=2

"set listchars=tab:\|., trail:., extends:#, nbsp:. "",nbsp:·,trail:·
set listchars=tab:\|.,trail:·,extends:#,nbsp:\|,trail:·,precedes:\|

"command line completion
set wim=longest:full,full 
set wildmenu
set showcmd
set showmatch
set smartcase

set aw "autowrite : write file if it has been modified
set incsearch " show match as search proceeds

set lazyredraw "when this option is set, the screen will not be redrawn executing macros, registers and other commands that have not typed.
set showmatch "when a bracket is inserted, briefly jump to the matching one.
set mat=0 "tenths of a second to show the matching paren, when 'showmatch' is
set magic "changes the special characters that can be used in search patterns.

set ai "autoindent : copy indent from current line when starting a new line
set ci "copyindent : copy the structure of the existing lines indent when autoindenting new line 
set si "smartindent : do smart autoindenting when starting a new line 
set wrap "when on, lines longer than the width of the window will wrap displaying continues on the next line 

set undolevels=30 "maximum number of changes that can be undone

set visualbell  "if it is on vim will flash its screen instead of sounding a beep    
set noerrorbells "vim will either beep or flash its screen when an error message is displayed      

set nobackup "when this option is on vim makes a backup before overwriting a file.
set noswapfile " .swp files store changes were made to the buffer. recoverable if even vim crashes

set cul "cursorline : highlight the text line of the cursor with CursorLine
"set cursorlineopt=both "to highlight current line, and line number 
set cursorlineopt=number "to highlight only line number
"set cursorlineopt=screenline

set autochdir "change cd whenever a new file is opened such as buffers, tabs
set shortmess+=c "this option helps to avoid all the hit-enter promts 
                 " +=c  => avoid ins-completion-menu messages such as "Pattern
                 " Not Found

"I DO NOT RECOMMEND TO USE TOGGLE BACKGROUND MODE (DARK, LIGHT)
"MY RECOMMENDATION IS USE DARK WHICH IS DEFAULT
"enable below one if you want to toggle bt dark&light modes.
"call togglebg#map("<YOUR KEY>")

set clipboard=unnamed "Vim will use the clipboard register for all yank, delete, change and put operations would normally go to the unnamed register

"WARNING OS X USERS
"Those lines break NERDTree on MacVim 
"So do not use !!!
"save and load view automatically
"FIXME au BufWinLeave * mkview
"FIXME au BufWinEnter * silent loadview

:set hlsearch "to enable highlighting when searching for patterns
:set incsearch "to enable highlighting when starting a search 

"to enable backspace over auto-indentation
"it prevents accidential indentation removals
:set backspace=indent,eol,start

filetype on  "when this option is set, the FileType autocommand event is triggered.

au FileType markdown setlocal noexpandtab tabstop=4 sw=4 sts=4 "markdown indentation

"map leader was "\" by default
let mapleader = "," 

"my todo path
let $TODO = '~/Desktop/.todo'
"my .vimrc path for macOS
let $MYVIMRC = '~/.vimrc'

"UBUNTU USERS!! 
"IF YOU GET AN ERROR FOR DRACULA THEME 
"PLACE THEM TO CALL VUNDLE#END()   

"############# (END) ###############

:set list "show tabs as CTRL-I is displayed, display $ after end of line
":set listchars=tab:\|\
"add below line to change end of line char
"RECOMMENDED if you do not like pipe character -> ,eol:↲
"
"
:set encoding=utf-8
:set tabstop=4 "number of space characters that will be inserted when the tab key is pressed
:set shiftwidth=4
:set expandtab "to insert space characters whenever the tab key is pressed


"##########################################
"#               #Airline                 # 
"##########################################

let g:airline_powerline_fonts = 1 " disable it if you did not install font for powerline

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"smarter tab line
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"############# (END) ###############


"##########################################
"#              #NERDTree                 # 
"##########################################
"
let g:NERDTreeDirArrows=0

let NERDTreeShowHidden=1

let g:NERDTreeHijackNetrw=0 "to disable NERDTree to popup for every buffer automatically

let g:NERDTreeWinSize=30 "default size for NERDTree window

let g:NERDTreeWinPos = "right" "NERDTree windows position is left by default 

let g:NERDTreeChDirMode = 2 "change directory

let g:NERDTreeGlyphReadOnly = "RO"

let NERDTreeQuitOnOpen = 1

let NERDTreeAutoDeleteBuffer = 1

"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1

autocmd! BufWinEnter * if(winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"##########################################
"#            #YouCompleteMe              #
"##########################################

let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf='/Users/gurcanbadin/.vim/bundle/youcompleteme/cpp/.ycm_extra_conf.py'


" setup for ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_python_binary_path = 'python'
let g:ycm_complete_in_comments = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:ycm_semantic_triggers =  {
  \   'c': ['->', '.'],
  \   'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \            're!\[.*\]\s'],
  \   'ocaml': ['.', '#'],
  \   'cpp,cuda,objcpp': ['->', '.', '::'],
  \   'perl': ['->'],
  \   'php': ['->', '::'],
  \   'cs,d,elixir,go,groovy,java,javascript,julia,perl6,python,scala,typescript,vb': ['.'],
  \   'ruby,rust': ['.', '::'],
  \   'lua': ['.', ':'],
  \   'erlang': [':'],
  \ }
"############# (END) ###############

"##########################################
"#               #syntastic               # 
"##########################################

" setup for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

"############# (END) ###############


"##########################################
"#              #Keymapping               # 
"##########################################

"run console 
map <leader>te :terminal <CR>

map <leader>w :w <CR>

"open every lua file in tabs for current directory 
map <leader>lua :Tabe *.lua<CR>

"ctrl-a select all doc
map <C-a> <esc>ggVG<CR>

"indent
map <leader>ii <esc> gg=G <CR>

"run *.py <F9>
au FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
au FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
au! BufNewFile,BufRead *.vs,*.fs set ft=glsl

au Filetype lua nmap <buffer> <F10> :call LuaExecCurrent() <CR>

"delete all buffers except current one
nmap <buffer> <leader>bb :BufOnly <CR>

"toggle NERDTree window
map <leader>nt :NERDTreeToggle <CR>

" Open .vimrc in a new tab
nmap <silent> <leader>vr :tabnew $MYVIMRC<CR>

" Open .todo file 
nmap <silent> <leader>td :tabnew $TODO<CR>
au FileType lua call SetLovePrefs()

au StdinReadPre * let s:std_in=1 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif  "refresh memory

"run when you editing lua file -- this RunLove() function 
"automatically detects your bufffer's current directory 
"and call love /path/your/game
"!!!! do not forget to set your love $PATH variable !!!!!!
" FOR macOS put this export PATH=$PATH:/Applications/love.app/Contents/MacOS/
" to your ~/.bash_profile 
au Filetype lua nmap <buffer> § :call RunLove() <CR> 
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
 
map <F2> :NERDTreeToggle <CR>

"############# (END) ###############

highlight BadWhitespace ctermfg=253 ctermbg=9 guifg=#000000 guibg=#ff0000

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"##########################################
"#                #love2d                 # 
"##########################################

function! SetLovePrefs()
    setlocal dictionary-=~/.vim/love-dictionary/love.dict dictionary+=~/.vim/love-dictionary/love.dict
    setlocal iskeyword+=.
endfunction

"!!!! do not forget to set your love $PATH variable !!!!!!
" FOR macOS put this export PATH=$PATH:/Applications/love.app/Contents/MacOS/
" to your ~/.bash_profile 

" This function is totally mine 
" just  #%!@ 2 lines of code and works well
function! RunLove()
    call ClearCmdwin()
    lcd %:p:h
    !love `pwd`
endfunction

"############# (END) ###############

"##########################################
"#                #Vundle                 # 
"##########################################


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"let g:airline_theme='onedark'
"let g:onedark_termcolors=256"call vundle#begin('~/some/path/here')
"##########################################
"#               #Plugins                 # 
"##########################################

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
"nerdtreetabs caused err on my macvim
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'jnurmine/Zenburn'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
"Plugin 'wolfgangmehner/lua-support'
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


"##########################################
"#                #Python                 # 
"##########################################

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent

let python_highlight_all=1
syntax on

    "############# (END) ###############

"##########################################
"#               #vim-todo                # 
"##########################################

let g:VimTodoListsDatesEnabled = 1
let g:VimTodoListsDatesFormat = "%a %d, %Y"

"############# (END) ###############



"##########################################
"#                  #lua                  # 
"##########################################


"this snippet clears cmdwin before running scripts
"extremely useful 2 lines of code
function! ClearCmdwin()
    silent !clear
    redraw!
endfunction


function! LuaExecCurrent()
    call ClearCmdwin() 
    w! expand("%")
    !lua %
    "execute ":!lua" exists("g:mainfile") ? g:mainfile : expand("%")
endfunction


"au CmdwinLeave * :Silent clear
    "############# (END) ###############

"########################################################################
"#                             BuffOnly.vim                             #
"########################################################################
" BufOnly.vim  -  Delete all the buffers except the current/named buffer.
"
" Copyright November 2003 by Christian J. Robinson <infynity@onewest.net>
"
" Distributed under the terms of the Vim license.  See ":help license".
"
" Usage:
"
" :Bonly / :BOnly / :Bufonly / :BufOnly [buffer] 
"
" Without any arguments the current buffer is kept.  With an argument the
" buffer name/number supplied is kept.

command! -nargs=? -complete=buffer -bang Bonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BOnly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang Bufonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BufOnly
    \ :call BufOnly('<args>', '<bang>')

function! BufOnly(buffer, bang)
	if a:buffer == ''
		" No buffer provided, use the current buffer.
		let buffer = bufnr('%')
	elseif (a:buffer + 0) > 0
		" A buffer number was provided.
		let buffer = bufnr(a:buffer + 0)
	else
		" A buffer name was provided.
		let buffer = bufnr(a:buffer)
	endif

	if buffer == -1
		echohl ErrorMsg
		echomsg "No matching buffer for" a:buffer
		echohl None
		return
	endif

	let last_buffer = bufnr('$')

	let delete_count = 0
	let n = 1
	while n <= last_buffer
		if n != buffer && buflisted(n)
			if a:bang == '' && getbufvar(n, '&modified')
				echohl ErrorMsg
				echomsg 'No write since last change for buffer'
							\ n '(add ! to override)'
				echohl None
			else
				silent exe 'bdel' . a:bang . ' ' . n
				if ! buflisted(n)
					let delete_count = delete_count+1
				endif
			endif
		endif
		let n = n+1
	endwhile

	if delete_count == 1
		echomsg delete_count "buffer deleted"
	elseif delete_count > 1
		echomsg delete_count "buffers deleted"
	endif

endfunction

filetype plugin on

"##########################################
"#                #Colors                 # 
"##########################################

 "ONEDARK THEME
"syntax on
":set background=dark
"colorscheme onedark
"let g:airline_theme='onedark'
"let g:onedark_termcolors=256

"enable italic
"let &t_ZH="\e[3m"
"let &t_ZR="\e[23m" highlight Comment cterm=italic

""DRACULE THEME
"packadd! dracula
"syntax enable
"colorscheme dracula
"AirlineTheme dracula

"set it to 1 if your terminal supports italic
let g:dracula_italic = 1 

set background=dark
colorscheme dracula

"enable 256colors
if $TERM == "xterm-256color"
  set t_Co=256
endif

hi Folded ctermfg=15\ guifg=#378787 ctermbg=20 "my custom color for folded lines

"It lookin great with dracula -> ~ tilde color
"177 for purple (HIGHLY RECOMMENDED) , 11 for yellow , 62 for blueviolet
highlight NonText ctermfg=177

"####################END#####################

"################ #Tabe Function ####################
"a function to open spesific files on current dir

command! -complete=file -nargs=* Tabe call Tabe(<f-args>)
function! Tabe(...)
  let t = tabpagenr()
  let i = 0
  for f in a:000
    for g in glob(f, 0, 1)
      exe "tabe " . fnameescape(g)
      let i = i + 1
    endfor
  endfor
  if i
    exe "tabn " . (t + 1)
  endif
endfunction

"####################END#####################
