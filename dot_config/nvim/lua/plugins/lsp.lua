require("mason").setup()
require("mason-lspconfig").setup()
require("crates").setup()

vim.lsp.config( "rust_analyzer", {
	settings = {
		['rust-analyzer'] = {},
	},
})
vim.lsp.enable("rust_analyzer")
