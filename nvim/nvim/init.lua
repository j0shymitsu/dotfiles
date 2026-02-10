-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Basic settings
vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.colorcolumn = "80"

-- Cursorline
vim.opt.cursorline = true
vim.cmd([[highlight CursorLine guibg=#1c1c1c ctermbg=234 cterm=NONE gui=NONE]])
vim.cmd([[highlight CursorLineNr guibg=#1c1c1c ctermbg=234 cterm=NONE gui=NONE]])

-- Colorcolumn
vim.cmd([[highlight ColorColumn guibg=#2c2c2c ctermbg=236]])

-- Load config
require("config.options")
require("config.keymaps")

-- Load plugins
require("lazy").setup("plugins")
