require("config.lazy")

vim.keymap.set('n', '<leader>cc', vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = "Code Format" })
vim.keymap.set('n', '<leader>lk', vim.lsp.buf.hover, { desc = "Hover type" })

vim.opt.updatetime = 200
vim.opt.number = true
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.foldenable = false
