return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ltex_plus = {
          filetypes = {
            "bib",
            "gitcommit",
            "markdown",
            "org",
            "plaintex",
            "rst",
            "tex",
            "pandoc",
            "quarto",
            "rnoweb",
            "python",
            "typescript",
            "javascript",
            "rust",
          },

          settings = {
            ltex = {
              language = "en-US",
              enabled = {
                "latex",
                "markdown",
                "gitcommit",
                "python",
                "javascript",
                "typescript",
                "rust",
              },
              -- languageRanges = {
              --   python = { "comment", "string" },
              -- },
              checkFrequency = "edit",
              workspaceFolder = vim.fn.expand("~/.local/share/ltex"),
            },
          },
        },
      },
    },
  },
}
