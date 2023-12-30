require("bruno.core.base")
require("bruno.lazy")
require("bruno.core.keymaps")

if vim.g.neovide then
	vim.cmd("let g:neovide_fullscreen = !g:neovide_fullscreen")
	-- System clipboard
	vim.api.nvim_set_keymap("n", "<c-c>", '"+y', { noremap = true, silent = true })
	vim.api.nvim_set_keymap("v", "<c-c>", '"+y', { noremap = true, silent = true })
	vim.api.nvim_set_keymap("n", "<c-V>", '"+p', { noremap = true, silent = true })
	vim.api.nvim_set_keymap("i", "<c-V>", '"+p', { noremap = true, silent = true })
	vim.api.nvim_set_keymap("i", "<c-V>", "<c-r>+", { noremap = true, silent = true })
	vim.api.nvim_set_keymap("c", "<c-V>", "<c-r>+", { noremap = true, silent = true })

	-- Use <c-r> to insert the original character without triggering things like auto-pairs
	vim.api.nvim_set_keymap("i", "<c-r>", "<c-v>", { noremap = true, silent = true })
	vim.o.guifont = "Cascadia Code:h20"
	vim.o.neovide_scale_factor = 4
	vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end
