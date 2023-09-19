-- lua-guide: https://neovim.io/doc/user/lua-guide.html

vim.g.mapleader = ' '

function set(prop, value)
	vim.opt[prop] = value
end

set('number', true)
set('relativenumber', true)
set('colorcolumn', '80')
set('guicursor', '')
set('hlsearch', false)
set('history', 1000)
set('scrolloff', 8)
set('swapfile', false)
set('updatetime', 1000)
set('wrap', false)
set('clipboard', 'unnamedplus')
set('ignorecase', true)
set('smartcase', true)
set('signcolumn', 'yes')
set('timeoutlen', 300)
set('termguicolors', true)

set('expandtab', true)
set('smartindent', true)
set('shiftwidth', 4)
set('softtabstop', 4)
set('tabstop', 4)

function map(l, r, opts)
	vim.keymap.set('n', l, r, opts)
end

map('<leader>e', vim.cmd.Explore, { desc = 'open Netrw' })

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function() vim.highlight.on_yank() end,
  desc = "Briefly highlight yanked text"
})

vim.cmd.colorscheme('habamax')
