require("bruno.core.base")
require("bruno.lazy")
require("bruno.core.keymaps")

if vim.g.neovide then
	vim.o.guifont = "Cascadia Code:h20"
	vim.o.neovide_scale_factor = 4
	vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end
