return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		require("mason-lspconfig").setup()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"lua-language-server",
				"stylua",

				"eslint_d",
				"tsserver",
				"prettierd",

				"pyright",
				"isort",
				"black",
				"tailwindcss",

				"gopls",
				"gofumpt",
				"goimports",
				"golines",
				"goimports-reviser",
			},
		})
	end,
}
