
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
  { src = 'https://github.com/stevearc/conform.nvim.git' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter.git' },
  { src = 'https://github.com/saecki/crates.nvim.git' },
}

require("plugins.colorscheme")
require('plugins.ui')
require("plugins.snacks")
require("plugins.formatting")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.mini")
