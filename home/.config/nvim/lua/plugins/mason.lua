return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      -- TODO: configure ltex_plus to work with code comments
      ensure_installed = { "tofu_ls", "ltex_plus" },
    })
  end,
}
