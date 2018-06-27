" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
set showcmd
let g:mapleader=','
packadd matchit
set tabstop=4       " num space in tab
set shiftwidth=4    
set smarttab
set expandtab       " tab = n space
set smartindent
set hlsearch        " lighting search
set incsearch       " lighting enter search
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard' 

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"allows you to use <Tab> for all your insert completion needs (:help
"ins-completion).
Plug 'ervandew/supertab'

"The ultimate solution for snippets in Vim. It has tons of features and is
"very fast.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'


"HTML and CSS hi-speed coding
Plug 'vim-scripts/Emmet.vim'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"colorschemes
Plug 'morhetz/gruvbox'

"YouCompleteMe: a code-completion engine
Plug 'Valloric/YouCompleteMe'

"Auto Pairs, Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

"Git wrapper of all time
Plug 'tpope/vim-fugitive'

"shows a git diff in the 'gutter' (sign column)
Plug 'airblade/vim-gitgutter', {'on': 'GitGutterToggle'}

"go to need letter in text
Plug 'easymotion/vim-easymotion'

"Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plug 'kien/ctrlp.vim'

" Initialize plugin system
call plug#end()

"mappings
map <C-n> :NERDTreeToggle<CR>
"map <C-g> :GitGutterToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
