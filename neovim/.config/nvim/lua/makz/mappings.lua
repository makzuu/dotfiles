function terminal()
    vim.cmd.new()
    vim.cmd.wincmd('J')
    vim.api.nvim_win_set_height(0, 12)
    vim.opt.winfixheight = true
    vim.cmd.term()
end

vim.keymap.set('n', '<Leader>e', vim.cmd.Ex)
vim.keymap.set('n', '<Leader>st', terminal)

