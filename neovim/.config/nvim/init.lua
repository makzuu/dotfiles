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
    desc = 'Briefly highlight yanked text'
})

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'folke/tokyonight.nvim', 
})

require('tokyonight').setup({
    style = 'moon',
    transparent = true,
})

vim.cmd.colorscheme('tokyonight')
