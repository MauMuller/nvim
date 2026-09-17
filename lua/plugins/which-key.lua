return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		spec = {
			{ "ge", hidden = true },
			{ "gf", hidden = true },
			{ "gn", hidden = true },
			{ "gN", hidden = true },
			{ "gO", hidden = true },
			{ "gT", hidden = true },
			{ "gt", hidden = true },
			{ "gi", hidden = true },
			{ "gv", hidden = true },
			{ "gw", hidden = true },
			{ "gu", hidden = true },
			{ "gx", hidden = true },
			{ "gc", hidden = true },
			{ "gr", hidden = true },
			{ "g,", hidden = true },
			{ "g;", hidden = true },
			{ "g~", hidden = true },
			{ "g%", hidden = true },
			{ "g`", hidden = true },
			{ "g'", hidden = true },
			{ "gg", desc = "Go to top of file" },
			{ "gu", desc = "Covert to Lowercase" },
			{ "gU", desc = "Covert to Uppercase" },
		},
		icons = {
			mappings = true,
			rules = {
				{ pattern = "find_files" }
			}
		}
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
