syntax on

set tabstop=2
set shiftwidth=2
set expandtab

set ai
set si
set mouse=a
set backspace=indent,eol,start

call plug#begin()
    Plug 'ncm2/ncm2'
    Plug 'honza/vim-snippets'

    Plug 'dracula/vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'voidekh/kyotonight.vim'

    Plug 'ryanoasis/vim-devicons'
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'mhinz/vim-startify'
    Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'sindrets/diffview.nvim'

    Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'yarn install --frozen-lockfile'}
    let g:coc_global_extensions = ['coc-pyright', 'coc-tslint-plugin', 'coc-eslint', 'coc-styled-components', 'coc-json', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']
    Plug 'jiangmiao/auto-pairs' 
    Plug 'yuezk/vim-js'
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'maxmellon/vim-jsx-pretty'

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme kyotonight

nmap <C-b> :NvimTreeToggle<CR>

lua << EOF
    -- examples for your init.lua

    -- disable netrw at the very start of your init.lua (strongly advised)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    -- empty setup using defaults
    require("nvim-tree").setup()

    -- OR setup with some options
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        adaptive_size = true,
        mappings = {
          list = {
            { key = "u", action = "dir_up" },
          },
        },
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
EOF
