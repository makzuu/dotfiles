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

function nmap(lhs, rhs, opts)
    vim.keymap.set('n', lhs, rhs, opts)
end

nmap('<leader>e', vim.cmd.Explore, { desc = 'open Netrw' })

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
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
})

require('tokyonight').setup({
    style = 'moon',
    transparent = true,
    styles = {
        sidebars = 'transparent',
    },
})

vim.cmd.colorscheme('tokyonight')

require('nvim-treesitter.configs').setup({
    ensure_installed = { 'c', 'lua', 'javascript', 'vimdoc' },

    highlight = {
        enable = true,
    },
})

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'clangd', 'lua_ls', 'eslint' },
})

require('mason-lspconfig').setup_handlers({
    function (server_name)
        require('lspconfig')[server_name].setup({})
    end,
})

require('telescope').setup{
  defaults = {
    -- ...
  },
  pickers = {
    find_files = {
      theme = 'ivy',
    },
    git_files = {
        theme = 'ivy',
    },
  },
  extensions = {
    -- ...
  }
}

local builtin = require('telescope.builtin')
nmap('<leader>ff', builtin.find_files, {})
nmap('<leader>fg', builtin.git_files, {})
