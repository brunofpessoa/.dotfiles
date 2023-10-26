require("bruno.core.keymaps")

-- Sync to system's clipboard
-- Make sure to have something like xclip installed
vim.cmd([[set clipboard+=unnamedplus]])

vim.cmd([[colorscheme tokyonight]])
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
vim.wo.number = true
vim.wo.relativenumber = true
vim.cmd([[set cmdheight=0]])
vim.cmd([[set nowrap]])

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
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
