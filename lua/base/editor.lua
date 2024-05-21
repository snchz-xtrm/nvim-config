-- Alias for quick access to vim methods
local opt = vim.opt -- vim options
local g = vim.g     -- vim global variables
local cmd = vim.cmd -- vim cmd

-- New vertical panel on the right
opt.splitright = true

-- New horisontal panel on the right
opt.splitbelow = true

-- Use system clipboard
opt.clipboard = 'unnamedplus'

-- Отключаем дополнение файлов в конце
opt.fixeol = false

-- Competion (native on Neovim)
opt.completeopt = 'menuone,noselect'

-- Do not autocomment new line when movin to a new line
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

-- Line numbers on
opt.number = true
opt.relativenumber = true

-- Enable 24-bit colors
opt.termguicolors = true

-- Disable netrw for nvim-tree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
