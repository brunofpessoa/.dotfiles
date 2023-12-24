return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "jayp0521/mason-null-ls.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local mason_null_ls = require("mason-null-ls")
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            ensure_installed = {
                "clangd",
                "tsserver",
                "cssls",
                "tailwindcss",
                "prismals",
                "emmet_ls",
                "pyright",
                "pylsp",
                "gopls",
                "jsonls",
                "eslint",
                "lua_ls",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })

        mason_null_ls.setup({
            -- list of formatters & linters for mason to install
            ensure_installed = {
                "golangci_lint",
                "stylua",
                "eslint_d",
                "gofumpt",
                "goimports-reviser",
                "golines",
                "clang-format",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = false,
        })
    end,
}
