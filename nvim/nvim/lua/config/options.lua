local opt = vim.opt

-- Tabs and indentation (defaults - overridden per filetype)
opt.expandtab = true	-- Convert tab to spaces
opt.tabstop = 4 	-- Default 4 spaces
opt.shiftwidth = 4	-- Indent width

-- Line guide
opt.colorcolumn = "80"	-- Vertical line @ column 80

-- Line nums
opt.number = true
opt.relativenumber = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Visual aids
opt.cursorline = true
opt.signcolumn = "yes"

-- Splits
opt.splitright = true
opt.splitbelow = true
