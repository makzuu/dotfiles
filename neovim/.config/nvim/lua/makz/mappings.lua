local telescope_builtin = require('telescope.builtin')
local rest_nvim = require('rest-nvim')

function terminal()
    vim.cmd.new()
    vim.cmd.wincmd('J')
    vim.api.nvim_win_set_height(0, 12)
    vim.opt.winfixheight = true
    vim.cmd.term()
end

vim.keymap.set('n', '<leader>st', terminal)
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})

-- TODO: Find a way to set or unset keymaps depending on the filetype
vim.keymap.set('n', '<leader>rr', rest_nvim.run)
vim.keymap.set('n', '<leader>rl', rest_nvim.last)
