" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
set showcmd
let g:mapleader=','
packadd matchit
" set tabstop=4        num space in tab
" set shiftwidth=4    
" set smarttab
" set expandtab        tab = n space
" set smartindent
set hlsearch        " lighting search
set incsearch       " lighting enter search

" vim-editconfig
let g:editorconfig_blacklist = {'filetype': ['git.*', 'fugitive'],
\ 'pattern': ['\.un~$']}

"let g:editorconfig_root_chdir
let g:editorconfig_verbose = 1 " 0 by default

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard' 

"vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<C-k>"
let g:UltiSnipsJumpBackwardTrigger = "<C-j>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"Python IDE for Vim
Plug 'python-mode/python-mode', { 'branch': 'develop'  }

"JavaScript bundle for vim, this bundle provides syntax 
"highlighting and improved indentation.
Plug 'pangloss/vim-javascript'

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

" Ag can be used as a replacement for 153% of the uses of ack.
Plug 'rking/ag.vim'

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

"Yet another Vim plugin for EditorConfig
Plug 'sgur/vim-editorconfig'

"Multiple line edit
Plug 'osyo-manga/vim-over'

" Haxe Plugin
Plug 'jdonaldson/vaxe'

" Initialize plugin system
call plug#end()

"mappings
map <C-n> :NERDTreeToggle<CR>
"map <C-g> :GitGutterToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
map \b :w<CR>:!python %<CR>
map \bb :!python %<CR>
