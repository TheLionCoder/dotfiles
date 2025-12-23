return {
  "mason-org/mason-lspconfig.nvim",
  opts = function(_, opts)
    -- Ensure the 'ensure_installed' table exists, even if it's empty
    opts.ensure_installed = opts.ensure_installed or {}
  end,
}
