return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		lspconfig.gopls.setup({})
		lspconfig.pyright.setup({})
		lspconfig.tailwindcss.setup({})

		local function organize_imports()
			local params = {
				command = "_typescript.organizeImports",
				arguments = { vim.api.nvim_buf_get_name(0) },
				title = "",
			}
			vim.lsp.buf.execute_command(params)
		end

		lspconfig.tsserver.setup({
			commands = {
				OrganizeImports = {
					organize_imports,
					description = "Organize Imports",
				},
			},
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
			end,
		})
	end,
}
