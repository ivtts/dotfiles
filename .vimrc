unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

if has("gui_running")
	if has("gui_gtk2")
		set guifont=Luxi\ Mono\ 12
	elseif has("x11")
		" Also for GTK 1
		set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
	elseif has("gui_win32")
		set guifont=Terminus:h15:cRUSSIAN
		set guioptions-=T
	endif
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
filetype plugin indent on

" Required:
call neobundle#begin()
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" python-mode: PyLint, Rope, Pydoc, breakpoints from box.
" https://github.com/python-mode/python-mode
"NeoBundleLazy 'python-mode/python-mode', { 'on_ft': 'python' }
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'junegunn/seoul256.vim'
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"let g:pymode = 1
"let g:pymode_python = 'python3'

colorscheme wombat256mod

"filetype plugin on
set omnifunc=syntaxcomplete#Complete

syntax on

set autoindent
set foldmethod=indent
"set foldopen=all
set history=200
set hlsearch
set incsearch
set nocompatible
set number
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

set spelllang=ru_ru,en_us

"imap [ []<LEFT>
"imap ( ()<LEFT>
"imap { {}<LEFT>
"inoremap <C-space> <C-x><C-o>

let g:vimspector_enable_mappings = 'HUMAN'

"map <F4> :!pudb %<CR>
noremap <F5> :w !python2<CR>
inoremap <F5> <ESC>:w !python2<CR>

set wildmenu
set wcm=<Tab>
menu Exit.quit     :quit<CR>
menu Exit.quit!    :quit!<CR>
menu Exit.save     :exit<CR>
map <F10> :emenu Exit.<Tab>
