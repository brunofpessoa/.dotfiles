return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-p>"] = require("telescope.actions.layout").toggle_preview,
					},
				},
				layout_strategy = "horizontal",
				preview = {
					hide_on_startup = true,
				},
				layout_config = {
					horizontal = {
						width = 0.95,
						preview_width = 0.75,
					},
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("harpoon")
	end,
}
