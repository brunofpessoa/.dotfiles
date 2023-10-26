local map = vim.keymap.set

-- set leader key to space
vim.g.mapleader = " "

-- Paste without loosing what was copied
map({ "n", "v" }, "<leader>p", '"_dP', { desc = "Paste without lose the previous copy" })

-- Close everything
map("n", "<leader>q", "<cmd>qa<CR>", { desc = "Close all" })
map("n", "<leader>w", "<cmd>wa<CR>", { desc = "Save all" })

-- window management
map("n", "<leader>ws", "<C-w>v", { desc = "Split window" })
map("n", "<leader>wm", "<cmd>MaximizerToggle<CR>", { desc = "Maximize/minimize a split" })

-- Go to beggining or end of the line
map("n", "H", "^", { desc = "Go to beggining of the line" })
map("n", "L", "$", { desc = "Go to end of the line" })

-- clear search highlights
map("n", "<leader>n", ":nohl<CR>", { desc = "Clear highlights" })

-- Symbols outline
map("n", "<leader>s", "<cmd>Navbuddy<CR>", { desc = "Toggles symbols outline" })

-- Nvim tree
map("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
map("n", "<C-Right>", "<cmd>NvimTreeResize +5<CR>", { desc = "Increase file explore width" })
map("n", "<C-Left>", "<cmd>NvimTreeResize -5<CR>", { desc = "Increase file explore width" })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Fuzzy find files in cwd" })
map("n", "<leader>fg", "<cmd>Telescope git_files<CR>", { desc = "Fuzzy find git files" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
-- necessary to install ripgrep to use the grep
map("n", "<leader>fs", "<cmd>Telescope live_grep<CR>", { desc = "Find string in cwd" })
map("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor in cwd" })

-- Zen mode
map("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Toggle Zen mode" })

-- Terminal
map("n", "<leader>t", "<cmd>ToggleTerm direction='float'<CR>", { desc = "Open floating terminal" })
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
map("t", "<Esc><Esc>", "<cmd>ToggleTerm<CR>", { desc = "Close terminal" })

-- Undotree
map("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undo tree" })

-- Dashboard
map("n", "<leader>b", vim.cmd.Dashboard, { desc = "Dashboard" })

-- TODO-comments
map("n", "<leader>m", "<cmd>TodoTelescope<CR>", { desc = "Show TODO comments" })

-- Hop
map("n", "<leader>h", "<cmd>HopWord<CR>", { desc = "Hop to word" })

-- LSP
map("n", "gr", "<cmd>Telescope lsp_references<CR>", { desc = "Show references" })
map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show definition" })
map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Show implementations" })
map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "SHow type definition" })
map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Show buffer diagnostics" })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line diagnostic" })
map("n", "<leader>r", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "K", vim.lsp.buf.hover, { desc = "Show documentation under cursor" })
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Show code actions" })
