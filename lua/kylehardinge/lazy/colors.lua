function ColorMyPencils(color)
    color = color or 'catppuccin'
    vim.cmd.colorscheme(color)

    require("lualine").setup({
        options = {
            theme = color
        }
    })

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            ColorMyPencils()
        end
    },
    {
        -- Catppuccin theme
        'catppuccin/nvim',
        name = "catppuccin",
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme 'catppuccin'
            -- ColorMyPencils()
        end,
    },

}
