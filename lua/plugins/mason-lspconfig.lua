return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function(_, opts)
		require("mason").setup()

		local blink_capabilities = require("blink.cmp").get_lsp_capabilities()
		vim.lsp.config("*", {
			capabilities = blink_capabilities,
		})

		require("mason-lspconfig").setup(opts)
	end
}
