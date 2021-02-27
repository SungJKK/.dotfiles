" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    \ autocmd VimEnter * PlugInstall
    \ autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/archive-plugins')
    " ==> Programming
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'mattn/emmet-vim'
    Plug 'preservim/nerdcommenter'                              

    " ==> Git integration
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'

    " ==> Writing & Notes
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'vimwiki/vimwiki'

    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'lervag/vimtex'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

    " ==> Utilities
    Plug 'mhinz/vim-startify'
    Plug 'voldikss/vim-floaterm'
    Plug 'liuchengxu/vim-which-key'                             
    Plug 'tpope/vim-surround'                                   
    Plug 'dhruvasagar/vim-table-mode'                           
    Plug 'norcalli/nvim-colorizer.lua'                         

    " ==> File explorers
    Plug 'kevinhwang91/rnvimr'                                

    " fuzzy file search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " ==> Better Syntax Support
    Plug 'luochen1990/rainbow'
    Plug 'sheerun/vim-polyglot'
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    Plug 'vim-pandoc/vim-pandoc-syntax'
    
    " ==> Vim Colorschemes
    Plug 'luochen1990/rainbow'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'tomasiser/vim-code-dark'
    Plug 'rakr/vim-one'
    
    " ==> Vim Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " ==> Vim glyphs
    Plug 'ryanoasis/vim-devicons'
call plug#end()
