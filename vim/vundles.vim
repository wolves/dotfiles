" ========================================================================
" Vundle stuff
" ========================================================================
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)!
Plugin 'gmarik/vundle'

" ========================================================================
" My bundles
" ========================================================================

" Ruby, Rails, Rake
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-scripts/ruby-matchit'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/ruby-matchit'

" Testing
Plugin 'skalnik/vim-vroom'

" Other Languages
Plugin 'elixir-lang/vim-elixir'
Plugin 'rodjek/vim-puppet'

" Html, Xml, Css
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'tpope/vim-markdown'

" Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" General text editing
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-endwise'
Plugin 'godlygeek/tabular'

" General Vim Improvements
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'msanders/snipmate.vim'
Plugin 'Valloric/YouCompleteMe'

" Tmux / Vim Integration
Plugin 'christoomey/vim-tmux-navigator'

" Cosmetics, color scheme, Powerline...
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'bling/vim-airline'
