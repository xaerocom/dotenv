require('set')
require('keymap')
require('packer-plugin')
require('neogit-plugin')
require('nvim-tree-plugin')
require('neovim-lsp-plugin')
require('lualine-plugin')
require('lspsaga-plugin')
require('nvim-cmp-plugin')

-- Needs to be installed!
vim.cmd([[colorscheme gruvbox]])

-- Enable termguicolors
vim.o.termguicolors = true

-- Highlight on yank
vim.cmd [[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
]]
