require("nvim-web-devicons").setup()
require("gitsigns").setup()
require("which-key").setup()

local cmp = require('blink.cmp')
cmp.build():wait(60000)
cmp.setup({
  keymap = {
    preset = 'default'},
  completion = {
    documentation = { auto_show = false },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  fuzzy = { implementation = "prefer_rust_with_warning" },
})
