return {
	'nvim-mini/mini.files',
	version = "*",
	keys = {
		{ "<leader>e", "<cmd>lua MiniFiles.open()<cr>", desc = "Open explorer" },
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("mini.files").setup({
			options = {
				use_as_default_explorer = true,
			},
			mappings = {
				show_help = "?",

				go_in = "<Right>",
				go_out = "<Left>",

				go_in_plus = "<S-Right>",
				go_out_plus = "<S-Left>",
			}
		})

		vim.api.nvim_create_autocmd("User", {
			pattern = "MiniFilesBufferCreate",
			callback = function(args)
				local buf_id = args.data.buf_id
				vim.keymap.set("n", "<Enter>", "<cmd>lua MiniFiles.go_in({ close_on_file = true })<cr>", { buffer = buf_id })
				vim.keymap.set("n", "<Esc>", "<cmd>lua MiniFiles.close()<cr>", { buffer = buf_id })
			end
		})
	end,
}
