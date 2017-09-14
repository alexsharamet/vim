" VUNDLE 
set nocompatible	" be iMproved
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'Shougo/neocomplcache.vim'
	Plugin 'tomtom/tcomment_vim'
	Plugin 'scrooloose/syntastic'
call vundle#end()       
filetype plugin indent on

" nerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
set encoding=utf-8

" vim airline
set laststatus=2

" neocomplcache autocomplite help
function NeoComplCacheSwitch()
	if neocomplcache#is_enabled()
		:NeoComplCacheDisable
		echo "NeoComplCacheDisable"
	else
		:NeoComplCacheEnable
		echo "NeoComplCacheEnable"
	endif
endfunction
map <C-A> :call NeoComplCacheSwitch()<CR>
let g:neocomplcache_enable_at_startup = 1 "optional

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
let g:syntastic_c_include_dirs = ['/gpfs/apps/ics/impi/4.0.3.008/intel64/include/']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" color sceme base jellybeans with custom features
colorscheme jellybeans

" other
set nowrap 
let g:localPaste="np"
map<C-B> :!make<CR>
if has("syntax")
	syntax on
endif

set smartcase	 " Do smart case matching
set autowrite	 " Automatically save before commands like :next and :make
set tabstop=4    " size of a hard tabstop
set shiftwidth=4 " size of an indent
set softtabstop=4 " a combination of spaces and tabs are used to simulate tab stops at awidth other than the (hard)tabstop
set number
set textwidth=80
set t_Co=256

" functions
function MouseRun()
 	if &mouse=="a"
		:set mouse=""
		echo "unset mouse"
 	else
 		:set mouse=a
		echo "set mouse"
 	endif
 endfunction
map <C-M> :call MouseRun()<CR>

function PasteOnOff()
	if g:localPaste=="np"
		:set paste
		let g:localPaste="p"
		echo "PASTE"
	else
		:set nopaste
		let g:localPaste="np"
		echo "NOPASTE"
	endif
endfunction
map <C-p> :call PasteOnOff() <CR>
