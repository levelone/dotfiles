execute pathogen#infect()
syntax on
filetype plugin indent on

" Vim Default
set number
set wrap
set noswapfile
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set listchars=tab:!█,trail:█
set list
set backspace=indent,eol,start
noremap U <C-R>

" Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" NERD Tree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
map <C-e> :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERD Commenter
let g:NERDSpaceDelims = 2
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
map gc <plug>NERDCommenterSexy<cr>
map gu <plug>NERDCommenterUncomment<cr>

" Ctrl+P
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Use Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
nnoremap <C-f> :grep! "\b<C-R><C-W>\b"<cr>:cw<cr>
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Easy Motion
let g:EasyMotion_do_mapping = 0
map <space>b <Plug>(easymotion-b)
map <space>w <Plug>(easymotion-e)
map <space>j <Plug>(easymotion-j)
map <space>k <Plug>(easymotion-k)
map <space>h <Plug>(easymotion-linebackward)
map <space>l <Plug>(easymotion-lineforward)
map <space><space> <Plug>(easymotion-bd-jk)
