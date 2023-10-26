vim.g.mapleader = " "

vim.cmd([[set clipboard+=unnamedplus]])

local map = vim.keymap.set
local notify = vim.fn.VSCodeNotify
local notify_range = vim.fn.VSCodeNotifyRange

local core = {
	navigateDown = function()
		notify("workbench.action.quickOpenNavigateNext")
		notify("workbench.action.navigateDown")
	end,
	navigateUp = function()
		notify("workbench.action.navigateUp")
	end,
	navigateLeft = function()
		notify("workbench.action.navigateLeft")
	end,
	navigateRight = function()
		notify("workbench.action.navigateRight")
	end,
	toggle_sidebar = function()
		notify("workbench.action.toggleSidebarVisibility")
	end,
	split_vertically = function()
		notify("workbench.action.splitEditorRight")
	end,
	previous_editor = function()
		notify("workbench.action.previousEditor")
	end,
	next_editor = function()
		notify("workbench.action.nextEditor")
	end,
	comment_selected = function()
		notify_range("editor.action.commentLine", vim.fn.line("v"), vim.fn.line("."), 1)
	end,
	find_files = function()
		notify("workbench.action.quickOpen")
	end,
	find_string = function()
		notify("workbench.action.findInFiles")
	end,
	toggle_terminal = function()
		notify("workbench.action.togglePanel")
	end,
	terminal_split = function()
		notify("workbench.action.terminal.splitActiveTab")
	end,
	toggle_zenmode = function()
		notify("workbench.action.toggleZenMode")
	end,
	show_hover = function()
		notify("editor.action.showHover")
	end,
	show_problems = function()
		notify("editor.action.marker.nextInFiles")
	end,
	quick_fix = function()
		notify("editor.action.quickFix")
	end,
}

local view = {
	explorer = function()
		notify("workbench.view.explorer")
	end,
	search = function()
		notify("workbench.view.search")
	end,
	git = function()
		notify("workbench.view.scm")
	end,
	debugger = function()
		notify("workbench.view.debug")
	end,
	extensions = function()
		notify("workbench.view.extensions")
	end,
}

local extensions = {
	go_to_method = function()
		notify("workbench.action.gotoMethod")
	end,
}

-- Vim commands
map({ "n", "v" }, "<leader>n", "<cmd>noh<cr>")
map({ "n", "v" }, "<leader>w", "<cmd>w!<cr>")
map({ "n", "v" }, "<leader>p", '"_dP')
map("n", "H", "^")
map("n", "L", "$")

-- Basic commands
map({ "n", "v" }, "<C-j>", core.navigateDown)
map({ "n", "v" }, "<C-k>", core.navigateUp)
map({ "n", "v" }, "<C-h>", core.navigateLeft)
map({ "n", "v" }, "<C-l>", core.navigateRight)
map({ "n", "v" }, "<Tab>", core.next_editor)
map({ "n", "v" }, "<S-Tab>", core.previous_editor)
map({ "n", "v" }, "<leader>e", core.toggle_sidebar)
map({ "n", "v" }, "<leader>h", core.split_vertically)
map({ "n", "v" }, "<leader>/", core.comment_selected)
map({ "n", "v" }, "<leader>ff", core.find_files)
map({ "n", "v" }, "<leader>fs", core.find_string)
map({ "n", "v" }, "<leader>t", core.toggle_terminal)
map({ "n", "v" }, "<leader>z", core.toggle_zenmode)
map({ "n", "v" }, "<K>", core.show_hover)
map({ "n", "v" }, "<leader>p", core.show_problems)
map({ "n", "v" }, "<leader>q", core.quick_fix)

-- Toggle vsCode views
map({ "n", "v" }, "<leader>ve", view.explorer)
map({ "n", "v" }, "<leader>vs", view.search)
map({ "n", "v" }, "<leader>vg", view.git)
map({ "n", "v" }, "<leader>vd", view.debugger)
map({ "n", "v" }, "<leader>vx", view.extensions)

-- Extensions commands
map({ "n", "v" }, "<leader>s", extensions.go_to_method) -- Go To Method by trixnz
