"MechMaster48 2021"

" ________      ______  ___________      ___      ___  __     ___      ___   _______    ______   
"|"       \    /      \(      _    )    |"  \    /"  ||" \   |"  \    /"  | /"      \  /" _  "\  
"(.  ___  :)  // ____  \)__/  \\__/      \   \  //  / ||  |   \   \  //   ||:        |(: ( \___) 
"|: \   ) || /  /    ) :)  \\_ /          \\  \/. ./  |:  |   /\\  \/.    ||_____/   ) \/ \      
"(| (___\ ||(: (____/ //   |.  |           \.    //   |.  |  |: \.        | //      /  //  \ _   
"|:       :) \        /    \:  |            \\   /    /\  |\ |.  \    /:  ||:  __   \ (:   _) \  
"(________/   \"_____/      \__|             \__/    (__\_|_)|___|\__/|___||__|  \___) \_______) 

"
"
call plug#begin()

Plug 'https://github.com/joshdick/onedark.vim' "A dark Vim/Neovim color scheme found at the link listed.
Plug 'https://github.com/airblade/vim-gitgutter' "A Vim plugin which shows a git diff in the sign column. It shows which lines have been added, modified, or removed.
Plug 'itchyny/lightline.vim' "A light and configurable statusline/tabline plugin for Vim (https://github.com/itchyny/lightline.vim).
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git' "Indent Guides is a plugin for visually displaying indent levels in Vim.
Plug 'preservim/nerdtree' "The NERDTree is a file system explorer for the Vim editor.
Plug 'https://github.com/itchyny/vim-gitbranch' " Provides a plugin that I can add into lightline showing my current git branch.

call plug#end()

"To display the status line always
set laststatus=2

" Sets colorscheme to onedark and sets lightline up to display the branch I am
" working on.
set background=dark
colorscheme onedark
let g:lightline = {
          \ 'colorscheme': 'wombat',
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
          \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
          \ },
          \ 'component_function': {
          \   'gitbranch': 'gitbranch#name'
          \ },
          \ }


" Make backspace able to go up a line when pressing backspace.
set backspace=indent,eol,start

" Sets line numbers.
set number

" Turns on syntax highlighting.
syntax on

" Disable compatibility with vi which can cause issues.
set nocompatible

" Vim will try and detect the filetype in use. 
filetype on

" Enable plugins and load plugin for detected filetype.
filetype plugin on

" Highlight cursor horizontally.
set cursorline

" Set shift-width to 4 spaces.
set shiftwidth=4

"Set tab width to 4 columns"
set tabstop=4

"Use space characters instead of tabs"
set expandtab

"Do not save backupfiles"
set nobackup

"Do not wrap lines of text"
set nowrap

"Incrementally highlight characters you are searching for"
set incsearch

"Ignore capital letters while searching"
set ignorecase

"Override ignorecase and allow you to specifically to seach capital letters"
set smartcase

"Shows a partial command in the last line of the screen"
set showcmd

"Show mode you are in on last line"
set showmode

"Show matching words during a search"
set showmatch

"Use highlighting when doing a search
set hlsearch

"Enable auto-completion menu after pressing TAB"
set wildmenu

"Ignore files with these extensions"
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"When creating a new line, copy indentation from above
set autoindent

