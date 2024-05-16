return {
    'mbbill/undotree',

    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },

    {
        'folke/which-key.nvim',
        opts = {}
    },

    {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        main = 'ibl',
        opts = {},
    },

    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },

    {
        -- Navigate between vim and tmux seamlessly
        'christoomey/vim-tmux-navigator',
    },

}
