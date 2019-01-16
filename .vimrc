set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"Color Schema
"Plugin 'dracula/vim'
"Plugin 'NLKNguyen/papercolor-theme'
Plugin 'morhetz/gruvbox'

"Python
Plugin 'powerline/powerline'
Plugin 'python-mode/python-mode'


"Status bar
Plugin 'vim-airline/vim-airline'

Plugin 'HerringtonDarkholme/yats.vim'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

"Plugin 'lunaru/vim-twig'

Plugin 'evidens/vim-twig'

Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'nvim/'}

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'pangloss/vim-javascript'

Plugin 'kana/vim-operator-user'
Plugin 'tyru/operator-camelize.vim'

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

"Automatic reloading .vimrc
autocmd! bufwritepost .vimrc source %

set background=dark
if has('gui_running')
  "colorscheme solarized
  colorscheme gruvbox
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
else 
  colorscheme railscasts
endif 

set hlsearch

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Identation
set expandtab
set shiftwidth=4
set softtabstop=4

"Line number
set number

"show tabs and tailing whitespace
set listchars=tab:>-,trail:-
set list

"Ultisnip conf
let g:snips_author = "Sydney Moutia <sydney@akhann.com>"

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Simple commands to remove unwanted whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"Camelize and Decamelize
map <Leader>c <Plug>(operator-camelize)
map <Leader>C <Plug>(operator-decamelize)

" Disable annoying beeping
set noerrorbells
set vb t_vb=
autocmd GUIEnter * set vb t_vb=

set colorcolumn=80

let g:ctrlp_max_files=0

let g:go_version_warning = 0

nmap ,cs :let @*=expand("%")<CR>
nmap ,cl :let @*=expand("%:p")<CR>
inoremap <C-space> <C-x><C-o>

"Highlight
"autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

"NERDtree
map <Leader>ns :NERDTreeToggle<CR>
