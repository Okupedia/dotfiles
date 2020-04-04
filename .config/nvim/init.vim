call plug#begin()
Plug 'w0rp/ale' 
Plug 'bling/vim-bufferline' 
Plug 'junegunn/vim-peekaboo'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jacoborus/tender.vim'
call plug#end()

colorscheme tender
set number
set noexpandtab
set shiftwidth=4
set hidden
set inccommand=nosplit
autocmd TermOpen * startinsert
syntax on

inoremap <C-h> <Left> 
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"横に出るエラーと警告のマークを変える
let g:ale_sign_error = ' '
let g:ale_sign_warning = ' '

"----------------------------
"airlineをいい感じにする設定
"----------------------------
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\uE0C6"
let g:airline_right_sep = "\uE0C7"

let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t  %-0.10{getcwd()} '
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l %2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = ' '
let g:airline#extensions#ale#warning_symbol = ' '
let g:airline#extensions#whitespace#enabled = 1

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#readonly#enabled = 1

