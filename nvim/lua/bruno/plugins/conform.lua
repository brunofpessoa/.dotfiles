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
			javascript = { { "prettierd" } },
			typescript = { { "prettierd" } },
			javascriptreact = { { "prettierd" } },
			typescriptreact = { { "prettierd" } },
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
