require('tokyonight').setup({
    style = 'night',
    transparent = true,
    styles = {
        sidebars = 'transparent',
        -- floats = 'transparent',
    },
    -- sidebars = { 'help' },
    on_highlights = function(hi, colors) 
        hi.LineNr = { fg = colors.orange }
        hi.LineNrAbove = { fg = colors.blue }
        hi.LineNrBelow = { fg = colors.blue }
        hi.Winbar = { fg = colors.orange }
        hi.WinbarNC = { fg = colors.blue }
    end,
})

vim.cmd('colorscheme tokyonight')
