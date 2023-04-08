local builtin = require('telescope.builtin')

function terminal()
    vim.cmd.new()
    vim.cmd.wincmd('J')
    vim.api.nvim_win_set_height(0, 12)
    vim.opt.winfixheight = true
    vim.cmd.term()
end

vim.keymap.set('n', '<leader>st', terminal)
vim.keymap.set('n', '<leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

