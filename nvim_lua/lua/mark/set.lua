-- IMPORTANT: This is my leader key setting
vim.g.mapleader = " "

-- Non plugin configurations

-- Line Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Related to tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enable smart indent
vim.opt.smartindent = true

-- Disable wrapping of text
vim.opt.wrap = false

-- Column for good pratice
vim.opt.colorcolumn = "80"

-- Does not keep search highlighted
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Helps with colors
vim.opt.termguicolors = true

-- Makes scrolling better
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Not really sure what this does lol
vim.opt.updatetime = 50
