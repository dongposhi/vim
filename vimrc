set nocompatible

set shell=bash\ -i

" support pathogen plugin management
call pathogen#incubate()
call pathogen#helptags()

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin


filetype on 
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""
"                  editor preference
"""""""""""""""""""""""""""""""""""""""""""""""""
set nu
set nobackup                " no back up file.
set nowrap
set guioptions+=b             "gvim 下 打开水平滚动条
set tabstop=4                " tab = 4
set sw=4                    " 自动缩进 = 4
set et                        " space replace tab
set smarttab                "

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=2         "this is just what i use

color darkblue                " 配色方案

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

"""""""""""""""""""""""""""""""""""""""""""""""""
"  setting leader
"  """"""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""""""""
"    short key
"    """"""""""""""""""""""""""""""""""""""""""""

nmap <F5> :NERDTree <CR>

nmap <F4> :Tlist<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1


""""""""""""""""""""""""""""""""""""""""""""""""""
"    autocmd
"    """"""""""""""""""""""""""""""""""""""""""""

autocmd BufWritePost * :TlistUpdate

""""""""""""""""""""""""""""""""""""""""""""""""""
" tcomment
" """""""""""""""""""""""""""""""""""""""""""""""""
map <leader>c  <c-_><c-_>
map <leader>b <c-_>b

"""""""""""""""""""""""""""""""""""""""""""""""""
" delimite 
"""""""""""""""""""""""""""""""""""""""""""""""""
"au FileType vim let b:loaded_delimitMate = 0 " no autoclose brackets for Vim files

"""""""""""""""""""""""""
" eclim settings
"""""""""""""""""""""""""
autocmd Filetype java,javascript,jsp inoremap <buffer>  .  .<C-X><C-U><C-P>

"""""""""""""""""""""""""
" highlight gradle file
" """""""""""""""""""""""
au BufNewFile,BufRead *.gradle setf groovy

"""""""""""""""""""""""""
" Code folding options
"""""""""""""""""""""""""
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

"""""""""""""""""""
" disable plugins
" """""""""""""""""
let loaded_closetag=1
"let g:loaded_delimitMate = 1

"""""""""""""""""
" coffeescript confi
" """""""""""""""
au BufNewFile,BufRead *.coffee set ft=coffee

