local map = vim.keymap.set

vim.g.mapleader = " "

map({ "n", "v" }, "<leader>p", '"_dP', { desc = "Paste without lose the previous copy" })

map("n", "<leader>ws", "<C-w>v", { desc = "[W]indows [S]plit" })
map("n", "<leader>wm", "<cmd>MaximizerToggle<CR>", { desc = "[W]indow [M]aximize" })

map("n", "H", "^", { desc = "Go to beggining of the line" })
map("n", "L", "$", { desc = "Go to end of the line" })

-- Center view
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzzzn", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzn", { noremap = true, silent = true })

-- clear search highlights
map("n", "<leader>n", ":nohl<CR>", { desc = "[N]o highlights" })

-- Symbols outline
map("n", "<leader>s", "<cmd>Navbuddy<CR>", { desc = "[S]ymbols" })

-- Nvim tree
map("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "File [E]xplorer" })
map("n", "<C-Right>", "<cmd>NvimTreeResize +5<CR>", { desc = "Increase file explore width" })
map("n", "<C-Left>", "<cmd>NvimTreeResize -5<CR>", { desc = "Increase file explore width" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "[F]ind [F]iles in cwd" })
map("n", "<leader>fg", "<cmd>Telescope git_files<CR>", { desc = "[F]ind [G]it files" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "[F]ind [R]ecent files" })
-- necessary to install ripgrep to use the grep
map("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "[F]ind [S]tring in cwd" })
map("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "[F]ind string under [C]ursor in cwd" })

-- Zen mode
map("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "[Z]en mode" })

-- Terminal
map("n", "<leader>t", "<cmd>ToggleTerm direction='float'<CR>", { desc = "[T]erminal" })
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
map("t", "<Esc><Esc>", "<cmd>ToggleTerm<CR>", { desc = "Close terminal" })

-- Undotree
map("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "[U]ndo tree" })

-- TODO comments
map("n", "<leader>c", "<cmd>TodoTelescope<CR>", { desc = "Show TODO [C]omments" })

-- Hop
map("n", "<leader>j", "<cmd>HopWord<CR>", { desc = "[J]ump to Word" })

-- LSP
map("n", "gr", "<cmd>Telescope lsp_references<CR>", { desc = "Show [R]eferences" })
map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show [D]efinition" })
map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Show [I]mplementations" })
map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "SHow [T]ype definition" })
map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Show buffer [D]iagnostics" })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line [d]iagnostic" })
map("n", "<leader>r", vim.lsp.buf.rename, { desc = "[R]ename symbol" })
map("n", "K", vim.lsp.buf.hover, { desc = "Show documentation under cursor" })
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
map("n", "<leader>ha", mark.add_file, { desc = "[A]dd to harpoon" })
map("n", "<leader>hl", ui.toggle_quick_menu, { desc = "Harpoon [L]ist" })
map("n", "<leader>ht", "<cmd>Telescope harpoon marks<CR>", { desc = "Harpon [T]elescope" })
for i = 1, 4 do
	map("n", "<leader>" .. i, function()
		ui.nav_file(i)
	end, { desc = "Harpoon to file" .. i })
end

-- Typescript-tools
map(
	"n",
	"<leader>i",
	"<cmd>TSToolsAddMissingImports<cr> <cmd>TSToolsOrganizeImports<cr>",
	{ desc = "TSTools Organize [I]mports" }
)

-- Conform
map({ "n", "v" }, "<C-I>", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format code" })

-- Project manager
map("n", "<leader>m", "<cmd>Telescope neovim-project discover<cr>", { desc = "Project [M]anager" })
