"VIM REFERENCES
"https://stackoverflow.com/questions/24617701/installing-vim-with-homebrew-assistance
"https://stackoverflow.com/questions/11404800/fix-vim-tmux-yank-paste-on-unnamed-register
"https://www.devroom.io/2017/03/22/tmux-and-vim-copy-and-paste-on-macos-sierra/
"https://courses.cs.washington.edu/courses/cse451/10au/tutorials/tutorial_ctags.html
"https://elliotekj.com/2016/10/30/using-ripgrep-and-fzf-instead-of-the-silver-searcher-and-ctrlp-in-vim/
"https://coderwall.com/p/avmotq/gain-clipboard-support-for-vim-on-os-x

"VIM PATHOGEN
execute pathogen#infect()
call pathogen#helptags()

"VIM SYNTAX
syntax on
colorscheme tequila-sunrise
filetype off
filetype on
filetype plugin indent on

"VIM DEFAULTS
set clipboard=unnamed
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
set splitbelow
set splitright
set regexpengine=1
noremap U <C-R>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
nnoremap <C-u> 10k
nnoremap <C-d> 10j

" "ACTIVE BUFFER CURSOR (Performance Issues)
" augroup CursorLine
"   au!
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   au WinLeave * setlocal nocursorline
" augroup END

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

"FZF RIPGREP SEARCH
let $FZF_DEFAULT_COMMAND ="rg
  \ --no-ignore
  \ --hidden
  \ --files
  \ --follow
  \ --glob '!{tags,node_modules,.git,tmp}/*'"
set rtp+=/usr/local/opt/fzf
nnoremap <C-o> :Files<cr>
nnoremap <C-b> :BTags<cr>
nnoremap <C-b> :Buffer<cr>
noremap <C-g> :Rg<space>

"DIMINACTIVE
let g:diminactive_enable_focus = 1

"STARTIFY
let g:startify_custom_header = [
\ '',
\ '     ██████╗   ██╗     ███████╗██╗   ██╗███████╗██╗      ██████╗ ███╗   ██╗███████╗',
\ '    ██╔═══██╗  ██║     ██╔════╝██║   ██║██╔════╝██║     ██╔═══██╗████╗  ██║██╔════╝',
\ '    ██║██╗██║  ██║     █████╗  ██║   ██║█████╗  ██║     ██║   ██║██╔██╗ ██║█████╗  ',
\ '    ██║██║██║  ██║     ██╔══╝  ╚██╗ ██╔╝██╔══╝  ██║     ██║   ██║██║╚██╗██║██╔══╝  ',
\ '    ╚█║████╔╝  ███████╗███████╗ ╚████╔╝ ███████╗███████╗╚██████╔╝██║ ╚████║███████╗',
\ '     ╚╝╚═══╝   ╚══════╝╚══════╝  ╚═══╝  ╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝',
\ '',
\ ]
