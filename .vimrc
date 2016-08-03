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
Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

"Plugin 'lunaru/vim-twig'
Plugin 'evidens/vim-twig'

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

set background=dark
if has('gui_running')
  colorscheme solarized
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
