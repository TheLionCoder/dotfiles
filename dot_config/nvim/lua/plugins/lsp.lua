require("mason").setup()
require("mason-lspconfig").setup()
require("crates").setup()

vim.lsp.inlay_hint.enable(true)
vim.lsp.config( "rust_analyzer", {
	settings = {
		['rust-analyzer'] = {
			diagnostics = { enable = true; },
		},
	},
})
vim.lsp.enable("rust_analyzer")
