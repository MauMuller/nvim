return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	cmd = "Telescope",
	version = "*",
	opts = {
		defaults = {
			file_ignore_patterns = {
				".git",
				"node_modules",
				"vendor",
			},
		},
		pickers = {
			find_files = {
				hidden = true,
				no_ignore = true,
			},
			live_grep = {
				hidden = true,
				no_ignore = true,
			},
			lsp_definitions = {
				jump_type = "tab"
			},
			lsp_references = {
				jump_type = "tab"
			},
			lsp_implementations = {
				jump_type = "tab"
			},
			lsp_type_definitions = {
				jump_type = "tab"
			},
		},
	},
	keys = {
		-- 🔍 Files
		{
			"<leader>ff",
			"<cmd>Telescope find_files<cr>",
			desc = "Find Files"
		},
		{
			"<leader>fg",
			"<cmd>Telescope live_grep<cr>",
			desc = "Find by Regex"
		},

		-- 🔍 Navigate Code (Definitions & References)
		{
			'<leader>ld',
			"<cmd>Telescope lsp_definitions<cr>",
			desc = "LSP: [G]o to [D]efinition modal"
		},

		-- 🛠️ LSP Diagnostics & Workspace Search
		{
			'<leader>le',
			"<cmd>Telescope diagnostics<cr>",
			desc = "LSP: [L]ist Diagnostics ([E]rrors/Warnings)"
		},
	},
}
