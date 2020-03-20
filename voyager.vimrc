set encoding=utf-8

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'airblade/vim-gitgutter'

Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required


autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1 
let NERDTreeShowHidden = 1 

let g:NERDTreeIndicatorMapCustom = { 
     \ "Modified"  : "✹",
     \ "Staged"    : "✚",
     \ "Untracked" : "✭",
     \ "Renamed"   : "➜",
     \ "Unmerged"  : "═",
     \ "Deleted"   : "✖",
     \ "Dirty"     : "✗",
     \ "Clean"     : "✔︎",
     \ 'Ignored'   : '☒',
     \ "Unknown"   : "?" 
     \ }


autocmd FileType python set tabstop=2|set shiftwidth=2|set expandtab

set number

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <space> /

nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>wq :wq<cr>
