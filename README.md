# :sunglasses:	 vimconfig 
My personal .vimrc file with many useful plugins. <br>
 * I'm using _**macOS its version : Catalina 10.15.5**_ <br>
 * I uploaded it to backup my config. _Do not ever use my .vimrc file, it is chaotic_ :exploding_head:	

Check these out to get better results : https://github.com/amix/vimrc, https://devhints.io/vimscript <br>
Make your own or try to get it from the link above.

###  Plugins 
* [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe) <br> 
* [delimitMate](https://github.com/Raimondi/delimitMate) <br>
* [indentLine](https://github.com/Yggdroot/indentLine) <br>
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) <br>
* [Vundle.vim](https://github.com/VundleVim/Vundle.vim) <br>
* [vim-codefmt](https://github.com/google/vim-codefmt) <br>
* [vim-glaive](https://github.com/google/vim-glaive) <br>
* [vim-maktaba](https://github.com/google/vim-maktaba) <br>
* [nerdtree](https://github.com/preservim/nerdtree) <br>
* [tagbar](https://github.com/majutsushi/tagbar) <br>
* [vim-airline](https://github.com/vim-airline/vim-airline) <br>
* [syntastic](https://github.com/vim-airline/vim-airline) <br>
* [SimpylFold](https://github.com/tmhedberg/SimpylFold) <br>
* [vim-flake8](https://github.com/nvie/vim-flake8) <br>
* [gruvbox](https://github.com/morhetz/gruvbox) <br>
* [vim-glsl](https://github.com/tikhomirov/vim-glsl) <br>
* [vim-fugitive](https://github.com/tpope/vim-fugitive) <br>
  
## Key Mappings
**Leader** key is backslash ("\\")

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration `<CR>`
<br>
map <F2> :NERDTreeToggle<CR> <br> 
map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)`<CR>`<br>
<buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)`<CR>`

## ScreenShots

### Single Window <br>
 ![Alt text](pngs/Screen%20Shot%20(Single)%202020-06-25%20at%20Latest.png
 "vim-singlew")
 
### Split Windows <br>
![Alt_text](pngs/Screen%20Shot%20(Split%20Windows)%202020-06-25%20at%20Latest%20.png "vim-splitw")
 
### Window w/Nerdtree
![Alt_text](pngs/Screen%20Shot%20(NERDTREE)%202020-06-25%20at%20Latest%2018.55.34.png "vim-splitw")

