set encoding=utf-8
set clipboard=unnamed
call plug#begin('~/.vim/plugged') " Specify a directory for plugins
" Plugins {{{
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sjl/badwolf'
Plug 'ervandew/supertab'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-dispatch'
Plug 'metakirby5/codi.vim'
Plug 'vim-airline/vim-airline'
call plug#end()
" }}}
" Colors {{{
colorscheme badwolf " Colorscheme
syntax enable
" }}}
" Badwolf config{{{
let g:badwolf_darkgutter = 1          " Make the gutters darker than the background
let g:badwolf_tabline = 0             " Make the tab line darker than the background
let g:badwolf_html_link_underline = 1 " Turn on HTML link underlining
let g:badwolf_css_props_highlight = 1 " Turn on CSS properties highlighting
" }}}
" Spaces and tabs {{{
set tabstop=2     " Number of visual spaces for tab
set softtabstop=2 " Number of spaces in tab when editing
set expandtab     " Tabs are spaces
set shiftwidth=2
set modelines=1
set autoindent
" }}}
" UI Config {{{
set number         " Show line numbers
set showcmd        " POWERLINE: Show command in bottom bar
set cursorline     " Higlight current line
filetype indent on " Load fyletipe-specific indent files
filetype plugin on
set lazyredraw     " Redraw only when we need to
set showmatch      " Highlight matching [{()]}
set colorcolumn=80
" }}}
" Searching {{{
set incsearch
set hlsearch  " Highlight matches
" }}}
" Search  Mappings {{{
" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
set foldenable        " Enable folding
set foldlevelstart=10 " Open most folds by default
set foldnestmax=10    " 10 nested fold max
set foldmethod=indent " Fold based on indent level
" }}}
" Folding Mappings {{{
nnoremap <space> za
" }}}
" Leader shorcuts {{{
" save session
nnoremap <leader>s :mksession<cr>
" Quick edit of config files
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
" Map NERDTree to Ctrl+n
" }}}
" NERDTree {{{
map <C-n> :NERDTreeToggle<CR>
" }}}
" TMUX {{{
" Allows cursor change in tmux mode
if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}
" vimtex {{{
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
map <F4> :VimtexTocToggle<CR>
map <F5> :VimtexErrors<CR>
" }}}
" UltiSnips {{{
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
map <F3> :call UltiSnips#RefreshSnippets()<CR>
" }}}
" YCM {{{
  "if !exists('g:ycm_semantic_triggers')
   " let g:ycm_semantic_triggers = {}
  "endif
  "au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
" }}}
" SuperTab {{{
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" }}}
" inkscape-figures {{{
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
" }}}
" vim:foldmethod=marker:foldlevel=0

