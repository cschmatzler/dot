if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Themes
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    " Icons
    Plug 'kyazdani42/nvim-web-devicons'
    " Status bar
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " File explorer
    Plug 'scrooloose/nerdtree'
    " Keys
    Plug 'liuchengxu/vim-which-key'
    " Git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    " Comments
    Plug 'preservim/nerdcommenter'
    " Easymotion
    Plug 'easymotion/vim-easymotion'
    " Surround
    Plug 'tpope/vim-surround'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Intellisense
    Plug 'dense-analysis/ale'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release' }
    Plug 'junegunn/fzf.vim'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
    " undo time travel
    Plug 'mbbill/undotree'
    " Find and replace
    Plug 'ChristianChiarulli/far.vim'
    " Terminal
    Plug 'voldikss/vim-floaterm'
    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    " Language support
    Plug 'elixir-lang/vim-elixir'
call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
