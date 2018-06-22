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

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

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
