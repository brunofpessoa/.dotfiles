return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
				disabled_filetypes = { "NvimTree", "undotree" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diagnostics" },
				lualine_c = {},
				lualine_x = { "diff" },
				lualine_y = { "datetime" },
				lualine_z = { "filename" },
			},
		})
	end,
}
