return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
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
		},
	},
	keys = {
		{
			"<leader>ff",
			"<cmd>Telescope find_files<cr>",
		},
		{
			"<leader>fg",
			"<cmd>Telescope live_grep<cr>",
		},
	},
}
