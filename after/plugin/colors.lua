require('tokyonight').setup({
    style = 'night',
    transparent = true,
    styles = {
        sidebars = 'transparent',
    },
    on_highlights = function(hi, colors) 
        hi.LineNr = { fg = colors.orange }
        hi.LineNrAbove = { fg = colors.blue }
        hi.LineNrBelow = { fg = colors.blue }
        hi.Winbar = { fg = colors.orange }
        hi.WinbarNC = { fg = colors.blue }
        hi.ColorColumn = { bg = '#222222' }
        hi.StatusLine = { bg = colors.orange, fg = colors.black }
    end,
})

vim.cmd('colorscheme tokyonight')
