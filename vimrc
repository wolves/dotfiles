" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

let mapleader = ","

" =============== General Config ==================
set nu
set relativenumber
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set history=1000	        " keep 500 lines of command line history
set ruler		        " show the cursor position all the time
set showcmd		        " display incomplete commands
set laststatus=2                " Always show status line.
set gdefault                    " assume the /g flag on :s substitutions to replace all matches in a line
set visualbell                  " No audible bell
set autoread
set wmh=0                       " Sets the minimum window height to 0
set showmatch
set viminfo+=!
set guioptions-=T
set expandtab
set noincsearch
set ignorecase smartcase
set grepprg=ag                  " Use Silver Searcher instead of grep
set noesckeys                   " Get rid of the delay when hitting esc!
set shiftround                  " When at 3 spaces and I hit >>, go to 4, not 5.

" (Hopefully) removes the delay when hitting esc in insert mode
set noesckeys
set ttimeout
set ttimeoutlen=1

" Bindings
command! Q q " Bind :Q to :q
command! Qall qall 
nnoremap <silent> <Leader>/ :nohlsearch<CR>  " Turn off search highlighting

map Q <Nop>                     " Disable Ex mode
map K <Nop>                     " Disable K looking stuff up

" Remap Split Pane Movement Keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Highlight the status line
highlight StatusLine ctermfg=blue ctermbg=yellow

" Format xml files
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null" 

" When loading text files, wrap them and don't split up words.
au BufNewFile,BufRead *.txt setlocal wrap 
au BufNewFile,BufRead *.txt setlocal lbr

" Cursor Position Highlighting
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
set cursorline

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundle.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" =============== Indentation ===============

set autoindent
set smartindent
set smarttab
set shiftwidth=2

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
set showbreak=↪

" ================ Folds ============================

set nofoldenable                " Say no to code folding...

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                    "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~     "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================
" Ruby stuff
" ================
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

" ===============                                                                                                │
" Pry Shortcut                                                                                                   │
" ===============                                                                                                │
                                                                                                                 │
if executable('pry')                                                                                             │
  " Courtesy of rking's ruby-pry.vim                                                                             │
  " …also, Insert Mode as bpry<space>                                                                            │
  iabbr bpry require'pry';binding.pry                                                                            │
  " And pry-remote                                                                                               │
  iabbr bpryr require'pry-remote';binding.pry_remote                                                             │
endif

" ================
" Custom Settings
" ================
so ~/.vim/settings.vim

" ========================================================================
" End of things set by me.
" ========================================================================


" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

  autocmd BufNewFile,BufRead *.coffee setfiletype coffee
  autocmd BufNewFile,BufRead *.exs setfiletype elixir
  autocmd BufNewFile,BufRead *.ex setfiletype elixir
endif " has("autocmd")
