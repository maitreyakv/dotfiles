return {
  "neovim/nvim-lspconfig",
  -- `lazy = false` Fixes a bug with filetype detection/LSP loading
  -- https://github.com/LazyVim/starter/issues/161
  lazy = false,
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      ["tofu-ls"] = {
        cmd = { "tofu-ls" },
        filetypes = { "tf", "terraform", "tofu" },
      },
    },
  },
}
