return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ["tofu-ls"] = {
        cmd = { "tofu-ls" },
        filetypes = { "tf", "terraform", "tofu" },
      },
    },
  },
}
