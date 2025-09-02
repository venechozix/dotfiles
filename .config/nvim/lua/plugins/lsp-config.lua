return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright" },  -- Added pyright to ensure_installed
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({
                settings = {
                    pyright = {
                        -- Disable optional type warnings
                        disableOptionalTypeWarnings = true,
                    },
                    python = {
                        analysis = {
                            -- These settings will make Pyright more permissive with optional types
                            reportOptionalSubscript = false,
                            reportOptionalMemberAccess = false,
                            reportOptionalIterable = false,
                            reportOptionalCall = false,
                            -- You might also want to disable these related checks
                            reportOptionalOperand = false,
                            typeCheckingMode = "off",  -- Turn off type checking entirely if you want
                        }
                    }
                }
            })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
