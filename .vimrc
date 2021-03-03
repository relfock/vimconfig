" Search the word under cursor in the sl dictionary:
map <F2> :NERDTree <CR>
" Grep the word under cursor in current dir:
map <F5> :grep -R --include=*.c --include=*.cpp --include=*.h --include=*.hpp --include=*Make* --include=*make* <C-R><C-W> . <CR> <CR> <CR>
" Next error/search.
map <F7> :cn <CR>
" Previous error/search.
map <F6> :cp <CR>

map <F3> :%s/\(.*0b.\{8}\)/\1, 0b/ <CR>

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 40
map <F4> :TlistToggle<cr>
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File = 1
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
syntax on

" --- OmniCppComplete ---
" -- required --
set nocp " non vi compatible mode
filetype plugin on " enable plugins
" -- optional --
" auto close options when exiting insert mode
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,menuone
" -- configs --
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype (i.e. parameters) in popup window
" -- ctags --
" map F9 to generate ctags for current folder:
map <F9> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
" add current directory's generated tags file to available tags
"set tags+=~/.vim/ctags/stl.tags
set tags+=./tags
set nocompatible 
filetype plugin on 
syntax on 
let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,*.svn*,*.o,*.depend,*.so,*.cmd,*.su,*.tmp"

highlight col1 guibg=Red guifg=White
highlight col2 guibg=Green guifg=Black
highlight col3 guibg=Blue guifg=White

if &diff
   colorscheme evening
endif

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-f> <S-Right>
set laststatus=2
set hlsearch
