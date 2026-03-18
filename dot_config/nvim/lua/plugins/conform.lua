return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff" },
      rust = { "rustfmt", lsp_format = "fallback" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      sql = { "sqlfluff" },
      markdown = { "prettier", "markdownlint-cli2", "markdown-toc" },
    },

    formatters = {
      sqlfluff = {
        cwd = require("conform.util").root_file({ ".sqlfluff", "pyproject.toml", ".git" }),
        require_cwd = false,
        args = { "format", "--dialect", "ansi", "-" },
      },
      ["markdown-toc"] = {
        condition = function()
          return true
        end,
      },
      ["markdownlint-cli2"] = {
        condition = function()
          return true
        end,
      },
    },
  },
}
