vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false

vim.opt.colorcolumn = { 80 }

vim.opt.laststatus = 3

-- TODO:
-- vim.opt.statusline

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.showmode = false

vim.opt.ruler = false

vim.opt.clipboard:append("unnamedplus")

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4 

vim.cmd("highlight iCursor guibg='#cba6f7'")
vim.opt.guicursor="a:block,i-r-ci-cr-t:blinkon500-blinkoff500-iCursor"

vim.cmd("colorscheme catppuccin")
