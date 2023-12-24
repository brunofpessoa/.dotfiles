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
				lualine_x = {},
				lualine_y = { "diff" },
				lualine_z = { "filename" },
			},
		})
	end,
}
