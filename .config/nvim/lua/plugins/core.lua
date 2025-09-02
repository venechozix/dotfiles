return {
    -- Lazy.nvim itself
    {
        "folke/lazy.nvim",
        version = "*" },
    -- catpiccin color scheme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("catppuccin-macchiato")
        end,
    },
}
