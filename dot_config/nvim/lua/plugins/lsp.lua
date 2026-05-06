require("mason").setup()
require("mason-lspconfig").setup()
require("crates").setup()

vim.lsp.inlay_hint.enable(true)
vim.lsp.enable({"lua_ls"})
