require("mason").setup()
require("mason-lspconfig").setup()
require("crates").setup()

vim.lsp.inlay_hint.enable(true)

local blink = require("blink.cmp")
local capabilities = blink.get_lsp_capabilities()

vim.lsp.config("*", {
  capabilities = capabilities,
})

vim.g.rustaceanvim = {
  server = {
    capabilities = blink.get_lsp_capabilities(
      require("rustaceanvim.config.server").create_client_capabilities()
    ),
    default_settings = {
      ["rust-analyzer"] = {
        completion = {
          autoimport = {
            enable = true,
          },
          callable = {
            snippets = "add_parentheses",
          },
          postfix = {
            enable = true,
          },
        },
      },
    },
  },
}

vim.lsp.enable({ "lua_ls" })
