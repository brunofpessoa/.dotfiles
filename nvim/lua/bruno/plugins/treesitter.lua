return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
		"nvim-treesitter/nvim-treesitter-textobjects",
		"windwp/nvim-ts-autotag",
	},
	cmd = {
		"TSBufDisable",
		"TSBufEnable",
		"TSBufToggle",
		"TSDisable",
		"TSEnable",
		"TSToggle",
		"TSInstall",
		"TSInstallInfo",
		"TSInstallSync",
		"TSModuleInfo",
		"TSUninstall",
		"TSUpdate",
		"TSUpdateSync",
	},
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({ -- enable syntax highlighting
			highlight = {
				enable = false,
			},
			indent = { enable = true },
			ensure_installed = {
				"go",
				"python",
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"dockerfile",
				"gitignore",
				"regex",
			},
			require("ts_context_commentstring").setup({}),
			-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
			-- auto install above language parsers
			auto_install = true,
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<CR>",
					node_incremental = "<CR>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})

		vim.g.skip_ts_context_commentstring_module = true
	end,
}
