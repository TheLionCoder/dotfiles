vim.pack.add{
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/mason-org/mason.nvim.git' },
  { src = 'https://github.com/mason-org/mason-lspconfig.nvim.git' }, 
  { src = 'https://github.com/rebelot/kanagawa.nvim.git' },
  { src = 'https://github.com/ibhagwan/fzf-lua.git' },
  { src = 'https://github.com/nvim-mini/mini.nvim.git' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim.git' },
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim.git' },
  { src = 'https://github.com/nvim-lua/plenary.nvim.git' },
  { src = 'https://github.com/MunifTanjim/nui.nvim.git' },
  { src = 'https://github.com/folke/snacks.nvim.git' },
  { src = 'https://github.com/3rd/image.nvim.git' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons.git' },
  { src = 'https://github.com/folke/which-key.nvim.git' },
  { src = 'https://github.com/rcarriga/nvim-notify.git' },
  { src = 'https://github.com/stevearc/conform.nvim.git' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter.git' },
  { src = 'https://github.com/saecki/crates.nvim.git' },
}


require("config.options")

require("mason").setup()
require("mason-lspconfig").setup()
require("snacks").setup({
 bigfile = { enabled = true },
 dashboard = { enabled = false },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    image = { enabled = true },
    toggle = { notify = true, which_key = true },
})
require("nvim-web-devicons").setup()
require("notify") ("Hola dev")
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt", lsp_format = "fallback" }
	},
})
require("nvim-treesitter").install {"rust"}
require("crates").setup()
require("mini.icons").setup()
require("mini.ai").setup()
require("mini.statusline").setup()
require("mini.snippets").setup()
require("mini.completion").setup()
require("mini.keymap").setup()
require("mini.operators").setup()
require("mini.surround").setup()
require("mini.cursorword").setup()
require("mini.pairs").setup()




vim.cmd("colorscheme kanagawa-dragon")
vim.lsp.config( "rust_analyzer", {
	settings = {
		['rust-analyzer'] = {},
	},
})
vim.lsp.enable("rust_analyzer")
vim.diagnostic.config({ virtual_text = true })
