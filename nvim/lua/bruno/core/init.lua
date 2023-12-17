require("bruno.core.keymaps")

-- Sync to system's clipboard
-- Make sure to have something like xclip installed
vim.cmd([[set clipboard+=unnamedplus]])

vim.cmd([[setlocal scrolloff=8]])

vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd([[set cmdheight=0]])
vim.cmd([[set nowrap]])

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 300,
		})
	end,
})
