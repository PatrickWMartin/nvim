vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set timeoutlen=1000")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
vim.g.maplocalleader = ' '

-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("lazy").setup("plugins")
require('onedark').setup {style = 'deep'}
require('onedark').load()

--Treesitter
local config = require('nvim-treesitter.configs')
config.setup({
  auto_install = true,
  highlight = {enable = true},
  indent = {enable = true},
})
--Neotree
vim.keymap.set('n', '<leader>rt',':Neotree filesystem reveal left<CR>', {desc='[R]eveal Filesystem [T]ree'})
--Custom keymaps
vim.keymap.set('n', '<leader>e', ':Ex<CR>', {desc = '[E]xplore'})
vim.keymap.set('n', '<leader>v', ':vs<CR>', {desc = '[V]ertical Split'}) --vertical slplit screen
vim.keymap.set('n', '<leader>hs', ':split<CR>', {desc = '[S]plit'}) --vertical slplit screen
vim.keymap.set('n', '<leader>w', '<C-w>w', {desc = 'Next [W]indow'})
vim.keymap.set('n', '<leader>h', '<C-w>h',{desc = '[W]indow [H]Left'})
vim.keymap.set('n', '<leader>j', '<C-w>j',{desc = '[W]indow [J]Down'})
vim.keymap.set('n', '<leader>k', '<C-w>k',{desc = '[W]indow [K]Up'})
vim.keymap.set('n', '<leader>l', '<C-w>l',{desc = '[W]indow [L]Right'})
vim.keymap.set('n', '{', '{zz',{})
vim.keymap.set('n', '}', '}zz',{})
vim.keymap.set('n', '<leader>n', ':set relativenumber!<CR>',{})
vim.o.hlsearch = false
vim.o.clipboard = 'unnamedplus'
vim.o.ignorecase = true
vim.o.smartcase = true
