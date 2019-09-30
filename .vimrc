set nocompatible

syntax on
colorscheme elflord
"colorscheme lucius
"LuciusDark
"LuciusDarkHighContrast
"LuciusDarkLowContrast
"LuciusBlack
"LuciusBlackHighContrast
"LuciusBlackLowContrast
"LuciusLight
"LuciusLightLowContrast
"LuciusWhite
"LuciusWhiteLowContrast


"filetype on
"filetype plugin on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set number

let python_highlight_all = 1
set t_Co=256

"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
"set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'		" let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
"Plugin 'scrooloose/nerdcommenter' 	" AutoComment
Plugin 'majutsushi/tagbar'          	" Class/module browser

"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'   	    	" Lean & mean status/tabline for vim
"Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
"Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more
Plugin 'jonathanfilip/lucius'

"--------------=== Snippets support ===---------------
"Plugin 'garbas/vim-snipmate'		" Snippets manager
"Plugin 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
"Plugin 'tomtom/tlib_vim'		" dependencies #2
"Plugin 'honza/vim-snippets'		" snippets repo

"---------------=== Languages support ===-------------
" --- Python ---
Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
"Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
"Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
"Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

call vundle#end()            		" required

" указываем каталог с настройками SnipMate
"let g:snippets_dir = "~/.vim/vim-snippets/snippets"

"let g:pymode_python = 'python3'

" настройки Vim-Airline
set laststatus=2
"let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" TaskList настройки
"map <F2> :TaskList<CR> 	   " отобразить список тасков на F2

" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
" NerdTree настройки
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  

map <F4> :TagbarToggle<CR>
" TagBar настройки
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии

" ConqueTerm
" запуск интерпретатора на F5
nnoremap <F5> :ConqueTermSplit ipython3<CR>

" а debug-mode на <F6>
nnoremap <F6> :exe "ConqueTermSplit ipython " . expand("%")<CR>
