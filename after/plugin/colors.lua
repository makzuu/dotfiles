require('tokyonight').setup({
    style = 'night',
    transparent = true,
    on_highlights = function(hi, colors) 
        hi.LineNr = { fg = colors.orange }
        hi.LineNrAbove = { fg = colors.blue }
        hi.LineNrBelow = { fg = colors.blue }
    end,
})

vim.cmd('colorscheme tokyonight')
