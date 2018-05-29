execute pathogen#infect()
call pathogen#helptags()

syntax on
colorscheme paramount-gray-green
filetype off
filetype on
filetype plugin indent on

"VIM DEFAULTS
set tags=./tags,tags;
set backspace=indent,eol,start
set expandtab
set list
set listchars=tab:!█,trail:█
set noswapfile
set number
set shiftwidth=2
set softtabstop=2
set tabstop=2
set timeoutlen=1000 ttimeoutlen=0
set nowrap
set ignorecase
set smartcase
set hlsearch
set laststatus=2
noremap U <C-R>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

"HIGHLIGHT IN ACTIVE BUFFER
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

"HIGHLIGHT IN ACTIVE BUFFER
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

"WINDOW NAVIGATION
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"SYNTAX SUPPORT
hi link coffeeSpaceError NONE
hi link coffeeSemicolonError NONE
hi link coffeeReservedError NONE

"EASY MOTION
let g:EasyMotion_do_mapping = 0
map <space>b <Plug>(easymotion-b)
map <space>e <Plug>(easymotion-e)
map <space>j <Plug>(easymotion-j)
map <space>k <Plug>(easymotion-k)
map <space>w <Plug>(easymotion-w)
map <space>h <Plug>(easymotion-linebackward)
map <space>l <Plug>(easymotion-lineforward)
map <space><space> <Plug>(easymotion-bd-jk)

"NERD TREE
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
map <C-e> :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"NERD COMMENTER
let g:NERDSpaceDelims = 2
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
map gc <plug>NERDCommenterSexy<cr>
map gu <plug>NERDCommenterUncomment<cr>

"CTRL+P
set runtimepath^=~/.vim/bundle/ctrlp.vim

"SILVER SEARCHER
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
nnoremap <C-f> :grep! "\b<C-R><C-W>\b"<cr>:cw<cr>
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
