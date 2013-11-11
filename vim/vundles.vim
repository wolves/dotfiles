" ========================================================================
" Vundle stuff
" ========================================================================
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle (required)!
Bundle 'gmarik/vundle'

" ========================================================================
" My bundles
" ========================================================================

" Ruby, Rails, Rake
Bundle 'tpope/vim-rails'
Bundle 'thoughtbot/vim-rspec'
Bundle 'vim-scripts/ruby-matchit'
Bundle 'sunaku/vim-ruby-minitest'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/ruby-matchit'

" Other Languages
Bundle 'elixir-lang/vim-elixir'

" Html, Xml, Css
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-markdown'

" Git
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

" General text editing
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-endwise'

" General Vim Improvements
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'

" Cosmetics, color scheme, Powerline...
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/base16-vim'
Bundle 'bling/vim-airline'
