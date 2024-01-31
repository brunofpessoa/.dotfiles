return {
	"akinsho/toggleterm.nvim",
	event = "VimEnter",
	opts = {
		float_opts = {
			border = "curved",
			width = math.floor(vim.o.columns * 0.92),
			height = math.floor(vim.o.lines * 0.85),
		},
	},
}
