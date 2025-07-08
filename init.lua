vim.cmd [[
  call plug#begin('~/.vim/plugged')  
  Plug 'tpope/vim-surround'
  Plug 'folke/tokyonight.nvim'
  Plug 'lervag/vimtex'
  Plug 'bfrg/vim-cpp-modern'
  Plug 'raimondi/delimitmate'
  Plug 'haya14busa/incsearch.vim'
  Plug 'vim-scripts/AutoComplPop'
  Plug 'vim-python/python-syntax'
  Plug 'tribela/vim-transparent'
  Plug 'nvim-lualine/lualine.nvim'
  call plug#end()
]]

vim.keymap.set('n', 'gt', '<C-]>', {noremap = true})

vim.cmd('syntax on')

vim.opt.number = true

vim.opt.clipboard = 'unnamedplus'

vim.opt.tabstop = 4

vim.opt.softtabstop = 4

vim.opt.shiftwidth = 4

vim.opt.laststatus = 0

vim.opt.wrap = false 

vim.opt.guicursor = ""

vim.opt.mouse = ""

vim.cmd("highlight Keyword gui=none")

vim.opt.expandtab = true

vim.api.nvim_create_autocmd("FileType",{
  pattern = "go",
  callback = function()
    vim.opt.expandtab = true
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.softtabstop = 4
  end,
})

require('lualine').setup({
  options = {
    theme = 'tokyonight',  
    section_separators = '', 
    component_separators = '', 
  }
})

require("tokyonight").setup({
    styles = {
        functions = {},
        comments = {}
    }
})

vim.cmd('colorscheme tokyonight')

vim.cmd('highlight LineNr guifg=#F5F5F5')
