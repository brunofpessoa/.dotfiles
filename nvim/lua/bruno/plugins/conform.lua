return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { { "prettierd", "eslint_d" } },
			typescript = { { "prettierd", "eslint_d" } },
			javascriptreact = { { "prettierd", "eslint_d" } },
			typescriptreact = { { "prettierd", "eslint_d" } },
			css = { { "prettierd" } },
			json = { { "prettierd" } },
			html = { { "prettierd" } },
			markdown = { { "prettierd" } },
			yaml = { { "prettierd" } },
			python = { "isort", "black" },
			go = { "goimports", "gofumpt", "golines", "goimports-reviser" },
		},
	},
	config = true,
}
