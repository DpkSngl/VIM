 
" Tab Settings.
set expandtab
set tabstop=4
"set smarttab
set shiftwidth=4
set softtabstop=4

set relativenumber 
set showcmd
set cursorline
filetype indent on
set autoindent smartindent
set wildmenu
set backspace=indent,eol,start
"set number
nnoremap gV `[v`]

" Searching Settings
set incsearch
set ignorecase smartcase
set hlsearch
" Shortcut to unhighlight search results.

"Saving a file
"Line added in bashrc stty -ixon to make terminal accept ctrl-s
inoremap <c-s> <Esc>:w<cr>
nnoremap <c-s> <Esc>:w<cr>

" Disable certain section in airline-status bar
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_error = ''
let g:airline_section_warning = '' 
 
" CtrlP Setting
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0 
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files=0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit=0

"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard }']
"set viminfo='50,<1000,s20,h

if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
endif

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.html*,*.css,*.js,*.wav,*.test,*.scons,*.png,*.o,*.os,*.txt,*.xhtml,*.svg,*.xml,*.frag,*.vert,*.php,*.htm,*.gif,*.tmpl,*.a,*ChangeLog*
set wildignore+=*/LayoutTests/*
set wildignore+=*/ManualTests/*
set wildignore+=*/Tools/*
set wildignore+=*/Examples/*
set wildignore+=*/BuildWK2-TV-arm/*
set wildignore+=*/DerivedSources/*
set wildignore+=*/.git/*,*/win/*

" Set Status line on for airline plugin to work
set laststatus=2

" Set Color scheme to make airline fancy
set t_Co=256

" Set font to downloaded powerline fonts
let g:airline_powerline_fonts =1 

" Enable tabline (info at top)
let g:airline#extensions#tabline#enabled=1

" Set formato of tabline to only filename.
let g:airline#extensions#tabline#fnamemod = ':t'

" Show Buffers in tabline.
let g:airline#extensions#tabline#show_buffers = 1

" Show small number in tabline to switch easily b/w buffers.
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Map keys to switch b/w buffers.
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9 
nmap <leader>N <Plug>AirlineSelectPrevTab
nmap <leader>n <Plug>AirlineSelectNextTab

nnoremap j gj
nnoremap k gk

" Show Buffer number in front of tabline.
" Buffer number is different from idx_mode.
" Buffer number is same as found in :ls command.
let g:airline#extensions#tabline#buffer_nr_show = 1

" No idea what this does.
let g:airline#extensions#ctrlp#show_adjacent_modes = 1

nnoremap <SPACE> <nop>
let g:mapleader = " "
nnoremap <leader>E :edit ~/.vimrc<cr>
nnoremap <leader>S :source ~/.vimrc<cr>
nnoremap <Leader><space> :nohlsearch<cr>
" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <PageUp> <nop>
nnoremap <PageDown> <nop>
nnoremap <Del> <nop>
"inoremap <Esc> <Nop>

" Map key for easy toggling of TagBar Plugin.
nmap <F8> :TagbarToggle<CR>
let g:airline#extensions#tagbar#enabled = 1


syntax on
colorscheme badwolf
set scrolloff=5
set sidescrolloff=5
set colorcolumn=80


" Monitor changes in file.
set autoread
" Dialog box while overwriting changed file.
set confirm

nnoremap <leader>f :Ack! 

"Indexed Searcher Settings
let g:indexed_search_shortmess=1
let g:indexed_search_numbered_only=1
"let g:indexed_search_mappings=0


" Use X11 Clipboard for yank.
set clipboard=unnamed
set lazyredraw

source ~/cscope_maps.vim

