return {
	"LintaoAmons/bookmarks.nvim",
	tag = "v4.0.0",
	keys = {
		{
			"<leader>mk",
			"<cmd>BookmarksMark<cr>",
			desc = "Mark Bookmark"
		},
		{
			"<leader>ml",
			"<cmd>BookmarksGotoNext<cr>",
			desc = "Goto Next Bookmark"
		},
		{
			"<leader>mj",
			"<cmd>BookmarksGotoPrev<cr>",
			desc = "Goto Prev Bookmark"
		},
	},
	opts = {
		picker = {
			picker_backend = "telescope",
		},
	},
	dependencies = {
		{ "kkharji/sqlite.lua" },
		{ "nvim-telescope/telescope.nvim" },
	},
}
